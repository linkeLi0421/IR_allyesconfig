; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcmf_buscore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdiod_drive_str = type { i8, i8 }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_sdio = type { ptr, ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.pktq, i8, i8, i8, ptr, ptr, i8, %struct.brcmf_sdio_hdrinfo, i8, i8, i32, i32, i32, ptr, %struct.sk_buff_head, ptr, i32, ptr, ptr, i32, %struct.spinlock, i8, i8, i8, %struct.atomic_t, i32, i32, i32, i32, %struct.brcmf_console, i32, i32, i32, i32, i32, i8, i8, i8, ptr, i16, i8, i32, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.timer_list, %struct.completion, ptr, i8, ptr, %struct.work_struct, i8, i8, i8, %struct.brcmf_sdio_count, i8, i8, i8, i8, i16, i16 }
%struct.pktq = type { i16, i16, i16, i16, [16 x %struct.pktq_prec] }
%struct.pktq_prec = type { %struct.sk_buff_head, i16 }
%struct.brcmf_sdio_hdrinfo = type { i8, i8, i16, i16, i16, i8, i8, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.brcmf_console = type { i32, i32, %struct.rte_log_le, i32, ptr, i32 }
%struct.rte_log_le = type { i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_sdio_count = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.brcmf_sdio_dev = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spinlock, i8, i32, i16, i32, i32, %struct.sg_table, [320 x i8], [320 x i8], i8, i32, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.brcmf_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8] }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32 }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.127 }
%union.anon.127 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmf_bus = type { %union.anon.99, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.99 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.firmware = type { i32, ptr, ptr }
%struct.sdpcm_shared = type { i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32 }
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
%struct.sk_buff_list = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sdpcm_shared_le = type { i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.brcmf_trap_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_firmware356 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43143-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [48 x i8] c"brcmfmac.firmware=brcm/brcmfmac43241b0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [48 x i8] c"brcmfmac.firmware=brcm/brcmfmac43241b4-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [48 x i8] c"brcmfmac.firmware=brcm/brcmfmac43241b5-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4329-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4330-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4334-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43340-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4335-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43362-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4339-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [48 x i8] c"brcmfmac.firmware=brcm/brcmfmac43430a0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware368 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43430-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware369 = internal constant [51 x i8] c"brcmfmac.firmware=brcm/brcmfmac43430-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware370 = internal constant [48 x i8] c"brcmfmac.firmware=brcm/brcmfmac43430b0-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware371 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43455-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware372 = internal constant [51 x i8] c"brcmfmac.firmware=brcm/brcmfmac43455-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware373 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43456-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware374 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4354-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware375 = internal constant [50 x i8] c"brcmfmac.firmware=brcm/brcmfmac4354-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware376 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4356-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware377 = internal constant [50 x i8] c"brcmfmac.firmware=brcm/brcmfmac4356-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware378 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4359-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware379 = internal constant [45 x i8] c"brcmfmac.firmware=brcm/brcmfmac4373-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware380 = internal constant [50 x i8] c"brcmfmac.firmware=brcm/brcmfmac4373-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware381 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43012-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware382 = internal constant [51 x i8] c"brcmfmac.firmware=brcm/brcmfmac43012-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware383 = internal constant [46 x i8] c"brcmfmac.firmware=brcm/brcmfmac43752-sdio.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware384 = internal constant [51 x i8] c"brcmfmac.firmware=brcm/brcmfmac43752-sdio.clm_blob\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware385 = internal constant [44 x i8] c"brcmfmac.firmware=brcm/brcmfmac*-sdio.*.txt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware386 = internal constant [44 x i8] c"brcmfmac.firmware=brcm/brcmfmac*-pcie.*.txt\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware387 = internal constant [44 x i8] c"brcmfmac.firmware=brcm/brcmfmac*-sdio.*.bin\00", section ".modinfo", align 1
@__func__.brcmf_sdio_isr = private unnamed_addr constant [15 x i8] c"brcmf_sdio_isr\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bus is null pointer, exiting\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed backplane access\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"isr w/o interrupt configured!\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_probe = private unnamed_addr constant [17 x i8] c"brcmf_sdio_probe\00", align 1
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcmf_wq/%s\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"insufficient memory to create txworkqueue\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&bus->datawork)\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"brcmf_sdio_probe_attach failed\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bus->rxctl_lock\00", [47 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bus->txq_lock\00", [17 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bus->ctrl_wait\00", [16 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&bus->dcmd_resp_wait\00", [43 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&bus->timer)\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcmf_wdog/%s\00", [18 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.brcmf_sdio_probe, ptr @.str.20, i32 4487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014brcmfmac: brcmf_watchdog thread failed to start\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c\00", [40 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe._entry_ptr = internal global ptr @brcmf_sdio_probe._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"completed!!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"async firmware request failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_remove = private unnamed_addr constant [18 x i8] c"brcmf_sdio_remove\00", align 1
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_dpc = private unnamed_addr constant [15 x i8] c"brcmf_sdio_dpc\00", align 1
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DPC: PENDING, devctl 0x%02x clkctl 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dongle reports WR_OOSYNC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dongle reports RD_OOSYNC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dongle reports SBINT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dongle reports CHIPACTIVE\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdio ctrlframe tx failed err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed backplane access over SDIO, halting operation\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_hostmail = private unnamed_addr constant [20 x i8] c"brcmf_sdio_hostmail\00", align 1
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mailbox indicates firmware halted\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Dongle reports NAK handled, expect rtx of %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpected NAKHANDLED!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Version mismatch, dongle reports %d, expecting %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dongle ready, protocol version %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unknown mailbox data content: 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_readshared = private unnamed_addr constant [22 x i8] c"brcmf_sdio_readshared\00", align 1
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid sdpcm_shared address 0x%08X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdpcm_shared address 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sdpcm shared version unsupported: dhd %d dongle %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unable to obtain sdpcm_shared info: rv=%d (addr=0x%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_readframes = private unnamed_addr constant [22 x i8] c"brcmf_sdio_readframes\00", align 1
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"calling rxglom: glomd %p, glom %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxglom returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RXHEADER FAILED: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@brcmf_msg_level = external dso_local local_unnamed_addr global i32, align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxHdr:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"brcmu_pkt_buf_get_skb failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"read %d bytes from channel %d failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"frame length mismatch:read %d, should be %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"readahead on control packet %d?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx Data:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"glom descriptor, %d bytes:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Glom Data:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: glom superframe w/o descriptor!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hit rx limit of %d frames\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"processed %d frames\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_rxglom = private unnamed_addr constant [18 x i8] c"brcmf_sdio_rxglom\00", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"start: glomd %p glom %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad glomd len(%d), ignore descriptor\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"descriptor len %d bad: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sublen %d not multiple of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bcm_pkt_buf_get_skb failed, num %d len %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"allocated %d-byte packet chain for %d subframes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"glomdesc mismatch: nextlen %d glomdesc %d rxseq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"try superframe read, packet chain:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"    %p: %p len 0x%04x (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"glom read of %d bytes failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SUPERFRAME:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"subframe:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rx Subframe Data:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"subframe %d to stack, %p (%p/%d) nxt/lnk %p/%p\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_rxfail = private unnamed_addr constant [18 x i8] c"brcmf_sdio_rxfail\00", align 1
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sterminate frame%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abort command, \00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", send NAK\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"count growing: last 0x%04x now 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"count never zeroed: last 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flush took %d iterations\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_brcmf_hexdump = external dso_local global %struct.tracepoint, align 4
@.str.77 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", [34 x i8] zeroinitializer }, align 32
@trace_brcmf_hexdump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_hdparse = private unnamed_addr constant [19 x i8] c"brcmf_sdio_hdparse\00", align 1
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW header checksum error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HW header length error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HW superframe header length error\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HW subframe header length error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Glom descriptor found in superframe head\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HW header length too long\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Wrong channel for superframe\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wrong channel for subframe\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"seq %d: bad data offset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"seq %d, expected %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"seq %d: next length error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"seq %d: max tx seq number error\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_brcmf_sdpcm_hdr = external dso_local global %struct.tracepoint, align 4
@trace_brcmf_sdpcm_hdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.brcmf_sdio_read_control = private unnamed_addr constant [24 x i8] c"brcmf_sdio_read_control\00", align 1
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d-byte control read exceeds %d-byte buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d-byte ctl frame (%d-byte ctl data) exceeds %d-byte limit\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"read %d control bytes failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxCtrl:\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"last control frame is being processed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_tx_ctrlframe = private unnamed_addr constant [24 x i8] c"brcmf_sdio_tx_ctrlframe\00", align 1
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx Frame:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxHdr:\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_txfail = private unnamed_addr constant [18 x i8] c"brcmf_sdio_txfail\00", align 1
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sdio error, abort command and terminate frame\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_sendfromq = private unnamed_addr constant [21 x i8] c"brcmf_sdio_sendfromq\00", align 1
@__func__.brcmf_sdio_txpkt = private unnamed_addr constant [17 x i8] c"brcmf_sdio_txpkt\00", align 1
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tx Header:\0A\00", [20 x i8] zeroinitializer }, align 32
@brcmf_sdio_probe_attach.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.103, ptr @.str.20, ptr @.str.104, i8 3, i8 -34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmf_sdio_probe_attach\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"F1 signature read @0x%08x=0x%4x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"brcmfmac: F1 signature read @0x%08x=0x%4x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ChipClkCSR access: err %d wrote 0x%02x read 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@brcmf_sdio_buscore_ops = internal constant { %struct.brcmf_buscore_ops, [40 x i8] } { %struct.brcmf_buscore_ops { ptr @brcmf_sdio_buscore_read32, ptr @brcmf_sdio_buscore_write32, ptr @brcmf_sdio_buscoreprep, ptr null, ptr null, ptr @brcmf_sdio_buscore_activate }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brcmf_chip_attach failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get device parameters\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error enabling KSO\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_buscoreprep = private unnamed_addr constant [23 x i8] c"brcmf_sdio_buscoreprep\00", align 1
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error writing for HT off\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ChipClkCSR access: wrote 0x%02x read 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timeout on ALPAV wait, clkval 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_kso_init = private unnamed_addr constant [20 x i8] c"brcmf_sdio_kso_init\00", align 1
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error reading SBSDIO_FUNC1_SLEEPCSR\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error writing SBSDIO_FUNC1_SLEEPCSR\0A\00", [59 x i8] zeroinitializer }, align 32
@sdiod_drvstr_tab1_1v8 = internal constant { [8 x %struct.sdiod_drive_str], [16 x i8] } { [8 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 32, i8 6 }, %struct.sdiod_drive_str { i8 26, i8 7 }, %struct.sdiod_drive_str { i8 22, i8 4 }, %struct.sdiod_drive_str { i8 16, i8 5 }, %struct.sdiod_drive_str { i8 12, i8 2 }, %struct.sdiod_drive_str { i8 8, i8 3 }, %struct.sdiod_drive_str { i8 4, i8 0 }, %struct.sdiod_drive_str { i8 0, i8 1 }], [16 x i8] zeroinitializer }, align 32
@sdiod_drvstr_tab6_1v8 = internal constant { [4 x %struct.sdiod_drive_str], [24 x i8] } { [4 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 3, i8 3 }, %struct.sdiod_drive_str { i8 2, i8 2 }, %struct.sdiod_drive_str { i8 1, i8 1 }, %struct.sdiod_drive_str zeroinitializer], [24 x i8] zeroinitializer }, align 32
@sdiod_drvstr_tab2_3v3 = internal constant { [4 x %struct.sdiod_drive_str], [24 x i8] } { [4 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 16, i8 7 }, %struct.sdiod_drive_str { i8 12, i8 5 }, %struct.sdiod_drive_str { i8 8, i8 3 }, %struct.sdiod_drive_str { i8 4, i8 1 }], [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_drivestrengthinit = private unnamed_addr constant [29 x i8] c"brcmf_sdio_drivestrengthinit\00", align 1
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Invalid SDIO Drive strength for chip %s, strength=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@sdiod_drive_strength_tab5_1v8 = internal constant { [7 x %struct.sdiod_drive_str], [18 x i8] } { [7 x %struct.sdiod_drive_str] [%struct.sdiod_drive_str { i8 6, i8 7 }, %struct.sdiod_drive_str { i8 5, i8 6 }, %struct.sdiod_drive_str { i8 4, i8 5 }, %struct.sdiod_drive_str { i8 3, i8 4 }, %struct.sdiod_drive_str { i8 2, i8 2 }, %struct.sdiod_drive_str { i8 1, i8 1 }, %struct.sdiod_drive_str zeroinitializer], [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"No SDIO driver strength init needed for chip %s rev %d pmurev %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SDIO: %d mA (req=%d mA) drive strength selected, set to 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_watchdog = private unnamed_addr constant [24 x i8] c"brcmf_sdio_bus_watchdog\00", align 1
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idle\0A\00", [26 x i8] zeroinitializer }, align 32
@brcmf_sdio_readconsole.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.120, ptr @.str.20, ptr @.str.121, i8 2, i8 -38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmf_sdio_readconsole\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONSOLE: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmfmac: CONSOLE: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".bin\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".txt\00", [27 x i8] zeroinitializer }, align 32
@brcmf_sdio_fwnames = internal constant { [23 x %struct.brcmf_firmware_mapping], [76 x i8] } { [23 x %struct.brcmf_firmware_mapping] [%struct.brcmf_firmware_mapping { i32 43143, i32 -1, ptr @BRCM_43143_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 31, ptr @BRCM_43241B0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 32, ptr @BRCM_43241B4_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17188, i32 -64, ptr @BRCM_43241B5_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17193, i32 -1, ptr @BRCM_4329_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17200, i32 -1, ptr @BRCM_4330_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17204, i32 -1, ptr @BRCM_4334_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43340, i32 -1, ptr @BRCM_43340_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43341, i32 -1, ptr @BRCM_43340_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17205, i32 -1, ptr @BRCM_4335_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43362, i32 -2, ptr @BRCM_43362_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17209, i32 -1, ptr @BRCM_4339_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 1, ptr @BRCM_43430A0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 2, ptr @BRCM_43430A1_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43430, i32 -4, ptr @BRCM_43430B0_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17221, i32 512, ptr @BRCM_43456_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17221, i32 -576, ptr @BRCM_43455_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17236, i32 -1, ptr @BRCM_4354_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17238, i32 -1, ptr @BRCM_4356_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17241, i32 -1, ptr @BRCM_4359_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17267, i32 -1, ptr @BRCM_4373_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43012, i32 -1, ptr @BRCM_43012_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43752, i32 -1, ptr @BRCM_43752_FIRMWARE_BASENAME }], [76 x i8] zeroinitializer }, align 32
@BRCM_43143_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43143-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_43241B0_FIRMWARE_BASENAME = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm/brcmfmac43241b0-sdio\00", [38 x i8] zeroinitializer }, align 32
@BRCM_43241B4_FIRMWARE_BASENAME = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm/brcmfmac43241b4-sdio\00", [38 x i8] zeroinitializer }, align 32
@BRCM_43241B5_FIRMWARE_BASENAME = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm/brcmfmac43241b5-sdio\00", [38 x i8] zeroinitializer }, align 32
@BRCM_4329_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4329-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4330_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4330-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4334_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4334-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_43340_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43340-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4335_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4335-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_43362_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43362-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4339_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4339-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_43430A0_FIRMWARE_BASENAME = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm/brcmfmac43430a0-sdio\00", [38 x i8] zeroinitializer }, align 32
@BRCM_43430A1_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43430-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_43430B0_FIRMWARE_BASENAME = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm/brcmfmac43430b0-sdio\00", [38 x i8] zeroinitializer }, align 32
@BRCM_43456_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43456-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_43455_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43455-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_4354_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4354-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4356_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4356-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4359_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4359-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_4373_FIRMWARE_BASENAME = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm/brcmfmac4373-sdio\00", [41 x i8] zeroinitializer }, align 32
@BRCM_43012_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43012-sdio\00", [40 x i8] zeroinitializer }, align 32
@BRCM_43752_FIRMWARE_BASENAME = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm/brcmfmac43752-sdio\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_firmware_callback = private unnamed_addr constant [29 x i8] c"brcmf_sdio_firmware_callback\00", align 1
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enter: dev=%s, err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to force clock for F2: err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable F2: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set F2 watermark to 0x%x*4 bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@brcmf_sdio_bus_ops = internal constant { %struct.brcmf_bus_ops, [48 x i8] } { %struct.brcmf_bus_ops { ptr @brcmf_sdio_bus_preinit, ptr @brcmf_sdio_bus_stop, ptr @brcmf_sdio_bus_txdata, ptr @brcmf_sdio_bus_txctl, ptr @brcmf_sdio_bus_rxctl, ptr @brcmf_sdio_bus_gettxq, ptr @brcmf_sdio_wowl_config, ptr @brcmf_sdio_bus_get_ramsize, ptr @brcmf_sdio_bus_get_memdump, ptr @brcmf_sdio_get_fwname, ptr @brcmf_sdio_debugfs_create, ptr @brcmf_sdio_bus_reset }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intr register failed:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmf_alloc failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmf_attach failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed: dev=%s, err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_download_firmware = private unnamed_addr constant [29 x i8] c"brcmf_sdio_download_firmware\00", align 1
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware rstvec: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dongle image file download failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dongle nvram file download failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error getting out of ARM core reset\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_download_code_file = private unnamed_addr constant [30 x i8] c"brcmf_sdio_download_code_file\00", align 1
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d on writing %d membytes at 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_verifymemory = private unnamed_addr constant [24 x i8] c"brcmf_sdio_verifymemory\00", align 1
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Compare RAM dl & ul at 0x%08x; size=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d on reading %d membytes at 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Downloaded RAM image is corrupted, block offset is %d, len is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_download_nvram = private unnamed_addr constant [26 x i8] c"brcmf_sdio_download_nvram\00", align 1
@.str.141 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error %d on writing %d nvram bytes at 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_sr_init = private unnamed_addr constant [19 x i8] c"brcmf_sdio_sr_init\00", align 1
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error reading SBSDIO_FUNC1_WAKEUPCTRL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error writing SBSDIO_FUNC1_WAKEUPCTRL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error writing SDIO_CCCR_BRCM_CARDCAP\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error writing SBSDIO_FUNC1_CHIPCLKCSR\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SR enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus:txglom\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bus:txglomalign\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus:rxglom\00", [21 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_stop = private unnamed_addr constant [20 x i8] c"brcmf_sdio_bus_stop\00", align 1
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disable SDIO interrupts\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_txdata = private unnamed_addr constant [22 x i8] c"brcmf_sdio_bus_txdata\00", align 1
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enter: pkt: data %p len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"deferring pktq len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"out of bus->txq !!!\0A\00", [43 x i8] zeroinitializer }, align 32
@qcount = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@__func__.brcmf_sdio_prec_enq = private unnamed_addr constant [20 x i8] c"brcmf_sdio_prec_enq\00", align 1
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"brcmu_pktq_pdeq_tail() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmu_pktq_penq() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_txctl = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_txctl\00", align 1
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_frame timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctrl_frame complete, err=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_rxctl = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_rxctl\00", align 1
@.str.158 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"resumed on rxctl frame, got %d expected %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resumed on timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cancelled\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resumed for unknown reason?\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_get_memdump = private unnamed_addr constant [27 x i8] c"brcmf_sdio_bus_get_memdump\00", align 1
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dump at 0x%08x: size=%zu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forensics\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"counters\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"console_interval\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_assert_info = private unnamed_addr constant [23 x i8] c"brcmf_sdio_assert_info\00", align 1
@.str.167 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"firmware not built with -assert\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no assert in dongle\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dongle assert: %s:%d: assert(%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_trap_info = private unnamed_addr constant [21 x i8] c"brcmf_sdio_trap_info\00", align 1
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no trap in firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [208 x i8], [48 x i8] } { [208 x i8] c"dongle trap info: type 0x%x @ epc 0x%08x\0A  cpsr 0x%08x spsr 0x%08x sp 0x%08x\0A  lr   0x%08x pc   0x%08x offset 0x%x\0A  r0   0x%08x r1   0x%08x r2 0x%08x r3 0x%08x\0A  r4   0x%08x r5   0x%08x r6 0x%08x r7 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@brcmf_sdio_trap_info.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @__func__.brcmf_sdio_trap_info, ptr @.str.20, ptr @.str.171, i8 3, i8 2, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [218 x i8], [38 x i8] } { [218 x i8] c"brcmfmac: dongle trap info: type 0x%x @ epc 0x%08x\0A  cpsr 0x%08x spsr 0x%08x sp 0x%08x\0A  lr   0x%08x pc   0x%08x offset 0x%x\0A  r0   0x%08x r1   0x%08x r2 0x%08x r3 0x%08x\0A  r4   0x%08x r5   0x%08x r6 0x%08x r7 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [482 x i8], [126 x i8] } { [482 x i8] c"intrcount:    %u\0Alastintrs:    %u\0Apollcnt:      %u\0Aregfails:     %u\0Atx_sderrs:    %u\0Afcqueued:     %u\0Arxrtx:        %u\0Arx_toolong:   %u\0Arxc_errors:   %u\0Arx_hdrfail:   %u\0Arx_badhdr:    %u\0Arx_badseq:    %u\0Afc_rcvd:      %u\0Afc_xoff:      %u\0Afc_xon:       %u\0Arxglomfail:   %u\0Arxglomframes: %u\0Arxglompkts:   %u\0Af2rxhdrs:     %u\0Af2rxdata:     %u\0Af2txdata:     %u\0Af1regdata:    %u\0Atickcnt:      %u\0Atx_ctlerrs:   %lu\0Atx_ctlpkts:   %lu\0Arx_ctlerrs:   %lu\0Arx_ctlpkts:   %lu\0Arx_readahead: %lu\0A\00", [126 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_reset = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_reset\00", align 1
@.str.174 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to probe after sdio device reset: ret %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_checkdied = private unnamed_addr constant [21 x i8] c"brcmf_sdio_checkdied\00", align 1
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"assertion in dongle\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware trap in dongle\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_clkctl = private unnamed_addr constant [18 x i8] c"brcmf_sdio_clkctl\00", align 1
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request for %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d -> %d\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_sdclk = private unnamed_addr constant [17 x i8] c"brcmf_sdio_sdclk\00", align 1
@__func__.brcmf_sdio_htclk = private unnamed_addr constant [17 x i8] c"brcmf_sdio_htclk\00", align 1
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HT Avail request error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HT Avail read error: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Devctl error setting CA: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLKCTL: set PENDING\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HT Avail timeout (%d): clkctl 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CLKCTL: turned ON\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HT Clock should be on\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CLKCTL: turned OFF\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed access turning clock off: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_bus_sleep = private unnamed_addr constant [21 x i8] c"brcmf_sdio_bus_sleep\00", align 1
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter: request %s currently %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLEEP\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WAKE\00", [27 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no clock, set ALP\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error while changing bus sleep state %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new state %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Exit: err=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_kso_control = private unnamed_addr constant [23 x i8] c"brcmf_sdio_kso_control\00", align 1
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Enter: on=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"try_cnt=%d rd_val=0x%x err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max tries: rd_val=0x%x err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1127219212, i64 1127481361, i64 2827419665, i64 2841772045]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.200 = internal global [11 x i64] [i64 9, i64 16, i64 17193, i64 17209, i64 17236, i64 17238, i64 17241, i64 17267, i64 43012, i64 43455, i64 43752]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 16, i64 17205, i64 17209]
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3643, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3646, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3656, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3661, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4458, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4461, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4465, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4470, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4474, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4475, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4476, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4477, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4480, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4483, i32 22 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4487, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4521, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4532, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4591, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1984, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2610, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2661, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2666, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2671, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2677, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2708, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2724, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1131, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1137, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1140, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1154, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1158, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1194, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1055, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1060, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1080, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1088, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1877, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1880, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1894, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1902, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1938, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1952, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1980, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2001, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2013, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2019, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2021, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2028, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2064, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2066, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1528, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1537, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1549, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1555, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1571, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1584, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1588, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1607, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1609, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1630, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1641, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1669, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1693, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1706, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1209, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1232, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1239, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1241, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 65, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 108, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1388, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1394, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1399, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1403, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1412, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1420, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1427, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1433, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1439, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1446, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1457, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1472, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1791, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1798, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1811, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1821, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1827, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 2789, i32 6 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2439, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2441, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1263, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2241, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3961, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3976, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant [23 x i8] c"brcmf_sdio_buscore_ops\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3938, i32 39 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3984, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4004, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4034, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3852, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3861, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3872, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3506, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3516, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant [22 x i8] c"sdiod_drvstr_tab1_1v8\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 569, i32 37 }
@___asan_gen_.568 = private unnamed_addr constant [22 x i8] c"sdiod_drvstr_tab6_1v8\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 592, i32 37 }
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"sdiod_drvstr_tab2_3v3\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 599, i32 37 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3806, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant [30 x i8] c"sdiod_drive_strength_tab5_1v8\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 581, i32 37 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3815, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3837, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 87, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3733, i32 5 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2923, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4417, i32 5 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4418, i32 5 }
@___asan_gen_.610 = private unnamed_addr constant [19 x i8] c"brcmf_sdio_fwnames\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 637, i32 44 }
@___asan_gen_.613 = private unnamed_addr constant [29 x i8] c"BRCM_43143_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 606, i32 1 }
@___asan_gen_.616 = private unnamed_addr constant [31 x i8] c"BRCM_43241B0_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 607, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant [31 x i8] c"BRCM_43241B4_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 608, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant [31 x i8] c"BRCM_43241B5_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 609, i32 1 }
@___asan_gen_.625 = private unnamed_addr constant [28 x i8] c"BRCM_4329_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 610, i32 1 }
@___asan_gen_.628 = private unnamed_addr constant [28 x i8] c"BRCM_4330_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 611, i32 1 }
@___asan_gen_.631 = private unnamed_addr constant [28 x i8] c"BRCM_4334_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 612, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant [29 x i8] c"BRCM_43340_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 613, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant [28 x i8] c"BRCM_4335_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 614, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant [29 x i8] c"BRCM_43362_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 615, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant [28 x i8] c"BRCM_4339_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 616, i32 1 }
@___asan_gen_.646 = private unnamed_addr constant [31 x i8] c"BRCM_43430A0_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 617, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant [31 x i8] c"BRCM_43430A1_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 619, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant [31 x i8] c"BRCM_43430B0_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 620, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant [29 x i8] c"BRCM_43456_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 622, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant [29 x i8] c"BRCM_43455_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 621, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant [28 x i8] c"BRCM_4354_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 623, i32 1 }
@___asan_gen_.664 = private unnamed_addr constant [28 x i8] c"BRCM_4356_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 624, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant [28 x i8] c"BRCM_4359_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 625, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant [28 x i8] c"BRCM_4373_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 626, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant [29 x i8] c"BRCM_43012_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 627, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [29 x i8] c"BRCM_43752_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 628, i32 1 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4213, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4251, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4261, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4273, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant [19 x i8] c"brcmf_sdio_bus_ops\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4182, i32 35 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4371, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4384, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4391, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4407, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3395, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3400, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3408, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3414, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3356, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3305, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3319, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3324, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3376, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3460, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3466, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3475, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3482, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3488, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3554, i32 35 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3561, i32 35 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3572, i32 49 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2512, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2804, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2822, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2831, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant [7 x i8] c"qcount\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 538, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2784, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2791, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2957, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2964, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3271, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3274, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3277, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3280, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3608, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3225, i32 32 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3226, i32 32 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3228, i32 21 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3092, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3095, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3114, i32 18 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3043, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3054, i32 7 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3068, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3180, i32 6 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4175, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3132, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3135, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 944, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 957, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 806, i32 4 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 814, i32 4 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 824, i32 5 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 831, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 861, i32 4 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 868, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 873, i32 5 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 892, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 894, i32 4 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 969, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 985, i32 5 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 995, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1011, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1014, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 704, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 766, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.899 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 770, i32 3 }
@llvm.compiler.used = appending global [264 x ptr] [ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmware368, ptr @__UNIQUE_ID_firmware369, ptr @__UNIQUE_ID_firmware370, ptr @__UNIQUE_ID_firmware371, ptr @__UNIQUE_ID_firmware372, ptr @__UNIQUE_ID_firmware373, ptr @__UNIQUE_ID_firmware374, ptr @__UNIQUE_ID_firmware375, ptr @__UNIQUE_ID_firmware376, ptr @__UNIQUE_ID_firmware377, ptr @__UNIQUE_ID_firmware378, ptr @__UNIQUE_ID_firmware379, ptr @__UNIQUE_ID_firmware380, ptr @__UNIQUE_ID_firmware381, ptr @__UNIQUE_ID_firmware382, ptr @__UNIQUE_ID_firmware383, ptr @__UNIQUE_ID_firmware384, ptr @__UNIQUE_ID_firmware385, ptr @__UNIQUE_ID_firmware386, ptr @__UNIQUE_ID_firmware387, ptr @brcmf_sdio_probe._entry, ptr @brcmf_sdio_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @brcmf_sdio_probe.__key, ptr @.str.6, ptr @.str.7, ptr @brcmf_sdio_probe.__key.8, ptr @.str.9, ptr @brcmf_sdio_probe.__key.10, ptr @.str.11, ptr @brcmf_sdio_probe.__key.12, ptr @.str.13, ptr @brcmf_sdio_probe.__key.14, ptr @.str.15, ptr @brcmf_sdio_probe.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @brcmf_sdio_buscore_ops, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @sdiod_drvstr_tab1_1v8, ptr @sdiod_drvstr_tab6_1v8, ptr @sdiod_drvstr_tab2_3v3, ptr @.str.115, ptr @sdiod_drive_strength_tab5_1v8, ptr @.str.116, ptr @.str.117, ptr @init_completion.__key, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @brcmf_sdio_fwnames, ptr @BRCM_43143_FIRMWARE_BASENAME, ptr @BRCM_43241B0_FIRMWARE_BASENAME, ptr @BRCM_43241B4_FIRMWARE_BASENAME, ptr @BRCM_43241B5_FIRMWARE_BASENAME, ptr @BRCM_4329_FIRMWARE_BASENAME, ptr @BRCM_4330_FIRMWARE_BASENAME, ptr @BRCM_4334_FIRMWARE_BASENAME, ptr @BRCM_43340_FIRMWARE_BASENAME, ptr @BRCM_4335_FIRMWARE_BASENAME, ptr @BRCM_43362_FIRMWARE_BASENAME, ptr @BRCM_4339_FIRMWARE_BASENAME, ptr @BRCM_43430A0_FIRMWARE_BASENAME, ptr @BRCM_43430A1_FIRMWARE_BASENAME, ptr @BRCM_43430B0_FIRMWARE_BASENAME, ptr @BRCM_43456_FIRMWARE_BASENAME, ptr @BRCM_43455_FIRMWARE_BASENAME, ptr @BRCM_4354_FIRMWARE_BASENAME, ptr @BRCM_4356_FIRMWARE_BASENAME, ptr @BRCM_4359_FIRMWARE_BASENAME, ptr @BRCM_4373_FIRMWARE_BASENAME, ptr @BRCM_43012_FIRMWARE_BASENAME, ptr @BRCM_43752_FIRMWARE_BASENAME, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @brcmf_sdio_bus_ops, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @qcount, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_buscore_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdiod_drvstr_tab1_1v8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdiod_drvstr_tab6_1v8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdiod_drvstr_tab2_3v3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdiod_drive_strength_tab5_1v8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_fwnames to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43143_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43241B0_FIRMWARE_BASENAME to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43241B4_FIRMWARE_BASENAME to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43241B5_FIRMWARE_BASENAME to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4329_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4330_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4334_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43340_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4335_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43362_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4339_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43430A0_FIRMWARE_BASENAME to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43430A1_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43430B0_FIRMWARE_BASENAME to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43456_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43455_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4354_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4356_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4359_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4373_FIRMWARE_BASENAME to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43012_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43752_FIRMWARE_BASENAME to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_bus_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcount to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 218, i32 256, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 482, i32 608, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_trigger_dpc(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_triggered = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 59
  %0 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpc_triggered, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dpc_triggered, align 4
  %brcmf_wq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 57
  %3 = ptrtoint ptr %brcmf_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %brcmf_wq, align 4
  %datawork = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 58
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %datawork) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_isr(ptr noundef %bus, i1 noundef zeroext %in_isr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str) #12
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str.1) #12
  br label %return

if.end:                                           ; preds = %entry
  %sdcnt = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62
  %0 = ptrtoint ptr %sdcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sdcnt, align 4
  br i1 %in_isr, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ipend = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipend, i32 noundef 4) #12
  %2 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %ipend, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call = tail call fastcc i32 @brcmf_sdio_intr_rstatus(ptr noundef nonnull %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else.if.end10_crit_edge, label %do.body7

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str.2) #12
  br label %if.end10

if.end10:                                         ; preds = %do.body7, %if.else.if.end10_crit_edge, %if.then4
  %intr = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 30
  %3 = ptrtoint ptr %intr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %intr, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  br i1 %tobool11.not, label %do.body13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_isr, ptr noundef nonnull @.str.3) #12
  br label %if.end15

if.end15:                                         ; preds = %do.body13, %if.end10.if.end15_crit_edge
  %dpc_triggered = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 59
  %5 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dpc_triggered, align 4
  %brcmf_wq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 57
  %6 = ptrtoint ptr %brcmf_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %brcmf_wq, align 4
  %datawork = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 58
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %datawork) #12
  br label %return

return:                                           ; preds = %if.end15, %do.body1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_intr_rstatus(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #12
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !563
  %base = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add = add i32 %4, 32
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %call = call i32 @brcmf_sdiod_readl(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %ret) #12
  %f1regdata = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 21
  %7 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f1regdata, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %f1regdata, align 4
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostintmask = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 3
  %11 = ptrtoint ptr %hostintmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hostintmask, align 4
  %and = and i32 %12, %call
  %fcstate = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 5
  %and1 = lshr i32 %and, 4
  %and1.lobit = and i32 %and1, 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fcstate, i32 noundef 4) #12
  %13 = ptrtoint ptr %fcstate to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %and1.lobit, ptr %fcstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  call void @brcmf_sdiod_writel(ptr noundef %15, i32 noundef %add, i32 noundef %and, ptr noundef nonnull %ret) #12
  %16 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f1regdata, align 4
  %inc8 = add i32 %17, 1
  store i32 %inc8, ptr %f1regdata, align 4
  %intstatus = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 4
  %call.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %intstatus, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %intstatus, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %intstatus, ptr %intstatus, i32 %and, ptr elementtype(i32) %intstatus) #12, !srcloc !564
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end9 ], [ %10, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_sdio_probe(ptr noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  %fwnames.i = alloca [2 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 1692) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdiodev, ptr %call7.i.i, align 8
  %bus2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 4
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %bus2, align 4
  %glom = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 22
  %lock.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 22, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %3 = ptrtoint ptr %glom to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %glom, ptr %glom, align 4
  %prev.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %glom, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %txbound = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %txbound to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 20, ptr %txbound, align 8
  %rxbound = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %rxbound to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50, ptr %rxbound, align 4
  %txminmax = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %txminmax to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %txminmax, align 4
  %tx_seq = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %tx_seq to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %tx_seq, align 1
  %10 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdiodev, align 4
  %init_name.i = getelementptr inbounds %struct.sdio_func, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.sdio_func, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end.dev_name.exit_crit_edge ]
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 655386, i32 noundef 1, ptr noundef %retval.0.i) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body7, label %if.end10

do.body7:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.5) #12
  br label %fail

if.end10:                                         ; preds = %dev_name.exit
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %sdiodev) #12
  %datawork = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 58
  tail call void @__init_work(ptr noundef %datawork, i32 noundef 0) #12
  %16 = ptrtoint ptr %datawork to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %datawork, align 4
  %lockdep_map = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 58, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @brcmf_sdio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry15 = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 58, i32 1
  %17 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry15, ptr %entry15, align 8
  %prev.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 58, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 58, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @brcmf_sdio_dataworker, ptr %func, align 8
  %brcmf_wq = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 57
  %20 = ptrtoint ptr %brcmf_wq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call4, ptr %brcmf_wq, align 8
  %call19 = tail call fastcc zeroext i1 @brcmf_sdio_probe_attach(ptr noundef nonnull %call7.i.i)
  br i1 %call19, label %do.body25, label %do.body21

do.body21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.7) #12
  br label %fail

do.body25:                                        ; preds = %if.end10
  %rxctl_lock = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %rxctl_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @brcmf_sdio_probe.__key.8, i16 noundef signext 3) #12
  %txq_lock = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 50
  tail call void @__raw_spin_lock_init(ptr noundef %txq_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @brcmf_sdio_probe.__key.10, i16 noundef signext 3) #12
  %ctrl_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 51
  tail call void @__init_waitqueue_head(ptr noundef %ctrl_wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @brcmf_sdio_probe.__key.12) #12
  %dcmd_resp_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 52
  tail call void @__init_waitqueue_head(ptr noundef %dcmd_resp_wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @brcmf_sdio_probe.__key.14) #12
  %timer = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 53
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @brcmf_sdio_watchdog, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @brcmf_sdio_probe.__key.16) #12
  %watchdog_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 54
  %21 = ptrtoint ptr %watchdog_wait to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %watchdog_wait, align 8
  %wait.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 54, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @init_completion.__key) #12
  %22 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdiodev, align 4
  %init_name.i145 = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i145, align 8
  %tobool.not.i146 = icmp eq ptr %25, null
  br i1 %tobool.not.i146, label %if.end.i147, label %do.body25.dev_name.exit149_crit_edge

do.body25.dev_name.exit149_crit_edge:             ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit149

if.end.i147:                                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %dev43 = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev43, align 4
  br label %dev_name.exit149

dev_name.exit149:                                 ; preds = %if.end.i147, %do.body25.dev_name.exit149_crit_edge
  %retval.0.i148 = phi ptr [ %27, %if.end.i147 ], [ %25, %do.body25.dev_name.exit149_crit_edge ]
  %call45 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @brcmf_sdio_watchdog_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i148) #12
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.end49

if.end49:                                         ; preds = %dev_name.exit149
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 @wake_up_process(ptr noundef %call45) #12
  %watchdog_tsk = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 55
  %28 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call45, ptr %watchdog_tsk, align 8
  br label %if.end59

do.end55:                                         ; preds = %dev_name.exit149
  call void @__sanitizer_cov_trace_pc() #14
  %watchdog_tsk153 = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 55
  %29 = ptrtoint ptr %watchdog_tsk153 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call45, ptr %watchdog_tsk153, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  %30 = ptrtoint ptr %watchdog_tsk153 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %watchdog_tsk153, align 8
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %if.end49
  %dpc_triggered = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 59
  %31 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %dpc_triggered, align 8
  %dpc_running = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 60
  %32 = ptrtoint ptr %dpc_running to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %dpc_running, align 1
  %tx_hdrlen = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 65
  %33 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 12, ptr %tx_hdrlen, align 2
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %func2, align 4
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_blksize, align 4
  %blocksize = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %blocksize, align 8
  %41 = tail call i32 @llvm.umin.i32(i32 %39, i32 512)
  %roundup = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %roundup to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %roundup, align 4
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %35, align 4
  tail call void @sdio_claim_host(ptr noundef %44) #12
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %func266 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %func266 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %func266, align 4
  %call67 = tail call i32 @sdio_disable_func(ptr noundef %48) #12
  %rxflow = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 44
  %49 = ptrtoint ptr %rxflow to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %rxflow, align 1
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  tail call void @sdio_writeb(ptr noundef %53, i8 noundef zeroext 0, i32 noundef 65550, ptr noundef null) #12
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void @sdio_release_host(ptr noundef %57) #12
  %clkstate = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 39
  %58 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %clkstate, align 4
  %idletime = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 40
  %59 = ptrtoint ptr %idletime to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %idletime, align 8
  %idleclock = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 42
  %60 = ptrtoint ptr %idleclock to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %idleclock, align 8
  %sr_enabled = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 63
  %61 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %sr_enabled, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.21) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fwnames.i) #12
  %62 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames.i, i32 0, i32 1
  %63 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames.i, i32 0, i32 1
  %64 = getelementptr inbounds [2 x %struct.brcmf_fw_name], ptr %fwnames.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %fwnames.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.123, ptr %fwnames.i, align 4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i, align 8
  %fw_name.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %fw_name.i, ptr %62, align 4
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.124, ptr %63, align 4
  %nvram_name.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %67, i32 0, i32 19
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %nvram_name.i, ptr %64, align 4
  %ci.i = getelementptr inbounds %struct.brcmf_sdio, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ci.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %chiprev.i = getelementptr inbounds %struct.brcmf_chip, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chiprev.i, align 4
  %call.i = call ptr @brcmf_fw_alloc_request(i32 noundef %74, i32 noundef %76, ptr noundef nonnull @brcmf_sdio_fwnames, i32 noundef 23, ptr noundef nonnull %fwnames.i, i32 noundef 2) #12
  %tobool.not.i151 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i151, label %brcmf_sdio_prepare_fw_request.exit.thread, label %if.end78

brcmf_sdio_prepare_fw_request.exit.thread:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwnames.i) #12
  br label %fail

if.end78:                                         ; preds = %if.end59
  %type.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 1, i32 2
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %type.i, align 4
  %type9.i = getelementptr %struct.brcmf_fw_request, ptr %call.i, i32 3
  %78 = ptrtoint ptr %type9.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %type9.i, align 4
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i.i, align 8
  %settings.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %settings.i, align 4
  %board_type.i = getelementptr inbounds %struct.brcmf_mp_device, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %board_type.i, align 4
  %board_type11.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 0, i32 3
  %85 = ptrtoint ptr %board_type11.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %board_type11.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwnames.i) #12
  %dev79 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 5
  %86 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev79, align 4
  %call80 = call i32 @brcmf_fw_get_firmwares(ptr noundef %87, ptr noundef nonnull %call.i, ptr noundef nonnull @brcmf_sdio_firmware_callback) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end78.cleanup_crit_edge, label %do.body83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_probe, ptr noundef nonnull @.str.22, i32 noundef %call80) #12
  call void @kfree(ptr noundef nonnull %call.i) #12
  br label %fail

fail:                                             ; preds = %do.body83, %brcmf_sdio_prepare_fw_request.exit.thread, %do.body21, %do.body7, %entry.fail_crit_edge
  call void @brcmf_sdio_remove(ptr noundef %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end78.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %call7.i.i, %if.end78.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_freezer_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_dataworker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1524
  %dpc_running = getelementptr i8, ptr %work, i32 45
  %0 = ptrtoint ptr %dpc_running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dpc_running, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !565
  tail call void @arm_heavy_mb() #12
  %dpc_triggered = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %dpc_triggered, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not20 = icmp eq i8 %2, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %idlecount = getelementptr i8, ptr %work, i32 -288
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dpc_triggered, align 4
  tail call fastcc void @brcmf_sdio_dpc(ptr noundef %add.ptr)
  %4 = ptrtoint ptr %idlecount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idlecount, align 4
  %5 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %dpc_triggered, align 4, !range !562
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %7 = ptrtoint ptr %dpc_running to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dpc_running, align 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call = tail call zeroext i1 @brcmf_sdiod_freezing(ptr noundef %9) #12
  br i1 %call, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void @brcmf_sdiod_change_state(ptr noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void @brcmf_sdiod_try_freeze(ptr noundef %13) #12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void @brcmf_sdiod_change_state(ptr noundef %15, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @brcmf_sdio_probe_attach(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #12
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 4
  %call = tail call i32 @brcmf_chip_enum_base(i16 noundef zeroext %8) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmf_sdio_probe_attach.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmf_sdio_probe_attach, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !566

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @brcmf_sdiod_readl(ptr noundef %2, i32 noundef %call, ptr noundef null) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmf_sdio_probe_attach.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.105, i32 noundef %call, i32 noundef %call7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %10, i8 noundef zeroext 40, i32 noundef 65550, ptr noundef nonnull %err) #12
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  br label %do.body17

if.end13:                                         ; preds = %do.end
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call12 = call zeroext i8 @sdio_readb(ptr noundef %16, i32 noundef 65550, ptr noundef nonnull %err) #12
  %phi.cast = zext i8 %call12 to i32
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  %and = and i32 %phi.cast, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and)
  %cmp.not = icmp eq i32 %and, 40
  %or.cond = select i1 %tobool14.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end21, label %if.end13.do.body17_crit_edge

if.end13.do.body17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.body17:                                        ; preds = %if.end13.do.body17_crit_edge, %if.end13.thread
  %19 = phi i32 [ %14, %if.end13.thread ], [ %18, %if.end13.do.body17_crit_edge ]
  %clkctl.0233 = phi i32 [ 0, %if.end13.thread ], [ %phi.cast, %if.end13.do.body17_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.106, i32 noundef %19, i32 noundef 40, i32 noundef %clkctl.0233) #12
  br label %fail

if.end21:                                         ; preds = %if.end13
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %device23 = getelementptr inbounds %struct.sdio_func, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %device23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device23, align 4
  %call24 = call ptr @brcmf_chip_attach(ptr noundef %2, i16 noundef zeroext %23, ptr noundef nonnull @brcmf_sdio_buscore_ops) #12
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 1
  %24 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call24, ptr %ci, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body28, label %if.end32

do.body28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.107) #12
  %25 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ci, align 4
  br label %fail

if.end32:                                         ; preds = %if.end21
  %call34 = call ptr @brcmf_chip_get_core(ptr noundef %call24, i16 noundef zeroext 2089) #12
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 2
  %26 = ptrtoint ptr %sdio_core to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call34, ptr %sdio_core, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end32.fail_crit_edge, label %if.end38

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end38:                                         ; preds = %if.end32
  %27 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ci, align 4
  %call40 = call ptr @brcmf_chip_get_core(ptr noundef %28, i16 noundef zeroext 2048) #12
  %cc_core = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %2, i32 0, i32 3
  %29 = ptrtoint ptr %cc_core to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %cc_core, align 4
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %if.end38.fail_crit_edge, label %if.end44

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end44:                                         ; preds = %if.end38
  %dev = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %2, i32 0, i32 5
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ci, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_chip, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chiprev, align 4
  %call47 = call ptr @brcmf_get_module_param(ptr noundef %31, i32 noundef 0, i32 noundef %35, i32 noundef %37) #12
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %2, i32 0, i32 7
  %38 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call47, ptr %settings, align 4
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %do.body51, label %if.end54

do.body51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.108) #12
  br label %fail

if.end54:                                         ; preds = %if.end44
  %head_align = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 67
  %39 = ptrtoint ptr %head_align to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 4, ptr %head_align, align 4
  %sgentry_align = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 68
  %40 = ptrtoint ptr %sgentry_align to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4, ptr %sgentry_align, align 2
  %41 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %settings, align 4
  %sd_head_align = getelementptr inbounds %struct.brcmf_mp_device, ptr %42, i32 0, i32 8, i32 0, i32 6
  %43 = ptrtoint ptr %sd_head_align to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sd_head_align, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %44)
  %cmp58 = icmp ugt i16 %44, 4
  br i1 %cmp58, label %if.then60, label %if.end54.if.end65_crit_edge

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %head_align to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %head_align, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end54.if.end65_crit_edge
  %46 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %settings, align 4
  %sd_sgentry_align = getelementptr inbounds %struct.brcmf_mp_device, ptr %47, i32 0, i32 8, i32 0, i32 7
  %48 = ptrtoint ptr %sd_sgentry_align to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sd_sgentry_align, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %49)
  %cmp69 = icmp ugt i16 %49, 4
  br i1 %cmp69, label %if.then71, label %if.end65.if.end76_crit_edge

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %sgentry_align to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %sgentry_align, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end65.if.end76_crit_edge
  call void @brcmf_sdiod_sgtable_alloc(ptr noundef %2) #12
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  %call78 = call i32 @sdio_get_host_pm_caps(ptr noundef %52) #12
  %and79 = and i32 %call78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end76.if.end91_crit_edge, label %land.lhs.true

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end76
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 4
  %call82 = call i32 @sdio_get_host_pm_caps(ptr noundef %54) #12
  %and83 = and i32 %call82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %lor.lhs.false85, label %land.lhs.true.if.then90_crit_edge

land.lhs.true.if.then90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

lor.lhs.false85:                                  ; preds = %land.lhs.true
  %55 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %settings, align 4
  %oob_irq_supported = getelementptr inbounds %struct.brcmf_mp_device, ptr %56, i32 0, i32 8, i32 0, i32 2
  %57 = ptrtoint ptr %oob_irq_supported to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %oob_irq_supported, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool88.not = icmp eq i8 %58, 0
  br i1 %tobool88.not, label %lor.lhs.false85.if.end91_crit_edge, label %lor.lhs.false85.if.then90_crit_edge

lor.lhs.false85.if.then90_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

lor.lhs.false85.if.end91_crit_edge:               ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then90:                                        ; preds = %lor.lhs.false85.if.then90_crit_edge, %land.lhs.true.if.then90_crit_edge
  %bus_if = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %2, i32 0, i32 6
  %59 = ptrtoint ptr %bus_if to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus_if, align 4
  %wowl_supported = getelementptr inbounds %struct.brcmf_bus, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %wowl_supported to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %wowl_supported, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %lor.lhs.false85.if.end91_crit_edge, %if.end76.if.end91_crit_edge
  %62 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #12
  %64 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %err.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_kso_init, ptr noundef nonnull @.str) #12
  %rev.i = getelementptr inbounds %struct.brcmf_core, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %66)
  %cmp.i220 = icmp ult i16 %66, 12
  br i1 %cmp.i220, label %if.end91.brcmf_sdio_kso_init.exit.thread_crit_edge, label %if.end.i

if.end91.brcmf_sdio_kso_init.exit.thread_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_kso_init.exit.thread

if.end.i:                                         ; preds = %if.end91
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %70, i32 noundef 65567, ptr noundef nonnull %err.i) #12
  %71 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.brcmf_sdio_kso_init.exit_crit_edge

if.end.i.brcmf_sdio_kso_init.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_kso_init.exit

if.end6.i:                                        ; preds = %if.end.i
  %73 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool8.not.i = icmp eq i8 %73, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.brcmf_sdio_kso_init.exit.thread_crit_edge

if.end6.i.brcmf_sdio_kso_init.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_kso_init.exit.thread

if.then9.i:                                       ; preds = %if.end6.i
  %or.i = or i8 %call.i, 1
  %74 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  call void @sdio_writeb(ptr noundef %77, i8 noundef zeroext %or.i, i32 noundef 65567, ptr noundef nonnull %err.i) #12
  %78 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool14.not.i = icmp eq i32 %79, 0
  br i1 %tobool14.not.i, label %if.then9.i.brcmf_sdio_kso_init.exit.thread_crit_edge, label %if.then9.i.brcmf_sdio_kso_init.exit_crit_edge

if.then9.i.brcmf_sdio_kso_init.exit_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_kso_init.exit

if.then9.i.brcmf_sdio_kso_init.exit.thread_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_kso_init.exit.thread

brcmf_sdio_kso_init.exit.thread:                  ; preds = %if.then9.i.brcmf_sdio_kso_init.exit.thread_crit_edge, %if.end6.i.brcmf_sdio_kso_init.exit.thread_crit_edge, %if.end91.brcmf_sdio_kso_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #12
  br label %if.end98

brcmf_sdio_kso_init.exit:                         ; preds = %if.then9.i.brcmf_sdio_kso_init.exit_crit_edge, %if.end.i.brcmf_sdio_kso_init.exit_crit_edge
  %.str.113.sink = phi ptr [ @.str.113, %if.end.i.brcmf_sdio_kso_init.exit_crit_edge ], [ @.str.114, %if.then9.i.brcmf_sdio_kso_init.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_kso_init, ptr noundef nonnull %.str.113.sink) #12
  %80 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %retval.0.i221 = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i221)
  %tobool93.not = icmp eq i32 %retval.0.i221, 0
  br i1 %tobool93.not, label %brcmf_sdio_kso_init.exit.if.end98_crit_edge, label %do.body95

brcmf_sdio_kso_init.exit.if.end98_crit_edge:      ; preds = %brcmf_sdio_kso_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

do.body95:                                        ; preds = %brcmf_sdio_kso_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.109) #12
  br label %fail

if.end98:                                         ; preds = %brcmf_sdio_kso_init.exit.if.end98_crit_edge, %brcmf_sdio_kso_init.exit.thread
  %81 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %settings, align 4
  %drive_strength = getelementptr inbounds %struct.brcmf_mp_device, ptr %82, i32 0, i32 8, i32 0, i32 1
  %83 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %drive_strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool101.not = icmp eq i32 %84, 0
  %. = select i1 %tobool101.not, i32 6, i32 %84
  %85 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ci, align 4
  %cc_caps.i = getelementptr inbounds %struct.brcmf_chip, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cc_caps.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cc_caps.i, align 4
  %and.i = and i32 %88, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i222 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i222, label %if.end98.brcmf_sdio_drivestrengthinit.exit_crit_edge, label %if.end.i224

if.end98.brcmf_sdio_drivestrengthinit.exit_crit_edge: ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_drivestrengthinit.exit

if.end.i224:                                      ; preds = %if.end98
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  %shl.i = shl i32 %90, 16
  %pmurev.i = getelementptr inbounds %struct.brcmf_chip, ptr %86, i32 0, i32 6
  %91 = ptrtoint ptr %pmurev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pmurev.i, align 4
  %or.i223 = or i32 %shl.i, %92
  %93 = zext i32 %or.i223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i223, label %do.body7.i [
    i32 1127219212, label %if.end.i224.if.then15.i_crit_edge
    i32 1127481361, label %sw.bb1.i
    i32 -1467547631, label %sw.bb2.i
    i32 -1453195251, label %sw.bb6.i
  ]

if.end.i224.if.then15.i_crit_edge:                ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

sw.bb1.i:                                         ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

sw.bb2.i:                                         ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.)
  %cmp.i225 = icmp ugt i32 %., 3
  br i1 %cmp.i225, label %sw.bb2.i.if.then15.i_crit_edge, label %do.body.i

sw.bb2.i.if.then15.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

do.body.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.brcmf_chip, ptr %86, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_drivestrengthinit, ptr noundef nonnull @.str.115, ptr noundef %name.i, i32 noundef %.) #12
  br label %brcmf_sdio_drivestrengthinit.exit

sw.bb6.i:                                         ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

do.body7.i:                                       ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #14
  %name8.i = getelementptr inbounds %struct.brcmf_chip, ptr %86, i32 0, i32 10
  %chiprev.i = getelementptr inbounds %struct.brcmf_chip, ptr %86, i32 0, i32 1
  %94 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chiprev.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_drivestrengthinit, ptr noundef nonnull @.str.116, ptr noundef %name8.i, i32 noundef %95, i32 noundef %92) #12
  br label %brcmf_sdio_drivestrengthinit.exit

if.then15.i:                                      ; preds = %sw.bb6.i, %sw.bb2.i.if.then15.i_crit_edge, %sw.bb1.i, %if.end.i224.if.then15.i_crit_edge
  %str_tab.0.ph.i = phi ptr [ @sdiod_drvstr_tab2_3v3, %sw.bb2.i.if.then15.i_crit_edge ], [ @sdiod_drvstr_tab1_1v8, %if.end.i224.if.then15.i_crit_edge ], [ @sdiod_drvstr_tab6_1v8, %sw.bb1.i ], [ @sdiod_drive_strength_tab5_1v8, %sw.bb6.i ]
  %str_mask.0.ph.i = phi i32 [ -8, %sw.bb2.i.if.then15.i_crit_edge ], [ -14337, %if.end.i224.if.then15.i_crit_edge ], [ -6145, %sw.bb1.i ], [ -14337, %sw.bb6.i ]
  %str_shift.0.ph.i = phi i32 [ 0, %sw.bb2.i.if.then15.i_crit_edge ], [ 11, %if.end.i224.if.then15.i_crit_edge ], [ 11, %sw.bb1.i ], [ 11, %sw.bb6.i ]
  %call.i226 = call ptr @brcmf_chip_get_pmu(ptr noundef %86) #12
  %96 = ptrtoint ptr %str_tab.0.ph.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %str_tab.0.ph.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp19.not84.i = icmp eq i8 %97, 0
  br i1 %cmp19.not84.i, label %if.then15.i.for.end.i_crit_edge, label %for.body.i.preheader

if.then15.i.for.end.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.then15.i
  %conv18.i238 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %conv18.i238)
  %cmp24.not.i239 = icmp ult i32 %., %conv18.i238
  br i1 %cmp24.not.i239, label %for.inc.i.preheader, label %for.body.i.preheader.if.then26.i_crit_edge

for.body.i.preheader.if.then26.i_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

for.inc.i.preheader:                              ; preds = %for.body.i.preheader
  %98 = trunc i32 %. to i8
  br label %for.inc.i

for.body.i:                                       ; preds = %for.inc.i
  %cmp24.not.i = icmp ugt i8 %102, %98
  br i1 %cmp24.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.if.then26.i_crit_edge

for.body.i.if.then26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then26.i:                                      ; preds = %for.body.i.if.then26.i_crit_edge, %for.body.i.preheader.if.then26.i_crit_edge
  %arrayidx1686.i.lcssa = phi ptr [ %str_tab.0.ph.i, %for.body.i.preheader.if.then26.i_crit_edge ], [ %arrayidx16.i, %for.body.i.if.then26.i_crit_edge ]
  %i.085.i.lcssa = phi i32 [ 0, %for.body.i.preheader.if.then26.i_crit_edge ], [ %inc.i, %for.body.i.if.then26.i_crit_edge ]
  %sel.i = getelementptr %struct.sdiod_drive_str, ptr %str_tab.0.ph.i, i32 %i.085.i.lcssa, i32 1
  %99 = ptrtoint ptr %sel.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sel.i, align 1
  %conv28.i = zext i8 %100 to i32
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.inc.i.preheader
  %i.085.i240 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.inc.i.preheader ]
  %inc.i = add i32 %i.085.i240, 1
  %arrayidx16.i = getelementptr %struct.sdiod_drive_str, ptr %str_tab.0.ph.i, i32 %inc.i
  %101 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp19.not.i = icmp eq i8 %102, 0
  br i1 %cmp19.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then26.i, %if.then15.i.for.end.i_crit_edge
  %arrayidx1682.i = phi ptr [ %arrayidx1686.i.lcssa, %if.then26.i ], [ %str_tab.0.ph.i, %if.then15.i.for.end.i_crit_edge ], [ %arrayidx16.i, %for.inc.i.for.end.i_crit_edge ]
  %drivestrength_sel.0.i = phi i32 [ %conv28.i, %if.then26.i ], [ 0, %if.then15.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %base.i = getelementptr inbounds %struct.brcmf_core, ptr %call.i226, i32 0, i32 2
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base.i, align 4
  %add.i = add i32 %104, 1616
  call void @brcmf_sdiod_writel(ptr noundef %2, i32 noundef %add.i, i32 noundef 1, ptr noundef null) #12
  %call30.i = call i32 @brcmf_sdiod_readl(ptr noundef %2, i32 noundef %add.i, ptr noundef null) #12
  %and31.i = and i32 %call30.i, %str_mask.0.ph.i
  %shl32.i = shl i32 %drivestrength_sel.0.i, %str_shift.0.ph.i
  %or33.i = or i32 %and31.i, %shl32.i
  call void @brcmf_sdiod_writel(ptr noundef %2, i32 noundef %add.i, i32 noundef %or33.i, ptr noundef null) #12
  %105 = ptrtoint ptr %arrayidx1682.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx1682.i, align 1
  %conv37.i = zext i8 %106 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_drivestrengthinit, ptr noundef nonnull @.str.117, i32 noundef %conv37.i, i32 noundef %., i32 noundef %or33.i) #12
  br label %brcmf_sdio_drivestrengthinit.exit

brcmf_sdio_drivestrengthinit.exit:                ; preds = %for.end.i, %do.body7.i, %do.body.i, %if.end98.brcmf_sdio_drivestrengthinit.exit_crit_edge
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %2, align 4
  %call109 = call zeroext i8 @sdio_f0_readb(ptr noundef %108, i32 noundef 241, ptr noundef nonnull %err) #12
  %109 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool111.not = icmp eq i32 %110, 0
  br i1 %tobool111.not, label %if.end113, label %brcmf_sdio_drivestrengthinit.exit.fail_crit_edge

brcmf_sdio_drivestrengthinit.exit.fail_crit_edge: ; preds = %brcmf_sdio_drivestrengthinit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end113:                                        ; preds = %brcmf_sdio_drivestrengthinit.exit
  %111 = or i8 %call109, 2
  %112 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %2, align 4
  call void @sdio_f0_writeb(ptr noundef %113, i8 noundef zeroext %111, i32 noundef 241, ptr noundef nonnull %err) #12
  %114 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool116.not = icmp eq i32 %115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end113.fail_crit_edge

if.end113.fail_crit_edge:                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end118:                                        ; preds = %if.end113
  %116 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ci, align 4
  %call120 = call ptr @brcmf_chip_get_pmu(ptr noundef %117) #12
  %base = getelementptr inbounds %struct.brcmf_core, ptr %call120, i32 0, i32 2
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %base, align 4
  %add = add i32 %119, 1536
  %call121 = call i32 @brcmf_sdiod_readl(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %err) #12
  %120 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool122.not = icmp eq i32 %121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end118.fail_crit_edge

if.end118.fail_crit_edge:                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end124:                                        ; preds = %if.end118
  %or125 = or i32 %call121, 16384
  call void @brcmf_sdiod_writel(ptr noundef %2, i32 noundef %add, i32 noundef %or125, ptr noundef nonnull %err) #12
  %122 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool126.not = icmp eq i32 %123, 0
  br i1 %tobool126.not, label %if.end128, label %if.end124.fail_crit_edge

if.end124.fail_crit_edge:                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end128:                                        ; preds = %if.end124
  %124 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %2, align 4
  call void @sdio_release_host(ptr noundef %125) #12
  %txq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 8
  call void @brcmu_pktq_init(ptr noundef %txq, i32 noundef 8, i32 noundef 2048) #12
  %126 = ptrtoint ptr %head_align to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %head_align, align 4
  %conv131 = zext i16 %127 to i32
  %add132 = add nuw nsw i32 %conv131, 64
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add132, i32 noundef 3520) #17
  %hdrbuf = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 12
  %128 = ptrtoint ptr %hdrbuf to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call9.i.i, ptr %hdrbuf, align 4
  %tobool135.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool135.not, label %if.end128.cleanup_crit_edge, label %if.end137

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end137:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %head_align to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %head_align, align 4
  %131 = ptrtoint ptr %call9.i.i to i32
  %conv141 = zext i16 %130 to i32
  %sub = add i32 %131, -1
  %add142 = add i32 %sub, %conv141
  %132 = urem i32 %add142, %conv141
  %mul = sub i32 %add142, %132
  %133 = inttoptr i32 %mul to ptr
  %rxhdr = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 13
  %134 = ptrtoint ptr %rxhdr to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %rxhdr, align 4
  %intr = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 30
  %135 = ptrtoint ptr %intr to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %intr, align 1
  %poll = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 31
  %136 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %poll, align 2
  br label %cleanup

fail:                                             ; preds = %if.end124.fail_crit_edge, %if.end118.fail_crit_edge, %if.end113.fail_crit_edge, %brcmf_sdio_drivestrengthinit.exit.fail_crit_edge, %do.body95, %do.body51, %if.end38.fail_crit_edge, %if.end32.fail_crit_edge, %do.body28, %do.body17
  %137 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %2, align 4
  call void @sdio_release_host(ptr noundef %138) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end137, %if.end128.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %fail ], [ true, %if.end137 ], [ false, %if.end128.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_watchdog(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_tsk = getelementptr i8, ptr %t, i32 104
  %0 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watchdog_tsk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %watchdog_wait = getelementptr i8, ptr %t, i32 48
  tail call void @complete(ptr noundef %watchdog_wait) #12
  %wd_active = getelementptr i8, ptr %t, i32 108
  %2 = ptrtoint ptr %wd_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wd_active, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_watchdog_thread(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %1) #12
  %call15 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call15, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %watchdog_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 54
  %sr_enabled.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 63
  %poll.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 31
  %polltick.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 35
  %pollrate.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 34
  %intr.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 30
  %sdcnt.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 62
  %lastintrs.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 62, i32 1
  %dpc_triggered.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 59
  %pollcnt.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 62, i32 2
  %ipend.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 32
  %brcmf_wq.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 57
  %datawork.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 58
  %console_interval.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 36
  %console.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 37
  %idlecount98.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 41
  %dpc_running.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 60
  %idletime.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 40
  %clkstate.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 39
  %wd_active.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 56
  %timer.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 53
  %tickcnt = getelementptr inbounds %struct.brcmf_sdio, ptr %data, i32 0, i32 62, i32 22
  br label %if.end

if.end:                                           ; preds = %brcmf_sdio_bus_watchdog.exit.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @brcmf_sdiod_freezer_uncount(ptr noundef %3) #12
  %call2 = tail call i32 @wait_for_completion_interruptible(ptr noundef %watchdog_wait) #12
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void @brcmf_sdiod_freezer_count(ptr noundef %5) #12
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void @brcmf_sdiod_try_freeze(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then5, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then5:                                         ; preds = %if.end
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 32, ptr noundef nonnull @__func__.brcmf_sdio_bus_watchdog, ptr noundef nonnull @.str) #12
  %8 = ptrtoint ptr %sr_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sr_enabled.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then5.if.end26.i_crit_edge

if.then5.if.end26.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.then5
  %10 = ptrtoint ptr %poll.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %poll.i, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %polltick.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %polltick.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %polltick.i, align 4
  %14 = ptrtoint ptr %pollrate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pollrate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %15)
  %cmp.not.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.not.i, label %land.lhs.true2.i.if.end26.i_crit_edge, label %if.then.i

land.lhs.true2.i.if.end26.i_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  %16 = ptrtoint ptr %polltick.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %polltick.i, align 4
  %17 = ptrtoint ptr %intr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %intr.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %if.then.i.if.then7.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %19 = ptrtoint ptr %sdcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdcnt.i, align 4
  %21 = ptrtoint ptr %lastintrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lastintrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp6.i = icmp eq i32 %20, %22
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false.i.if.end21.i_crit_edge

lor.lhs.false.i.if.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %23 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dpc_triggered.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.not.i = icmp eq i8 %24, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then7.i.if.end21.i_crit_edge

if.then7.i.if.end21.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then9.i:                                       ; preds = %if.then7.i
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void @sdio_claim_host(ptr noundef %28) #12
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i = tail call zeroext i8 @sdio_f0_readb(ptr noundef %32, i32 noundef 5, ptr noundef null) #12
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  tail call void @sdio_release_host(ptr noundef %36) #12
  %37 = and i8 %call.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %phi.cmp.i = icmp eq i8 %37, 0
  br i1 %phi.cmp.i, label %if.then9.i.if.end21.i_crit_edge, label %if.then15.i

if.then9.i.if.end21.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %pollcnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pollcnt.i, align 4
  %inc17.i = add i32 %39, 1
  store i32 %inc17.i, ptr %pollcnt.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipend.i, i32 noundef 4) #12
  %40 = ptrtoint ptr %ipend.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %ipend.i, align 4
  %41 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dpc_triggered.i, align 4
  %42 = ptrtoint ptr %brcmf_wq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %brcmf_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %datawork.i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.then9.i.if.end21.i_crit_edge, %if.then7.i.if.end21.i_crit_edge, %lor.lhs.false.i.if.end21.i_crit_edge
  %44 = ptrtoint ptr %sdcnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sdcnt.i, align 4
  %46 = ptrtoint ptr %lastintrs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %lastintrs.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end21.i, %land.lhs.true2.i.if.end26.i_crit_edge, %land.lhs.true.i.if.end26.i_crit_edge, %if.then5.if.end26.i_crit_edge
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %state.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %48, i32 0, i32 21
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp28.i = icmp eq i32 %50, 1
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.end26.i.if.end60.i_crit_edge

if.end26.i.if.end60.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

land.lhs.true30.i:                                ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %51 = load i32, ptr @brcmf_msg_level, align 4
  %and31.i = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.if.end60.i_crit_edge, label %land.lhs.true33.i

land.lhs.true30.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

land.lhs.true33.i:                                ; preds = %land.lhs.true30.i
  %52 = ptrtoint ptr %console_interval.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %console_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp34.not.i = icmp eq i32 %53, 0
  br i1 %cmp34.not.i, label %land.lhs.true33.i.if.end60.i_crit_edge, label %if.then36.i

land.lhs.true33.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then36.i:                                      ; preds = %land.lhs.true33.i
  %call38.i = tail call i32 @jiffies_to_msecs(i32 noundef 1) #12
  %54 = ptrtoint ptr %console.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %console.i, align 4
  %add.i = add i32 %55, %call38.i
  store i32 %add.i, ptr %console.i, align 4
  %56 = ptrtoint ptr %console_interval.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %console_interval.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %57)
  %cmp42.not.i = icmp ult i32 %add.i, %57
  br i1 %cmp42.not.i, label %if.then36.i.if.end60.i_crit_edge, label %if.then44.i

if.then36.i.if.end60.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then44.i:                                      ; preds = %if.then36.i
  %sub.i = sub i32 %add.i, %57
  %58 = ptrtoint ptr %console.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i, ptr %console.i, align 4
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  tail call void @sdio_claim_host(ptr noundef %62) #12
  %call50.i = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %data, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %call51.i = tail call fastcc i32 @brcmf_sdio_readconsole(ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.then54.i, label %if.then44.i.if.end56.i_crit_edge

if.then44.i.if.end56.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %console_interval.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %console_interval.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.then44.i.if.end56.i_crit_edge
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void @sdio_release_host(ptr noundef %67) #12
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end56.i, %if.then36.i.if.end60.i_crit_edge, %land.lhs.true33.i.if.end60.i_crit_edge, %land.lhs.true30.i.if.end60.i_crit_edge, %if.end26.i.if.end60.i_crit_edge
  %68 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dpc_triggered.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool62.not.i = icmp eq i8 %69, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %if.else97.i

if.then63.i:                                      ; preds = %if.end60.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !567
  %70 = ptrtoint ptr %dpc_running.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dpc_running.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool64.not.i = icmp eq i8 %71, 0
  br i1 %tobool64.not.i, label %land.lhs.true65.i, label %if.then63.i.if.else.i_crit_edge

if.then63.i.if.else.i_crit_edge:                  ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true65.i:                                ; preds = %if.then63.i
  %72 = ptrtoint ptr %idletime.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idletime.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp66.i = icmp sgt i32 %73, 0
  br i1 %cmp66.i, label %land.lhs.true68.i, label %land.lhs.true65.i.if.else.i_crit_edge

land.lhs.true65.i.if.else.i_crit_edge:            ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true68.i:                                ; preds = %land.lhs.true65.i
  %74 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clkstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp69.i = icmp eq i32 %75, 3
  br i1 %cmp69.i, label %if.then71.i, label %land.lhs.true68.i.if.else.i_crit_edge

land.lhs.true68.i.if.else.i_crit_edge:            ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then71.i:                                      ; preds = %land.lhs.true68.i
  %76 = ptrtoint ptr %idlecount98.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %idlecount98.i, align 4
  %inc72.i = add i32 %77, 1
  store i32 %inc72.i, ptr %idlecount98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc72.i, i32 %73)
  %cmp75.i = icmp sgt i32 %inc72.i, %73
  br i1 %cmp75.i, label %do.body78.i, label %if.then71.i.brcmf_sdio_bus_watchdog.exit_crit_edge

if.then71.i.brcmf_sdio_bus_watchdog.exit_crit_edge: ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_bus_watchdog.exit

do.body78.i:                                      ; preds = %if.then71.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_watchdog, ptr noundef nonnull @.str.119) #12
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  tail call void @sdio_claim_host(ptr noundef %81) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %82 = load i32, ptr @brcmf_msg_level, align 4
  %and82.i = and i32 %82, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.body78.i.if.then88.i_crit_edge, label %lor.lhs.false84.i

do.body78.i.if.then88.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88.i

lor.lhs.false84.i:                                ; preds = %do.body78.i
  %83 = ptrtoint ptr %console_interval.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %console_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp86.i = icmp eq i32 %84, 0
  br i1 %cmp86.i, label %lor.lhs.false84.i.if.then88.i_crit_edge, label %lor.lhs.false84.i.if.end89.i_crit_edge

lor.lhs.false84.i.if.end89.i_crit_edge:           ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

lor.lhs.false84.i.if.then88.i_crit_edge:          ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88.i

if.then88.i:                                      ; preds = %lor.lhs.false84.i.if.then88.i_crit_edge, %do.body78.i.if.then88.i_crit_edge
  %85 = ptrtoint ptr %wd_active.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %wd_active.i.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool1.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool1.not.i.i, label %if.then88.i.if.end89.i_crit_edge, label %if.then.i.i

if.then88.i.if.end89.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i

if.then.i.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i145.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #12
  %87 = ptrtoint ptr %wd_active.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %wd_active.i.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then.i.i, %if.then88.i.if.end89.i_crit_edge, %lor.lhs.false84.i.if.end89.i_crit_edge
  %88 = ptrtoint ptr %idlecount98.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %idlecount98.i, align 4
  %call91.i = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  tail call void @sdio_release_host(ptr noundef %92) #12
  br label %brcmf_sdio_bus_watchdog.exit

if.else.i:                                        ; preds = %land.lhs.true68.i.if.else.i_crit_edge, %land.lhs.true65.i.if.else.i_crit_edge, %if.then63.i.if.else.i_crit_edge
  %93 = ptrtoint ptr %idlecount98.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %idlecount98.i, align 4
  br label %brcmf_sdio_bus_watchdog.exit

if.else97.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %idlecount98.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %idlecount98.i, align 4
  br label %brcmf_sdio_bus_watchdog.exit

brcmf_sdio_bus_watchdog.exit:                     ; preds = %if.else97.i, %if.else.i, %if.end89.i, %if.then71.i.brcmf_sdio_bus_watchdog.exit_crit_edge
  %95 = ptrtoint ptr %tickcnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tickcnt, align 4
  %inc = add i32 %96, 1
  store i32 %inc, ptr %tickcnt, align 4
  %97 = ptrtoint ptr %watchdog_wait to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %watchdog_wait, align 4
  %call = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %brcmf_sdio_bus_watchdog.exit.while.end_crit_edge, label %brcmf_sdio_bus_watchdog.exit.if.end_crit_edge

brcmf_sdio_bus_watchdog.exit.if.end_crit_edge:    ; preds = %brcmf_sdio_bus_watchdog.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

brcmf_sdio_bus_watchdog.exit.while.end_crit_edge: ; preds = %brcmf_sdio_bus_watchdog.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %brcmf_sdio_bus_watchdog.exit.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fw_get_firmwares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_firmware_callback(ptr noundef %dev, i32 noundef %err, ptr noundef %fwreq) #0 align 64 {
entry:
  %err.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %err, ptr %err.addr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdio_core, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.125, ptr noundef %retval.0.i, i32 noundef %err) #12
  %13 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %dev_name.exit.do.body158_crit_edge

dev_name.exit.do.body158_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body158

if.end:                                           ; preds = %dev_name.exit
  %15 = getelementptr inbounds %struct.brcmf_fw_request, ptr %fwreq, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = getelementptr %struct.brcmf_fw_request, ptr %fwreq, i32 3, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %len = getelementptr %struct.brcmf_fw_request, ptr %fwreq, i32 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void @kfree(ptr noundef %fwreq) #12
  %alp_only = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 45
  %23 = ptrtoint ptr %alp_only to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %alp_only, align 2
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @sdio_claim_host(ptr noundef %27) #12
  %clkstate.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 39
  %28 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clkstate.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %30 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clkstate.i.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %31, label %if.end.if.end5.i.i_crit_edge [
    i32 3, label %if.end.brcmf_sdio_clkctl.exit.i_crit_edge
    i32 0, label %if.then4.i.i
  ]

if.end.brcmf_sdio_clkctl.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clkctl.exit.i

if.end.if.end5.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %33 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %clkstate.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.if.end5.i.i_crit_edge
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %6, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %34 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clkstate.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %29, i32 noundef %35) #12
  br label %brcmf_sdio_clkctl.exit.i

brcmf_sdio_clkctl.exit.i:                         ; preds = %if.end5.i.i, %if.end.brcmf_sdio_clkctl.exit.i_crit_edge
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %37, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.133, i32 noundef %40) #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_download_code_file, ptr noundef nonnull @.str) #12
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %ci.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 1
  %43 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ci.i.i, align 4
  %rambase.i.i = getelementptr inbounds %struct.brcmf_chip, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %rambase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rambase.i.i, align 4
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %17, align 4
  %call.i.i = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %42, i1 noundef zeroext true, i32 noundef %46, ptr noundef %48, i32 noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %brcmf_sdio_clkctl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %17, align 4
  %53 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ci.i.i, align 4
  %rambase4.i.i = getelementptr inbounds %struct.brcmf_chip, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %rambase4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rambase4.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_code_file, ptr noundef nonnull @.str.137, i32 noundef %call.i.i, i32 noundef %52, i32 noundef %56) #12
  br label %do.body3.i

if.else.i.i:                                      ; preds = %brcmf_sdio_clkctl.exit.i
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %6, align 4
  %59 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ci.i.i, align 4
  %rambase9.i.i = getelementptr inbounds %struct.brcmf_chip, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %rambase9.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rambase9.i.i, align 4
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %65 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %17, align 4
  %call12.i.i = tail call fastcc zeroext i1 @brcmf_sdio_verifymemory(ptr noundef %58, i32 noundef %62, ptr noundef %64, i32 noundef %66) #12
  br i1 %call12.i.i, label %if.end.i252, label %if.else.i.i.do.body3.i_crit_edge

if.else.i.i.do.body3.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.else.i.i.do.body3.i_crit_edge, %do.body1.i.i
  %err.0.i.ph.i = phi i32 [ -5, %if.else.i.i.do.body3.i_crit_edge ], [ %call.i.i, %do.body1.i.i ]
  tail call void @release_firmware(ptr noundef %17) #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.134) #12
  tail call void @brcmf_fw_nvram_free(ptr noundef %20) #12
  br label %brcmf_sdio_download_firmware.exit

if.end.i252:                                      ; preds = %if.else.i.i
  tail call void @release_firmware(ptr noundef %17) #12
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_download_nvram, ptr noundef nonnull @.str) #12
  %67 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ci.i.i, align 4
  %ramsize.i.i = getelementptr inbounds %struct.brcmf_chip, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %ramsize.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ramsize.i.i, align 4
  %sub.i.i = sub i32 %70, %22
  %rambase.i36.i = getelementptr inbounds %struct.brcmf_chip, ptr %68, i32 0, i32 7
  %71 = ptrtoint ptr %rambase.i36.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rambase.i36.i, align 4
  %add.i.i = add i32 %sub.i.i, %72
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %6, align 4
  %call.i37.i = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %74, i1 noundef zeroext true, i32 noundef %add.i.i, ptr noundef %20, i32 noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.else.i40.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_nvram, ptr noundef nonnull @.str.141, i32 noundef %call.i37.i, i32 noundef %22, i32 noundef %add.i.i) #12
  br label %do.body9.i

if.else.i40.i:                                    ; preds = %if.end.i252
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %6, align 4
  %call6.i.i = tail call fastcc zeroext i1 @brcmf_sdio_verifymemory(ptr noundef %76, i32 noundef %add.i.i, ptr noundef %20, i32 noundef %22) #12
  br i1 %call6.i.i, label %if.end12.i, label %if.else.i40.i.do.body9.i_crit_edge

if.else.i40.i.do.body9.i_crit_edge:               ; preds = %if.else.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.else.i40.i.do.body9.i_crit_edge, %do.body2.i.i
  %err.0.i41.ph.i = phi i32 [ -5, %if.else.i40.i.do.body9.i_crit_edge ], [ %call.i37.i, %do.body2.i.i ]
  tail call void @brcmf_fw_nvram_free(ptr noundef %20) #12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.135) #12
  br label %brcmf_sdio_download_firmware.exit

if.end12.i:                                       ; preds = %if.else.i40.i
  tail call void @brcmf_fw_nvram_free(ptr noundef %20) #12
  %77 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ci.i.i, align 4
  %call13.i = tail call zeroext i1 @brcmf_chip_set_active(ptr noundef %78, i32 noundef %40) #12
  br i1 %call13.i, label %if.end12.i.brcmf_sdio_download_firmware.exit_crit_edge, label %do.body15.i

if.end12.i.brcmf_sdio_download_firmware.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_download_firmware.exit

do.body15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_download_firmware, ptr noundef nonnull @.str.136) #12
  br label %brcmf_sdio_download_firmware.exit

brcmf_sdio_download_firmware.exit:                ; preds = %do.body15.i, %if.end12.i.brcmf_sdio_download_firmware.exit_crit_edge, %do.body9.i, %do.body3.i
  %bcmerror.0.i = phi i32 [ %err.0.i.ph.i, %do.body3.i ], [ %err.0.i41.ph.i, %do.body9.i ], [ 0, %if.end12.i.brcmf_sdio_download_firmware.exit_crit_edge ], [ 0, %do.body15.i ]
  tail call fastcc void @brcmf_sdio_clkctl(ptr noundef %6, i32 noundef 1, i1 noundef zeroext false) #12
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %6, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  tail call void @sdio_release_host(ptr noundef %82) #12
  %83 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %bcmerror.0.i, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmerror.0.i)
  %tobool8.not = icmp eq i32 %bcmerror.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %brcmf_sdio_download_firmware.exit.do.body158_crit_edge

brcmf_sdio_download_firmware.exit.do.body158_crit_edge: ; preds = %brcmf_sdio_download_firmware.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body158

if.end10:                                         ; preds = %brcmf_sdio_download_firmware.exit
  %84 = ptrtoint ptr %alp_only to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %alp_only, align 2
  %tickcnt = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 62, i32 22
  %85 = ptrtoint ptr %tickcnt to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tickcnt, align 4
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 4
  %state.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %87, i32 0, i32 21
  %88 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.not.i = icmp eq i32 %89, 1
  br i1 %cmp.not.i, label %if.then6.i, label %if.end10.brcmf_sdio_wd_timer.exit_crit_edge

if.end10.brcmf_sdio_wd_timer.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_wd_timer.exit

if.then6.i:                                       ; preds = %if.end10
  %wd_active7.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 56
  %90 = ptrtoint ptr %wd_active7.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %wd_active7.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool8.not.i = icmp eq i8 %91, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %92, 1
  %timer11.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 53
  %expires.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 53, i32 1
  %93 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer11.i) #12
  %94 = ptrtoint ptr %wd_active7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %wd_active7.i, align 4
  br label %brcmf_sdio_wd_timer.exit

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %timer14.i = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %add16.i = add i32 %95, 1
  %call17.i = tail call i32 @mod_timer(ptr noundef %timer14.i, i32 noundef %add16.i) #12
  br label %brcmf_sdio_wd_timer.exit

brcmf_sdio_wd_timer.exit:                         ; preds = %if.else.i, %if.then9.i, %if.end10.brcmf_sdio_wd_timer.exit_crit_edge
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %97) #12
  %98 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %clkstate.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %100 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %clkstate.i.i, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %101, label %brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge [
    i32 3, label %brcmf_sdio_wd_timer.exit.if.end14_crit_edge
    i32 0, label %if.then4.i
  ]

brcmf_sdio_wd_timer.exit.if.end14_crit_edge:      ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge: ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clkctl.exit

if.then4.i:                                       ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %103 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %clkstate.i.i, align 4
  br label %brcmf_sdio_clkctl.exit

brcmf_sdio_clkctl.exit:                           ; preds = %if.then4.i, %brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %6, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %104 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %clkstate.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %99, i32 noundef %105) #12
  %106 = ptrtoint ptr %clkstate.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr = load i32, ptr %clkstate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.not = icmp eq i32 %.pr, 3
  br i1 %cmp.not, label %brcmf_sdio_clkctl.exit.if.end14_crit_edge, label %brcmf_sdio_clkctl.exit.release_crit_edge

brcmf_sdio_clkctl.exit.release_crit_edge:         ; preds = %brcmf_sdio_clkctl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

brcmf_sdio_clkctl.exit.if.end14_crit_edge:        ; preds = %brcmf_sdio_clkctl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %brcmf_sdio_clkctl.exit.if.end14_crit_edge, %brcmf_sdio_wd_timer.exit.if.end14_crit_edge
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %4, align 4
  %call16 = call zeroext i8 @sdio_readb(ptr noundef %108, i32 noundef 65550, ptr noundef nonnull %err.addr) #12
  %109 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool17.not = icmp eq i32 %110, 0
  br i1 %tobool17.not, label %if.end22, label %if.end14.do.body25_crit_edge

if.end14.do.body25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.end22:                                         ; preds = %if.end14
  %111 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ci.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43012, i32 %114)
  %cmp.i255 = icmp eq i32 %114, 43012
  %cond = select i1 %cmp.i255, i8 16, i8 2
  %or = or i8 %cond, %call16
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %116, i8 noundef zeroext %or, i32 noundef 65550, ptr noundef nonnull %err.addr) #12
  %117 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr262 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr262)
  %tobool23.not = icmp eq i32 %.pr262, 0
  br i1 %tobool23.not, label %if.end28, label %if.end22.do.body25_crit_edge

if.end22.do.body25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

do.body25:                                        ; preds = %if.end22.do.body25_crit_edge, %if.end14.do.body25_crit_edge
  %118 = phi i32 [ %.pr262, %if.end22.do.body25_crit_edge ], [ %110, %if.end14.do.body25_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.126, i32 noundef %118) #12
  br label %release

if.end28:                                         ; preds = %if.end22
  %base = getelementptr inbounds %struct.brcmf_core, ptr %8, i32 0, i32 2
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base, align 4
  %add = add i32 %120, 72
  call void @brcmf_sdiod_writel(ptr noundef %4, i32 noundef %add, i32 noundef 262144, ptr noundef null) #12
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 1
  %121 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %func2, align 4
  %call29 = call i32 @sdio_enable_func(ptr noundef %122) #12
  %123 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call29, ptr %err.addr, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.127, i32 noundef %call29) #12
  %124 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool33.not = icmp eq i32 %125, 0
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end28
  %hostintmask = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 3
  %126 = ptrtoint ptr %hostintmask to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 536871152, ptr %hostintmask, align 4
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %base, align 4
  %add36 = add i32 %128, 36
  call void @brcmf_sdiod_writel(ptr noundef %4, i32 noundef %add36, i32 noundef 536871152, ptr noundef null) #12
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %4, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %device, align 4
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %132, label %sw.default [
    i16 17267, label %if.then34.do.body40_crit_edge
    i16 -21784, label %if.then34.do.body40_crit_edge268
    i16 -22524, label %do.body52
    i16 17193, label %if.then34.do.body64_crit_edge
    i16 17209, label %if.then34.do.body64_crit_edge269
    i16 -22081, label %do.body76
    i16 17241, label %if.then34.do.body88_crit_edge
    i16 17236, label %if.then34.do.body88_crit_edge270
    i16 17238, label %if.then34.do.body88_crit_edge271
  ]

if.then34.do.body88_crit_edge271:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then34.do.body88_crit_edge270:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then34.do.body88_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then34.do.body64_crit_edge269:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

if.then34.do.body64_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

if.then34.do.body40_crit_edge268:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

if.then34.do.body40_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

do.body40:                                        ; preds = %if.then34.do.body40_crit_edge, %if.then34.do.body40_crit_edge268
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.128, i32 noundef 64) #12
  %134 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %135, i8 noundef zeroext 64, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  %136 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %4, align 4
  %call45 = call zeroext i8 @sdio_readb(ptr noundef %137, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %138 = or i8 %call45, 16
  %139 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %140, i8 noundef zeroext %138, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %141 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %142, i8 noundef zeroext -64, i32 noundef 65565, ptr noundef nonnull %err.addr) #12
  br label %if.end102

do.body52:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.128, i32 noundef 96) #12
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %144, i8 noundef zeroext 96, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  %145 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %4, align 4
  %call57 = call zeroext i8 @sdio_readb(ptr noundef %146, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %147 = or i8 %call57, 16
  %148 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %149, i8 noundef zeroext %147, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %150 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %151, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %err.addr) #12
  br label %if.end102

do.body64:                                        ; preds = %if.then34.do.body64_crit_edge, %if.then34.do.body64_crit_edge269
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.128, i32 noundef 48) #12
  %152 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %153, i8 noundef zeroext 48, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  %154 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %4, align 4
  %call69 = call zeroext i8 @sdio_readb(ptr noundef %155, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %156 = or i8 %call69, 16
  %157 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %158, i8 noundef zeroext %156, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %159 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %160, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %err.addr) #12
  br label %if.end102

do.body76:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.128, i32 noundef 96) #12
  %161 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %162, i8 noundef zeroext 96, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  %163 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %4, align 4
  %call81 = call zeroext i8 @sdio_readb(ptr noundef %164, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %165 = or i8 %call81, 16
  %166 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %167, i8 noundef zeroext %165, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %168 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %169, i8 noundef zeroext -48, i32 noundef 65565, ptr noundef nonnull %err.addr) #12
  br label %if.end102

do.body88:                                        ; preds = %if.then34.do.body88_crit_edge, %if.then34.do.body88_crit_edge270, %if.then34.do.body88_crit_edge271
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.128, i32 noundef 64) #12
  %170 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %171, i8 noundef zeroext 64, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %4, align 4
  %call93 = call zeroext i8 @sdio_readb(ptr noundef %173, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %174 = or i8 %call93, 16
  %175 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %176, i8 noundef zeroext %174, i32 noundef 65545, ptr noundef nonnull %err.addr) #12
  %177 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %178, i8 noundef zeroext -64, i32 noundef 65565, ptr noundef nonnull %err.addr) #12
  br label %if.end102

sw.default:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  call void @sdio_writeb(ptr noundef %130, i8 noundef zeroext 8, i32 noundef 65544, ptr noundef nonnull %err.addr) #12
  br label %if.end102

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %func2, align 4
  %call101 = call i32 @sdio_disable_func(ptr noundef %180) #12
  br label %checkdied

if.end102:                                        ; preds = %sw.default, %do.body88, %do.body76, %do.body64, %do.body52, %do.body40
  %181 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ci.i.i, align 4
  %call104 = call zeroext i1 @brcmf_chip_sr_capable(ptr noundef %182) #12
  br i1 %call104, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @brcmf_sdio_sr_init(ptr noundef %6)
  br label %if.end108

if.else106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %184, i8 noundef zeroext %call16, i32 noundef 65550, ptr noundef nonnull %err.addr) #12
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.then105
  %185 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp109 = icmp eq i32 %186, 0
  br i1 %cmp109, label %if.then111, label %if.end108.if.then133_crit_edge

if.end108.if.then133_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then133

if.then111:                                       ; preds = %if.end108
  %dev112 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 5
  %187 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev112, align 4
  %bus_if113 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 6
  %189 = ptrtoint ptr %bus_if113 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bus_if113, align 4
  %dev114 = getelementptr inbounds %struct.brcmf_bus, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %dev114 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %dev114, align 4
  %192 = load ptr, ptr %bus_if113, align 4
  %ops = getelementptr inbounds %struct.brcmf_bus, ptr %192, i32 0, i32 11
  %193 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @brcmf_sdio_bus_ops, ptr %ops, align 4
  %194 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ci.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  %198 = load ptr, ptr %bus_if113, align 4
  %chip118 = getelementptr inbounds %struct.brcmf_bus, ptr %198, i32 0, i32 7
  %199 = ptrtoint ptr %chip118 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %197, ptr %chip118, align 4
  %200 = load ptr, ptr %ci.i.i, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_chip, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %chiprev, align 4
  %203 = load ptr, ptr %bus_if113, align 4
  %chiprev121 = getelementptr inbounds %struct.brcmf_bus, ptr %203, i32 0, i32 8
  %204 = ptrtoint ptr %chiprev121 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %202, ptr %chiprev121, align 4
  %205 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %6, align 4
  call void @brcmf_sdiod_change_state(ptr noundef %206, i32 noundef 1) #12
  %call122 = call i32 @brcmf_sdiod_intr_register(ptr noundef %4) #12
  %207 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %call122, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123.not = icmp eq i32 %call122, 0
  br i1 %cmp123.not, label %if.then111.if.end135_crit_edge, label %if.end130

if.then111.if.end135_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.end130:                                        ; preds = %if.then111
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.129, i32 noundef %call122) #12
  %208 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr264 = load i32, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr264)
  %cmp131.not = icmp eq i32 %.pr264, 0
  br i1 %cmp131.not, label %if.end130.if.end135_crit_edge, label %if.end130.if.then133_crit_edge

if.end130.if.then133_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then133

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then133:                                       ; preds = %if.end130.if.then133_crit_edge, %if.end108.if.then133_crit_edge
  call fastcc void @brcmf_sdio_clkctl(ptr noundef %6, i32 noundef 0, i1 noundef zeroext false)
  br label %checkdied

if.end135:                                        ; preds = %if.end130.if.end135_crit_edge, %if.then111.if.end135_crit_edge
  %209 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %210) #12
  %211 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev112, align 4
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 7
  %213 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %settings, align 4
  %call138 = call i32 @brcmf_alloc(ptr noundef %212, ptr noundef %214) #12
  %215 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call138, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end144, label %do.body141

do.body141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.130) #12
  br label %claim

if.end144:                                        ; preds = %if.end135
  %216 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev112, align 4
  %call146 = call i32 @brcmf_attach(ptr noundef %217) #12
  %218 = ptrtoint ptr %err.addr to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call146, ptr %err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147.not = icmp eq i32 %call146, 0
  br i1 %cmp147.not, label %if.end144.cleanup_crit_edge, label %do.body150

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body150:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.131) #12
  %219 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev112, align 4
  call void @brcmf_free(ptr noundef %220) #12
  br label %claim

claim:                                            ; preds = %do.body150, %do.body141
  %221 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %4, align 4
  call void @sdio_claim_host(ptr noundef %222) #12
  br label %checkdied

checkdied:                                        ; preds = %claim, %if.then133, %if.else
  call fastcc void @brcmf_sdio_checkdied(ptr noundef %6)
  br label %release

release:                                          ; preds = %checkdied, %do.body25, %brcmf_sdio_clkctl.exit.release_crit_edge
  %223 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %224) #12
  br label %do.body158

do.body158:                                       ; preds = %release, %brcmf_sdio_download_firmware.exit.do.body158_crit_edge, %dev_name.exit.do.body158_crit_edge
  %225 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i257 = icmp eq ptr %226, null
  br i1 %tobool.not.i257, label %if.end.i258, label %do.body158.dev_name.exit260_crit_edge

do.body158.dev_name.exit260_crit_edge:            ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit260

if.end.i258:                                      ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  br label %dev_name.exit260

dev_name.exit260:                                 ; preds = %if.end.i258, %do.body158.dev_name.exit260_crit_edge
  %retval.0.i259 = phi ptr [ %228, %if.end.i258 ], [ %226, %do.body158.dev_name.exit260_crit_edge ]
  %229 = ptrtoint ptr %err.addr to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %err.addr, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_firmware_callback, ptr noundef nonnull @.str.132, ptr noundef %retval.0.i259, i32 noundef %230) #12
  %func2162 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 1
  %231 = ptrtoint ptr %func2162 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %func2162, align 4
  %dev163 = getelementptr inbounds %struct.sdio_func, ptr %232, i32 0, i32 1
  call void @device_release_driver(ptr noundef %dev163) #12
  call void @device_release_driver(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit260, %if.end144.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_remove(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_remove, ptr noundef nonnull @.str) #12
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %entry.do.body35_crit_edge, label %if.then

entry.do.body35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then:                                          ; preds = %entry
  %watchdog_tsk = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 55
  %0 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watchdog_tsk, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @send_sig(i32 noundef 15, ptr noundef nonnull %1, i32 noundef 1) #12
  %2 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %watchdog_tsk, align 4
  %call5 = tail call i32 @kthread_stop(ptr noundef %3) #12
  %4 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %watchdog_tsk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %6) #12
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %dev = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @brcmf_detach(ptr noundef %10) #12
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %dev9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  tail call void @brcmf_free(ptr noundef %14) #12
  %datawork = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 58
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %datawork) #12
  %brcmf_wq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 57
  %15 = ptrtoint ptr %brcmf_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %brcmf_wq, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %16) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 1
  %17 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ci, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.end14.if.end27_crit_edge, label %if.then16

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then16:                                        ; preds = %if.end14
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not = icmp eq i32 %22, 2
  br i1 %cmp.not, label %if.then16.if.end25_crit_edge, label %if.then18

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.then16
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  tail call void @sdio_claim_host(ptr noundef %24) #12
  %wd_active.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 56
  %25 = ptrtoint ptr %wd_active.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wd_active.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %if.then18.brcmf_sdio_wd_timer.exit_crit_edge, label %if.then.i

if.then18.brcmf_sdio_wd_timer.exit_crit_edge:     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_wd_timer.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %timer.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #12
  %27 = ptrtoint ptr %wd_active.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %wd_active.i, align 4
  br label %brcmf_sdio_wd_timer.exit

brcmf_sdio_wd_timer.exit:                         ; preds = %if.then.i, %if.then18.brcmf_sdio_wd_timer.exit_crit_edge
  %clkstate.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %28 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clkstate.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %30 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clkstate.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %31, label %brcmf_sdio_wd_timer.exit.if.end5.i_crit_edge [
    i32 3, label %brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge
    i32 0, label %if.then4.i
  ]

brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge: ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clkctl.exit

brcmf_sdio_wd_timer.exit.if.end5.i_crit_edge:     ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then4.i:                                       ; preds = %brcmf_sdio_wd_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %33 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %clkstate.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %brcmf_sdio_wd_timer.exit.if.end5.i_crit_edge
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef nonnull %bus, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %34 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clkstate.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %29, i32 noundef %35) #12
  br label %brcmf_sdio_clkctl.exit

brcmf_sdio_clkctl.exit:                           ; preds = %if.end5.i, %brcmf_sdio_wd_timer.exit.brcmf_sdio_clkctl.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #12
  %36 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ci, align 4
  tail call void @brcmf_chip_set_passive(ptr noundef %37) #12
  %38 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clkstate.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %40 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clkstate.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %41, label %brcmf_sdio_clkctl.exit.if.end28.i_crit_edge [
    i32 0, label %brcmf_sdio_clkctl.exit.brcmf_sdio_clkctl.exit66_crit_edge
    i32 3, label %if.then26.i
  ]

brcmf_sdio_clkctl.exit.brcmf_sdio_clkctl.exit66_crit_edge: ; preds = %brcmf_sdio_clkctl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clkctl.exit66

brcmf_sdio_clkctl.exit.if.end28.i_crit_edge:      ; preds = %brcmf_sdio_clkctl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then26.i:                                      ; preds = %brcmf_sdio_clkctl.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef nonnull %bus, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %brcmf_sdio_clkctl.exit.if.end28.i_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %43 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %clkstate.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %39, i32 noundef 0) #12
  br label %brcmf_sdio_clkctl.exit66

brcmf_sdio_clkctl.exit66:                         ; preds = %if.end28.i, %brcmf_sdio_clkctl.exit.brcmf_sdio_clkctl.exit66_crit_edge
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void @sdio_release_host(ptr noundef %47) #12
  br label %if.end25

if.end25:                                         ; preds = %brcmf_sdio_clkctl.exit66, %if.then16.if.end25_crit_edge
  %48 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ci, align 4
  tail call void @brcmf_chip_detach(ptr noundef %49) #12
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end14.if.end27_crit_edge
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus, align 4
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %settings, align 4
  %tobool29.not = icmp eq ptr %53, null
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @brcmf_release_module_param(ptr noundef nonnull %53) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %rxbuf = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 23
  %54 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rxbuf, align 4
  tail call void @kfree(ptr noundef %55) #12
  %hdrbuf = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 12
  %56 = ptrtoint ptr %hdrbuf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hdrbuf, align 4
  tail call void @kfree(ptr noundef %57) #12
  tail call void @kfree(ptr noundef nonnull %bus) #12
  br label %do.body35

do.body35:                                        ; preds = %if.end33, %entry.do.body35_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_remove, ptr noundef nonnull @.str.23) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_intr_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_wd_timer(ptr noundef %bus, i1 noundef zeroext %active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %active, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %wd_active = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 56
  %0 = ptrtoint ptr %wd_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wd_active, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %2 = ptrtoint ptr %wd_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wd_active, align 4
  br label %if.end19

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.then6, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then6:                                         ; preds = %if.end
  %wd_active7 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 56
  %7 = ptrtoint ptr %wd_active7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wd_active7, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 1
  %timer11 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  %expires = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53, i32 1
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer11) #12
  %11 = ptrtoint ptr %wd_active7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %wd_active7, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %timer14 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add16 = add i32 %12, 1
  %call17 = tail call i32 @mod_timer(ptr noundef %timer14, i32 noundef %add16) #12
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then9, %if.end.if.end19_crit_edge, %if.then, %land.lhs.true.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_clkctl(ptr nocapture noundef %bus, i32 noundef %target, i1 noundef zeroext %pendok) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clkstate = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %0 = ptrtoint ptr %clkstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clkstate, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %2 = ptrtoint ptr %clkstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clkstate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %target)
  %cmp = icmp eq i32 %3, %target
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %target to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %target, label %if.end.do.body30_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb7
    i32 0, label %sw.bb23
  ]

if.end.do.body30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then4, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %5 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %clkstate, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb.if.end5_crit_edge
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext %pendok)
  br label %do.body30

sw.bb7:                                           ; preds = %if.end
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %3, label %do.body17 [
    i32 0, label %if.then10
    i32 3, label %if.then14
  ]

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %7 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %clkstate, align 4
  br label %do.body30

if.then14:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %do.body30

do.body17:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.177, i32 noundef %3, i32 noundef 1) #12
  br label %do.body30

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp25 = icmp eq i32 %3, 3
  br i1 %cmp25, label %if.then26, label %sw.bb23.if.end28_crit_edge

sw.bb23.if.end28_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @brcmf_sdio_htclk(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %sw.bb23.if.end28_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %8 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %clkstate, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.end28, %do.body17, %if.then14, %if.then10, %if.end5, %if.end.do.body30_crit_edge
  %9 = ptrtoint ptr %clkstate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clkstate, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %1, i32 noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_set_passive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_chip_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_release_module_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdio_sleep(ptr noundef %bus, i1 noundef zeroext %sleep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #12
  %call = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %bus, i1 noundef zeroext %sleep, i1 noundef zeroext false)
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @sdio_release_host(ptr noundef %7) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %bus, i1 noundef zeroext %sleep, i1 noundef zeroext %pendok) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %sleep to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %cond = select i1 %sleep, ptr @.str.189, ptr @.str.190
  %sleeping = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 64
  %1 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sleeping, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.190, ptr @.str.189
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.188, ptr noundef nonnull %cond, ptr noundef nonnull %cond3) #12
  %sr_enabled = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 63
  %3 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sr_enabled, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %entry.end_crit_edge, label %if.then

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sleeping, align 1, !range !562
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %frombool)
  %cmp = icmp eq i8 %6, %frombool
  br i1 %cmp, label %if.then.end_crit_edge, label %if.end

if.then.end_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %if.then
  br i1 %sleep, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef 65550, ptr noundef nonnull %err) #12
  %11 = and i8 %call, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %do.body17, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.body17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.191) #12
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext 8, i32 noundef 65550, ptr noundef nonnull %err) #12
  br label %if.end22

if.end22:                                         ; preds = %do.body17, %if.then12.if.end22_crit_edge
  %call23 = call fastcc i32 @brcmf_sdio_kso_control(ptr noundef %bus, i1 noundef zeroext false)
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call fastcc i32 @brcmf_sdio_kso_control(ptr noundef %bus, i1 noundef zeroext true)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end22
  %storemerge = phi i32 [ %call24, %if.else ], [ %call23, %if.end22 ]
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool26.not = icmp eq i32 %storemerge, 0
  br i1 %tobool26.not, label %if.end25.end_crit_edge, label %do.body28

if.end25.end_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.192, i32 noundef %storemerge) #12
  br label %do.body54

end:                                              ; preds = %if.end25.end_crit_edge, %if.then.end_crit_edge, %entry.end_crit_edge
  br i1 %sleep, label %if.then34, label %if.else41

if.then34:                                        ; preds = %end
  %17 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sr_enabled, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %if.then37, label %if.then34.if.end44_crit_edge

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then37:                                        ; preds = %if.then34
  %clkstate.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %19 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clkstate.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %21 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clkstate.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %22, label %if.then37.if.end28.i_crit_edge [
    i32 0, label %if.then37.if.end44_crit_edge
    i32 3, label %if.then26.i
  ]

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then37.if.end28.i_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @brcmf_sdio_htclk(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.then37.if.end28.i_crit_edge
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %24 = ptrtoint ptr %clkstate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %clkstate.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %20, i32 noundef 0) #12
  br label %if.end44

if.else41:                                        ; preds = %end
  %clkstate.i74 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %25 = ptrtoint ptr %clkstate.i74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clkstate.i74, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str) #12
  %27 = ptrtoint ptr %clkstate.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clkstate.i74, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %28, label %if.else41.if.end5.i_crit_edge [
    i32 3, label %if.else41.brcmf_sdio_clkctl.exit77_crit_edge
    i32 0, label %if.then4.i
  ]

if.else41.brcmf_sdio_clkctl.exit77_crit_edge:     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clkctl.exit77

if.else41.if.end5.i_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_sdclk, ptr noundef nonnull @.str) #12
  %30 = ptrtoint ptr %clkstate.i74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %clkstate.i74, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.else41.if.end5.i_crit_edge
  call fastcc void @brcmf_sdio_htclk(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext %pendok) #12
  %31 = ptrtoint ptr %clkstate.i74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clkstate.i74, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_clkctl, ptr noundef nonnull @.str.178, i32 noundef %26, i32 noundef %32) #12
  br label %brcmf_sdio_clkctl.exit77

brcmf_sdio_clkctl.exit77:                         ; preds = %if.end5.i, %if.else41.brcmf_sdio_clkctl.exit77_crit_edge
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %state.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 1
  br i1 %cmp.not.i, label %if.then6.i, label %brcmf_sdio_clkctl.exit77.if.end44_crit_edge

brcmf_sdio_clkctl.exit77.if.end44_crit_edge:      ; preds = %brcmf_sdio_clkctl.exit77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then6.i:                                       ; preds = %brcmf_sdio_clkctl.exit77
  %wd_active7.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 56
  %37 = ptrtoint ptr %wd_active7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wd_active7.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool8.not.i = icmp eq i8 %38, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %39, 1
  %timer11.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  %expires.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53, i32 1
  %40 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer11.i) #12
  %41 = ptrtoint ptr %wd_active7.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %wd_active7.i, align 4
  br label %if.end44

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %timer14.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add16.i = add i32 %42, 1
  %call17.i = call i32 @mod_timer(ptr noundef %timer14.i, i32 noundef %add16.i) #12
  br label %if.end44

if.end44:                                         ; preds = %if.else.i, %if.then9.i, %brcmf_sdio_clkctl.exit77.if.end44_crit_edge, %if.end28.i, %if.then37.if.end44_crit_edge, %if.then34.if.end44_crit_edge
  %43 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %sleeping, align 1
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.193, ptr noundef nonnull %cond) #12
  br label %do.body54

do.body54:                                        ; preds = %if.end44, %do.body28
  %44 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_sleep, ptr noundef nonnull @.str.194, i32 noundef %45) #12
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_dpc(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  %pktq.i = alloca %struct.sk_buff_head, align 4
  %ret.i370 = alloca i32, align 4
  %prec_out.i = alloca i32, align 4
  %rd_new.i.i = alloca %struct.brcmf_sdio_hdrinfo, align 2
  %rd_new.i = alloca %struct.brcmf_sdio_hdrinfo, align 2
  %sh.i.i = alloca %struct.sdpcm_shared, align 4
  %ret.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 2
  %2 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdio_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, 32
  %txbound = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 19
  %6 = ptrtoint ptr %txbound to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txbound, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str) #12
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @sdio_claim_host(ptr noundef %12) #12
  %sr_enabled = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 63
  %13 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sr_enabled, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %clkstate = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %15 = ptrtoint ptr %clkstate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clkstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call = call zeroext i8 @sdio_readb(ptr noundef %20, i32 noundef 65545, ptr noundef nonnull %err) #12
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call6 = call zeroext i8 @sdio_readb(ptr noundef %24, i32 noundef 65550, ptr noundef nonnull %err) #12
  %conv = zext i8 %call to i32
  %conv8 = zext i8 %call6 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv8) #12
  %and = and i32 %conv8, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp12 = icmp eq i32 %and, 192
  br i1 %cmp12, label %if.then14, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call17 = call zeroext i8 @sdio_readb(ptr noundef %28, i32 noundef 65545, ptr noundef nonnull %err) #12
  %29 = and i8 %call17, -5
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  call void @sdio_writeb(ptr noundef %33, i8 noundef zeroext %29, i32 noundef 65545, ptr noundef nonnull %err) #12
  %34 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %clkstate, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.then.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %call25 = call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext true)
  %ipend = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 32
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ipend, i32 noundef 4) #12
  %35 = ptrtoint ptr %ipend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %ipend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp27 = icmp sgt i32 %36, 0
  br i1 %cmp27, label %if.then29, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i312 = call zeroext i1 @__kasan_check_write(ptr noundef %ipend, i32 noundef 4) #12
  %37 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %ipend, align 4
  %call31 = call fastcc i32 @brcmf_sdio_intr_rstatus(ptr noundef %bus)
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call31, ptr %err, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end24.if.end32_crit_edge
  %intstatus33 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 4
  %call.i.i313 = call zeroext i1 @__kasan_check_write(ptr noundef %intstatus33, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !568
  call void @llvm.prefetch.p0(ptr %intstatus33, i32 1, i32 3, i32 1) #12
  %39 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %intstatus33) #12, !srcloc !569
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !570
  %and35 = and i32 %asmresult.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end32.if.end45_crit_edge, label %if.then37

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %and38 = and i32 %asmresult.i.i, -33
  call void @brcmf_sdiod_writel(ptr noundef %1, i32 noundef %add, i32 noundef 32, ptr noundef nonnull %err) #12
  %call39 = call i32 @brcmf_sdiod_readl(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %err) #12
  %f1regdata = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 21
  %40 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f1regdata, align 4
  %add40 = add i32 %41, 2
  store i32 %add40, ptr %f1regdata, align 4
  %fcstate = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 5
  %and41 = and i32 %call39, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42 = icmp ne i32 %and41, 0
  %lnot.ext = zext i1 %tobool42 to i32
  %call.i.i314 = call zeroext i1 @__kasan_check_write(ptr noundef %fcstate, i32 noundef 4) #12
  %42 = ptrtoint ptr %fcstate to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %lnot.ext, ptr %fcstate, align 4
  %hostintmask = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 3
  %43 = ptrtoint ptr %hostintmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hostintmask, align 4
  %and44 = and i32 %44, %call39
  %or = or i32 %and44, %and38
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end32.if.end45_crit_edge
  %intstatus.0 = phi i32 [ %or, %if.then37 ], [ %asmresult.i.i, %if.end32.if.end45_crit_edge ]
  %and46 = and i32 %intstatus.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end52_crit_edge, label %if.then48

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %if.end45
  %and49 = and i32 %intstatus.0, -129
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 4
  %47 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #12
  %49 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %ret.i, align 4, !annotation !563
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str) #12
  %base.i = getelementptr inbounds %struct.brcmf_core, ptr %48, i32 0, i32 2
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base.i, align 4
  %add.i = add i32 %51, 76
  %call.i = call i32 @brcmf_sdiod_readl(ptr noundef %46, i32 noundef %add.i, ptr noundef nonnull %ret.i) #12
  %52 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then48.if.end.i_crit_edge

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base.i, align 4
  %add2.i = add i32 %55, 64
  call void @brcmf_sdiod_writel(ptr noundef %46, i32 noundef %add2.i, i32 noundef 2, ptr noundef nonnull %ret.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then48.if.end.i_crit_edge
  %f1regdata.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 21
  %56 = ptrtoint ptr %f1regdata.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f1regdata.i, align 4
  %add3.i = add i32 %57, 2
  store i32 %add3.i, ptr %f1regdata.i, align 4
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.body6.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.body6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.32) #12
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %46, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %59, i32 0, i32 1
  call void @brcmf_fw_crashed(ptr noundef %dev.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.body6.i, %if.end.i.if.end9.i_crit_edge
  %and10.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end23.i_crit_edge, label %do.body13.i

if.end9.i.if.end23.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

do.body13.i:                                      ; preds = %if.end9.i
  %rx_seq.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 14
  %60 = ptrtoint ptr %rx_seq.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rx_seq.i, align 4
  %conv.i = zext i8 %61 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.33, i32 noundef %conv.i) #12
  %rxskip.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 16
  %62 = ptrtoint ptr %rxskip.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rxskip.i, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool16.not.i = icmp eq i8 %63, 0
  br i1 %tobool16.not.i, label %do.body18.i, label %do.body13.i.if.end21.i_crit_edge

do.body13.i.if.end21.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.body18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.34) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.body18.i, %do.body13.i.if.end21.i_crit_edge
  %64 = ptrtoint ptr %rxskip.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %rxskip.i, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end21.i, %if.end9.i.if.end23.i_crit_edge
  %intstatus.0.i = phi i32 [ 64, %if.end21.i ], [ 0, %if.end9.i.if.end23.i_crit_edge ]
  %and24.i = and i32 %call.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end44.i_crit_edge, label %if.then26.i

if.end23.i.if.end44.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then26.i:                                      ; preds = %if.end23.i
  %and27.i = lshr i32 %call.i, 16
  %conv28.i = trunc i32 %and27.i to i8
  %sdpcm_ver.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 29
  %65 = ptrtoint ptr %sdpcm_ver.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv28.i, ptr %sdpcm_ver.i, align 4
  %conv30.i = and i32 %and27.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv30.i)
  %cmp.not.i = icmp eq i32 %conv30.i, 4
  br i1 %cmp.not.i, label %do.body38.i, label %do.body33.i

do.body33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.35, i32 noundef %conv30.i, i32 noundef 4) #12
  br label %if.end43.i

do.body38.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.36, i32 noundef 4) #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.body38.i, %do.body33.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sh.i.i) #12
  %66 = call ptr @memset(ptr %sh.i.i, i32 255, i32 64)
  %call.i.i321 = call fastcc i32 @brcmf_sdio_readshared(ptr noundef %bus, ptr noundef nonnull %sh.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i321)
  %cmp.i.i = icmp eq i32 %call.i.i321, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end43.i.brcmf_sdio_get_console_addr.exit.i_crit_edge

if.end43.i.brcmf_sdio_get_console_addr.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_get_console_addr.exit.i

if.then.i.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %console_addr.i.i = getelementptr inbounds %struct.sdpcm_shared, ptr %sh.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %console_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %console_addr.i.i, align 4
  %console_addr1.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 38
  %69 = ptrtoint ptr %console_addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %console_addr1.i.i, align 4
  br label %brcmf_sdio_get_console_addr.exit.i

brcmf_sdio_get_console_addr.exit.i:               ; preds = %if.then.i.i, %if.end43.i.brcmf_sdio_get_console_addr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sh.i.i) #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %brcmf_sdio_get_console_addr.exit.i, %if.end23.i.if.end44.i_crit_edge
  %and45.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end71.i_crit_edge, label %if.then47.i

if.end44.i.if.end71.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then47.i:                                      ; preds = %if.end44.i
  %shr49.i = lshr i32 %call.i, 24
  %conv50.i = trunc i32 %shr49.i to i8
  %flowcontrol.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 9
  %70 = ptrtoint ptr %flowcontrol.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flowcontrol.i, align 4
  %conv52.i = zext i8 %71 to i32
  %neg.i = xor i32 %conv52.i, -1
  %and53.i = and i32 %shr49.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.then47.i.if.end57.i_crit_edge, label %if.then55.i

if.then47.i.if.end57.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then55.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc_xoff.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 13
  %72 = ptrtoint ptr %fc_xoff.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fc_xoff.i, align 4
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %fc_xoff.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.then47.i.if.end57.i_crit_edge
  %neg61.i = xor i32 %shr49.i, -1
  %and62.i = and i32 %conv52.i, %neg61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end57.i.if.end67.i_crit_edge, label %if.then64.i

if.end57.i.if.end67.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %fc_xon.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 14
  %74 = ptrtoint ptr %fc_xon.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fc_xon.i, align 4
  %inc66.i = add i32 %75, 1
  store i32 %inc66.i, ptr %fc_xon.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end57.i.if.end67.i_crit_edge
  %fc_rcvd.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 12
  %76 = ptrtoint ptr %fc_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fc_rcvd.i, align 4
  %inc69.i = add i32 %77, 1
  store i32 %inc69.i, ptr %fc_rcvd.i, align 4
  %78 = ptrtoint ptr %flowcontrol.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv50.i, ptr %flowcontrol.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end67.i, %if.end44.i.if.end71.i_crit_edge
  %and72.i = and i32 %call.i, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end71.i.brcmf_sdio_hostmail.exit_crit_edge, label %do.body75.i

if.end71.i.brcmf_sdio_hostmail.exit_crit_edge:    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_hostmail.exit

do.body75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hostmail, ptr noundef nonnull @.str.37, i32 noundef %call.i) #12
  br label %brcmf_sdio_hostmail.exit

brcmf_sdio_hostmail.exit:                         ; preds = %do.body75.i, %if.end71.i.brcmf_sdio_hostmail.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #12
  %or51 = or i32 %intstatus.0.i, %and49
  br label %if.end52

if.end52:                                         ; preds = %brcmf_sdio_hostmail.exit, %if.end45.if.end52_crit_edge
  %intstatus.1 = phi i32 [ %or51, %brcmf_sdio_hostmail.exit ], [ %intstatus.0, %if.end45.if.end52_crit_edge ]
  %79 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  call void @sdio_release_host(ptr noundef %82) #12
  %and55 = and i32 %intstatus.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end62_crit_edge, label %do.body58

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.26) #12
  %and61 = and i32 %intstatus.1, -257
  br label %if.end62

if.end62:                                         ; preds = %do.body58, %if.end52.if.end62_crit_edge
  %intstatus.2 = phi i32 [ %and61, %do.body58 ], [ %intstatus.1, %if.end52.if.end62_crit_edge ]
  %and63 = and i32 %intstatus.2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end70_crit_edge, label %do.body66

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.27) #12
  %and69 = and i32 %intstatus.2, -513
  br label %if.end70

if.end70:                                         ; preds = %do.body66, %if.end62.if.end70_crit_edge
  %intstatus.3 = phi i32 [ %and69, %do.body66 ], [ %intstatus.2, %if.end62.if.end70_crit_edge ]
  %and71 = and i32 %intstatus.3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end78_crit_edge, label %do.body74

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

do.body74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.28) #12
  %and77 = and i32 %intstatus.3, -268435457
  br label %if.end78

if.end78:                                         ; preds = %do.body74, %if.end70.if.end78_crit_edge
  %intstatus.4 = phi i32 [ %and77, %do.body74 ], [ %intstatus.3, %if.end70.if.end78_crit_edge ]
  %and79 = and i32 %intstatus.4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %do.body82

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.29) #12
  %and85 = and i32 %intstatus.4, -536870913
  br label %if.end86

if.end86:                                         ; preds = %do.body82, %if.end78.if.end86_crit_edge
  %intstatus.5 = phi i32 [ %and85, %do.body82 ], [ %intstatus.4, %if.end78.if.end86_crit_edge ]
  %rxskip = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 16
  %83 = ptrtoint ptr %rxskip to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rxskip, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool87.not = icmp eq i8 %84, 0
  %and89 = and i32 %intstatus.5, -65
  %spec.select = select i1 %tobool87.not, i32 %intstatus.5, i32 %and89
  %and91 = and i32 %spec.select, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end86.if.end103_crit_edge, label %land.lhs.true93

if.end86.if.end103_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true93:                                  ; preds = %if.end86
  %clkstate94 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %85 = ptrtoint ptr %clkstate94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %clkstate94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp95 = icmp eq i32 %86, 3
  br i1 %cmp95, label %if.then97, label %land.lhs.true93.if.then105_crit_edge

land.lhs.true93.if.then105_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.then97:                                        ; preds = %land.lhs.true93
  %rxbound = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 18
  %87 = ptrtoint ptr %rxbound to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rxbound, align 4
  %cur_read.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rd_new.i) #12
  %89 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i, i32 0, i32 1
  %90 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i, i32 0, i32 2
  %91 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i, i32 0, i32 4
  %92 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i, i32 0, i32 5
  %93 = call ptr @memset(ptr %rd_new.i, i32 255, i32 12)
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str) #12
  %rxpending.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 17
  %94 = ptrtoint ptr %rxpending.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %rxpending.i, align 1
  %rx_seq.i322 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 14
  %95 = ptrtoint ptr %rx_seq.i322 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rx_seq.i322, align 4
  %97 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %cur_read.i, align 2
  %98 = ptrtoint ptr %rxskip to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rxskip, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not73.i = icmp ne i8 %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool1.not74.i = icmp eq i32 %88, 0
  %or.cond75.i = or i1 %tobool1.not74.i, %tobool.not73.i
  br i1 %or.cond75.i, label %if.then97.for.end.i_crit_edge, label %land.rhs.lr.ph.i

if.then97.for.end.i_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.then97
  %glomd.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 21
  %glom.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 22
  %100 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i.i, i32 0, i32 2
  %101 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i.i, i32 0, i32 4
  %102 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd_new.i.i, i32 0, i32 5
  %sgentry_align.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 68
  %blocksize.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 6
  %len94.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 2
  %f2rxdata.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 19
  %rxglomfail246.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 15
  %qlen.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 22, i32 1
  %rxglompkts.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 17
  %rxglomframes.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 16
  %len_left.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 3
  %rxhdr.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 13
  %f2rxhdrs.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 18
  %channel.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 1
  %roundup.i21.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 7
  %head_align.i32.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 67
  %rx_readahead_cnt.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 27
  %len_nxtfrm195.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 4
  %dat_offset199.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 5
  %rxblen.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 24
  %rxbuf.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 23
  %rxc_errors.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 8
  %rx_toolong.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 7
  %rxctl_lock.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 28
  %rxctl.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 25
  %rxctl_orig.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 26
  %rxlen.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 27
  %dcmd_resp_wait.i.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 52
  %rx_hdrfail.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %rxleft.078.i = phi i32 [ %88, %land.rhs.lr.ph.i ], [ %dec.i, %for.inc.i.land.rhs.i_crit_edge ]
  %head_read.076.i = phi i8 [ 0, %land.rhs.lr.ph.i ], [ %head_read.3.i, %for.inc.i.land.rhs.i_crit_edge ]
  %103 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus, align 4
  %state.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %104, i32 0, i32 21
  %105 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i = icmp eq i32 %106, 1
  br i1 %cmp.i, label %for.body.i, label %land.rhs.i.do.body335.i_crit_edge

land.rhs.i.do.body335.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body335.i

for.body.i:                                       ; preds = %land.rhs.i
  %107 = ptrtoint ptr %glomd.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %glomd.i, align 4
  %tobool2.not.i = icmp eq ptr %108, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %for.body.i.if.then.i324_crit_edge

for.body.i.if.then.i324_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i324

lor.lhs.false.i:                                  ; preds = %for.body.i
  %109 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %glom.i, align 4
  %cmp.i.not.i = icmp eq ptr %110, %glom.i
  br i1 %cmp.i.not.i, label %if.end.i328, label %lor.lhs.false.i.if.then.i324_crit_edge

lor.lhs.false.i.if.then.i324_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i324

if.then.i324:                                     ; preds = %lor.lhs.false.i.if.then.i324_crit_edge, %for.body.i.if.then.i324_crit_edge
  %111 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %glom.i, align 4
  %cmp.i6.i = icmp eq ptr %112, %glom.i
  %spec.store.select.i.i = select i1 %cmp.i6.i, ptr null, ptr %112
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.42, ptr noundef %108, ptr noundef %spec.store.select.i.i) #12
  %113 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cur_read.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rd_new.i.i) #12
  %115 = call ptr @memset(ptr %rd_new.i.i, i32 255, i32 12)
  %116 = ptrtoint ptr %glomd.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %glomd.i, align 4
  %118 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %glom.i, align 4
  %cmp.i.i.i = icmp eq ptr %119, %glom.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %119
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.56, ptr noundef %117, ptr noundef %spec.store.select.i.i.i) #12
  %120 = ptrtoint ptr %glomd.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %glomd.i, align 4
  %tobool.not.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i, label %if.then.i324.if.end119.i.i_crit_edge, label %if.then.i.i325

if.then.i324.if.end119.i.i_crit_edge:             ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i.i

if.then.i.i325:                                   ; preds = %if.then.i324
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i.i, align 4
  %conv.i7.i = trunc i32 %123 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i7.i)
  %tobool4.not.i.i = icmp ne i16 %conv.i7.i, 0
  %and.i.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = and i1 %tobool4.not.i.i, %tobool6.not.i.i
  br i1 %or.cond.i.i, label %for.body.lr.ph.i.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.then.i.i325
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.i.i = and i32 %123, 65535
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.57, i32 noundef %conv9.i.i) #12
  br label %if.else.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i325
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 19
  %124 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %pkt_align.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dlen.1548.i.i = phi i16 [ %conv.i7.i, %for.body.lr.ph.i.i ], [ %sub.i.i, %pkt_align.exit.i.i.for.body.i.i_crit_edge ]
  %totlen.0547.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %totlen.1.i.i, %pkt_align.exit.i.i.for.body.i.i_crit_edge ]
  %dptr.0546.i.i = phi ptr [ %125, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %pkt_align.exit.i.i.for.body.i.i_crit_edge ]
  %num.0545.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %pkt_align.exit.i.i.for.body.i.i_crit_edge ]
  %126 = ptrtoint ptr %dptr.0546.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %dptr.0546.i.i, align 1
  %128 = call i16 @llvm.bswap.i16(i16 %127) #12
  %sub.i.i = add i16 %dlen.1548.i.i, -2
  %add.ptr.i.i = getelementptr i8, ptr %dptr.0546.i.i, i32 2
  %conv16.i.i = zext i16 %128 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %128)
  %cmp.i8.i = icmp ult i16 %128, 12
  br i1 %cmp.i8.i, label %for.body.i.i.do.body26.i.i_crit_edge, label %lor.lhs.false18.i.i

for.body.i.i.do.body26.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i.i

lor.lhs.false18.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num.0545.i.i)
  %cmp20.i.i = icmp eq i8 %num.0545.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %128)
  %cmp23.i.i = icmp ult i16 %128, 24
  %or.cond500.i.i = select i1 %cmp20.i.i, i1 %cmp23.i.i, i1 false
  br i1 %or.cond500.i.i, label %lor.lhs.false18.i.i.do.body26.i.i_crit_edge, label %if.end31.i.i

lor.lhs.false18.i.i.do.body26.i.i_crit_edge:      ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i.i

do.body26.i.i:                                    ; preds = %lor.lhs.false18.i.i.do.body26.i.i_crit_edge, %for.body.i.i.do.body26.i.i_crit_edge
  %num.0545.lcssa.i.i = phi i8 [ 0, %lor.lhs.false18.i.i.do.body26.i.i_crit_edge ], [ %num.0545.i.i, %for.body.i.i.do.body26.i.i_crit_edge ]
  %conv27.i.i = zext i8 %num.0545.lcssa.i.i to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.58, i32 noundef %conv27.i.i, i32 noundef %conv16.i.i) #12
  br label %if.else.i.i

if.end31.i.i:                                     ; preds = %lor.lhs.false18.i.i
  %129 = ptrtoint ptr %sgentry_align.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %sgentry_align.i.i, align 2
  %rem533.i.i = urem i16 %128, %130
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem533.i.i)
  %tobool34.not.i.i = icmp eq i16 %rem533.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end31.i.i.if.end42.i.i_crit_edge, label %do.body36.i.i

if.end31.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

do.body36.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv33.i.i = zext i16 %130 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.59, i32 noundef %conv16.i.i, i32 noundef %conv33.i.i) #12
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.body36.i.i, %if.end31.i.i.if.end42.i.i_crit_edge
  %add.i.i = add i16 %128, %totlen.0547.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i)
  %tobool46.not.i.i = icmp eq i16 %sub.i.i, 0
  br i1 %tobool46.not.i.i, label %if.then47.i.i, label %if.end42.i.i.if.end65.i.i_crit_edge

if.end42.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i.i

if.then47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %blocksize.i.i, align 4
  %conv48.i.i = zext i16 %add.i.i to i32
  %sub49.i.i = add nsw i32 %conv48.i.i, -1
  %add50.i.i = add i32 %sub49.i.i, %132
  %133 = urem i32 %add50.i.i, %132
  %mul.i.i = sub i32 %add50.i.i, %133
  %134 = trunc i32 %mul.i.i to i16
  %conv55.i.i = sub i16 %134, %totlen.0547.i.i
  %.pre.i.i = zext i16 %conv55.i.i to i32
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then47.i.i, %if.end42.i.i.if.end65.i.i_crit_edge
  %conv66.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.then47.i.i ], [ %conv16.i.i, %if.end42.i.i.if.end65.i.i_crit_edge ]
  %totlen.1.i.i = phi i16 [ %134, %if.then47.i.i ], [ %add.i.i, %if.end42.i.i.if.end65.i.i_crit_edge ]
  %135 = ptrtoint ptr %sgentry_align.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %sgentry_align.i.i, align 2
  %conv68.i.i = zext i16 %136 to i32
  %add69.i.i = add nuw nsw i32 %conv66.pre-phi.i.i, %conv68.i.i
  %call70.i.i = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %add69.i.i) #12
  %cmp71.i.i = icmp eq ptr %call70.i.i, null
  br i1 %cmp71.i.i, label %do.body74.i.i, label %if.end79.i.i

do.body74.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.le.i.i = zext i8 %num.0545.i.i to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.60, i32 noundef %conv19.le.i.i, i32 noundef %conv66.pre-phi.i.i) #12
  br label %if.else.i.i

if.end79.i.i:                                     ; preds = %if.end65.i.i
  call void @skb_queue_tail(ptr noundef %glom.i, ptr noundef nonnull %call70.i.i) #12
  %137 = ptrtoint ptr %sgentry_align.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %sgentry_align.i.i, align 2
  %conv83.i.i = zext i16 %138 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call70.i.i, i32 0, i32 19
  %139 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  %sub.i.i.i = add nsw i32 %conv83.i.i, -1
  %add.i.i.i = add i32 %sub.i.i.i, %141
  %142 = urem i32 %add.i.i.i, %conv83.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %142)
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i.i, %142
  br i1 %tobool.not.i.i.i, label %if.end79.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end79.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %143 = add i32 %142, %141
  %sub1.i.i.i = sub i32 %add.i.i.i, %143
  %call.i.i.i = call ptr @skb_pull(ptr noundef nonnull %call70.i.i, i32 noundef %sub1.i.i.i) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end79.i.i.if.end.i.i.i_crit_edge
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call70.i.i, i32 0, i32 7
  %144 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %145, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %if.end21.critedge.i.i.i.i.i, label %do.end.i.i.i.i.i, !prof !571

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %pkt_align.exit.i.i

if.end21.critedge.i.i.i.i.i:                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %len22.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call70.i.i, i32 0, i32 6
  %146 = ptrtoint ptr %len22.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv66.pre-phi.i.i, ptr %len22.i.i.i.i.i, align 4
  %147 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %148, i32 %conv66.pre-phi.i.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call70.i.i, i32 0, i32 16
  %149 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %pkt_align.exit.i.i

pkt_align.exit.i.i:                               ; preds = %if.end21.critedge.i.i.i.i.i, %do.end.i.i.i.i.i
  %inc.i.i = add i8 %num.0545.i.i, 1
  br i1 %tobool46.not.i.i, label %do.body86.i.i, label %pkt_align.exit.i.i.for.body.i.i_crit_edge

pkt_align.exit.i.i.for.body.i.i_crit_edge:        ; preds = %pkt_align.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.body86.i.i:                                    ; preds = %pkt_align.exit.i.i
  %conv87.i.i = zext i16 %totlen.1.i.i to i32
  %conv88.i.i = zext i8 %inc.i.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.61, i32 noundef %conv87.i.i, i32 noundef %conv88.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %150 = load i32, ptr @brcmf_msg_level, align 4
  %and91.i.i = and i32 %150, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i.i)
  %tobool92.not.i.i = icmp eq i32 %and91.i.i, 0
  br i1 %tobool92.not.i.i, label %do.body86.i.i.if.end114.i.i_crit_edge, label %land.lhs.true93.i.i

do.body86.i.i.if.end114.i.i_crit_edge:            ; preds = %do.body86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

land.lhs.true93.i.i:                              ; preds = %do.body86.i.i
  %151 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %len94.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool96.not.i.i = icmp eq i16 %152, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %totlen.1.i.i, i16 %152)
  %cmp102.not.i.i = icmp eq i16 %totlen.1.i.i, %152
  %or.cond501.i.i = select i1 %tobool96.not.i.i, i1 true, i1 %cmp102.not.i.i
  br i1 %or.cond501.i.i, label %land.lhs.true93.i.i.if.end114.i.i_crit_edge, label %do.body105.i.i

land.lhs.true93.i.i.if.end114.i.i_crit_edge:      ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

do.body105.i.i:                                   ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv95.i.i = zext i16 %152 to i32
  %conv110.i.i = zext i8 %114 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.62, i32 noundef %conv95.i.i, i32 noundef %conv87.i.i, i32 noundef %conv110.i.i) #12
  br label %if.end114.i.i

if.else.i.i:                                      ; preds = %do.body74.i.i, %do.body26.i.i, %for.end.thread.i.i
  %153 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %glom.i, align 4
  %cmp.not12.i.i.i = icmp eq ptr %154, %glom.i
  br i1 %cmp.not12.i.i.i, label %if.else.i.i.if.end114.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.if.end114.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %cur.013.i.i.i = phi ptr [ %next.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %154, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %155 = ptrtoint ptr %cur.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %next.0.i.i.i = load ptr, ptr %cur.013.i.i.i, align 8
  call void @skb_unlink(ptr noundef %cur.013.i.i.i, ptr noundef %glom.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %cur.013.i.i.i) #12
  %cmp.not.i.i.i = icmp eq ptr %next.0.i.i.i, %glom.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.if.end114.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.if.end114.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %for.body.i.i.i.if.end114.i.i_crit_edge, %if.else.i.i.if.end114.i.i_crit_edge, %do.body105.i.i, %land.lhs.true93.i.i.if.end114.i.i_crit_edge, %do.body86.i.i.if.end114.i.i_crit_edge
  %num.1.i.i = phi i8 [ %inc.i.i, %do.body105.i.i ], [ %inc.i.i, %land.lhs.true93.i.i.if.end114.i.i_crit_edge ], [ %inc.i.i, %do.body86.i.i.if.end114.i.i_crit_edge ], [ 0, %if.else.i.i.if.end114.i.i_crit_edge ], [ 0, %for.body.i.i.i.if.end114.i.i_crit_edge ]
  %156 = ptrtoint ptr %glomd.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %glomd.i, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef %157) #12
  %158 = ptrtoint ptr %glomd.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %glomd.i, align 4
  %159 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %len94.i.i, align 2
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.end114.i.i, %if.then.i324.if.end119.i.i_crit_edge
  %num.2.i.i = phi i8 [ %num.1.i.i, %if.end114.i.i ], [ 0, %if.then.i324.if.end119.i.i_crit_edge ]
  %160 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %glom.i, align 4
  %cmp.i507.not.i.i = icmp eq ptr %161, %glom.i
  br i1 %cmp.i507.not.i.i, label %if.end119.i.i.brcmf_sdio_rxglom.exit.i_crit_edge, label %if.then123.i.i

if.end119.i.i.brcmf_sdio_rxglom.exit.i_crit_edge: ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_rxglom.exit.i

if.then123.i.i:                                   ; preds = %if.end119.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %162 = load i32, ptr @brcmf_msg_level, align 4
  %and124.i.i = and i32 %162, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i.i)
  %tobool125.not.i.i = icmp eq i32 %and124.i.i, 0
  br i1 %tobool125.not.i.i, label %if.then123.i.i.if.end145.i.i_crit_edge, label %do.body127.i.i

if.then123.i.i.if.end145.i.i_crit_edge:           ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i.i

do.body127.i.i:                                   ; preds = %if.then123.i.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.63) #12
  %163 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %pnext.2551.i.i = load ptr, ptr %glom.i, align 4
  %cmp133.not552.i.i = icmp eq ptr %pnext.2551.i.i, %glom.i
  br i1 %cmp133.not552.i.i, label %do.body127.i.i.if.end145.i.i_crit_edge, label %do.body127.i.i.do.body136.i.i_crit_edge

do.body127.i.i.do.body136.i.i_crit_edge:          ; preds = %do.body127.i.i
  br label %do.body136.i.i

do.body127.i.i.if.end145.i.i_crit_edge:           ; preds = %do.body127.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i.i

do.body136.i.i:                                   ; preds = %do.body136.i.i.do.body136.i.i_crit_edge, %do.body127.i.i.do.body136.i.i_crit_edge
  %pnext.2553.i.i = phi ptr [ %pnext.2.i.i, %do.body136.i.i.do.body136.i.i_crit_edge ], [ %pnext.2551.i.i, %do.body127.i.i.do.body136.i.i_crit_edge ]
  %data137.i.i = getelementptr inbounds %struct.sk_buff, ptr %pnext.2553.i.i, i32 0, i32 19
  %164 = ptrtoint ptr %data137.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data137.i.i, align 4
  %len138.i.i = getelementptr inbounds %struct.sk_buff, ptr %pnext.2553.i.i, i32 0, i32 6
  %166 = ptrtoint ptr %len138.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len138.i.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.64, ptr noundef %pnext.2553.i.i, ptr noundef %165, i32 noundef %167, i32 noundef %167) #12
  %168 = ptrtoint ptr %pnext.2553.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %pnext.2.i.i = load ptr, ptr %pnext.2553.i.i, align 4
  %cmp133.not.i.i = icmp eq ptr %pnext.2.i.i, %glom.i
  br i1 %cmp133.not.i.i, label %do.body136.i.i.if.end145.i.i_crit_edge, label %do.body136.i.i.do.body136.i.i_crit_edge

do.body136.i.i.do.body136.i.i_crit_edge:          ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136.i.i

do.body136.i.i.if.end145.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i.i

if.end145.i.i:                                    ; preds = %do.body136.i.i.if.end145.i.i_crit_edge, %do.body127.i.i.if.end145.i.i_crit_edge, %if.then123.i.i.if.end145.i.i_crit_edge
  %169 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %glom.i, align 4
  %cmp.i508.i.i = icmp eq ptr %170, %glom.i
  %spec.store.select.i509.i.i = select i1 %cmp.i508.i.i, ptr null, ptr %170
  br i1 %cmp.i508.i.i, label %if.end145.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge, label %if.end145.i.i.for.body.i513.i.i_crit_edge

if.end145.i.i.for.body.i513.i.i_crit_edge:        ; preds = %if.end145.i.i
  br label %for.body.i513.i.i

if.end145.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge: ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_glom_len.exit.i.i

for.body.i513.i.i:                                ; preds = %for.body.i513.i.i.for.body.i513.i.i_crit_edge, %if.end145.i.i.for.body.i513.i.i_crit_edge
  %p.010.i.i.i = phi ptr [ %p.0.i.i.i, %for.body.i513.i.i.for.body.i513.i.i_crit_edge ], [ %170, %if.end145.i.i.for.body.i513.i.i_crit_edge ]
  %total.09.i.i.i = phi i32 [ %add.i511.i.i, %for.body.i513.i.i.for.body.i513.i.i_crit_edge ], [ 0, %if.end145.i.i.for.body.i513.i.i_crit_edge ]
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.010.i.i.i, i32 0, i32 6
  %171 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %len.i.i.i, align 4
  %add.i511.i.i = add i32 %172, %total.09.i.i.i
  %173 = ptrtoint ptr %p.010.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %p.0.i.i.i = load ptr, ptr %p.010.i.i.i, align 4
  %cmp.not.i512.i.i = icmp eq ptr %p.0.i.i.i, %glom.i
  br i1 %cmp.not.i512.i.i, label %for.body.i513.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge, label %for.body.i513.i.i.for.body.i513.i.i_crit_edge

for.body.i513.i.i.for.body.i513.i.i_crit_edge:    ; preds = %for.body.i513.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i513.i.i

for.body.i513.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge: ; preds = %for.body.i513.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_glom_len.exit.i.i

brcmf_sdio_glom_len.exit.i.i:                     ; preds = %for.body.i513.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge, %if.end145.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge
  %total.0.lcssa.i.i.i = phi i32 [ 0, %if.end145.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge ], [ %add.i511.i.i, %for.body.i513.i.i.brcmf_sdio_glom_len.exit.i.i_crit_edge ]
  %conv149.i.i = trunc i32 %total.0.lcssa.i.i.i to i16
  %174 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  call void @sdio_claim_host(ptr noundef %177) #12
  %178 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus, align 4
  %conv152.i.i = and i32 %total.0.lcssa.i.i.i, 65535
  %call153.i.i = call i32 @brcmf_sdiod_recv_chain(ptr noundef %179, ptr noundef %glom.i, i32 noundef %conv152.i.i) #12
  %180 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bus, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  call void @sdio_release_host(ptr noundef %183) #12
  %184 = ptrtoint ptr %f2rxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %f2rxdata.i.i, align 4
  %inc156.i.i = add i32 %185, 1
  store i32 %inc156.i.i, ptr %f2rxdata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i.i)
  %cmp157.i.i = icmp slt i32 %call153.i.i, 0
  br i1 %cmp157.i.i, label %do.body160.i.i, label %do.body171.i.i

do.body160.i.i:                                   ; preds = %brcmf_sdio_glom_len.exit.i.i
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxglom, ptr noundef nonnull @.str.65, i32 noundef %conv152.i.i, i32 noundef %call153.i.i) #12
  %186 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  call void @sdio_claim_host(ptr noundef %189) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %190 = ptrtoint ptr %rxglomfail246.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rxglomfail246.i.i, align 4
  %inc167.i.i = add i32 %191, 1
  store i32 %inc167.i.i, ptr %rxglomfail246.i.i, align 4
  %192 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %glom.i, align 4
  %cmp.not12.i515.i.i = icmp eq ptr %193, %glom.i
  br i1 %cmp.not12.i515.i.i, label %do.body160.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge, label %do.body160.i.i.for.body.i519.i.i_crit_edge

do.body160.i.i.for.body.i519.i.i_crit_edge:       ; preds = %do.body160.i.i
  br label %for.body.i519.i.i

do.body160.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge: ; preds = %do.body160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit520.i.i

for.body.i519.i.i:                                ; preds = %for.body.i519.i.i.for.body.i519.i.i_crit_edge, %do.body160.i.i.for.body.i519.i.i_crit_edge
  %cur.013.i516.i.i = phi ptr [ %next.0.i517.i.i, %for.body.i519.i.i.for.body.i519.i.i_crit_edge ], [ %193, %do.body160.i.i.for.body.i519.i.i_crit_edge ]
  %194 = ptrtoint ptr %cur.013.i516.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %next.0.i517.i.i = load ptr, ptr %cur.013.i516.i.i, align 8
  call void @skb_unlink(ptr noundef %cur.013.i516.i.i, ptr noundef %glom.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %cur.013.i516.i.i) #12
  %cmp.not.i518.i.i = icmp eq ptr %next.0.i517.i.i, %glom.i
  br i1 %cmp.not.i518.i.i, label %for.body.i519.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge, label %for.body.i519.i.i.for.body.i519.i.i_crit_edge

for.body.i519.i.i.for.body.i519.i.i_crit_edge:    ; preds = %for.body.i519.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i519.i.i

for.body.i519.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge: ; preds = %for.body.i519.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit520.i.i

brcmf_sdio_free_glom.exit520.i.i:                 ; preds = %for.body.i519.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge, %do.body160.i.i.brcmf_sdio_free_glom.exit520.i.i_crit_edge
  %195 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bus, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  call void @sdio_release_host(ptr noundef %198) #12
  br label %brcmf_sdio_rxglom.exit.i

do.body171.i.i:                                   ; preds = %brcmf_sdio_glom_len.exit.i.i
  %data172.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i509.i.i, i32 0, i32 19
  %199 = ptrtoint ptr %data172.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data172.i.i, align 4
  %len173.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i509.i.i, i32 0, i32 6
  %201 = ptrtoint ptr %len173.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len173.i.i, align 4
  %203 = call i32 @llvm.smin.i32(i32 %202, i32 48) #12
  call fastcc void @trace_brcmf_hexdump(ptr noundef %200, i32 noundef %203) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %204 = load i32, ptr @brcmf_msg_level, align 4
  %and177.i.i = and i32 %204, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i.i)
  %tobool178.not.i.i = icmp eq i32 %and177.i.i, 0
  br i1 %tobool178.not.i.i, label %do.body171.i.i.do.end193.i.i_crit_edge, label %if.then179.i.i

do.body171.i.i.do.end193.i.i_crit_edge:           ; preds = %do.body171.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end193.i.i

if.then179.i.i:                                   ; preds = %do.body171.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %205 = ptrtoint ptr %data172.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data172.i.i, align 4
  %207 = ptrtoint ptr %len173.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len173.i.i, align 4
  %209 = call i32 @llvm.smin.i32(i32 %208, i32 48) #12
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %206, i32 noundef %209, ptr noundef nonnull @.str.66) #12
  br label %do.end193.i.i

do.end193.i.i:                                    ; preds = %if.then179.i.i, %do.body171.i.i.do.end193.i.i_crit_edge
  %210 = ptrtoint ptr %rd_new.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %114, ptr %rd_new.i.i, align 2
  %211 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv149.i.i, ptr %100, align 2
  %212 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bus, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  call void @sdio_claim_host(ptr noundef %215) #12
  %216 = ptrtoint ptr %data172.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %data172.i.i, align 4
  %call198.i.i = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %bus, ptr noundef %217, ptr noundef nonnull %rd_new.i.i, i32 noundef 1) #12
  %218 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %bus, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  call void @sdio_release_host(ptr noundef %221) #12
  %222 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %101, align 2
  %shl.i.i = shl i16 %223, 4
  %224 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %shl.i.i, ptr %len94.i.i, align 2
  %225 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %102, align 2
  %conv205.i.i = zext i8 %226 to i32
  %call206.i.i = call ptr @skb_pull(ptr noundef %spec.store.select.i509.i.i, i32 noundef %conv205.i.i) #12
  %227 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %pnext.3554.i.i = load ptr, ptr %glom.i, align 4
  %cmp211.not555.i.i = icmp ne ptr %pnext.3554.i.i, %glom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i.i)
  %tobool214.not556.i.i = icmp eq i32 %call198.i.i, 0
  %or.cond503557.i.i = select i1 %cmp211.not555.i.i, i1 %tobool214.not556.i.i, i1 false
  br i1 %or.cond503557.i.i, label %do.end193.i.i.if.end216.i.i_crit_edge, label %do.end193.i.i.for.end240.i.i_crit_edge

do.end193.i.i.for.end240.i.i_crit_edge:           ; preds = %do.end193.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end240.i.i

do.end193.i.i.if.end216.i.i_crit_edge:            ; preds = %do.end193.i.i
  br label %if.end216.i.i

if.end216.i.i:                                    ; preds = %do.end236.i.i.if.end216.i.i_crit_edge, %do.end193.i.i.if.end216.i.i_crit_edge
  %pnext.3560.i.i = phi ptr [ %pnext.3.i.i, %do.end236.i.i.if.end216.i.i_crit_edge ], [ %pnext.3554.i.i, %do.end193.i.i.if.end216.i.i_crit_edge ]
  %rxseq.addr.0559.i.i = phi i8 [ %inc220.i.i, %do.end236.i.i.if.end216.i.i_crit_edge ], [ %114, %do.end193.i.i.if.end216.i.i_crit_edge ]
  %num.3558.i.i = phi i8 [ %inc237.i.i, %do.end236.i.i.if.end216.i.i_crit_edge ], [ 0, %do.end193.i.i.if.end216.i.i_crit_edge ]
  %len217.i.i = getelementptr inbounds %struct.sk_buff, ptr %pnext.3560.i.i, i32 0, i32 6
  %228 = ptrtoint ptr %len217.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %len217.i.i, align 4
  %conv218.i.i = trunc i32 %229 to i16
  %230 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv218.i.i, ptr %100, align 2
  %inc220.i.i = add i8 %rxseq.addr.0559.i.i, 1
  %231 = ptrtoint ptr %rd_new.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %rxseq.addr.0559.i.i, ptr %rd_new.i.i, align 2
  %232 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  call void @sdio_claim_host(ptr noundef %235) #12
  %data224.i.i = getelementptr inbounds %struct.sk_buff, ptr %pnext.3560.i.i, i32 0, i32 19
  %236 = ptrtoint ptr %data224.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %data224.i.i, align 4
  %call225.i.i = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %bus, ptr noundef %237, ptr noundef nonnull %rd_new.i.i, i32 noundef 2) #12
  %238 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %bus, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  call void @sdio_release_host(ptr noundef %241) #12
  %242 = ptrtoint ptr %data224.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %data224.i.i, align 4
  call fastcc void @trace_brcmf_hexdump(ptr noundef %243, i32 noundef 32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %244 = load i32, ptr @brcmf_msg_level, align 4
  %and230.i.i = and i32 %244, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230.i.i)
  %tobool231.not.i.i = icmp eq i32 %and230.i.i, 0
  br i1 %tobool231.not.i.i, label %if.end216.i.i.do.end236.i.i_crit_edge, label %if.then232.i.i

if.end216.i.i.do.end236.i.i_crit_edge:            ; preds = %if.end216.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end236.i.i

if.then232.i.i:                                   ; preds = %if.end216.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %245 = ptrtoint ptr %data224.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data224.i.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %246, i32 noundef 32, ptr noundef nonnull @.str.67) #12
  br label %do.end236.i.i

do.end236.i.i:                                    ; preds = %if.then232.i.i, %if.end216.i.i.do.end236.i.i_crit_edge
  %inc237.i.i = add i8 %num.3558.i.i, 1
  %247 = ptrtoint ptr %pnext.3560.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %pnext.3.i.i = load ptr, ptr %pnext.3560.i.i, align 4
  %cmp211.not.i.i = icmp ne ptr %pnext.3.i.i, %glom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i.i)
  %tobool214.not.i.i = icmp eq i32 %call225.i.i, 0
  %or.cond503.i.i = select i1 %cmp211.not.i.i, i1 %tobool214.not.i.i, i1 false
  br i1 %or.cond503.i.i, label %do.end236.i.i.if.end216.i.i_crit_edge, label %do.end236.i.i.for.end240.i.i_crit_edge

do.end236.i.i.for.end240.i.i_crit_edge:           ; preds = %do.end236.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end240.i.i

do.end236.i.i.if.end216.i.i_crit_edge:            ; preds = %do.end236.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216.i.i

for.end240.i.i:                                   ; preds = %do.end236.i.i.for.end240.i.i_crit_edge, %do.end193.i.i.for.end240.i.i_crit_edge
  %num.3.lcssa.i.i = phi i8 [ 0, %do.end193.i.i.for.end240.i.i_crit_edge ], [ %inc237.i.i, %do.end236.i.i.for.end240.i.i_crit_edge ]
  %tobool214.not.lcssa.i.i = phi i1 [ %tobool214.not556.i.i, %do.end193.i.i.for.end240.i.i_crit_edge ], [ %tobool214.not.i.i, %do.end236.i.i.for.end240.i.i_crit_edge ]
  br i1 %tobool214.not.lcssa.i.i, label %if.end252.i.i, label %if.then242.i.i

if.then242.i.i:                                   ; preds = %for.end240.i.i
  %248 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bus, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  call void @sdio_claim_host(ptr noundef %251) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %252 = ptrtoint ptr %rxglomfail246.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rxglomfail246.i.i, align 4
  %inc247.i.i = add i32 %253, 1
  store i32 %inc247.i.i, ptr %rxglomfail246.i.i, align 4
  %254 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %glom.i, align 4
  %cmp.not12.i522.i.i = icmp eq ptr %255, %glom.i
  br i1 %cmp.not12.i522.i.i, label %if.then242.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge, label %if.then242.i.i.for.body.i526.i.i_crit_edge

if.then242.i.i.for.body.i526.i.i_crit_edge:       ; preds = %if.then242.i.i
  br label %for.body.i526.i.i

if.then242.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge: ; preds = %if.then242.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit527.i.i

for.body.i526.i.i:                                ; preds = %for.body.i526.i.i.for.body.i526.i.i_crit_edge, %if.then242.i.i.for.body.i526.i.i_crit_edge
  %cur.013.i523.i.i = phi ptr [ %next.0.i524.i.i, %for.body.i526.i.i.for.body.i526.i.i_crit_edge ], [ %255, %if.then242.i.i.for.body.i526.i.i_crit_edge ]
  %256 = ptrtoint ptr %cur.013.i523.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %next.0.i524.i.i = load ptr, ptr %cur.013.i523.i.i, align 8
  call void @skb_unlink(ptr noundef %cur.013.i523.i.i, ptr noundef %glom.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %cur.013.i523.i.i) #12
  %cmp.not.i525.i.i = icmp eq ptr %next.0.i524.i.i, %glom.i
  br i1 %cmp.not.i525.i.i, label %for.body.i526.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge, label %for.body.i526.i.i.for.body.i526.i.i_crit_edge

for.body.i526.i.i.for.body.i526.i.i_crit_edge:    ; preds = %for.body.i526.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i526.i.i

for.body.i526.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge: ; preds = %for.body.i526.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit527.i.i

brcmf_sdio_free_glom.exit527.i.i:                 ; preds = %for.body.i526.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge, %if.then242.i.i.brcmf_sdio_free_glom.exit527.i.i_crit_edge
  %257 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bus, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  call void @sdio_release_host(ptr noundef %260) #12
  %261 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %len94.i.i, align 2
  br label %brcmf_sdio_rxglom.exit.i

if.end252.i.i:                                    ; preds = %for.end240.i.i
  %262 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %glom.i, align 4
  %cmp258.not564.i.i = icmp eq ptr %263, %glom.i
  br i1 %cmp258.not564.i.i, label %if.end252.i.i.for.end329.i.i_crit_edge, label %if.end252.i.i.for.body260.i.i_crit_edge

if.end252.i.i.for.body260.i.i_crit_edge:          ; preds = %if.end252.i.i
  br label %for.body260.i.i

if.end252.i.i.for.end329.i.i_crit_edge:           ; preds = %if.end252.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end329.i.i

for.body260.i.i:                                  ; preds = %for.inc327.i.i.for.body260.i.i_crit_edge, %if.end252.i.i.for.body260.i.i_crit_edge
  %pfirst.0565.i.i = phi ptr [ %pnext.4568.i.i, %for.inc327.i.i.for.body260.i.i_crit_edge ], [ %263, %if.end252.i.i.for.body260.i.i_crit_edge ]
  %264 = ptrtoint ptr %pfirst.0565.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %pnext.4568.i.i = load ptr, ptr %pfirst.0565.i.i, align 8
  %data261.i.i = getelementptr inbounds %struct.sk_buff, ptr %pfirst.0565.i.i, i32 0, i32 19
  %265 = ptrtoint ptr %data261.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %data261.i.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_loadN_noabort(i32 %267, i32 2)
  %268 = load i16, ptr %266, align 1
  %269 = call i16 @llvm.bswap.i16(i16 %268) #12
  %arrayidx.i.i = getelementptr i8, ptr %266, i32 4
  %270 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.i.i, align 4
  %len265.i.i = getelementptr inbounds %struct.sk_buff, ptr %pfirst.0565.i.i, i32 0, i32 6
  %272 = ptrtoint ptr %len265.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %len265.i.i, align 4
  call fastcc void @trace_brcmf_hexdump(ptr noundef %266, i32 noundef %273) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %274 = load i32, ptr @brcmf_msg_level, align 4
  %275 = and i32 %274, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %275)
  %.not.i.i = icmp eq i32 %275, 136
  br i1 %.not.i.i, label %if.then271.i.i, label %for.body260.i.i.do.end275.i.i_crit_edge

for.body260.i.i.do.end275.i.i_crit_edge:          ; preds = %for.body260.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end275.i.i

if.then271.i.i:                                   ; preds = %for.body260.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %276 = ptrtoint ptr %len265.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %len265.i.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %266, i32 noundef %277, ptr noundef nonnull @.str.68) #12
  br label %do.end275.i.i

do.end275.i.i:                                    ; preds = %if.then271.i.i, %for.body260.i.i.do.end275.i.i_crit_edge
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pfirst.0565.i.i, i32 0, i32 7
  %278 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.i.not.i.i.i.i = icmp eq i32 %279, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end21.critedge.i.i.i.i, label %do.end.i.i.i.i, !prof !571

do.end.i.i.i.i:                                   ; preds = %do.end275.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %__skb_trim.exit.i.i

if.end21.critedge.i.i.i.i:                        ; preds = %do.end275.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv276.i.i = zext i16 %269 to i32
  %280 = ptrtoint ptr %len265.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %conv276.i.i, ptr %len265.i.i, align 4
  %281 = ptrtoint ptr %data261.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data261.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %282, i32 %conv276.i.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pfirst.0565.i.i, i32 0, i32 16
  %283 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %__skb_trim.exit.i.i

__skb_trim.exit.i.i:                              ; preds = %if.end21.critedge.i.i.i.i, %do.end.i.i.i.i
  %conv277.i.i = and i32 %271, 255
  %call278.i.i = call ptr @skb_pull(ptr noundef %pfirst.0565.i.i, i32 noundef %conv277.i.i) #12
  %284 = ptrtoint ptr %len265.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %len265.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp280.i.i = icmp eq i32 %285, 0
  br i1 %cmp280.i.i, label %if.then282.i.i, label %do.body285.i.i

if.then282.i.i:                                   ; preds = %__skb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @skb_unlink(ptr noundef %pfirst.0565.i.i, ptr noundef %glom.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %pfirst.0565.i.i) #12
  br label %for.inc327.i.i

do.body285.i.i:                                   ; preds = %__skb_trim.exit.i.i
  %286 = ptrtoint ptr %data261.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %data261.i.i, align 4
  %288 = call i32 @llvm.smin.i32(i32 %285, i32 32) #12
  call fastcc void @trace_brcmf_hexdump(ptr noundef %287, i32 noundef %288) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %289 = load i32, ptr @brcmf_msg_level, align 4
  %and295.i.i = and i32 %289, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295.i.i)
  %tobool296.not.i.i = icmp eq i32 %and295.i.i, 0
  br i1 %tobool296.not.i.i, label %do.body285.i.i.do.end315.i.i_crit_edge, label %if.then297.i.i

do.body285.i.i.do.end315.i.i_crit_edge:           ; preds = %do.body285.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end315.i.i

if.then297.i.i:                                   ; preds = %do.body285.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %290 = ptrtoint ptr %data261.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %data261.i.i, align 4
  %292 = ptrtoint ptr %len265.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %len265.i.i, align 4
  %294 = call i32 @llvm.smin.i32(i32 %293, i32 32) #12
  %295 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %qlen.i.i, align 4
  %297 = ptrtoint ptr %pfirst.0565.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %pfirst.0565.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.anon.44, ptr %pfirst.0565.i.i, i32 0, i32 1
  %299 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %prev.i.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %291, i32 noundef %294, ptr noundef nonnull @.str.69, i32 noundef %296, ptr noundef %pfirst.0565.i.i, ptr noundef %291, i32 noundef %293, ptr noundef %298, ptr noundef %300) #12
  br label %do.end315.i.i

do.end315.i.i:                                    ; preds = %if.then297.i.i, %do.body285.i.i.do.end315.i.i_crit_edge
  call void @skb_unlink(ptr noundef %pfirst.0565.i.i, ptr noundef %glom.i) #12
  %301 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx.i.i, align 4
  %303 = and i32 %302, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %303)
  %cmp.i529.i.i = icmp eq i32 %303, 65536
  %304 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %bus, align 4
  %dev.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %305, i32 0, i32 5
  %306 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i.i, align 4
  br i1 %cmp.i529.i.i, label %if.then319.i.i, label %if.else321.i.i

if.then319.i.i:                                   ; preds = %do.end315.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @brcmf_rx_event(ptr noundef %307, ptr noundef %pfirst.0565.i.i) #12
  br label %if.end324.i.i

if.else321.i.i:                                   ; preds = %do.end315.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @brcmf_rx_frame(ptr noundef %307, ptr noundef %pfirst.0565.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end324.i.i

if.end324.i.i:                                    ; preds = %if.else321.i.i, %if.then319.i.i
  %308 = ptrtoint ptr %rxglompkts.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %rxglompkts.i.i, align 4
  %inc326.i.i = add i32 %309, 1
  store i32 %inc326.i.i, ptr %rxglompkts.i.i, align 4
  br label %for.inc327.i.i

for.inc327.i.i:                                   ; preds = %if.end324.i.i, %if.then282.i.i
  %cmp258.not.i.i = icmp eq ptr %pnext.4568.i.i, %glom.i
  br i1 %cmp258.not.i.i, label %for.inc327.i.i.for.end329.i.i_crit_edge, label %for.inc327.i.i.for.body260.i.i_crit_edge

for.inc327.i.i.for.body260.i.i_crit_edge:         ; preds = %for.inc327.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body260.i.i

for.inc327.i.i.for.end329.i.i_crit_edge:          ; preds = %for.inc327.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end329.i.i

for.end329.i.i:                                   ; preds = %for.inc327.i.i.for.end329.i.i_crit_edge, %if.end252.i.i.for.end329.i.i_crit_edge
  %310 = ptrtoint ptr %rxglomframes.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %rxglomframes.i.i, align 4
  %inc331.i.i = add i32 %311, 1
  store i32 %inc331.i.i, ptr %rxglomframes.i.i, align 4
  br label %brcmf_sdio_rxglom.exit.i

brcmf_sdio_rxglom.exit.i:                         ; preds = %for.end329.i.i, %brcmf_sdio_free_glom.exit527.i.i, %brcmf_sdio_free_glom.exit520.i.i, %if.end119.i.i.brcmf_sdio_rxglom.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %brcmf_sdio_free_glom.exit520.i.i ], [ 0, %brcmf_sdio_free_glom.exit527.i.i ], [ %num.2.i.i, %if.end119.i.i.brcmf_sdio_rxglom.exit.i_crit_edge ], [ %num.3.lcssa.i.i, %for.end329.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rd_new.i.i) #12
  %conv.i326 = zext i8 %retval.0.i.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.43, i32 noundef %conv.i326) #12
  %sub.i = add i8 %retval.0.i.i, -1
  %312 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %cur_read.i, align 2
  %add.i327 = add i8 %sub.i, %313
  store i8 %add.i327, ptr %cur_read.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %rxleft.078.i, i32 %conv.i326)
  %cmp20.i = icmp ugt i32 %rxleft.078.i, %conv.i326
  %sub23.i = sub i32 %rxleft.078.i, %conv.i326
  %spec.select.i = select i1 %cmp20.i, i32 %sub23.i, i32 1
  br label %for.inc.i

if.end.i328:                                      ; preds = %lor.lhs.false.i
  %314 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %len94.i.i, align 2
  %316 = ptrtoint ptr %len_left.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %315, ptr %len_left.i, align 2
  %317 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %104, align 4
  call void @sdio_claim_host(ptr noundef %318) #12
  %319 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %len94.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %320)
  %tobool26.not.i = icmp eq i16 %320, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end.i328.if.end91.i_crit_edge

if.end.i328.if.end91.i_crit_edge:                 ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

if.then27.i:                                      ; preds = %if.end.i328
  %321 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %bus, align 4
  %323 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %rxhdr.i, align 4
  %call29.i = call i32 @brcmf_sdiod_recv_buf(ptr noundef %322, ptr noundef %324, i32 noundef 64) #12
  %325 = ptrtoint ptr %f2rxhdrs.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %f2rxhdrs.i, align 4
  %inc.i329 = add i32 %326, 1
  store i32 %inc.i329, ptr %f2rxhdrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.body33.i330, label %do.body41.i

do.body33.i330:                                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.44, i32 noundef %call29.i) #12
  %327 = ptrtoint ptr %rx_hdrfail.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %rx_hdrfail.i, align 4
  %inc37.i = add i32 %328, 1
  store i32 %inc37.i, ptr %rx_hdrfail.i, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %329 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bus, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %330, align 4
  call void @sdio_release_host(ptr noundef %332) #12
  br label %for.inc.i

do.body41.i:                                      ; preds = %if.then27.i
  %333 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %rxhdr.i, align 4
  call fastcc void @trace_brcmf_hexdump(ptr noundef %334, i32 noundef 12) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %335 = load i32, ptr @brcmf_msg_level, align 4
  %336 = and i32 %335, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %do.body41.i.do.end51.i_crit_edge, label %if.then47.i331

do.body41.i.do.end51.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end51.i

if.then47.i331:                                   ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  %338 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %rxhdr.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %339, i32 noundef 12, ptr noundef nonnull @.str.45) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %if.then47.i331, %do.body41.i.do.end51.i_crit_edge
  %340 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %rxhdr.i, align 4
  %call53.i = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %bus, ptr noundef %341, ptr noundef %cur_read.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i332 = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i332, label %if.end61.i, label %if.then55.i333

if.then55.i333:                                   ; preds = %do.end51.i
  %342 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %bus, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %343, align 4
  call void @sdio_release_host(ptr noundef %345) #12
  %346 = ptrtoint ptr %rxpending.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %rxpending.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool59.not.i = icmp eq i8 %347, 0
  br i1 %tobool59.not.i, label %if.then55.i333.do.body335.i_crit_edge, label %if.then55.i333.for.inc.i_crit_edge

if.then55.i333.for.inc.i_crit_edge:               ; preds = %if.then55.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then55.i333.do.body335.i_crit_edge:            ; preds = %if.then55.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body335.i

if.end61.i:                                       ; preds = %do.end51.i
  %348 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %cmp63.i = icmp eq i8 %349, 0
  br i1 %cmp63.i, label %if.then65.i, label %if.end77.i

if.then65.i:                                      ; preds = %if.end61.i
  %350 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rxhdr.i, align 4
  %352 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %len94.i.i, align 2
  %conv68.i = zext i16 %353 to i32
  %354 = ptrtoint ptr %dat_offset199.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %dat_offset199.i, align 2
  %conv69.i = zext i8 %355 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str) #12
  %356 = ptrtoint ptr %rxblen.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %rxblen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool.not.i9.i = icmp eq i32 %357, 0
  br i1 %tobool.not.i9.i, label %if.then65.i.brcmf_sdio_read_control.exit.i_crit_edge, label %if.end.i.i

if.then65.i.brcmf_sdio_read_control.exit.i_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_read_control.exit.i

if.end.i.i:                                       ; preds = %if.then65.i
  %call.i.i334 = call noalias ptr @vzalloc(i32 noundef %357) #17
  %tobool2.not.i.i = icmp eq ptr %call.i.i334, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.brcmf_sdio_read_control.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.brcmf_sdio_read_control.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_read_control.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %358 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %rxbuf.i.i, align 4
  %360 = ptrtoint ptr %359 to i32
  %361 = ptrtoint ptr %head_align.i32.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %head_align.i32.i, align 4
  %conv.i10.i = zext i16 %362 to i32
  %rem.i.i = urem i32 %360, %conv.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool5.not.i.i = icmp eq i32 %rem.i.i, 0
  %sub.i11.i = sub nsw i32 %conv.i10.i, %rem.i.i
  %rbuf.0.idx.i.i = select i1 %tobool5.not.i.i, i32 0, i32 %sub.i11.i
  %rbuf.0.i.i = getelementptr i8, ptr %359, i32 %rbuf.0.idx.i.i
  %363 = call ptr @memcpy(ptr %call.i.i334, ptr %351, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %353)
  %cmp.i12.i = icmp ult i16 %353, 65
  br i1 %cmp.i12.i, label %if.end4.i.i.do.body96.i.i_crit_edge, label %if.end12.i.i

if.end4.i.i.do.body96.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body96.i.i

if.end12.i.i:                                     ; preds = %if.end4.i.i
  %sub13.i.i = add nsw i32 %conv68.i, -64
  %364 = ptrtoint ptr %roundup.i21.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %roundup.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool14.not.i.i = icmp eq i32 %365, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.else.i16.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.i.if.else.i16.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i16.i

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  %366 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %tobool15.not.i.i = icmp ne i32 %367, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i.i, i32 %367)
  %cmp18.i.i = icmp ugt i32 %sub13.i.i, %367
  %or.cond.i14.i = and i1 %tobool15.not.i.i, %cmp18.i.i
  br i1 %or.cond.i14.i, label %if.then20.i.i, label %land.lhs.true.i.i.if.else.i16.i_crit_edge

land.lhs.true.i.i.if.else.i16.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i16.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  %rem23.i.i = urem i32 %sub13.i.i, %367
  %sub24.i.i = sub i32 %367, %rem23.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24.i.i, i32 %365)
  %cmp26.not.i.i = icmp ule i32 %sub24.i.i, %365
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24.i.i, i32 %367)
  %cmp30.i.i = icmp ult i32 %sub24.i.i, %367
  %or.cond191.i.i = and i1 %cmp26.not.i.i, %cmp30.i.i
  br i1 %or.cond191.i.i, label %land.lhs.true32.i.i, label %if.then20.i.i.if.end51.i.i_crit_edge

if.then20.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

land.lhs.true32.i.i:                              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i15.i = add i32 %sub24.i.i, %conv68.i
  %368 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %bus, align 4
  %bus_if.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %369, i32 0, i32 6
  %370 = ptrtoint ptr %bus_if.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %bus_if.i.i, align 4
  %maxctl.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %371, i32 0, i32 6
  %372 = ptrtoint ptr %maxctl.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %maxctl.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i15.i, i32 %373)
  %cmp33.i.i = icmp ult i32 %add.i15.i, %373
  %add36.i.i = select i1 %cmp33.i.i, i32 %sub24.i.i, i32 0
  %spec.select.i.i = add i32 %add36.i.i, %sub13.i.i
  br label %if.end51.i.i

if.else.i16.i:                                    ; preds = %land.lhs.true.i.i.if.else.i16.i_crit_edge, %if.end12.i.i.if.else.i16.i_crit_edge
  %rem40.i.lhs.trunc.i = trunc i32 %sub13.i.i to i16
  %rem40.i57.i = urem i16 %rem40.i.lhs.trunc.i, %362
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem40.i57.i)
  %tobool41.not.i.i = icmp eq i16 %rem40.i57.i, 0
  br i1 %tobool41.not.i.i, label %if.else.i16.i.if.end51.i.i_crit_edge, label %if.then42.i.i

if.else.i16.i.if.end51.i.i_crit_edge:             ; preds = %if.else.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

if.then42.i.i:                                    ; preds = %if.else.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem40.i.zext.i = zext i16 %rem40.i57.i to i32
  %sub48.i.i = add nsw i32 %sub13.i.i, %conv.i10.i
  %add49.i.i = sub nsw i32 %sub48.i.i, %rem40.i.zext.i
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then42.i.i, %if.else.i16.i.if.end51.i.i_crit_edge, %land.lhs.true32.i.i, %if.then20.i.i.if.end51.i.i_crit_edge
  %rdlen.0.i.i = phi i32 [ %sub13.i.i, %if.then20.i.i.if.end51.i.i_crit_edge ], [ %add49.i.i, %if.then42.i.i ], [ %sub13.i.i, %if.else.i16.i.if.end51.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true32.i.i ]
  %add52.i.i = add i32 %rdlen.0.i.i, 64
  %374 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %bus, align 4
  %bus_if54.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %375, i32 0, i32 6
  %376 = ptrtoint ptr %bus_if54.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %bus_if54.i.i, align 4
  %maxctl55.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %377, i32 0, i32 6
  %378 = ptrtoint ptr %maxctl55.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %maxctl55.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add52.i.i, i32 %379)
  %cmp56.i.i = icmp ugt i32 %add52.i.i, %379
  br i1 %cmp56.i.i, label %do.body59.i.i, label %if.end65.i17.i

do.body59.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.92, i32 noundef %rdlen.0.i.i, i32 noundef %379) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %brcmf_sdio_read_control.exit.i

if.end65.i17.i:                                   ; preds = %if.end51.i.i
  %sub66.i.i = sub nsw i32 %conv68.i, %conv69.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub66.i.i, i32 %379)
  %cmp70.i.i = icmp ugt i32 %sub66.i.i, %379
  br i1 %cmp70.i.i, label %do.body73.i.i, label %if.end80.i.i

do.body73.i.i:                                    ; preds = %if.end65.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.93, i32 noundef %conv68.i, i32 noundef %sub66.i.i, i32 noundef %379) #12
  %380 = ptrtoint ptr %rx_toolong.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %rx_toolong.i.i, align 4
  %inc.i18.i = add i32 %381, 1
  store i32 %inc.i18.i, ptr %rx_toolong.i.i, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %brcmf_sdio_read_control.exit.i

if.end80.i.i:                                     ; preds = %if.end65.i17.i
  %call82.i.i = call i32 @brcmf_sdiod_recv_buf(ptr noundef %375, ptr noundef %rbuf.0.i.i, i32 noundef %rdlen.0.i.i) #12
  %382 = ptrtoint ptr %f2rxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %f2rxdata.i.i, align 4
  %inc84.i.i = add i32 %383, 1
  store i32 %inc84.i.i, ptr %f2rxdata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %cmp85.i.i = icmp slt i32 %call82.i.i, 0
  br i1 %cmp85.i.i, label %do.body88.i.i, label %if.else93.i.i

do.body88.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.94, i32 noundef %rdlen.0.i.i, i32 noundef %call82.i.i) #12
  %384 = ptrtoint ptr %rxc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %rxc_errors.i.i, align 4
  %inc92.i.i = add i32 %385, 1
  store i32 %inc92.i.i, ptr %rxc_errors.i.i, align 4
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %brcmf_sdio_read_control.exit.i

if.else93.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr94.i.i = getelementptr i8, ptr %call.i.i334, i32 64
  %386 = call ptr @memcpy(ptr %add.ptr94.i.i, ptr %rbuf.0.i.i, i32 %rdlen.0.i.i)
  br label %do.body96.i.i

do.body96.i.i:                                    ; preds = %if.else93.i.i, %if.end4.i.i.do.body96.i.i_crit_edge
  call fastcc void @trace_brcmf_hexdump(ptr noundef nonnull %call.i.i334, i32 noundef %conv68.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %387 = load i32, ptr @brcmf_msg_level, align 4
  %388 = and i32 %387, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %388)
  %.not.i20.i = icmp eq i32 %388, 144
  br i1 %.not.i20.i, label %if.then101.i.i, label %do.body96.i.i.do.end104.i.i_crit_edge

do.body96.i.i.do.end104.i.i_crit_edge:            ; preds = %do.body96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.body96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef nonnull %call.i.i334, i32 noundef %conv68.i, ptr noundef nonnull @.str.95) #12
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.body96.i.i.do.end104.i.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %rxctl_lock.i.i) #12
  %389 = ptrtoint ptr %rxctl.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %rxctl.i.i, align 4
  %tobool105.not.i.i = icmp eq ptr %390, null
  br i1 %tobool105.not.i.i, label %if.end111.i.i, label %do.body107.i.i

do.body107.i.i:                                   ; preds = %do.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_read_control, ptr noundef nonnull @.str.96) #12
  call void @_raw_spin_unlock_bh(ptr noundef %rxctl_lock.i.i) #12
  call void @vfree(ptr noundef nonnull %call.i.i334) #12
  br label %brcmf_sdio_read_control.exit.i

if.end111.i.i:                                    ; preds = %do.end104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr112.i.i = getelementptr i8, ptr %call.i.i334, i32 %conv69.i
  %391 = ptrtoint ptr %rxctl.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %add.ptr112.i.i, ptr %rxctl.i.i, align 4
  %392 = ptrtoint ptr %rxctl_orig.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %call.i.i334, ptr %rxctl_orig.i.i, align 4
  %sub114.i.i = sub nsw i32 %conv68.i, %conv69.i
  %393 = ptrtoint ptr %rxlen.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %sub114.i.i, ptr %rxlen.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rxctl_lock.i.i) #12
  br label %brcmf_sdio_read_control.exit.i

brcmf_sdio_read_control.exit.i:                   ; preds = %if.end111.i.i, %do.body107.i.i, %do.body88.i.i, %do.body73.i.i, %do.body59.i.i, %if.end.i.i.brcmf_sdio_read_control.exit.i_crit_edge, %if.then65.i.brcmf_sdio_read_control.exit.i_crit_edge
  call void @__wake_up(ptr noundef %dcmd_resp_wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %394 = ptrtoint ptr %len_nxtfrm195.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %len_nxtfrm195.i, align 2
  %shl.i = shl i16 %395, 4
  %396 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 %shl.i, ptr %len94.i.i, align 2
  store i16 0, ptr %len_nxtfrm195.i, align 2
  %397 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 1, ptr %channel.i, align 1
  %398 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %bus, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %399, align 4
  call void @sdio_release_host(ptr noundef %401) #12
  br label %for.inc.i

if.end77.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  %402 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %len94.i.i, align 2
  %404 = call i16 @llvm.usub.sat.i16(i16 %403, i16 64) #12
  %405 = ptrtoint ptr %len_left.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %404, ptr %len_left.i, align 2
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end77.i, %if.end.i328.if.end91.i_crit_edge
  %head_read.1.i = phi i8 [ %head_read.076.i, %if.end.i328.if.end91.i_crit_edge ], [ 64, %if.end77.i ]
  %406 = ptrtoint ptr %roundup.i21.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %roundup.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %tobool.not.i22.i = icmp eq i32 %407, 0
  br i1 %tobool.not.i22.i, label %if.end91.i.if.else.i33.i_crit_edge, label %land.lhs.true.i24.i

if.end91.i.if.else.i33.i_crit_edge:               ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i33.i

land.lhs.true.i24.i:                              ; preds = %if.end91.i
  %408 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool1.not.i.i = icmp eq i32 %409, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i24.i.if.else.i33.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i24.i.if.else.i33.i_crit_edge:      ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i33.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i24.i
  %410 = ptrtoint ptr %len_left.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %len_left.i, align 2
  %conv.i25.i = zext i16 %411 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %409, i32 %conv.i25.i)
  %cmp.i26.i = icmp ult i32 %409, %conv.i25.i
  br i1 %cmp.i26.i, label %if.then.i30.i, label %land.lhs.true2.i.i.if.else.i33.i_crit_edge

land.lhs.true2.i.i.if.else.i33.i_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i33.i

if.then.i30.i:                                    ; preds = %land.lhs.true2.i.i
  %rem.i27.i = urem i32 %conv.i25.i, %409
  %sub.i28.i = sub i32 %409, %rem.i27.i
  %conv9.i29.i = and i32 %sub.i28.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i29.i, i32 %407)
  %cmp11.not.i.i = icmp ule i32 %conv9.i29.i, %407
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i29.i, i32 %409)
  %cmp16.i.i = icmp ult i32 %conv9.i29.i, %409
  %or.cond58.i = select i1 %cmp11.not.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond58.i, label %land.lhs.true18.i.i, label %if.then.i30.i.brcmf_sdio_pad.exit.i_crit_edge

if.then.i30.i.brcmf_sdio_pad.exit.i_crit_edge:    ; preds = %if.then.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_pad.exit.i

land.lhs.true18.i.i:                              ; preds = %if.then.i30.i
  %add.i31.i = add nuw nsw i32 %conv9.i29.i, %conv.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1984, i32 %add.i31.i)
  %cmp22.i.i = icmp ult i32 %add.i31.i, 1984
  br i1 %cmp22.i.i, label %if.then24.i.i, label %land.lhs.true18.i.i.brcmf_sdio_pad.exit.i_crit_edge

land.lhs.true18.i.i.brcmf_sdio_pad.exit.i_crit_edge: ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_pad.exit.i

if.then24.i.i:                                    ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv28.i.i = trunc i32 %add.i31.i to i16
  br label %if.end45.sink.split.i.i

if.else.i33.i:                                    ; preds = %land.lhs.true2.i.i.if.else.i33.i_crit_edge, %land.lhs.true.i24.i.if.else.i33.i_crit_edge, %if.end91.i.if.else.i33.i_crit_edge
  %412 = ptrtoint ptr %len_left.i to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %len_left.i, align 2
  %414 = ptrtoint ptr %head_align.i32.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %head_align.i32.i, align 4
  %416 = urem i16 %413, %415
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %416)
  %tobool32.not.i.i = icmp eq i16 %416, 0
  br i1 %tobool32.not.i.i, label %if.else.i33.i.brcmf_sdio_pad.exit.i_crit_edge, label %if.then33.i.i

if.else.i33.i.brcmf_sdio_pad.exit.i_crit_edge:    ; preds = %if.else.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_pad.exit.i

if.then33.i.i:                                    ; preds = %if.else.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  %417 = add i16 %415, %413
  %conv43.i.i = sub i16 %417, %416
  br label %if.end45.sink.split.i.i

if.end45.sink.split.i.i:                          ; preds = %if.then33.i.i, %if.then24.i.i
  %conv43.sink.i.i = phi i16 [ %conv43.i.i, %if.then33.i.i ], [ %conv28.i.i, %if.then24.i.i ]
  %418 = ptrtoint ptr %len_left.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %conv43.sink.i.i, ptr %len_left.i, align 2
  br label %brcmf_sdio_pad.exit.i

brcmf_sdio_pad.exit.i:                            ; preds = %if.end45.sink.split.i.i, %if.else.i33.i.brcmf_sdio_pad.exit.i_crit_edge, %land.lhs.true18.i.i.brcmf_sdio_pad.exit.i_crit_edge, %if.then.i30.i.brcmf_sdio_pad.exit.i_crit_edge
  %419 = ptrtoint ptr %len_left.i to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %len_left.i, align 2
  %conv94.i = zext i16 %420 to i32
  %conv95.i = zext i8 %head_read.1.i to i32
  %add96.i = add nuw nsw i32 %conv94.i, %conv95.i
  %421 = ptrtoint ptr %head_align.i32.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %head_align.i32.i, align 4
  %conv97.i = zext i16 %422 to i32
  %add98.i = add nuw nsw i32 %add96.i, %conv97.i
  %call99.i = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %add98.i) #12
  %tobool100.not.i = icmp eq ptr %call99.i, null
  br i1 %tobool100.not.i, label %do.body102.i, label %if.end111.i

do.body102.i:                                     ; preds = %brcmf_sdio_pad.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.46) #12
  %423 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %424)
  %cmp107.i = icmp eq i8 %424, 1
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext %cmp107.i) #12
  %425 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %bus, align 4
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %426, align 4
  call void @sdio_release_host(ptr noundef %428) #12
  br label %for.inc.i

if.end111.i:                                      ; preds = %brcmf_sdio_pad.exit.i
  %call113.i = call ptr @skb_pull(ptr noundef nonnull %call99.i, i32 noundef %conv95.i) #12
  %429 = ptrtoint ptr %len_left.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %len_left.i, align 2
  %conv115.i = zext i16 %430 to i32
  %431 = ptrtoint ptr %head_align.i32.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %head_align.i32.i, align 4
  %conv117.i = zext i16 %432 to i32
  %data.i34.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 19
  %433 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %data.i34.i, align 4
  %435 = ptrtoint ptr %434 to i32
  %sub.i35.i = add nsw i32 %conv117.i, -1
  %add.i36.i = add i32 %sub.i35.i, %435
  %436 = urem i32 %add.i36.i, %conv117.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i35.i, i32 %436)
  %tobool.not.i37.i = icmp eq i32 %sub.i35.i, %436
  br i1 %tobool.not.i37.i, label %if.end111.i.if.end.i42.i_crit_edge, label %if.then.i39.i

if.end111.i.if.end.i42.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i42.i

if.then.i39.i:                                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  %437 = add i32 %436, %435
  %sub1.i.i = sub i32 %add.i36.i, %437
  %call.i38.i = call ptr @skb_pull(ptr noundef nonnull %call99.i, i32 noundef %sub1.i.i) #12
  br label %if.end.i42.i

if.end.i42.i:                                     ; preds = %if.then.i39.i, %if.end111.i.if.end.i42.i_crit_edge
  %data_len.i.i.i.i40.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 7
  %438 = ptrtoint ptr %data_len.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %data_len.i.i.i.i40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool.i.not.i.i.i41.i = icmp eq i32 %439, 0
  br i1 %tobool.i.not.i.i.i41.i, label %if.end21.critedge.i.i.i46.i, label %do.end.i.i.i43.i, !prof !571

do.end.i.i.i43.i:                                 ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %pkt_align.exit.i

if.end21.critedge.i.i.i46.i:                      ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  %len22.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 6
  %440 = ptrtoint ptr %len22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %conv115.i, ptr %len22.i.i.i.i, align 4
  %441 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %data.i34.i, align 4
  %add.ptr.i.i.i.i44.i = getelementptr i8, ptr %442, i32 %conv115.i
  %tail.i.i.i.i45.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 16
  %443 = ptrtoint ptr %tail.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %add.ptr.i.i.i.i44.i, ptr %tail.i.i.i.i45.i, align 8
  br label %pkt_align.exit.i

pkt_align.exit.i:                                 ; preds = %if.end21.critedge.i.i.i46.i, %do.end.i.i.i43.i
  %444 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %bus, align 4
  %call119.i = call i32 @brcmf_sdiod_recv_pkt(ptr noundef %445, ptr noundef nonnull %call99.i) #12
  %446 = ptrtoint ptr %f2rxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %f2rxdata.i.i, align 4
  %inc121.i = add i32 %447, 1
  store i32 %inc121.i, ptr %f2rxdata.i.i, align 4
  %448 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %bus, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  call void @sdio_release_host(ptr noundef %451) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %cmp124.i = icmp slt i32 %call119.i, 0
  br i1 %cmp124.i, label %do.body127.i, label %if.end142.i

do.body127.i:                                     ; preds = %pkt_align.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %452 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %len94.i.i, align 2
  %conv129.i = zext i16 %453 to i32
  %454 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %channel.i, align 1
  %conv131.i = zext i8 %455 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.47, i32 noundef %conv129.i, i32 noundef %conv131.i, i32 noundef %call119.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call99.i) #12
  %456 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %bus, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %457, align 4
  call void @sdio_claim_host(ptr noundef %459) #12
  %460 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %461)
  %cmp138.i = icmp eq i8 %461, 1
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext %cmp138.i) #12
  %462 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %bus, align 4
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %463, align 4
  call void @sdio_release_host(ptr noundef %465) #12
  br label %for.inc.i

if.end142.i:                                      ; preds = %pkt_align.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %head_read.1.i)
  %tobool143.not.i = icmp eq i8 %head_read.1.i, 0
  br i1 %tobool143.not.i, label %if.else149.i, label %if.then144.i

if.then144.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #14
  %call146.i = call ptr @skb_push(ptr noundef nonnull %call99.i, i32 noundef %conv95.i) #12
  %466 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %data.i34.i, align 4
  %468 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %rxhdr.i, align 4
  %470 = call ptr @memcpy(ptr %467, ptr %469, i32 %conv95.i)
  br label %do.body232.i

if.else149.i:                                     ; preds = %if.end142.i
  %471 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %rxhdr.i, align 4
  %473 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %data.i34.i, align 4
  %475 = call ptr @memcpy(ptr %472, ptr %474, i32 12)
  %476 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %cur_read.i, align 2
  %478 = ptrtoint ptr %rd_new.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %477, ptr %rd_new.i, align 2
  %479 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %bus, align 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %480, align 4
  call void @sdio_claim_host(ptr noundef %482) #12
  %483 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %rxhdr.i, align 4
  %call157.i = call fastcc i32 @brcmf_sdio_hdparse(ptr noundef %bus, ptr noundef %484, ptr noundef nonnull %rd_new.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %if.end163.i, label %if.then159.i

if.then159.i:                                     ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #14
  %485 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 0, ptr %len94.i.i, align 2
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %486 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %bus, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %487, align 4
  call void @sdio_release_host(ptr noundef %489) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call99.i) #12
  br label %for.inc.i

if.end163.i:                                      ; preds = %if.else149.i
  %490 = ptrtoint ptr %rx_readahead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %rx_readahead_cnt.i, align 4
  %inc165.i = add i32 %491, 1
  store i32 %inc165.i, ptr %rx_readahead_cnt.i, align 4
  %492 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %len94.i.i, align 2
  %conv167.i = zext i16 %493 to i32
  %494 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %90, align 2
  %conv169.i = zext i16 %495 to i32
  %add171.i = add nuw nsw i32 %conv169.i, 15
  %div1.i = and i32 %add171.i, 131056
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %conv167.i)
  %cmp172.not.i = icmp eq i32 %div1.i, %conv167.i
  br i1 %cmp172.not.i, label %if.end191.i, label %do.body175.i

do.body175.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #14
  %496 = lshr i32 %add171.i, 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.48, i32 noundef %conv167.i, i32 noundef %496) #12
  %497 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 0, ptr %len94.i.i, align 2
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %498 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %bus, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %499, align 4
  call void @sdio_release_host(ptr noundef %501) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call99.i) #12
  br label %for.inc.i

if.end191.i:                                      ; preds = %if.end163.i
  %502 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %bus, align 4
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 4
  call void @sdio_release_host(ptr noundef %505) #12
  %506 = ptrtoint ptr %91 to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %91, align 2
  %508 = ptrtoint ptr %len_nxtfrm195.i to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 %507, ptr %len_nxtfrm195.i, align 2
  %509 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %89, align 1
  %511 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 %510, ptr %channel.i, align 1
  %512 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %92, align 2
  %514 = ptrtoint ptr %dat_offset199.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %dat_offset199.i, align 2
  %515 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %rxhdr.i, align 4
  call fastcc void @trace_brcmf_hexdump(ptr noundef %516, i32 noundef 12) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %517 = load i32, ptr @brcmf_msg_level, align 4
  %518 = and i32 %517, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %518)
  %.not60.i = icmp eq i32 %518, 136
  %and208.i = and i32 %517, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  %or.cond59.i = or i1 %.not60.i, %tobool209.not.i
  br i1 %or.cond59.i, label %if.end191.i.do.end214.i_crit_edge, label %if.then210.i

if.end191.i.do.end214.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end214.i

if.then210.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #14
  %519 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %rxhdr.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %520, i32 noundef 12, ptr noundef nonnull @.str.45) #12
  br label %do.end214.i

do.end214.i:                                      ; preds = %if.then210.i, %if.end191.i.do.end214.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %510)
  %cmp217.i = icmp eq i8 %510, 0
  br i1 %cmp217.i, label %do.body220.i, label %do.end214.i.do.body232.i_crit_edge

do.end214.i.do.body232.i_crit_edge:               ; preds = %do.end214.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body232.i

do.body220.i:                                     ; preds = %do.end214.i
  call void @__sanitizer_cov_trace_pc() #14
  %521 = ptrtoint ptr %rd_new.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %rd_new.i, align 2
  %conv222.i = zext i8 %522 to i32
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.49, i32 noundef %conv222.i) #12
  %523 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 0, ptr %len94.i.i, align 2
  %524 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %bus, align 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %525, align 4
  call void @sdio_claim_host(ptr noundef %527) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %528 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %bus, align 4
  %530 = ptrtoint ptr %529 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %529, align 4
  call void @sdio_release_host(ptr noundef %531) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call99.i) #12
  br label %for.inc.i

do.body232.i:                                     ; preds = %do.end214.i.do.body232.i_crit_edge, %if.then144.i
  %532 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %data.i34.i, align 4
  %534 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %len94.i.i, align 2
  %conv235.i = zext i16 %535 to i32
  call fastcc void @trace_brcmf_hexdump(ptr noundef %533, i32 noundef %conv235.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %536 = load i32, ptr @brcmf_msg_level, align 4
  %537 = and i32 %536, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %537)
  %.not.i = icmp eq i32 %537, 136
  br i1 %.not.i, label %if.then241.i, label %do.body232.i.do.end247.i_crit_edge

do.body232.i.do.end247.i_crit_edge:               ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end247.i

if.then241.i:                                     ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #14
  %538 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %data.i34.i, align 4
  %540 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %len94.i.i, align 2
  %conv244.i = zext i16 %541 to i32
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %539, i32 noundef %conv244.i, ptr noundef nonnull @.str.50) #12
  br label %do.end247.i

do.end247.i:                                      ; preds = %if.then241.i, %do.body232.i.do.end247.i_crit_edge
  %542 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %543)
  %cmp250.i = icmp eq i8 %543, 3
  br i1 %cmp250.i, label %if.then252.i, label %if.end297.i

if.then252.i:                                     ; preds = %do.end247.i
  %544 = ptrtoint ptr %rxhdr.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %rxhdr.i, align 4
  %arrayidx254.i = getelementptr i8, ptr %545, i32 5
  %546 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx254.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %547)
  %tobool257.not.i = icmp sgt i8 %547, -1
  br i1 %tobool257.not.i, label %do.body282.i, label %do.body259.i

do.body259.i:                                     ; preds = %if.then252.i
  %548 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %len94.i.i, align 2
  %conv261.i = zext i16 %549 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 512, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.51, i32 noundef %conv261.i) #12
  %550 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %data.i34.i, align 4
  %552 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %552)
  %553 = load i16, ptr %len94.i.i, align 2
  %conv267.i = zext i16 %553 to i32
  call fastcc void @trace_brcmf_hexdump(ptr noundef %551, i32 noundef %conv267.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %554 = load i32, ptr @brcmf_msg_level, align 4
  %and268.i = and i32 %554, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268.i)
  %tobool269.not.i = icmp eq i32 %and268.i, 0
  br i1 %tobool269.not.i, label %do.body259.i.do.end276.i_crit_edge, label %if.then270.i

do.body259.i.do.end276.i_crit_edge:               ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end276.i

if.then270.i:                                     ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #14
  %555 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %data.i34.i, align 4
  %557 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %len94.i.i, align 2
  %conv273.i = zext i16 %558 to i32
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %556, i32 noundef %conv273.i, ptr noundef nonnull @.str.52) #12
  br label %do.end276.i

do.end276.i:                                      ; preds = %if.then270.i, %do.body259.i.do.end276.i_crit_edge
  %559 = ptrtoint ptr %data_len.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %data_len.i.i.i.i40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %tobool.i.not.i.i.i = icmp eq i32 %560, 0
  br i1 %tobool.i.not.i.i.i, label %if.end21.critedge.i.i.i, label %do.end.i.i.i, !prof !571

do.end.i.i.i:                                     ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %__skb_trim.exit.i

if.end21.critedge.i.i.i:                          ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #14
  %561 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %561)
  %562 = load i16, ptr %len94.i.i, align 2
  %conv278.i = zext i16 %562 to i32
  %len22.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 6
  %563 = ptrtoint ptr %len22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %conv278.i, ptr %len22.i.i.i, align 4
  %564 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %data.i34.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %565, i32 %conv278.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 16
  %566 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__skb_trim.exit.i

__skb_trim.exit.i:                                ; preds = %if.end21.critedge.i.i.i, %do.end.i.i.i
  %call279.i = call ptr @skb_pull(ptr noundef nonnull %call99.i, i32 noundef 12) #12
  %567 = ptrtoint ptr %glomd.i to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %call99.i, ptr %glomd.i, align 4
  br label %if.end289.i

do.body282.i:                                     ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.brcmf_sdio_readframes) #12
  %568 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %bus, align 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %569, align 4
  call void @sdio_claim_host(ptr noundef %571) #12
  call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %572 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %bus, align 4
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %573, align 4
  call void @sdio_release_host(ptr noundef %575) #12
  br label %if.end289.i

if.end289.i:                                      ; preds = %do.body282.i, %__skb_trim.exit.i
  %576 = ptrtoint ptr %len_nxtfrm195.i to i32
  call void @__asan_load2_noabort(i32 %576)
  %577 = load i16, ptr %len_nxtfrm195.i, align 2
  %shl292.i = shl i16 %577, 4
  %578 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 %shl292.i, ptr %len94.i.i, align 2
  store i16 0, ptr %len_nxtfrm195.i, align 2
  %579 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 1, ptr %channel.i, align 1
  br label %for.inc.i

if.end297.i:                                      ; preds = %do.end247.i
  %580 = ptrtoint ptr %data_len.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %data_len.i.i.i.i40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %581)
  %tobool.i.not.i.i49.i = icmp eq i32 %581, 0
  br i1 %tobool.i.not.i.i49.i, label %if.end21.critedge.i.i55.i, label %do.end.i.i50.i, !prof !571

do.end.i.i50.i:                                   ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.97, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %__skb_trim.exit56.i

if.end21.critedge.i.i55.i:                        ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #14
  %582 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %len94.i.i, align 2
  %conv299.i = zext i16 %583 to i32
  %len22.i.i51.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 6
  %584 = ptrtoint ptr %len22.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 %conv299.i, ptr %len22.i.i51.i, align 4
  %585 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %data.i34.i, align 4
  %add.ptr.i.i.i53.i = getelementptr i8, ptr %586, i32 %conv299.i
  %tail.i.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 16
  %587 = ptrtoint ptr %tail.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %add.ptr.i.i.i53.i, ptr %tail.i.i.i54.i, align 8
  br label %__skb_trim.exit56.i

__skb_trim.exit56.i:                              ; preds = %if.end21.critedge.i.i55.i, %do.end.i.i50.i
  %588 = ptrtoint ptr %dat_offset199.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %dat_offset199.i, align 2
  %conv301.i = zext i8 %589 to i32
  %call302.i = call ptr @skb_pull(ptr noundef nonnull %call99.i, i32 noundef %conv301.i) #12
  %len303.i = getelementptr inbounds %struct.sk_buff, ptr %call99.i, i32 0, i32 6
  %590 = ptrtoint ptr %len303.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %len303.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %591)
  %cmp304.i = icmp eq i32 %591, 0
  br i1 %cmp304.i, label %if.then306.i, label %if.else307.i

if.then306.i:                                     ; preds = %__skb_trim.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call99.i) #12
  br label %if.end318.i

if.else307.i:                                     ; preds = %__skb_trim.exit56.i
  %592 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %593)
  %cmp310.i = icmp eq i8 %593, 1
  %594 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %bus, align 4
  %dev.i335 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %595, i32 0, i32 5
  %596 = ptrtoint ptr %dev.i335 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %dev.i335, align 4
  br i1 %cmp310.i, label %if.then312.i, label %if.else314.i

if.then312.i:                                     ; preds = %if.else307.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @brcmf_rx_event(ptr noundef %597, ptr noundef nonnull %call99.i) #12
  br label %if.end318.i

if.else314.i:                                     ; preds = %if.else307.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @brcmf_rx_frame(ptr noundef %597, ptr noundef nonnull %call99.i, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.else314.i, %if.then312.i, %if.then306.i
  %598 = ptrtoint ptr %len_nxtfrm195.i to i32
  call void @__asan_load2_noabort(i32 %598)
  %599 = load i16, ptr %len_nxtfrm195.i, align 2
  %shl321.i = shl i16 %599, 4
  %600 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 %shl321.i, ptr %len94.i.i, align 2
  store i16 0, ptr %len_nxtfrm195.i, align 2
  %601 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 1, ptr %channel.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end318.i, %if.end289.i, %do.body220.i, %do.body175.i, %if.then159.i, %do.body127.i, %do.body102.i, %brcmf_sdio_read_control.exit.i, %if.then55.i333.for.inc.i_crit_edge, %do.body33.i330, %brcmf_sdio_rxglom.exit.i
  %head_read.3.i = phi i8 [ %head_read.076.i, %brcmf_sdio_rxglom.exit.i ], [ %head_read.1.i, %do.body127.i ], [ 0, %if.end289.i ], [ 0, %if.end318.i ], [ 0, %if.then159.i ], [ 0, %do.body175.i ], [ 0, %do.body220.i ], [ %head_read.1.i, %do.body102.i ], [ %head_read.076.i, %do.body33.i330 ], [ %head_read.076.i, %if.then55.i333.for.inc.i_crit_edge ], [ %head_read.076.i, %brcmf_sdio_read_control.exit.i ]
  %rxleft.1.i = phi i32 [ %spec.select.i, %brcmf_sdio_rxglom.exit.i ], [ %rxleft.078.i, %do.body127.i ], [ %rxleft.078.i, %if.end289.i ], [ %rxleft.078.i, %if.end318.i ], [ %rxleft.078.i, %if.then159.i ], [ %rxleft.078.i, %do.body175.i ], [ %rxleft.078.i, %do.body220.i ], [ %rxleft.078.i, %do.body102.i ], [ %rxleft.078.i, %do.body33.i330 ], [ %rxleft.078.i, %if.then55.i333.for.inc.i_crit_edge ], [ %rxleft.078.i, %brcmf_sdio_read_control.exit.i ]
  %602 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %cur_read.i, align 2
  %inc327.i = add i8 %603, 1
  store i8 %inc327.i, ptr %cur_read.i, align 2
  %dec.i = add i32 %rxleft.1.i, -1
  %604 = ptrtoint ptr %rxskip to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %rxskip, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool.not.i336 = icmp ne i8 %605, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i336, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then97.for.end.i_crit_edge
  %rxleft.0.lcssa.i = phi i32 [ %88, %if.then97.for.end.i_crit_edge ], [ %dec.i, %for.inc.i.for.end.i_crit_edge ]
  %tobool1.not.lcssa.i = phi i1 [ %tobool1.not74.i, %if.then97.for.end.i_crit_edge ], [ %tobool1.not.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %tobool1.not.lcssa.i, label %do.body331.i, label %for.end.i.do.body335.i_crit_edge

for.end.i.do.body335.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body335.i

do.body331.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.54, i32 noundef %88) #12
  br label %if.end338.i

do.body335.i:                                     ; preds = %for.end.i.do.body335.i_crit_edge, %if.then55.i333.do.body335.i_crit_edge, %land.rhs.i.do.body335.i_crit_edge
  %rxleft.0.lcssa95.i = phi i32 [ %rxleft.0.lcssa.i, %for.end.i.do.body335.i_crit_edge ], [ %rxleft.078.i, %land.rhs.i.do.body335.i_crit_edge ], [ %rxleft.078.i, %if.then55.i333.do.body335.i_crit_edge ]
  %sub328.i = sub i32 %88, %rxleft.0.lcssa95.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_sdio_readframes, ptr noundef nonnull @.str.55, i32 noundef %sub328.i) #12
  br label %if.end338.i

if.end338.i:                                      ; preds = %do.body335.i, %do.body331.i
  %606 = ptrtoint ptr %rxskip to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %rxskip, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %607)
  %tobool340.not.i = icmp eq i8 %607, 0
  br i1 %tobool340.not.i, label %if.end338.i.brcmf_sdio_readframes.exit_crit_edge, label %if.then341.i

if.end338.i.brcmf_sdio_readframes.exit_crit_edge: ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_readframes.exit

if.then341.i:                                     ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #14
  %608 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %cur_read.i, align 2
  %dec343.i = add i8 %609, -1
  store i8 %dec343.i, ptr %cur_read.i, align 2
  br label %brcmf_sdio_readframes.exit

brcmf_sdio_readframes.exit:                       ; preds = %if.then341.i, %if.end338.i.brcmf_sdio_readframes.exit_crit_edge
  %610 = ptrtoint ptr %cur_read.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %cur_read.i, align 2
  %612 = ptrtoint ptr %rx_seq.i322 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %611, ptr %rx_seq.i322, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rd_new.i) #12
  %613 = ptrtoint ptr %rxpending.i to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %rxpending.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %614)
  %tobool99.not = icmp eq i8 %614, 0
  %spec.select311 = select i1 %tobool99.not, i32 %and89, i32 %spec.select
  br label %if.end103

if.end103:                                        ; preds = %brcmf_sdio_readframes.exit, %if.end86.if.end103_crit_edge
  %intstatus.7 = phi i32 [ %spec.select, %if.end86.if.end103_crit_edge ], [ %spec.select311, %brcmf_sdio_readframes.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intstatus.7)
  %tobool104.not = icmp eq i32 %intstatus.7, 0
  br i1 %tobool104.not, label %if.end103.if.end107_crit_edge, label %if.end103.if.then105_crit_edge

if.end103.if.then105_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then105:                                       ; preds = %if.end103.if.then105_crit_edge, %land.lhs.true93.if.then105_crit_edge
  %intstatus.7440 = phi i32 [ %intstatus.7, %if.end103.if.then105_crit_edge ], [ %spec.select, %land.lhs.true93.if.then105_crit_edge ]
  %call.i.i315 = call zeroext i1 @__kasan_check_write(ptr noundef %intstatus33, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %intstatus33, i32 1, i32 3, i32 1) #12
  %615 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %intstatus33, ptr %intstatus33, i32 %intstatus.7440, ptr elementtype(i32) %intstatus33) #12, !srcloc !564
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end103.if.end107_crit_edge
  %616 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %bus, align 4
  %oob_irq_requested.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %617, i32 0, i32 8
  %618 = ptrtoint ptr %oob_irq_requested.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %oob_irq_requested.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool.not.i337 = icmp eq i8 %619, 0
  br i1 %tobool.not.i337, label %if.end107.brcmf_sdio_clrintr.exit_crit_edge, label %do.body2.i

if.end107.brcmf_sdio_clrintr.exit_crit_edge:      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_clrintr.exit

do.body2.i:                                       ; preds = %if.end107
  %irq_en_lock.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %617, i32 0, i32 11
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_en_lock.i) #12
  %irq_en.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %617, i32 0, i32 10
  %620 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %irq_en.i, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool6.not.i = icmp eq i8 %621, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %do.body2.i.if.end.i339_crit_edge

do.body2.i.if.end.i339_crit_edge:                 ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i339

land.lhs.true.i:                                  ; preds = %do.body2.i
  %call.i.i.i338 = call zeroext i1 @__kasan_check_read(ptr noundef %ipend, i32 noundef 4) #12
  %622 = ptrtoint ptr %ipend to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load volatile i32, ptr %ipend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %623)
  %tobool8.not.i = icmp eq i32 %623, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end.i339_crit_edge

land.lhs.true.i.if.end.i339_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i339

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %settings.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %617, i32 0, i32 7
  %624 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %settings.i, align 4
  %oob_irq_nr.i = getelementptr inbounds %struct.brcmf_mp_device, ptr %625, i32 0, i32 8, i32 0, i32 3
  %626 = ptrtoint ptr %oob_irq_nr.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %oob_irq_nr.i, align 4
  call void @enable_irq(i32 noundef %627) #12
  %628 = ptrtoint ptr %irq_en.i to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 1, ptr %irq_en.i, align 2
  br label %if.end.i339

if.end.i339:                                      ; preds = %if.then9.i, %land.lhs.true.i.if.end.i339_crit_edge, %do.body2.i.if.end.i339_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_en_lock.i, i32 noundef %call3.i) #12
  br label %brcmf_sdio_clrintr.exit

brcmf_sdio_clrintr.exit:                          ; preds = %if.end.i339, %if.end107.brcmf_sdio_clrintr.exit_crit_edge
  %ctrl_frame_stat = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 48
  %629 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %630)
  %tobool108.not = icmp eq i8 %630, 0
  br i1 %tobool108.not, label %brcmf_sdio_clrintr.exit.if.end137_crit_edge, label %land.lhs.true110

brcmf_sdio_clrintr.exit.if.end137_crit_edge:      ; preds = %brcmf_sdio_clrintr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true110:                                 ; preds = %brcmf_sdio_clrintr.exit
  %clkstate111 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %631 = ptrtoint ptr %clkstate111 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %clkstate111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %632)
  %cmp112 = icmp eq i32 %632, 3
  br i1 %cmp112, label %land.lhs.true114, label %land.lhs.true110.if.end137_crit_edge

land.lhs.true110.if.end137_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %tx_max.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 11
  %633 = ptrtoint ptr %tx_max.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %tx_max.i, align 2
  %tx_seq.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 10
  %635 = ptrtoint ptr %tx_seq.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %tx_seq.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %634, i8 %636)
  %cmp.not.i340 = icmp ne i8 %634, %636
  %conv1.i = zext i8 %636 to i32
  %conv.i341 = zext i8 %634 to i32
  %sub.i342 = sub nsw i32 %conv.i341, %conv1.i
  %and.i343 = and i32 %sub.i342, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i343)
  %cmp8.i = icmp eq i32 %and.i343, 0
  %637 = select i1 %cmp.not.i340, i1 %cmp8.i, i1 false
  br i1 %637, label %if.then117, label %land.lhs.true114.if.end137_crit_edge

land.lhs.true114.if.end137_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then117:                                       ; preds = %land.lhs.true114
  %638 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %bus, align 4
  %640 = ptrtoint ptr %639 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %639, align 4
  call void @sdio_claim_host(ptr noundef %641) #12
  %642 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %643)
  %tobool121.not = icmp eq i8 %643, 0
  br i1 %tobool121.not, label %if.then117.if.end134_crit_edge, label %if.then122

if.then117.if.end134_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then122:                                       ; preds = %if.then117
  %ctrl_frame_buf = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 46
  %644 = ptrtoint ptr %ctrl_frame_buf to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %ctrl_frame_buf, align 4
  %ctrl_frame_len = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 47
  %646 = ptrtoint ptr %ctrl_frame_len to i32
  call void @__asan_load2_noabort(i32 %646)
  %647 = load i16, ptr %ctrl_frame_len, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_tx_ctrlframe, ptr noundef nonnull @.str) #12
  %tx_hdrlen.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 65
  %648 = ptrtoint ptr %tx_hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %648)
  %649 = load i8, ptr %tx_hdrlen.i, align 2
  %conv.i344 = zext i8 %649 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i344
  %add.ptr.i = getelementptr i8, ptr %645, i32 %idx.neg.i
  %650 = zext i8 %649 to i16
  %conv4.i = add i16 %647, %650
  %651 = ptrtoint ptr %add.ptr.i to i32
  %head_align.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 67
  %652 = ptrtoint ptr %head_align.i to i32
  call void @__asan_load2_noabort(i32 %652)
  %653 = load i16, ptr %head_align.i, align 4
  %conv5.i = zext i16 %653 to i32
  %rem.i = urem i32 %651, %conv5.i
  %conv6.i = trunc i32 %rem.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i)
  %tobool.not.i345 = icmp eq i8 %conv6.i, 0
  br i1 %tobool.not.i345, label %if.then122.if.end.i347_crit_edge, label %if.then.i346

if.then122.if.end.i347_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i347

if.then.i346:                                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %conv7.i = and i32 %rem.i, 255
  %idx.neg8.i = sub nsw i32 0, %conv7.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg8.i
  %654 = trunc i32 %conv7.i to i16
  %conv13.i = add i16 %conv4.i, %654
  %add.ptr16.i = getelementptr i8, ptr %add.ptr9.i, i32 %conv.i344
  %655 = call ptr @memset(ptr %add.ptr16.i, i32 0, i32 %conv7.i)
  br label %if.end.i347

if.end.i347:                                      ; preds = %if.then.i346, %if.then122.if.end.i347_crit_edge
  %len.addr.0.i = phi i16 [ %conv13.i, %if.then.i346 ], [ %conv4.i, %if.then122.if.end.i347_crit_edge ]
  %frame.addr.0.i = phi ptr [ %add.ptr9.i, %if.then.i346 ], [ %add.ptr.i, %if.then122.if.end.i347_crit_edge ]
  %roundup.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 7
  %656 = ptrtoint ptr %roundup.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %roundup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %657)
  %tobool18.not.i = icmp eq i32 %657, 0
  br i1 %tobool18.not.i, label %if.end.i347.if.else.i_crit_edge, label %land.lhs.true.i348

if.end.i347.if.else.i_crit_edge:                  ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i348:                               ; preds = %if.end.i347
  %blocksize.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 6
  %658 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %659)
  %tobool19.not.i = icmp eq i32 %659, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i348.if.else.i_crit_edge, label %land.lhs.true20.i

land.lhs.true.i348.if.else.i_crit_edge:           ; preds = %land.lhs.true.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i348
  %conv21.i = zext i16 %len.addr.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %659, i32 %conv21.i)
  %cmp.i349 = icmp ult i32 %659, %conv21.i
  br i1 %cmp.i349, label %if.then24.i, label %land.lhs.true20.i.if.else.i_crit_edge

land.lhs.true20.i.if.else.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then24.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem28.i = urem i32 %conv21.i, %659
  %sub.i350 = sub i32 %659, %rem28.i
  %conv30.i351 = and i32 %sub.i350, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.i351, i32 %657)
  %cmp32.i = icmp ule i32 %conv30.i351, %657
  %conv29.i = trunc i32 %sub.i350 to i16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.i351, i32 %659)
  %cmp36.not.i = icmp ult i32 %conv30.i351, %659
  %or.cond.i352 = select i1 %cmp32.i, i1 %cmp36.not.i, i1 false
  %spec.select197.i = select i1 %or.cond.i352, i16 %conv29.i, i16 0
  br label %if.end55.i

if.else.i:                                        ; preds = %land.lhs.true20.i.if.else.i_crit_edge, %land.lhs.true.i348.if.else.i_crit_edge, %if.end.i347.if.else.i_crit_edge
  %660 = ptrtoint ptr %head_align.i to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %head_align.i, align 4
  %662 = urem i16 %len.addr.0.i, %661
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %662)
  %tobool44.not.i = icmp eq i16 %662, 0
  %sub52.i = sub i16 %661, %662
  %spec.select.i353 = select i1 %tobool44.not.i, i16 0, i16 %sub52.i
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then24.i
  %pad.0.i = phi i16 [ %spec.select.i353, %if.else.i ], [ %spec.select197.i, %if.then24.i ]
  %add58.i = add i16 %pad.0.i, %len.addr.0.i
  %conv60.i = zext i16 %add58.i to i32
  %663 = ptrtoint ptr %tx_hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %663)
  %664 = load i8, ptr %tx_hdrlen.i, align 2
  %conv69.i354 = add i8 %664, %conv6.i
  %665 = ptrtoint ptr %tx_seq.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %tx_seq.i, align 1
  %667 = call i16 @llvm.bswap.i16(i16 %len.addr.0.i) #12
  %668 = ptrtoint ptr %frame.addr.0.i to i32
  call void @__asan_store2_noabort(i32 %668)
  store i16 %667, ptr %frame.addr.0.i, align 2
  %neg.i.i.i = xor i16 %len.addr.0.i, -1
  %669 = call i16 @llvm.bswap.i16(i16 %neg.i.i.i) #12
  %add.ptr.i.i.i = getelementptr i16, ptr %frame.addr.0.i, i32 1
  %670 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %670)
  store i16 %669, ptr %add.ptr.i.i.i, align 2
  %txglom.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 66
  %671 = ptrtoint ptr %txglom.i.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %txglom.i.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool.not.i.i356 = icmp eq i8 %672, 0
  br i1 %tobool.not.i.i356, label %if.end55.i.brcmf_sdio_hdpack.exit.i_crit_edge, label %if.then.i.i359

if.end55.i.brcmf_sdio_hdpack.exit.i_crit_edge:    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_hdpack.exit.i

if.then.i.i359:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i16 %len.addr.0.i to i32
  %sub.i.i357 = add nsw i32 %conv.i.i, -4
  %or.i.i = or i32 %sub.i.i357, 16777216
  %673 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %add.ptr.i.i358 = getelementptr i8, ptr %frame.addr.0.i, i32 4
  %674 = ptrtoint ptr %add.ptr.i.i358 to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 %673, ptr %add.ptr.i.i358, align 4
  %675 = call i16 @llvm.bswap.i16(i16 %pad.0.i) #12
  %676 = zext i16 %675 to i32
  %add.ptr10.i.i = getelementptr i8, ptr %frame.addr.0.i, i32 8
  %677 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %add.ptr10.i.i, align 4
  br label %brcmf_sdio_hdpack.exit.i

brcmf_sdio_hdpack.exit.i:                         ; preds = %if.then.i.i359, %if.end55.i.brcmf_sdio_hdpack.exit.i_crit_edge
  %hdr_offset.0.i.i = phi i32 [ 12, %if.then.i.i359 ], [ 4, %if.end55.i.brcmf_sdio_hdpack.exit.i_crit_edge ]
  %conv13.i.i = zext i8 %666 to i32
  %conv17.i.i = zext i8 %conv69.i354 to i32
  %shl18.i.i = shl nuw i32 %conv17.i.i, 24
  %or20.i.i = or i32 %shl18.i.i, %conv13.i.i
  %678 = call i32 @llvm.bswap.i32(i32 %or20.i.i) #12
  %add.ptr22.i.i = getelementptr i8, ptr %frame.addr.0.i, i32 %hdr_offset.0.i.i
  %679 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %678, ptr %add.ptr22.i.i, align 4
  %add.ptr25.i.i = getelementptr i32, ptr %add.ptr22.i.i, i32 1
  %680 = ptrtoint ptr %add.ptr25.i.i to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 0, ptr %add.ptr25.i.i, align 4
  %681 = ptrtoint ptr %txglom.i.i to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %txglom.i.i, align 1, !range !562
  %narrow.i.i = add nuw nsw i8 %682, 1
  call fastcc void @trace_brcmf_sdpcm_hdr(i8 noundef zeroext %narrow.i.i, ptr noundef %frame.addr.0.i) #12
  %683 = ptrtoint ptr %txglom.i.i to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %txglom.i.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %684)
  %tobool70.not.i = icmp eq i8 %684, 0
  br i1 %tobool70.not.i, label %brcmf_sdio_hdpack.exit.i.do.body73.i_crit_edge, label %if.then71.i

brcmf_sdio_hdpack.exit.i.do.body73.i_crit_edge:   ; preds = %brcmf_sdio_hdpack.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73.i

if.then71.i:                                      ; preds = %brcmf_sdio_hdpack.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %685 = call i16 @llvm.bswap.i16(i16 %add58.i) #12
  %686 = ptrtoint ptr %frame.addr.0.i to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 %685, ptr %frame.addr.0.i, align 2
  %neg.i.i = xor i16 %add58.i, -1
  %687 = call i16 @llvm.bswap.i16(i16 %neg.i.i) #12
  %688 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 %687, ptr %add.ptr.i.i.i, align 2
  br label %do.body73.i

do.body73.i:                                      ; preds = %if.then71.i, %brcmf_sdio_hdpack.exit.i.do.body73.i_crit_edge
  call fastcc void @trace_brcmf_hexdump(ptr noundef %frame.addr.0.i, i32 noundef %conv60.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %689 = load i32, ptr @brcmf_msg_level, align 4
  %690 = and i32 %689, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %690)
  %.not.i360 = icmp eq i32 %690, 144
  br i1 %.not.i360, label %if.then79.i, label %do.body73.i.do.body84.i_crit_edge

do.body73.i.do.body84.i_crit_edge:                ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84.i

if.then79.i:                                      ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %frame.addr.0.i, i32 noundef %conv60.i, ptr noundef nonnull @.str.98) #12
  br label %do.body84.i

do.body84.i:                                      ; preds = %if.then79.i, %do.body73.i.do.body84.i_crit_edge
  %691 = call i16 @llvm.umin.i16(i16 %add58.i, i16 16) #12
  %692 = zext i16 %691 to i32
  call fastcc void @trace_brcmf_hexdump(ptr noundef %frame.addr.0.i, i32 noundef %692) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %693 = load i32, ptr @brcmf_msg_level, align 4
  %694 = and i32 %693, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %694)
  %.not204.i = icmp eq i32 %694, 144
  %and97.i = and i32 %693, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %or.cond202.i = or i1 %.not204.i, %tobool98.not.i
  br i1 %or.cond202.i, label %do.body84.i.do.end115.i_crit_edge, label %if.then99.i

do.body84.i.do.end115.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end115.i

if.then99.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %frame.addr.0.i, i32 noundef %692, ptr noundef nonnull @.str.99) #12
  br label %do.end115.i

do.end115.i:                                      ; preds = %if.then99.i, %do.body84.i.do.end115.i_crit_edge
  %695 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %bus, align 4
  %call.i361 = call i32 @brcmf_sdiod_send_buf(ptr noundef %696, ptr noundef %frame.addr.0.i, i32 noundef %conv60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361)
  %cmp118.i = icmp slt i32 %call.i361, 0
  br i1 %cmp118.i, label %if.then120.i, label %do.end115.i.if.else121.i_crit_edge

do.end115.i.if.else121.i_crit_edge:               ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else121.i

if.then120.i:                                     ; preds = %do.end115.i
  call fastcc void @brcmf_sdio_txfail(ptr noundef %bus) #12
  %697 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %bus, align 4
  %call.1.i = call i32 @brcmf_sdiod_send_buf(ptr noundef %698, ptr noundef %frame.addr.0.i, i32 noundef %conv60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp118.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp118.1.i, label %if.then120.1.i, label %if.then120.i.if.else121.i_crit_edge

if.then120.i.if.else121.i_crit_edge:              ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else121.i

if.then120.1.i:                                   ; preds = %if.then120.i
  call fastcc void @brcmf_sdio_txfail(ptr noundef %bus) #12
  %699 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %bus, align 4
  %call.2.i = call i32 @brcmf_sdiod_send_buf(ptr noundef %700, ptr noundef %frame.addr.0.i, i32 noundef %conv60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp118.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp118.2.i, label %if.then120.2.i, label %if.then120.1.i.if.else121.i_crit_edge

if.then120.1.i.if.else121.i_crit_edge:            ; preds = %if.then120.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else121.i

if.then120.2.i:                                   ; preds = %if.then120.1.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @brcmf_sdio_txfail(ptr noundef %bus) #12
  br label %brcmf_sdio_tx_ctrlframe.exit

if.else121.i:                                     ; preds = %if.then120.1.i.if.else121.i_crit_edge, %if.then120.i.if.else121.i_crit_edge, %do.end115.i.if.else121.i_crit_edge
  %call.lcssa.i = phi i32 [ %call.i361, %do.end115.i.if.else121.i_crit_edge ], [ %call.1.i, %if.then120.i.if.else121.i_crit_edge ], [ %call.2.i, %if.then120.1.i.if.else121.i_crit_edge ]
  %701 = ptrtoint ptr %tx_seq.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %tx_seq.i, align 1
  %703 = add i8 %702, 1
  store i8 %703, ptr %tx_seq.i, align 1
  br label %brcmf_sdio_tx_ctrlframe.exit

brcmf_sdio_tx_ctrlframe.exit:                     ; preds = %if.else121.i, %if.then120.2.i
  %call208.i = phi i32 [ %call.2.i, %if.then120.2.i ], [ %call.lcssa.i, %if.else121.i ]
  %704 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 %call208.i, ptr %err, align 4
  %ctrl_frame_err = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 49
  %705 = ptrtoint ptr %ctrl_frame_err to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 %call208.i, ptr %ctrl_frame_err, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  call void @arm_heavy_mb() #12
  %706 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 0, ptr %ctrl_frame_stat, align 2
  %707 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %708)
  %tobool128.not = icmp eq i32 %708, 0
  br i1 %tobool128.not, label %brcmf_sdio_tx_ctrlframe.exit.if.end134_crit_edge, label %do.body130

brcmf_sdio_tx_ctrlframe.exit.if.end134_crit_edge: ; preds = %brcmf_sdio_tx_ctrlframe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

do.body130:                                       ; preds = %brcmf_sdio_tx_ctrlframe.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.30, i32 noundef %708) #12
  br label %if.end134

if.end134:                                        ; preds = %do.body130, %brcmf_sdio_tx_ctrlframe.exit.if.end134_crit_edge, %if.then117.if.end134_crit_edge
  %709 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %bus, align 4
  %711 = ptrtoint ptr %710 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %710, align 4
  call void @sdio_release_host(ptr noundef %712) #12
  %ctrl_wait.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 51
  call void @__wake_up(ptr noundef %ctrl_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %land.lhs.true114.if.end137_crit_edge, %land.lhs.true110.if.end137_crit_edge, %brcmf_sdio_clrintr.exit.if.end137_crit_edge
  %clkstate138 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %713 = ptrtoint ptr %clkstate138 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %clkstate138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %714)
  %cmp139 = icmp eq i32 %714, 3
  br i1 %cmp139, label %land.lhs.true141, label %if.end137.if.end165_crit_edge

if.end137.if.end165_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

land.lhs.true141:                                 ; preds = %if.end137
  %fcstate142 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 5
  %call.i.i316 = call zeroext i1 @__kasan_check_read(ptr noundef %fcstate142, i32 noundef 4) #12
  %715 = ptrtoint ptr %fcstate142 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load volatile i32, ptr %fcstate142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %716)
  %tobool144.not = icmp eq i32 %716, 0
  br i1 %tobool144.not, label %land.lhs.true145, label %land.lhs.true141.if.end165_crit_edge

land.lhs.true141.if.end165_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

land.lhs.true145:                                 ; preds = %land.lhs.true141
  %txq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 8
  %flowcontrol = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 9
  %717 = ptrtoint ptr %flowcontrol to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %flowcontrol, align 4
  %conv146 = zext i8 %718 to i32
  %neg = xor i32 %conv146, -1
  %call147 = call i32 @brcmu_pktq_mlen(ptr noundef %txq, i32 noundef %neg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool150.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool148.not, i1 true, i1 %tobool150.not
  br i1 %or.cond, label %land.lhs.true145.if.end165_crit_edge, label %land.lhs.true151

land.lhs.true145.if.end165_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %719 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %720)
  %tobool.not.i362 = icmp eq i8 %720, 0
  %spec.store.select.neg.i = select i1 %tobool.not.i362, i32 0, i32 -2
  %tx_max.i363 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 11
  %721 = ptrtoint ptr %tx_max.i363 to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %tx_max.i363, align 2
  %conv.i364 = zext i8 %722 to i32
  %tx_seq.i365 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 10
  %723 = ptrtoint ptr %tx_seq.i365 to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %tx_seq.i365, align 1
  %conv1.i366 = zext i8 %724 to i32
  %sub.i367 = sub nsw i32 %conv.i364, %conv1.i366
  %sub3.i = add nsw i32 %sub.i367, %spec.store.select.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp.not.i368 = icmp ne i32 %sub3.i, 0
  %and.i369 = and i32 %sub3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %cmp12.i = icmp eq i32 %and.i369, 0
  %725 = and i1 %cmp.not.i368, %cmp12.i
  br i1 %725, label %if.then154, label %land.lhs.true151.if.end165_crit_edge

land.lhs.true151.if.end165_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then154:                                       ; preds = %land.lhs.true151
  %rxpending155 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 17
  %726 = ptrtoint ptr %rxpending155 to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %rxpending155, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %727)
  %tobool156.not = icmp eq i8 %727, 0
  br i1 %tobool156.not, label %if.then154.cond.end162_crit_edge, label %cond.true

if.then154.cond.end162_crit_edge:                 ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end162

cond.true:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  %txminmax = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 20
  %728 = ptrtoint ptr %txminmax to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %txminmax, align 4
  %730 = call i32 @llvm.umin.i32(i32 %7, i32 %729)
  br label %cond.end162

cond.end162:                                      ; preds = %cond.true, %if.then154.cond.end162_crit_edge
  %cond163 = phi i32 [ %7, %if.then154.cond.end162_crit_edge ], [ %730, %cond.true ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pktq.i) #12
  %731 = call ptr @memset(ptr %pktq.i, i32 255, i32 56)
  %732 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %sdio_core, align 4
  %base.i372 = getelementptr inbounds %struct.brcmf_core, ptr %733, i32 0, i32 2
  %734 = ptrtoint ptr %base.i372 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %base.i372, align 4
  %add.i373 = add i32 %735, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i370) #12
  %736 = ptrtoint ptr %ret.i370 to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 0, ptr %ret.i370, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prec_out.i) #12
  %737 = ptrtoint ptr %prec_out.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 -1, ptr %prec_out.i, align 4, !annotation !563
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_sendfromq, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond163)
  %cmp11.not.i = icmp eq i32 %cond163, 0
  br i1 %cmp11.not.i, label %cond.end162.for.end63.i_crit_edge, label %land.rhs.lr.ph.i379

cond.end162.for.end63.i_crit_edge:                ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63.i

land.rhs.lr.ph.i379:                              ; preds = %cond.end162
  %738 = ptrtoint ptr %flowcontrol to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %flowcontrol, align 4
  %neg.i375 = xor i8 %739, -1
  %txglom.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 66
  %prev.i.i376 = getelementptr inbounds %struct.anon.65, ptr %pktq.i, i32 0, i32 1
  %qlen.i.i377 = getelementptr inbounds %struct.sk_buff_head, ptr %pktq.i, i32 0, i32 1
  %txq_lock.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 50
  %conv34.i = zext i8 %neg.i375 to i32
  %tx_hdrlen.i.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 65
  %sgentry_align.i.i.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 68
  %head_align.i.i.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 67
  %f2txdata.i.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 20
  %intr.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 30
  %hostintmask.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 3
  br label %land.rhs.i384

land.rhs.i384:                                    ; preds = %if.end62.i.land.rhs.i384_crit_edge, %land.rhs.lr.ph.i379
  %cnt.012.i = phi i32 [ 0, %land.rhs.lr.ph.i379 ], [ %add46.i, %if.end62.i.land.rhs.i384_crit_edge ]
  %740 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %741)
  %tobool.not.i.i380 = icmp eq i8 %741, 0
  %spec.store.select.neg.i.i = select i1 %tobool.not.i.i380, i32 0, i32 -2
  %742 = ptrtoint ptr %tx_max.i363 to i32
  call void @__asan_load1_noabort(i32 %742)
  %743 = load i8, ptr %tx_max.i363, align 2
  %conv.i.i381 = zext i8 %743 to i32
  %744 = ptrtoint ptr %tx_seq.i365 to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %tx_seq.i365, align 1
  %conv1.i.i = zext i8 %745 to i32
  %sub.i.i382 = sub nsw i32 %conv.i.i381, %conv1.i.i
  %sub3.i.i = add nsw i32 %sub.i.i382, %spec.store.select.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i.i)
  %cmp.not.i.i = icmp ne i32 %sub3.i.i, 0
  %and.i.i383 = and i32 %sub3.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i383)
  %cmp12.i.i = icmp eq i32 %and.i.i383, 0
  %746 = and i1 %cmp.not.i.i, %cmp12.i.i
  br i1 %746, label %for.body.i386, label %land.rhs.i384.for.end63.i_crit_edge

land.rhs.i384.for.end63.i_crit_edge:              ; preds = %land.rhs.i384
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63.i

for.body.i386:                                    ; preds = %land.rhs.i384
  %747 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %txglom.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %748)
  %tobool.not.i385 = icmp eq i8 %748, 0
  br i1 %tobool.not.i385, label %for.body.i386.if.end.i389_crit_edge, label %if.then.i388

for.body.i386.if.end.i389_crit_edge:              ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i389

if.then.i388:                                     ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i387 = sub i8 %743, %745
  %749 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %bus, align 4
  %txglomsz.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %750, i32 0, i32 16
  %751 = ptrtoint ptr %txglomsz.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %txglomsz.i, align 4
  %conv8.i = zext i8 %sub.i387 to i32
  %conv9.i = and i32 %752, 255
  %753 = call i32 @llvm.umin.i32(i32 %conv9.i, i32 %conv8.i) #12
  br label %if.end.i389

if.end.i389:                                      ; preds = %if.then.i388, %for.body.i386.if.end.i389_crit_edge
  %pkt_num.0.i = phi i32 [ %753, %if.then.i388 ], [ 1, %for.body.i386.if.end.i389_crit_edge ]
  %754 = ptrtoint ptr %flowcontrol to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %flowcontrol, align 4
  %conv17.i = zext i8 %755 to i32
  %neg18.i = xor i32 %conv17.i, -1
  %call19.i = call i32 @brcmu_pktq_mlen(ptr noundef %txq, i32 noundef %neg18.i) #12
  %756 = call i32 @llvm.umin.i32(i32 %pkt_num.0.i, i32 %call19.i) #12
  %757 = ptrtoint ptr %pktq.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store ptr %pktq.i, ptr %pktq.i, align 4
  %758 = ptrtoint ptr %prev.i.i376 to i32
  call void @__asan_store4_noabort(i32 %758)
  store ptr %pktq.i, ptr %prev.i.i376, align 4
  %759 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_store4_noabort(i32 %759)
  store i32 0, ptr %qlen.i.i377, align 4
  call void @_raw_spin_lock_bh(ptr noundef %txq_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %756)
  %cmp308.not.i = icmp eq i32 %756, 0
  br i1 %cmp308.not.i, label %for.end.thread.i, label %if.end.i389.for.body32.i_crit_edge

if.end.i389.for.body32.i_crit_edge:               ; preds = %if.end.i389
  br label %for.body32.i

for.end.thread.i:                                 ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %txq_lock.i) #12
  br label %for.end63.i

for.body32.i:                                     ; preds = %if.end39.i.for.body32.i_crit_edge, %if.end.i389.for.body32.i_crit_edge
  %i.09.i = phi i32 [ %inc.i390, %if.end39.i.for.body32.i_crit_edge ], [ 0, %if.end.i389.for.body32.i_crit_edge ]
  %call35.i = call ptr @brcmu_pktq_mdeq(ptr noundef %txq, i32 noundef %conv34.i, ptr noundef nonnull %prec_out.i) #12
  %cmp36.i = icmp eq ptr %call35.i, null
  br i1 %cmp36.i, label %for.body32.i.for.end.i391_crit_edge, label %if.end39.i

for.body32.i.for.end.i391_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i391

if.end39.i:                                       ; preds = %for.body32.i
  %760 = ptrtoint ptr %prev.i.i376 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %prev.i.i376, align 4
  %762 = ptrtoint ptr %call35.i to i32
  call void @__asan_store4_noabort(i32 %762)
  store volatile ptr %pktq.i, ptr %call35.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call35.i, i32 0, i32 1
  %763 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %763)
  store volatile ptr %761, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call35.i, ptr %prev.i.i376, align 4
  %764 = ptrtoint ptr %761 to i32
  call void @__asan_store4_noabort(i32 %764)
  store volatile ptr %call35.i, ptr %761, align 4
  %765 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %qlen.i.i377, align 4
  %add.i.i.i.i = add i32 %766, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i377, align 4
  %inc.i390 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i390, %756
  br i1 %exitcond.not.i, label %if.end39.i.for.end.i391_crit_edge, label %if.end39.i.for.body32.i_crit_edge

if.end39.i.for.body32.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

if.end39.i.for.end.i391_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i391

for.end.i391:                                     ; preds = %if.end39.i.for.end.i391_crit_edge, %for.body32.i.for.end.i391_crit_edge
  %i.0.lcssa.i = phi i32 [ %756, %if.end39.i.for.end.i391_crit_edge ], [ %i.09.i, %for.body32.i.for.end.i391_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %txq_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp41.i = icmp eq i32 %i.0.lcssa.i, 0
  br i1 %cmp41.i, label %for.end.i391.for.end63.i_crit_edge, label %if.end44.i392

for.end.i391.for.end63.i_crit_edge:               ; preds = %for.end.i391
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63.i

if.end44.i392:                                    ; preds = %for.end.i391
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_txpkt, ptr noundef nonnull @.str) #12
  %767 = ptrtoint ptr %pktq.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %pkt_next.021.i.i.i = load ptr, ptr %pktq.i, align 4
  %cmp.not22.i.i.i = icmp eq ptr %pkt_next.021.i.i.i, %pktq.i
  br i1 %cmp.not22.i.i.i, label %if.end44.i392.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end44.i392.for.end.i.i.i_crit_edge:            ; preds = %if.end44.i392
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end44.i392
  %768 = ptrtoint ptr %tx_seq.i365 to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %tx_seq.i365, align 1
  br label %for.body.i.i.i394

for.body.i.i.i394:                                ; preds = %for.inc.i.i.i.for.body.i.i.i394_crit_edge, %for.body.lr.ph.i.i.i
  %pkt_next.026.i.i.i = phi ptr [ %pkt_next.021.i.i.i, %for.body.lr.ph.i.i.i ], [ %pkt_next.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i394_crit_edge ]
  %txseq.025.i.i.i = phi i8 [ %769, %for.body.lr.ph.i.i.i ], [ %txseq.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i394_crit_edge ]
  %total_len.024.i.i.i = phi i16 [ 0, %for.body.lr.ph.i.i.i ], [ %total_len.2.i.i.i, %for.inc.i.i.i.for.body.i.i.i394_crit_edge ]
  %hd_info.sroa.16.023.i.i.i = phi i16 [ 0, %for.body.lr.ph.i.i.i ], [ %hd_info.sroa.16.2.i.i.i, %for.inc.i.i.i.for.body.i.i.i394_crit_edge ]
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 3
  %770 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load2_noabort(i32 %770)
  %771 = load i16, ptr %cb.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %771)
  %tobool.not.i.i.i393 = icmp sgt i16 %771, -1
  br i1 %tobool.not.i.i.i393, label %if.end.i.i.i395, label %for.body.i.i.i394.for.inc.i.i.i_crit_edge

for.body.i.i.i394.for.inc.i.i.i_crit_edge:        ; preds = %for.body.i.i.i394
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.end.i.i.i395:                                  ; preds = %for.body.i.i.i394
  %call.i.i1.i = call fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr noundef %bus, ptr noundef %pkt_next.026.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i)
  %cmp1.i.i.i = icmp slt i32 %call.i.i1.i, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i395.done.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i395.done.i.i_crit_edge:               ; preds = %if.end.i.i.i395
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i395
  %conv5.i.i.i = trunc i32 %call.i.i1.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i16 %conv5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.if.end10.i.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i396 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 19
  %772 = ptrtoint ptr %data.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %data.i.i.i396, align 4
  %774 = ptrtoint ptr %tx_hdrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %tx_hdrlen.i.i.i, align 2
  %conv8.i.i.i = zext i8 %775 to i32
  %add.ptr.i.i.i397 = getelementptr i8, ptr %773, i32 %conv8.i.i.i
  %conv9.i.i.i = and i32 %call.i.i1.i, 65535
  %776 = call ptr @memset(ptr %add.ptr.i.i.i397, i32 0, i32 %conv9.i.i.i)
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then7.i.i.i, %if.end4.i.i.i.if.end10.i.i.i_crit_edge
  %len.i.i.i398 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 6
  %777 = ptrtoint ptr %len.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %len.i.i.i398, align 4
  %779 = trunc i32 %778 to i16
  %conv12.i.i.i = add i16 %total_len.024.i.i.i, %779
  %780 = ptrtoint ptr %pkt_next.026.i.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %pkt_next.026.i.i.i, align 8
  %cmp.i.i.i.i = icmp eq ptr %781, %pktq.i
  %782 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %782)
  %783 = load i8, ptr %txglom.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %783)
  %tobool17.not.i.i.i = icmp eq i8 %783, 0
  br i1 %tobool17.not.i.i.i, label %if.end10.i.i.i.if.end33.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end10.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end10.i.i.i
  %784 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %qlen.i.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %785)
  %cmp19.i.i.i = icmp ugt i32 %785, 1
  br i1 %cmp19.i.i.i, label %if.then21.i.i.i, label %land.lhs.true.i.i.i.if.end33.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end33.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i.i

if.then21.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %786 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %bus, align 4
  %func2.i.i.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %787, i32 0, i32 1
  %788 = ptrtoint ptr %func2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %func2.i.i.i.i, align 4
  %cur_blksize.i.i.i.i = getelementptr inbounds %struct.sdio_func, ptr %789, i32 0, i32 8
  %790 = ptrtoint ptr %cur_blksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %cur_blksize.i.i.i.i, align 4
  %792 = ptrtoint ptr %sgentry_align.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %792)
  %793 = load i16, ptr %sgentry_align.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %793 to i32
  %rem.i.i.i.i = urem i32 %791, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %rem.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then21.i.i.i.if.end.i.i.i.i_crit_edge, label %do.end.i.i.i.i399, !prof !571

if.then21.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i399:                                ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 2132, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i399, %if.then21.i.i.i.if.end.i.i.i.i_crit_edge
  %794 = ptrtoint ptr %pkt_next.026.i.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %pkt_next.026.i.i.i, align 8
  %cmp.i.i.i.i.i = icmp eq ptr %795, %pktq.i
  %796 = ptrtoint ptr %len.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %len.i.i.i398, align 4
  %798 = ptrtoint ptr %sgentry_align.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %798)
  %799 = load i16, ptr %sgentry_align.i.i.i.i, align 2
  %conv22.i.i.i.i = zext i16 %799 to i32
  %rem23.i.i.i.i = urem i32 %797, %conv22.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23.i.i.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %rem23.i.i.i.i, 0
  %800 = trunc i32 %rem23.i.i.i.i to i16
  %conv30.i.i.i.i = sub i16 %799, %800
  %tail_pad.0.i.i.i.i = select i1 %tobool25.not.i.i.i.i, i16 0, i16 %conv30.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.i.if.end46.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end46.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %conv33.i.i.i.i = zext i16 %tail_pad.0.i.i.i.i to i32
  %conv32.i.i.i.i = zext i16 %conv12.i.i.i to i32
  %add.i.i.i2.i = add nuw nsw i32 %conv33.i.i.i.i, %conv32.i.i.i.i
  %rem34.i.i.i.i = urem i32 %add.i.i.i2.i, %791
  %conv38.i.i.i.i = and i32 %rem34.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38.i.i.i.i)
  %tobool39.not.i.i.i.i = icmp eq i32 %conv38.i.i.i.i, 0
  br i1 %tobool39.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end46.i.i.i.i_crit_edge, label %if.then40.i.i.i.i

land.lhs.true.i.i.i.i.if.end46.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i.i.i.i

if.then40.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub42.i.i.i.i = sub i32 %791, %rem34.i.i.i.i
  %801 = trunc i32 %sub42.i.i.i.i to i16
  %conv45.i.i.i.i = add i16 %tail_pad.0.i.i.i.i, %801
  br label %if.end46.i.i.i.i

if.end46.i.i.i.i:                                 ; preds = %if.then40.i.i.i.i, %land.lhs.true.i.i.i.i.if.end46.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end46.i.i.i.i_crit_edge
  %tail_pad.1.i.i.i.i = phi i16 [ %conv45.i.i.i.i, %if.then40.i.i.i.i ], [ %tail_pad.0.i.i.i.i, %land.lhs.true.i.i.i.i.if.end46.i.i.i.i_crit_edge ], [ %tail_pad.0.i.i.i.i, %if.end.i.i.i.i.if.end46.i.i.i.i_crit_edge ]
  %data_len.i.i.i.i.i.i400 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 7
  %802 = ptrtoint ptr %data_len.i.i.i.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %data_len.i.i.i.i.i.i400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %803)
  %tobool.i.not.i.i.i.i.i401 = icmp eq i32 %803, 0
  br i1 %tobool.i.not.i.i.i.i.i401, label %cond.false.i.i.i.i.i, label %if.end46.i.i.i.i.skb_tailroom.exit.i.i.i.i_crit_edge

if.end46.i.i.i.i.skb_tailroom.exit.i.i.i.i_crit_edge: ; preds = %if.end46.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %if.end46.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 17
  %804 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %end.i.i.i.i.i, align 4
  %tail.i.i.i.i.i402 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 16
  %806 = ptrtoint ptr %tail.i.i.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %tail.i.i.i.i.i402, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %805 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %807 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  br label %skb_tailroom.exit.i.i.i.i

skb_tailroom.exit.i.i.i.i:                        ; preds = %cond.false.i.i.i.i.i, %if.end46.i.i.i.i.skb_tailroom.exit.i.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i.i.i, %cond.false.i.i.i.i.i ], [ 0, %if.end46.i.i.i.i.skb_tailroom.exit.i.i.i.i_crit_edge ]
  %conv48.i.i.i.i = zext i16 %tail_pad.1.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i.i, i32 %conv48.i.i.i.i)
  %cmp.i1.i.i.i = icmp slt i32 %cond.i.i.i.i.i, %conv48.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %797, i32 %791)
  %cmp52.i.i.i.i = icmp ugt i32 %797, %791
  %or.cond177.i.i.i.i = select i1 %cmp.i1.i.i.i, i1 %cmp52.i.i.i.i, i1 false
  br i1 %or.cond177.i.i.i.i, label %if.then54.i.i.i.i, label %if.else.i.i.i.i

if.then54.i.i.i.i:                                ; preds = %skb_tailroom.exit.i.i.i.i
  %add57.i.i.i.i = add nuw nsw i32 %rem23.i.i.i.i, %conv48.i.i.i.i
  %808 = ptrtoint ptr %head_align.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %808)
  %809 = load i16, ptr %head_align.i.i.i.i, align 4
  %conv58.i.i.i.i = zext i16 %809 to i32
  %add59.i.i.i.i = add nuw nsw i32 %add57.i.i.i.i, %conv58.i.i.i.i
  %call60.i.i.i.i = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %add59.i.i.i.i) #12
  %cmp61.i.i.i.i = icmp eq ptr %call60.i.i.i.i, null
  br i1 %cmp61.i.i.i.i, label %if.then54.i.i.i.i.done.i.i_crit_edge, label %if.end64.i.i.i.i

if.then54.i.i.i.i.done.i.i_crit_edge:             ; preds = %if.then54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.end64.i.i.i.i:                                 ; preds = %if.then54.i.i.i.i
  %call65.i.i.i.i = call fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr noundef %bus, ptr noundef nonnull %call60.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i.i.i)
  %cmp66.i.i.i.i = icmp slt i32 %call65.i.i.i.i, 0
  br i1 %cmp66.i.i.i.i, label %if.then74.i.i.i.i, label %if.end75.i.i.i.i, !prof !573

if.then74.i.i.i.i:                                ; preds = %if.end64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %call60.i.i.i.i, i32 noundef 0) #12
  br label %done.i.i

if.end75.i.i.i.i:                                 ; preds = %if.end64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call60.i.i.i.i, i32 0, i32 19
  %810 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %data.i.i.i.i, align 4
  %data76.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 19
  %812 = ptrtoint ptr %data76.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %data76.i.i.i.i, align 4
  %814 = ptrtoint ptr %len.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %len.i.i.i398, align 4
  %add.ptr.i.i.i.i403 = getelementptr i8, ptr %813, i32 %815
  %idx.neg.i.i.i.i = sub nsw i32 0, %rem23.i.i.i.i
  %add.ptr79.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i403, i32 %idx.neg.i.i.i.i
  %816 = call ptr @memcpy(ptr %811, ptr %add.ptr79.i.i.i.i, i32 %rem23.i.i.i.i)
  %conv83.i.i.i.i = xor i16 %800, -32768
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call60.i.i.i.i, i32 0, i32 3
  %817 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %817)
  store i16 %conv83.i.i.i.i, ptr %cb.i.i.i.i, align 8
  %818 = load i32, ptr %len.i.i.i398, align 4
  %sub86.i.i.i.i = sub i32 %818, %rem23.i.i.i.i
  call void @skb_trim(ptr noundef %pkt_next.026.i.i.i, i32 noundef %sub86.i.i.i.i) #12
  call void @skb_trim(ptr noundef nonnull %call60.i.i.i.i, i32 noundef %add57.i.i.i.i) #12
  %819 = ptrtoint ptr %pkt_next.026.i.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %pkt_next.026.i.i.i, align 4
  %821 = ptrtoint ptr %call60.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %821)
  store volatile ptr %820, ptr %call60.i.i.i.i, align 8
  %prev10.i.i.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call60.i.i.i.i, i32 0, i32 1
  %822 = ptrtoint ptr %prev10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store volatile ptr %pkt_next.026.i.i.i, ptr %prev10.i.i.i.i.i.i, align 4
  %prev17.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %820, i32 0, i32 1
  %823 = ptrtoint ptr %prev17.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %823)
  store volatile ptr %call60.i.i.i.i, ptr %prev17.i.i.i.i.i.i, align 4
  store volatile ptr %call60.i.i.i.i, ptr %pkt_next.026.i.i.i, align 4
  %824 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %qlen.i.i377, align 4
  %add.i.i.i.i.i.i = add i32 %825, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %qlen.i.i377, align 4
  br label %if.end26.i.i.i

if.else.i.i.i.i:                                  ; preds = %skb_tailroom.exit.i.i.i.i
  %add91.i.i.i.i = add i32 %803, %conv48.i.i.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 17
  %826 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i404 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 16
  %828 = ptrtoint ptr %tail.i.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %tail.i.i.i.i404, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %827 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %829 to i32
  %sub.ptr.sub.neg.i.i.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub92.i.i.i.i = add i32 %add91.i.i.i.i, %sub.ptr.sub.neg.i.i.i.i
  %cloned.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 12
  %830 = ptrtoint ptr %cloned.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %bf.load.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.skb_cloned.exit.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

if.else.i.i.i.i.skb_cloned.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_cloned.exit.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dataref.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %827, i32 0, i32 10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i.i.i, i32 noundef 4) #12
  %831 = ptrtoint ptr %dataref.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load volatile i32, ptr %dataref.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %832, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i.i.i)
  %cmp.i167.i.i.i.i = icmp ne i32 %and.i.i.i.i.i, 1
  br label %skb_cloned.exit.i.i.i.i

skb_cloned.exit.i.i.i.i:                          ; preds = %land.rhs.i.i.i.i.i, %if.else.i.i.i.i.skb_cloned.exit.i.i.i.i_crit_edge
  %833 = phi i1 [ false, %if.else.i.i.i.i.skb_cloned.exit.i.i.i.i_crit_edge ], [ %cmp.i167.i.i.i.i, %land.rhs.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub92.i.i.i.i)
  %cmp95.i.i.i.i = icmp sgt i32 %sub92.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %833, i1 true, i1 %cmp95.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then97.i.i.i.i, label %skb_cloned.exit.i.i.i.i.if.end102.i.i.i.i_crit_edge

skb_cloned.exit.i.i.i.i.if.end102.i.i.i.i_crit_edge: ; preds = %skb_cloned.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102.i.i.i.i

if.then97.i.i.i.i:                                ; preds = %skb_cloned.exit.i.i.i.i
  %call98.i.i.i.i = call i32 @pskb_expand_head(ptr noundef %pkt_next.026.i.i.i, i32 noundef 0, i32 noundef %sub92.i.i.i.i, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i.i.i.i)
  %tobool99.not.i.i.i.i = icmp eq i32 %call98.i.i.i.i, 0
  br i1 %tobool99.not.i.i.i.i, label %if.then97.i.i.i.i.if.end102.i.i.i.i_crit_edge, label %if.then97.i.i.i.i.done.i.i_crit_edge

if.then97.i.i.i.i.done.i.i_crit_edge:             ; preds = %if.then97.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.then97.i.i.i.i.if.end102.i.i.i.i_crit_edge:    ; preds = %if.then97.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102.i.i.i.i

if.end102.i.i.i.i:                                ; preds = %if.then97.i.i.i.i.if.end102.i.i.i.i_crit_edge, %skb_cloned.exit.i.i.i.i.if.end102.i.i.i.i_crit_edge
  %834 = ptrtoint ptr %data_len.i.i.i.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %data_len.i.i.i.i.i.i400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %835)
  %tobool.i.not.i169.i.i.i.i = icmp eq i32 %835, 0
  br i1 %tobool.i.not.i169.i.i.i.i, label %if.end102.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge, label %cond.true.i.i.i.i.i

if.end102.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge: ; preds = %if.end102.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_put.exit.i.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %if.end102.i.i.i.i
  %call.i.i.i.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %pkt_next.026.i.i.i, i32 noundef %835) #12
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %cond.true.i.i.i.i.i.done.i.i_crit_edge, label %if.end106.i.i.i.i

cond.true.i.i.i.i.i.done.i.i_crit_edge:           ; preds = %cond.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.end106.i.i.i.i:                                ; preds = %cond.true.i.i.i.i.i
  %836 = ptrtoint ptr %data_len.i.i.i.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %836)
  %.pr.i.i.i.i = load i32, ptr %data_len.i.i.i.i.i.i400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i.i)
  %tobool.i.not.i172.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %tobool.i.not.i172.i.i.i.i, label %if.end106.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge, label %do.body3.i.i.i.i.i, !prof !571

if.end106.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge: ; preds = %if.end106.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_put.exit.i.i.i.i

do.body3.i.i.i.i.i:                               ; preds = %if.end106.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !574
  unreachable

__skb_put.exit.i.i.i.i:                           ; preds = %if.end106.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge, %if.end102.i.i.i.i.__skb_put.exit.i.i.i.i_crit_edge
  %837 = ptrtoint ptr %tail.i.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %tail.i.i.i.i404, align 8
  %add.ptr.i.i.i.i.i405 = getelementptr i8, ptr %838, i32 %conv48.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i405, ptr %tail.i.i.i.i404, align 8
  %839 = ptrtoint ptr %len.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %len.i.i.i398, align 4
  %add.i.i.i.i.i = add i32 %840, %conv48.i.i.i.i
  store i32 %add.i.i.i.i.i, ptr %len.i.i.i398, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %__skb_put.exit.i.i.i.i, %if.end75.i.i.i.i
  %conv32.i.i.i = add i16 %tail_pad.1.i.i.i.i, %conv12.i.i.i
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.end26.i.i.i, %land.lhs.true.i.i.i.if.end33.i.i.i_crit_edge, %if.end10.i.i.i.if.end33.i.i.i_crit_edge
  %hd_info.sroa.16.1.i.i.i = phi i16 [ %hd_info.sroa.16.023.i.i.i, %if.end10.i.i.i.if.end33.i.i.i_crit_edge ], [ %tail_pad.1.i.i.i.i, %if.end26.i.i.i ], [ %hd_info.sroa.16.023.i.i.i, %land.lhs.true.i.i.i.if.end33.i.i.i_crit_edge ]
  %total_len.1.i.i.i = phi i16 [ %conv12.i.i.i, %if.end10.i.i.i.if.end33.i.i.i_crit_edge ], [ %conv32.i.i.i, %if.end26.i.i.i ], [ %conv12.i.i.i, %land.lhs.true.i.i.i.if.end33.i.i.i_crit_edge ]
  %conv35.i.i.i = and i32 %call.i.i1.i, 65535
  %841 = ptrtoint ptr %tx_hdrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %841)
  %842 = load i8, ptr %tx_hdrlen.i.i.i, align 2
  %843 = trunc i32 %call.i.i1.i to i8
  %conv39.i.i.i = add i8 %842, %843
  %inc.i.i.i = add i8 %txseq.025.i.i.i, 1
  %data40.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.026.i.i.i, i32 0, i32 19
  %844 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %data40.i.i.i, align 4
  %846 = call i16 @llvm.bswap.i16(i16 %779) #12
  %847 = ptrtoint ptr %845 to i32
  call void @__asan_store2_noabort(i32 %847)
  store i16 %846, ptr %845, align 2
  %neg.i.i.i.i.i = xor i16 %779, -1
  %848 = call i16 @llvm.bswap.i16(i16 %neg.i.i.i.i.i) #12
  %add.ptr.i.i3.i.i.i = getelementptr i16, ptr %845, i32 1
  %849 = ptrtoint ptr %add.ptr.i.i3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %849)
  store i16 %848, ptr %add.ptr.i.i3.i.i.i, align 2
  %850 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %850)
  %851 = load i8, ptr %txglom.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %851)
  %tobool.not.i4.i.i.i = icmp eq i8 %851, 0
  br i1 %tobool.not.i4.i.i.i, label %if.end33.i.i.i.brcmf_sdio_hdpack.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end33.i.i.i.brcmf_sdio_hdpack.exit.i.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_hdpack.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i5.i.i.i = and i32 %778, 65535
  %sub.i.i.i.i = add nsw i32 %conv.i5.i.i.i, -4
  %shl.i.i.i.i = select i1 %cmp.i.i.i.i, i32 16777216, i32 0
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %sub.i.i.i.i
  %852 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #12
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %845, i32 4
  %853 = ptrtoint ptr %add.ptr.i6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 %852, ptr %add.ptr.i6.i.i.i, align 4
  %854 = call i16 @llvm.bswap.i16(i16 %hd_info.sroa.16.1.i.i.i) #12
  %855 = zext i16 %854 to i32
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %845, i32 8
  %856 = ptrtoint ptr %add.ptr10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 %855, ptr %add.ptr10.i.i.i.i, align 4
  br label %brcmf_sdio_hdpack.exit.i.i.i

brcmf_sdio_hdpack.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.end33.i.i.i.brcmf_sdio_hdpack.exit.i.i.i_crit_edge
  %hdr_offset.0.i.i.i.i = phi i32 [ 12, %if.then.i.i.i.i ], [ 4, %if.end33.i.i.i.brcmf_sdio_hdpack.exit.i.i.i_crit_edge ]
  %conv13.i.i.i.i = zext i8 %txseq.025.i.i.i to i32
  %conv17.i.i.i.i = zext i8 %conv39.i.i.i to i32
  %shl18.i.i.i.i = shl nuw i32 %conv17.i.i.i.i, 24
  %or16.i.i.i.i = or i32 %shl18.i.i.i.i, %conv13.i.i.i.i
  %or20.i.i.i.i = or i32 %or16.i.i.i.i, 512
  %857 = call i32 @llvm.bswap.i32(i32 %or20.i.i.i.i) #12
  %add.ptr22.i.i.i.i = getelementptr i8, ptr %845, i32 %hdr_offset.0.i.i.i.i
  %858 = ptrtoint ptr %add.ptr22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 %857, ptr %add.ptr22.i.i.i.i, align 4
  %add.ptr25.i.i.i.i = getelementptr i32, ptr %add.ptr22.i.i.i.i, i32 1
  %859 = ptrtoint ptr %add.ptr25.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 0, ptr %add.ptr25.i.i.i.i, align 4
  %860 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %txglom.i, align 1, !range !562
  %narrow.i.i.i.i = add nuw nsw i8 %861, 1
  call fastcc void @trace_brcmf_sdpcm_hdr(i8 noundef zeroext %narrow.i.i.i.i, ptr noundef %845) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %862 = load i32, ptr @brcmf_msg_level, align 4
  %863 = and i32 %862, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %863)
  %.not.i.i.i = icmp eq i32 %863, 136
  br i1 %.not.i.i.i, label %do.body.i.i.i, label %if.else.i.i.i

do.body.i.i.i:                                    ; preds = %brcmf_sdio_hdpack.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %864 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %data40.i.i.i, align 4
  %conv57.i.i.i = and i32 %778, 65535
  call fastcc void @trace_brcmf_hexdump(ptr noundef %865, i32 noundef %conv57.i.i.i) #12
  %866 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %data40.i.i.i, align 4
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %867, i32 noundef %conv57.i.i.i, ptr noundef nonnull @.str.98) #12
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %brcmf_sdio_hdpack.exit.i.i.i
  %and61.i.i.i = and i32 %862, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i.i)
  %tobool62.not.i.i.i = icmp eq i32 %and61.i.i.i, 0
  br i1 %tobool62.not.i.i.i, label %if.else.i.i.i.for.inc.i.i.i_crit_edge, label %do.body64.i.i.i

if.else.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

do.body64.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %868 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %data40.i.i.i, align 4
  %870 = ptrtoint ptr %tx_hdrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %870)
  %871 = load i8, ptr %tx_hdrlen.i.i.i, align 2
  %conv68.i.i.i = zext i8 %871 to i32
  %add69.i.i.i = add nuw nsw i32 %conv35.i.i.i, %conv68.i.i.i
  call fastcc void @trace_brcmf_hexdump(ptr noundef %869, i32 noundef %add69.i.i.i) #12
  %872 = ptrtoint ptr %data40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %data40.i.i.i, align 4
  %874 = ptrtoint ptr %tx_hdrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %tx_hdrlen.i.i.i, align 2
  %conv73.i.i.i = zext i8 %875 to i32
  %add74.i.i.i = add nuw nsw i32 %conv35.i.i.i, %conv73.i.i.i
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %873, i32 noundef %add74.i.i.i, ptr noundef nonnull @.str.101) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.body64.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge, %do.body.i.i.i, %for.body.i.i.i394.for.inc.i.i.i_crit_edge
  %hd_info.sroa.16.2.i.i.i = phi i16 [ %hd_info.sroa.16.1.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge ], [ %hd_info.sroa.16.1.i.i.i, %do.body64.i.i.i ], [ %hd_info.sroa.16.1.i.i.i, %do.body.i.i.i ], [ %hd_info.sroa.16.023.i.i.i, %for.body.i.i.i394.for.inc.i.i.i_crit_edge ]
  %total_len.2.i.i.i = phi i16 [ %total_len.1.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge ], [ %total_len.1.i.i.i, %do.body64.i.i.i ], [ %total_len.1.i.i.i, %do.body.i.i.i ], [ %total_len.024.i.i.i, %for.body.i.i.i394.for.inc.i.i.i_crit_edge ]
  %txseq.1.i.i.i = phi i8 [ %inc.i.i.i, %if.else.i.i.i.for.inc.i.i.i_crit_edge ], [ %inc.i.i.i, %do.body64.i.i.i ], [ %inc.i.i.i, %do.body.i.i.i ], [ %txseq.025.i.i.i, %for.body.i.i.i394.for.inc.i.i.i_crit_edge ]
  %876 = ptrtoint ptr %pkt_next.026.i.i.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %pkt_next.0.i.i.i = load ptr, ptr %pkt_next.026.i.i.i, align 4
  %cmp.not.i.i.i406 = icmp eq ptr %pkt_next.0.i.i.i, %pktq.i
  br i1 %cmp.not.i.i.i406, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i394_crit_edge

for.inc.i.i.i.for.body.i.i.i394_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i394

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end44.i392.for.end.i.i.i_crit_edge
  %total_len.0.lcssa.i.i.i = phi i16 [ 0, %if.end44.i392.for.end.i.i.i_crit_edge ], [ %total_len.2.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %877 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %txglom.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %878)
  %tobool81.not.i.i.i = icmp eq i8 %878, 0
  br i1 %tobool81.not.i.i.i, label %for.end.i.i.i.if.end.i.i409_crit_edge, label %if.then82.i.i.i

for.end.i.i.i.if.end.i.i409_crit_edge:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i409

if.then82.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %879 = ptrtoint ptr %pktq.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %pktq.i, align 4
  %data84.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %880, i32 0, i32 19
  %881 = ptrtoint ptr %data84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %data84.i.i.i, align 4
  %883 = call i16 @llvm.bswap.i16(i16 %total_len.0.lcssa.i.i.i) #12
  %884 = ptrtoint ptr %882 to i32
  call void @__asan_store2_noabort(i32 %884)
  store i16 %883, ptr %882, align 2
  %neg.i.i.i.i = xor i16 %total_len.0.lcssa.i.i.i, -1
  %885 = call i16 @llvm.bswap.i16(i16 %neg.i.i.i.i) #12
  %add.ptr.i8.i.i.i = getelementptr i16, ptr %882, i32 1
  %886 = ptrtoint ptr %add.ptr.i8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %886)
  store i16 %885, ptr %add.ptr.i8.i.i.i, align 2
  br label %if.end.i.i409

if.end.i.i409:                                    ; preds = %if.then82.i.i.i, %for.end.i.i.i.if.end.i.i409_crit_edge
  %887 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %bus, align 4
  %889 = ptrtoint ptr %888 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %888, align 4
  call void @sdio_claim_host(ptr noundef %890) #12
  %891 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %bus, align 4
  %call2.i.i = call i32 @brcmf_sdiod_send_pkt(ptr noundef %892, ptr noundef nonnull %pktq.i) #12
  %893 = ptrtoint ptr %f2txdata.i.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load i32, ptr %f2txdata.i.i, align 4
  %inc.i.i407 = add i32 %894, 1
  store i32 %inc.i.i407, ptr %f2txdata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i408 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i408, label %if.then3.i.i, label %if.end.i.i409.if.end4.i.i410_crit_edge

if.end.i.i409.if.end4.i.i410_crit_edge:           ; preds = %if.end.i.i409
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i410

if.then3.i.i:                                     ; preds = %if.end.i.i409
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @brcmf_sdio_txfail(ptr noundef %bus) #12
  br label %if.end4.i.i410

if.end4.i.i410:                                   ; preds = %if.then3.i.i, %if.end.i.i409.if.end4.i.i410_crit_edge
  %895 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %bus, align 4
  %897 = ptrtoint ptr %896 to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %896, align 4
  call void @sdio_release_host(ptr noundef %898) #12
  br label %done.i.i

done.i.i:                                         ; preds = %if.end4.i.i410, %cond.true.i.i.i.i.i.done.i.i_crit_edge, %if.then97.i.i.i.i.done.i.i_crit_edge, %if.then74.i.i.i.i, %if.then54.i.i.i.i.done.i.i_crit_edge, %if.end.i.i.i395.done.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.end4.i.i410 ], [ %call65.i.i.i.i, %if.then74.i.i.i.i ], [ -12, %if.then54.i.i.i.i.done.i.i_crit_edge ], [ -12, %if.then97.i.i.i.i.done.i.i_crit_edge ], [ -12, %cond.true.i.i.i.i.i.done.i.i_crit_edge ], [ %call.i.i1.i, %if.end.i.i.i395.done.i.i_crit_edge ]
  %899 = ptrtoint ptr %pktq.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %pktq.i, align 4
  %cmp.not37.i.i.i = icmp eq ptr %900, %pktq.i
  br i1 %cmp.not37.i.i.i, label %done.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge, label %done.i.i.for.body.i6.i.i_crit_edge

done.i.i.for.body.i6.i.i_crit_edge:               ; preds = %done.i.i
  br label %for.body.i6.i.i

done.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge: ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_txpkt_postp.exit.i.i

for.body.i6.i.i:                                  ; preds = %for.inc.i16.i.i.for.body.i6.i.i_crit_edge, %done.i.i.for.body.i6.i.i_crit_edge
  %pkt_next.038.i.i.i = phi ptr [ %tmp.039.i.i.i, %for.inc.i16.i.i.for.body.i6.i.i_crit_edge ], [ %900, %done.i.i.for.body.i6.i.i_crit_edge ]
  %901 = ptrtoint ptr %pkt_next.038.i.i.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %tmp.039.i.i.i = load ptr, ptr %pkt_next.038.i.i.i, align 8
  %cb.i4.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.038.i.i.i, i32 0, i32 3
  %902 = ptrtoint ptr %cb.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %902)
  %903 = load i16, ptr %cb.i4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %903)
  %tobool.not.i5.i.i = icmp sgt i16 %903, -1
  br i1 %tobool.not.i5.i.i, label %if.else.i13.i.i, label %if.then.i.i.i411

if.then.i.i.i411:                                 ; preds = %for.body.i6.i.i
  %and3.i.i.i = and i16 %903, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3.i.i.i)
  %tobool5.not.i.i.i = icmp eq i16 %and3.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then.i.i.i411.if.end.i9.i.i_crit_edge, label %if.then6.i.i.i

if.then.i.i.i411.if.end.i9.i.i_crit_edge:         ; preds = %if.then.i.i.i411
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i9.i.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i411
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i4.i = getelementptr inbounds %struct.anon.44, ptr %pkt_next.038.i.i.i, i32 0, i32 1
  %904 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %prev.i.i4.i, align 4
  %conv7.i.i.i = zext i16 %and3.i.i.i to i32
  %call.i7.i.i = call ptr @skb_put(ptr noundef %905, i32 noundef %conv7.i.i.i) #12
  br label %if.end.i9.i.i

if.end.i9.i.i:                                    ; preds = %if.then6.i.i.i, %if.then.i.i.i411.if.end.i9.i.i_crit_edge
  %906 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %qlen.i.i377, align 4
  %sub.i.i8.i.i = add i32 %907, -1
  store volatile i32 %sub.i.i8.i.i, ptr %qlen.i.i377, align 4
  %908 = ptrtoint ptr %pkt_next.038.i.i.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %pkt_next.038.i.i.i, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %pkt_next.038.i.i.i, i32 0, i32 1
  %910 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %pkt_next.038.i.i.i, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %909, i32 0, i32 1
  %912 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %912)
  store volatile ptr %911, ptr %prev17.i.i.i.i, align 4
  %913 = ptrtoint ptr %911 to i32
  call void @__asan_store4_noabort(i32 %913)
  store volatile ptr %909, ptr %911, align 8
  call void @brcmu_pkt_buf_free_skb(ptr noundef %pkt_next.038.i.i.i) #12
  br label %for.inc.i16.i.i

if.else.i13.i.i:                                  ; preds = %for.body.i6.i.i
  %data.i10.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.038.i.i.i, i32 0, i32 19
  %914 = ptrtoint ptr %data.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %data.i10.i.i, align 4
  %916 = ptrtoint ptr %tx_hdrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %916)
  %917 = load i8, ptr %tx_hdrlen.i.i.i, align 2
  %conv8.i11.i.i = zext i8 %917 to i32
  %add.ptr.i12.i.i = getelementptr i8, ptr %915, i32 -8
  %add.ptr9.i.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %conv8.i11.i.i
  %918 = ptrtoint ptr %add.ptr9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %add.ptr9.i.i.i, align 4
  %920 = and i32 %919, 255
  %call11.i.i.i = call ptr @skb_pull(ptr noundef %pkt_next.038.i.i.i, i32 noundef %920) #12
  %921 = ptrtoint ptr %txglom.i to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %txglom.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %922)
  %tobool12.not.i.i.i = icmp eq i8 %922, 0
  br i1 %tobool12.not.i.i.i, label %if.else.i13.i.i.for.inc.i16.i.i_crit_edge, label %if.then13.i.i.i

if.else.i13.i.i.for.inc.i16.i.i_crit_edge:        ; preds = %if.else.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i16.i.i

if.then13.i.i.i:                                  ; preds = %if.else.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14.i.i.i = getelementptr i8, ptr %add.ptr9.i.i.i, i32 -2
  %923 = ptrtoint ptr %add.ptr14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %923)
  %924 = load i16, ptr %add.ptr14.i.i.i, align 2
  %925 = call i16 @llvm.bswap.i16(i16 %924) #12
  %len.i14.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.038.i.i.i, i32 0, i32 6
  %926 = ptrtoint ptr %len.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load i32, ptr %len.i14.i.i, align 4
  %conv15.i.i.i = zext i16 %925 to i32
  %sub.i.i.i412 = sub i32 %927, %conv15.i.i.i
  call void @skb_trim(ptr noundef %pkt_next.038.i.i.i, i32 noundef %sub.i.i.i412) #12
  br label %for.inc.i16.i.i

for.inc.i16.i.i:                                  ; preds = %if.then13.i.i.i, %if.else.i13.i.i.for.inc.i16.i.i_crit_edge, %if.end.i9.i.i
  %cmp.not.i15.i.i = icmp eq ptr %tmp.039.i.i.i, %pktq.i
  br i1 %cmp.not.i15.i.i, label %for.inc.i16.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge, label %for.inc.i16.i.i.for.body.i6.i.i_crit_edge

for.inc.i16.i.i.for.body.i6.i.i_crit_edge:        ; preds = %for.inc.i16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i6.i.i

for.inc.i16.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge: ; preds = %for.inc.i16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_txpkt_postp.exit.i.i

brcmf_sdio_txpkt_postp.exit.i.i:                  ; preds = %for.inc.i16.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge, %done.i.i.brcmf_sdio_txpkt_postp.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp7.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %cmp7.i.i, label %if.then8.i.i, label %brcmf_sdio_txpkt_postp.exit.i.i.if.end11.i.i_crit_edge

brcmf_sdio_txpkt_postp.exit.i.i.if.end11.i.i_crit_edge: ; preds = %brcmf_sdio_txpkt_postp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %brcmf_sdio_txpkt_postp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %928 = ptrtoint ptr %tx_seq.i365 to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %tx_seq.i365, align 1
  %930 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load i32, ptr %qlen.i.i377, align 4
  %932 = trunc i32 %931 to i8
  %conv9.i.i413 = add i8 %929, %932
  store i8 %conv9.i.i413, ptr %tx_seq.i365, align 1
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %brcmf_sdio_txpkt_postp.exit.i.i.if.end11.i.i_crit_edge
  %933 = ptrtoint ptr %pktq.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %pktq.i, align 4
  %cmp13.not22.i.i = icmp eq ptr %934, %pktq.i
  br i1 %cmp13.not22.i.i, label %if.end11.i.i.brcmf_sdio_txpkt.exit.i_crit_edge, label %if.end11.i.i.for.body.i.i415_crit_edge

if.end11.i.i.for.body.i.i415_crit_edge:           ; preds = %if.end11.i.i
  br label %for.body.i.i415

if.end11.i.i.brcmf_sdio_txpkt.exit.i_crit_edge:   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_txpkt.exit.i

for.body.i.i415:                                  ; preds = %for.body.i.i415.for.body.i.i415_crit_edge, %if.end11.i.i.for.body.i.i415_crit_edge
  %pkt_next.023.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i415.for.body.i.i415_crit_edge ], [ %934, %if.end11.i.i.for.body.i.i415_crit_edge ]
  %935 = ptrtoint ptr %pkt_next.023.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %tmp.0.i.i = load ptr, ptr %pkt_next.023.i.i, align 8
  %936 = ptrtoint ptr %qlen.i.i377 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %qlen.i.i377, align 4
  %sub.i19.i.i = add i32 %937, -1
  store volatile i32 %sub.i19.i.i, ptr %qlen.i.i377, align 4
  %938 = load ptr, ptr %pkt_next.023.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %pkt_next.023.i.i, i32 0, i32 1
  %939 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %pkt_next.023.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %938, i32 0, i32 1
  %941 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %941)
  store volatile ptr %940, ptr %prev17.i.i.i, align 4
  %942 = ptrtoint ptr %940 to i32
  call void @__asan_store4_noabort(i32 %942)
  store volatile ptr %938, ptr %940, align 8
  %943 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %bus, align 4
  %dev.i.i414 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %944, i32 0, i32 5
  %945 = ptrtoint ptr %dev.i.i414 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %dev.i.i414, align 4
  call void @brcmf_proto_bcdc_txcomplete(ptr noundef %946, ptr noundef %pkt_next.023.i.i, i1 noundef zeroext %cmp7.i.i) #12
  %cmp13.not.i.i = icmp eq ptr %tmp.0.i.i, %pktq.i
  br i1 %cmp13.not.i.i, label %for.body.i.i415.brcmf_sdio_txpkt.exit.i_crit_edge, label %for.body.i.i415.for.body.i.i415_crit_edge

for.body.i.i415.for.body.i.i415_crit_edge:        ; preds = %for.body.i.i415
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i415

for.body.i.i415.brcmf_sdio_txpkt.exit.i_crit_edge: ; preds = %for.body.i.i415
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_txpkt.exit.i

brcmf_sdio_txpkt.exit.i:                          ; preds = %for.body.i.i415.brcmf_sdio_txpkt.exit.i_crit_edge, %if.end11.i.i.brcmf_sdio_txpkt.exit.i_crit_edge
  %947 = ptrtoint ptr %ret.i370 to i32
  call void @__asan_store4_noabort(i32 %947)
  store i32 %ret.0.i.i, ptr %ret.i370, align 4
  %add46.i = add i32 %i.0.lcssa.i, %cnt.012.i
  %948 = ptrtoint ptr %intr.i to i32
  call void @__asan_load1_noabort(i32 %948)
  %949 = load i8, ptr %intr.i, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %949)
  %tobool47.not.i = icmp eq i8 %949, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %brcmf_sdio_txpkt.exit.i.if.end62.i_crit_edge

brcmf_sdio_txpkt.exit.i.if.end62.i_crit_edge:     ; preds = %brcmf_sdio_txpkt.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then48.i:                                      ; preds = %brcmf_sdio_txpkt.exit.i
  %950 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %bus, align 4
  %952 = ptrtoint ptr %951 to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %951, align 4
  call void @sdio_claim_host(ptr noundef %953) #12
  %954 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %bus, align 4
  %call51.i = call i32 @brcmf_sdiod_readl(ptr noundef %955, i32 noundef %add.i373, ptr noundef nonnull %ret.i370) #12
  %956 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %bus, align 4
  %958 = ptrtoint ptr %957 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %957, align 4
  call void @sdio_release_host(ptr noundef %959) #12
  %960 = ptrtoint ptr %f2txdata.i.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load i32, ptr %f2txdata.i.i, align 4
  %inc54.i = add i32 %961, 1
  store i32 %inc54.i, ptr %f2txdata.i.i, align 4
  %962 = ptrtoint ptr %ret.i370 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load i32, ptr %ret.i370, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %963)
  %cmp55.not.i = icmp eq i32 %963, 0
  br i1 %cmp55.not.i, label %if.end58.i, label %if.then48.i.for.end63.i_crit_edge

if.then48.i.for.end63.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63.i

if.end58.i:                                       ; preds = %if.then48.i
  %964 = ptrtoint ptr %hostintmask.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load i32, ptr %hostintmask.i, align 4
  %and.i416 = and i32 %965, %call51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i416)
  %tobool59.not.i417 = icmp eq i32 %and.i416, 0
  br i1 %tobool59.not.i417, label %if.end58.i.if.end62.i_crit_edge, label %if.then60.i

if.end58.i.if.end62.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then60.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i418 = call zeroext i1 @__kasan_check_write(ptr noundef %ipend, i32 noundef 4) #12
  %966 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %966)
  store volatile i32 1, ptr %ipend, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %if.end58.i.if.end62.i_crit_edge, %brcmf_sdio_txpkt.exit.i.if.end62.i_crit_edge
  %cmp.i419 = icmp ult i32 %add46.i, %cond163
  br i1 %cmp.i419, label %if.end62.i.land.rhs.i384_crit_edge, label %if.end62.i.for.end63.i_crit_edge

if.end62.i.for.end63.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63.i

if.end62.i.land.rhs.i384_crit_edge:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i384

for.end63.i:                                      ; preds = %if.end62.i.for.end63.i_crit_edge, %if.then48.i.for.end63.i_crit_edge, %for.end.i391.for.end63.i_crit_edge, %for.end.thread.i, %land.rhs.i384.for.end63.i_crit_edge, %cond.end162.for.end63.i_crit_edge
  %967 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %bus, align 4
  %state.i420 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %968, i32 0, i32 21
  %969 = ptrtoint ptr %state.i420 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %state.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %970)
  %cmp65.i = icmp eq i32 %970, 1
  br i1 %cmp65.i, label %land.lhs.true.i421, label %for.end63.i.brcmf_sdio_sendfromq.exit_crit_edge

for.end63.i.brcmf_sdio_sendfromq.exit_crit_edge:  ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_sendfromq.exit

land.lhs.true.i421:                               ; preds = %for.end63.i
  %txoff.i = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 61
  %971 = ptrtoint ptr %txoff.i to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %txoff.i, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %972)
  %tobool67.not.i = icmp eq i8 %972, 0
  br i1 %tobool67.not.i, label %land.lhs.true.i421.brcmf_sdio_sendfromq.exit_crit_edge, label %land.lhs.true69.i

land.lhs.true.i421.brcmf_sdio_sendfromq.exit_crit_edge: ; preds = %land.lhs.true.i421
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_sendfromq.exit

land.lhs.true69.i:                                ; preds = %land.lhs.true.i421
  %len.i.i422 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 8, i32 3
  %973 = ptrtoint ptr %len.i.i422 to i32
  call void @__asan_load2_noabort(i32 %973)
  %974 = load i16, ptr %len.i.i422, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %974)
  %cmp72.i = icmp ult i16 %974, 1536
  br i1 %cmp72.i, label %if.then74.i, label %land.lhs.true69.i.brcmf_sdio_sendfromq.exit_crit_edge

land.lhs.true69.i.brcmf_sdio_sendfromq.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_sendfromq.exit

if.then74.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  %975 = ptrtoint ptr %txoff.i to i32
  call void @__asan_store1_noabort(i32 %975)
  store i8 0, ptr %txoff.i, align 2
  %dev.i423 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %968, i32 0, i32 5
  %976 = ptrtoint ptr %dev.i423 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %dev.i423, align 4
  call void @brcmf_proto_bcdc_txflowblock(ptr noundef %977, i1 noundef zeroext false) #12
  br label %brcmf_sdio_sendfromq.exit

brcmf_sdio_sendfromq.exit:                        ; preds = %if.then74.i, %land.lhs.true69.i.brcmf_sdio_sendfromq.exit_crit_edge, %land.lhs.true.i421.brcmf_sdio_sendfromq.exit_crit_edge, %for.end63.i.brcmf_sdio_sendfromq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prec_out.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i370) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pktq.i) #12
  br label %if.end165

if.end165:                                        ; preds = %brcmf_sdio_sendfromq.exit, %land.lhs.true151.if.end165_crit_edge, %land.lhs.true145.if.end165_crit_edge, %land.lhs.true141.if.end165_crit_edge, %if.end137.if.end165_crit_edge
  %978 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %bus, align 4
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %979, i32 0, i32 21
  %980 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %981)
  %cmp167.not = icmp eq i32 %981, 1
  br i1 %cmp167.not, label %lor.lhs.false, label %if.end165.do.body172_crit_edge

if.end165.do.body172_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body172

lor.lhs.false:                                    ; preds = %if.end165
  %982 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %983)
  %cmp169.not = icmp eq i32 %983, 0
  br i1 %cmp169.not, label %if.else, label %lor.lhs.false.do.body172_crit_edge

lor.lhs.false.do.body172_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body172

do.body172:                                       ; preds = %lor.lhs.false.do.body172_crit_edge, %if.end165.do.body172_crit_edge
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_dpc, ptr noundef nonnull @.str.31) #12
  %call.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %intstatus33, i32 noundef 4) #12
  %984 = ptrtoint ptr %intstatus33 to i32
  call void @__asan_store4_noabort(i32 %984)
  store volatile i32 0, ptr %intstatus33, align 4
  %985 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %985)
  %986 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %986)
  %tobool177.not = icmp eq i8 %986, 0
  br i1 %tobool177.not, label %do.body172.if.end217_crit_edge, label %if.then178

do.body172.if.end217_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

if.then178:                                       ; preds = %do.body172
  %987 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %bus, align 4
  %989 = ptrtoint ptr %988 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %988, align 4
  call void @sdio_claim_host(ptr noundef %990) #12
  %991 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %991)
  %992 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %992)
  %tobool182.not = icmp eq i8 %992, 0
  br i1 %tobool182.not, label %if.then178.if.end189_crit_edge, label %if.then183

if.then178.if.end189_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

if.then183:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_frame_err184 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 49
  %993 = ptrtoint ptr %ctrl_frame_err184 to i32
  call void @__asan_store4_noabort(i32 %993)
  store i32 -19, ptr %ctrl_frame_err184, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !575
  call void @arm_heavy_mb() #12
  %994 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_store1_noabort(i32 %994)
  store i8 0, ptr %ctrl_frame_stat, align 2
  %ctrl_wait.i425 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 51
  call void @__wake_up(ptr noundef %ctrl_wait.i425, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end189

if.end189:                                        ; preds = %if.then183, %if.then178.if.end189_crit_edge
  %995 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %bus, align 4
  %997 = ptrtoint ptr %996 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %996, align 4
  call void @sdio_release_host(ptr noundef %998) #12
  br label %if.end217

if.else:                                          ; preds = %lor.lhs.false
  %call.i.i318 = call zeroext i1 @__kasan_check_read(ptr noundef %intstatus33, i32 noundef 4) #12
  %999 = ptrtoint ptr %intstatus33 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load volatile i32, ptr %intstatus33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1000)
  %tobool195.not = icmp eq i32 %1000, 0
  br i1 %tobool195.not, label %lor.lhs.false196, label %if.else.if.then215_crit_edge

if.else.if.then215_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then215

lor.lhs.false196:                                 ; preds = %if.else
  %call.i.i319 = call zeroext i1 @__kasan_check_read(ptr noundef %ipend, i32 noundef 4) #12
  %1001 = ptrtoint ptr %ipend to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load volatile i32, ptr %ipend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1002)
  %cmp199 = icmp sgt i32 %1002, 0
  br i1 %cmp199, label %lor.lhs.false196.if.then215_crit_edge, label %lor.lhs.false201

lor.lhs.false196.if.then215_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then215

lor.lhs.false201:                                 ; preds = %lor.lhs.false196
  %fcstate202 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 5
  %call.i.i320 = call zeroext i1 @__kasan_check_read(ptr noundef %fcstate202, i32 noundef 4) #12
  %1003 = ptrtoint ptr %fcstate202 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load volatile i32, ptr %fcstate202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1004)
  %tobool204.not = icmp eq i32 %1004, 0
  br i1 %tobool204.not, label %land.lhs.true205, label %lor.lhs.false201.if.end217_crit_edge

lor.lhs.false201.if.end217_crit_edge:             ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

land.lhs.true205:                                 ; preds = %lor.lhs.false201
  %txq206 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 8
  %flowcontrol207 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 9
  %1005 = ptrtoint ptr %flowcontrol207 to i32
  call void @__asan_load1_noabort(i32 %1005)
  %1006 = load i8, ptr %flowcontrol207, align 4
  %conv208 = zext i8 %1006 to i32
  %neg209 = xor i32 %conv208, -1
  %call210 = call i32 @brcmu_pktq_mlen(ptr noundef %txq206, i32 noundef %neg209) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %land.lhs.true205.if.end217_crit_edge, label %land.lhs.true212

land.lhs.true205.if.end217_crit_edge:             ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

land.lhs.true212:                                 ; preds = %land.lhs.true205
  %1007 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %1007)
  %1008 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1008)
  %tobool.not.i427 = icmp eq i8 %1008, 0
  %spec.store.select.neg.i428 = select i1 %tobool.not.i427, i32 0, i32 -2
  %tx_max.i429 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 11
  %1009 = ptrtoint ptr %tx_max.i429 to i32
  call void @__asan_load1_noabort(i32 %1009)
  %1010 = load i8, ptr %tx_max.i429, align 2
  %conv.i430 = zext i8 %1010 to i32
  %tx_seq.i431 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 10
  %1011 = ptrtoint ptr %tx_seq.i431 to i32
  call void @__asan_load1_noabort(i32 %1011)
  %1012 = load i8, ptr %tx_seq.i431, align 1
  %conv1.i432 = zext i8 %1012 to i32
  %sub.i433 = sub nsw i32 %conv.i430, %conv1.i432
  %sub3.i434 = add nsw i32 %sub.i433, %spec.store.select.neg.i428
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i434)
  %cmp.not.i435 = icmp ne i32 %sub3.i434, 0
  %and.i436 = and i32 %sub3.i434, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i436)
  %cmp12.i437 = icmp eq i32 %and.i436, 0
  %1013 = and i1 %cmp.not.i435, %cmp12.i437
  br i1 %1013, label %land.lhs.true212.if.then215_crit_edge, label %land.lhs.true212.if.end217_crit_edge

land.lhs.true212.if.end217_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

land.lhs.true212.if.then215_crit_edge:            ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then215

if.then215:                                       ; preds = %land.lhs.true212.if.then215_crit_edge, %lor.lhs.false196.if.then215_crit_edge, %if.else.if.then215_crit_edge
  %dpc_triggered = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 59
  %1014 = ptrtoint ptr %dpc_triggered to i32
  call void @__asan_store1_noabort(i32 %1014)
  store i8 1, ptr %dpc_triggered, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %land.lhs.true212.if.end217_crit_edge, %land.lhs.true205.if.end217_crit_edge, %lor.lhs.false201.if.end217_crit_edge, %if.end189, %do.body172.if.end217_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_sdiod_freezing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_change_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_try_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmu_pktq_mlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_crashed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_readshared(ptr noundef %bus, ptr nocapture noundef %sh) unnamed_addr #0 align 64 {
entry:
  %sh_le = alloca %struct.sdpcm_shared_le, align 4
  %addr_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sh_le) #12
  %0 = call ptr @memset(ptr %sh_le, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_le) #12
  %1 = ptrtoint ptr %addr_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr_le, align 4, !annotation !563
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #12
  %call = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 1
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 4
  %rambase = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rambase, align 4
  %ramsize = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %ramsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ramsize, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call zeroext i1 @brcmf_chip_sr_capable(ptr noundef %7) #12
  br i1 %call5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci, align 4
  %srsize = getelementptr inbounds %struct.brcmf_chip, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %srsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srsize, align 4
  %sub7 = sub i32 %sub, %15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shaddr.0 = phi i32 [ %sub, %entry.if.end_crit_edge ], [ %sub7, %if.then ], [ %sub, %land.lhs.true.if.end_crit_edge ]
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %call9 = call i32 @brcmf_sdiod_ramrw(ptr noundef %17, i1 noundef zeroext false, i32 noundef %shaddr.0, ptr noundef nonnull %addr_le, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end.do.body41_crit_edge, label %if.end11

if.end.do.body41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end11:                                         ; preds = %if.end
  %18 = ptrtoint ptr %addr_le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr_le, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp ne i32 %19, 0
  %neg.i = xor i32 %20, -1
  %shr.i = lshr i32 %neg.i, 16
  %and1.i = and i32 %20, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and1.i)
  %cmp2.i = icmp ne i32 %shr.i, %and1.i
  %21 = and i1 %cmp.i, %cmp2.i
  br i1 %21, label %do.body15, label %do.body

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readshared, ptr noundef nonnull @.str.38, i32 noundef %20) #12
  br label %do.body41

do.body15:                                        ; preds = %if.end11
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_readshared, ptr noundef nonnull @.str.39, i32 noundef %20) #12
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %call19 = call i32 @brcmf_sdiod_ramrw(ptr noundef %23, i1 noundef zeroext false, i32 noundef %20, ptr noundef nonnull %sh_le, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body15.do.body41_crit_edge, label %if.end22

do.body15.do.body41_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end22:                                         ; preds = %do.body15
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void @sdio_release_host(ptr noundef %27) #12
  %28 = ptrtoint ptr %sh_le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sh_le, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %sh to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sh, align 4
  %trap_addr = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 1
  %32 = ptrtoint ptr %trap_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %trap_addr, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %trap_addr26 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 1
  %35 = ptrtoint ptr %trap_addr26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %trap_addr26, align 4
  %assert_exp_addr = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 2
  %36 = ptrtoint ptr %assert_exp_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %assert_exp_addr, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %assert_exp_addr27 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 2
  %39 = ptrtoint ptr %assert_exp_addr27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %assert_exp_addr27, align 4
  %assert_file_addr = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 3
  %40 = ptrtoint ptr %assert_file_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %assert_file_addr, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %assert_file_addr28 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 3
  %43 = ptrtoint ptr %assert_file_addr28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %assert_file_addr28, align 4
  %assert_line = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 4
  %44 = ptrtoint ptr %assert_line to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assert_line, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %assert_line29 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 4
  %47 = ptrtoint ptr %assert_line29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %assert_line29, align 4
  %console_addr = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 5
  %48 = ptrtoint ptr %console_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %console_addr, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %console_addr30 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 5
  %51 = ptrtoint ptr %console_addr30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %console_addr30, align 4
  %msgtrace_addr = getelementptr inbounds %struct.sdpcm_shared_le, ptr %sh_le, i32 0, i32 6
  %52 = ptrtoint ptr %msgtrace_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msgtrace_addr, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %msgtrace_addr31 = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 6
  %55 = ptrtoint ptr %msgtrace_addr31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %msgtrace_addr31, align 4
  %and = and i32 %30, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp33 = icmp ugt i32 %and, 3
  br i1 %cmp33, label %do.body35, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readshared, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef %and) #12
  br label %cleanup

do.body41:                                        ; preds = %do.body15.do.body41_crit_edge, %do.body, %if.end.do.body41_crit_edge
  %addr.0 = phi i32 [ 0, %if.end.do.body41_crit_edge ], [ %20, %do.body15.do.body41_crit_edge ], [ %20, %do.body ]
  %rv.0 = phi i32 [ %call9, %if.end.do.body41_crit_edge ], [ %call19, %do.body15.do.body41_crit_edge ], [ -22, %do.body ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_readshared, ptr noundef nonnull @.str.41, i32 noundef %rv.0, i32 noundef %addr.0) #12
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  call void @sdio_release_host(ptr noundef %59) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %do.body35, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %do.body41 ], [ -71, %do.body35 ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_le) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sh_le) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_chip_sr_capable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_ramrw(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_rxfail(ptr nocapture noundef %bus, i1 noundef zeroext %abort, i1 noundef zeroext %rtx) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 2
  %2 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !563
  %cond = select i1 %abort, ptr @.str.71, ptr @.str.72
  %cond3 = select i1 %rtx, ptr @.str.73, ptr @.str.72
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond, ptr noundef nonnull %cond3) #12
  br i1 %abort, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  %call = tail call i32 @brcmf_sdiod_abort(ptr noundef %6, ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext 1, i32 noundef 65549, ptr noundef nonnull %err) #12
  %f1regdata = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 21
  %13 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f1regdata, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %f1regdata, align 4
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end
  %lastrbc.099 = phi i32 [ 65535, %if.end ], [ %add44, %if.end40.for.body_crit_edge ]
  %retries.098 = phi i32 [ 65535, %if.end ], [ %dec, %if.end40.for.body_crit_edge ]
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call10 = call zeroext i8 @sdio_readb(ptr noundef %18, i32 noundef 65564, ptr noundef nonnull %err) #12
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call13 = call zeroext i8 @sdio_readb(ptr noundef %22, i32 noundef 65563, ptr noundef nonnull %err) #12
  %23 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f1regdata, align 4
  %add = add i32 %24, 2
  store i32 %add, ptr %f1regdata, align 4
  %conv = zext i8 %call10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %cmp16 = icmp eq i8 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13)
  %cmp19 = icmp eq i8 %call13, 0
  %or.cond = select i1 %cmp16, i1 %cmp19, i1 false
  br i1 %or.cond, label %do.body52, label %if.end22

if.end22:                                         ; preds = %for.body
  %shr = ashr i32 %lastrbc.099, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp25 = icmp slt i32 %shr, %conv
  %conv28 = zext i8 %call13 to i32
  %and = and i32 %lastrbc.099, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv28)
  %cmp30 = icmp ult i32 %and, %conv28
  %or.cond102 = select i1 %cmp25, i1 %cmp30, i1 false
  br i1 %or.cond102, label %do.body33, label %if.end22.if.end40_crit_edge

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.body33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 %conv, 8
  %add37 = or i32 %shl, %conv28
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.74, i32 noundef %lastrbc.099, i32 noundef %add37) #12
  br label %if.end40

if.end40:                                         ; preds = %do.body33, %if.end22.if.end40_crit_edge
  %shl42 = shl nuw nsw i32 %conv, 8
  %add44 = or i32 %shl42, %conv28
  %dec = add nsw i32 %retries.098, -1
  %cond95 = icmp eq i32 %dec, 0
  br i1 %cond95, label %do.body48, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.75, i32 noundef %add44) #12
  br label %if.end55

do.body52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 65535, %retries.098
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_rxfail, ptr noundef nonnull @.str.76, i32 noundef %sub) #12
  br label %if.end55

if.end55:                                         ; preds = %do.body52, %do.body48
  br i1 %rtx, label %if.then57, label %if.end55.if.end68_crit_edge

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then57:                                        ; preds = %if.end55
  %rxrtx = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 6
  %25 = ptrtoint ptr %rxrtx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxrtx, align 4
  %inc59 = add i32 %26, 1
  store i32 %inc59, ptr %rxrtx, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add60 = add i32 %28, 64
  call void @brcmf_sdiod_writel(ptr noundef %1, i32 noundef %add60, i32 noundef 1, ptr noundef nonnull %err) #12
  %29 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f1regdata, align 4
  %inc63 = add i32 %30, 1
  store i32 %inc63, ptr %f1regdata, align 4
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp64 = icmp eq i32 %32, 0
  br i1 %cmp64, label %if.then66, label %if.then57.if.end68_crit_edge

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then66:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %rxskip = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 16
  %33 = ptrtoint ptr %rxskip to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %rxskip, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then57.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %len = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 15, i32 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %len, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 1), ptr blockaddress(@trace_brcmf_hexdump, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !566

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !571

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !576
  %call42 = tail call i32 @__traceiter_brcmf_hexdump(ptr noundef null, ptr noundef %data, i32 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !577
  %13 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !571

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_hexdump.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_brcmf_hexdump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 79, ptr noundef nonnull @.str.78) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !579
  %31 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_dbg_hex_dump(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_hdparse(ptr nocapture noundef %bus, ptr noundef %header, ptr nocapture noundef %rd, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_brcmf_sdpcm_hdr(i8 noundef zeroext 0, ptr noundef %header)
  %0 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %header, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #12
  %add.ptr = getelementptr i8, ptr %header, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  %conv = zext i16 %2 to i32
  %or301 = or i16 %5, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or301)
  %tobool.not = icmp eq i16 %or301, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rxpending = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 17
  %6 = ptrtoint ptr %rxpending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rxpending, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor302 = xor i16 %5, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %xor302)
  %tobool6.not = icmp eq i16 %xor302, -1
  br i1 %tobool6.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.80) #12
  %rx_badhdr = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 10
  %7 = ptrtoint ptr %rx_badhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_badhdr, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_badhdr, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %2)
  %cmp = icmp ult i16 %2, 12
  br i1 %cmp, label %do.body12, label %if.end15

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.81) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp16 = icmp eq i32 %type, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %blocksize = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 6
  %9 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocksize, align 4
  %sub = add nsw i32 %conv, -1
  %add = add i32 %sub, %10
  %11 = urem i32 %add, %10
  %mul = sub i32 %add, %11
  %len19 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 2
  %12 = ptrtoint ptr %len19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len19, align 2
  %conv20 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv20)
  %cmp21.not = icmp eq i32 %mul, %conv20
  br i1 %cmp21.not, label %land.lhs.true45, label %do.body24

do.body24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.82) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp28 = icmp eq i32 %type, 2
  br i1 %cmp28, label %land.lhs.true30, label %if.end27.if.end40.thread_crit_edge

if.end27.if.end40.thread_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.thread

land.lhs.true30:                                  ; preds = %if.end27
  %len32 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 2
  %14 = ptrtoint ptr %len32 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len32, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %15)
  %cmp34 = icmp ugt i16 %2, %15
  br i1 %cmp34, label %do.body37, label %land.lhs.true30.if.end40.thread_crit_edge

land.lhs.true30.if.end40.thread_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.thread

do.body37:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end40.thread:                                  ; preds = %land.lhs.true30.if.end40.thread_crit_edge, %if.end27.if.end40.thread_crit_edge
  %len41307 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 2
  %16 = ptrtoint ptr %len41307 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %2, ptr %len41307, align 2
  %add.ptr42308 = getelementptr i8, ptr %header, i32 4
  %17 = ptrtoint ptr %add.ptr42308 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr42308, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %if.end53

land.lhs.true45:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %len19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %2, ptr %len19, align 2
  %add.ptr42 = getelementptr i8, ptr %header, i32 4
  %21 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr42, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool47.not = icmp eq i32 %24, 0
  br i1 %tobool47.not, label %land.lhs.true45.if.end53_crit_edge, label %do.body49

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.body49:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.84) #12
  %25 = ptrtoint ptr %len19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %len19, align 2
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true45.if.end53_crit_edge, %if.end40.thread
  %26 = phi i32 [ %19, %if.end40.thread ], [ %23, %land.lhs.true45.if.end53_crit_edge ]
  %add.ptr42313 = phi ptr [ %add.ptr42308, %if.end40.thread ], [ %add.ptr42, %land.lhs.true45.if.end53_crit_edge ]
  %len41310 = phi ptr [ %len41307, %if.end40.thread ], [ %len19, %land.lhs.true45.if.end53_crit_edge ]
  %cmp28305309 = phi i1 [ %cmp28, %if.end40.thread ], [ false, %land.lhs.true45.if.end53_crit_edge ]
  %conv55 = trunc i32 %26 to i8
  %and56 = lshr i32 %26, 8
  %27 = trunc i32 %and56 to i8
  %conv57 = and i8 %27, 15
  %channel = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 1
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv57, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %2)
  %cmp59 = icmp ult i16 %2, 2049
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv57)
  %cmp64.not = icmp eq i8 %conv57, 0
  %or.cond = select i1 %cmp59, i1 true, i1 %cmp64.not
  %or.cond303 = or i1 %cmp16, %or.cond
  br i1 %or.cond303, label %if.end76, label %do.body70

do.body70:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.85) #12
  %rx_toolong = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 7
  %29 = ptrtoint ptr %rx_toolong to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_toolong, align 4
  %inc74 = add i32 %30, 1
  store i32 %inc74, ptr %rx_toolong, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  %31 = ptrtoint ptr %len41310 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %len41310, align 2
  br label %cleanup

if.end76:                                         ; preds = %if.end53
  %cmp16.not = xor i1 %cmp16, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv57)
  %cmp82.not = icmp eq i8 %conv57, 3
  %or.cond314 = select i1 %cmp16.not, i1 true, i1 %cmp82.not
  br i1 %or.cond314, label %if.end89, label %do.body85

do.body85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.86) #12
  %32 = ptrtoint ptr %len41310 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %len41310, align 2
  br label %cleanup

if.end89:                                         ; preds = %if.end76
  %cmp28305309.not = xor i1 %cmp28305309, true
  %.off = add nsw i8 %conv57, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %or.cond315 = select i1 %cmp28305309.not, i1 true, i1 %switch
  br i1 %or.cond315, label %if.end107, label %do.body103

do.body103:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.87) #12
  %33 = ptrtoint ptr %len41310 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %len41310, align 2
  br label %cleanup

if.end107:                                        ; preds = %if.end89
  %34 = ptrtoint ptr %add.ptr42313 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr42313, align 4
  %conv.i = trunc i32 %35 to i8
  %dat_offset = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 5
  %36 = ptrtoint ptr %dat_offset to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %dat_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv.i)
  %cmp111 = icmp ult i8 %conv.i, 12
  %37 = trunc i32 %35 to i16
  %38 = and i16 %37, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %38)
  %cmp117 = icmp ult i16 %2, %38
  %or.cond316 = select i1 %cmp111, i1 true, i1 %cmp117
  br i1 %or.cond316, label %do.body120, label %if.end128

do.body120:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %conv121 = and i32 %26, 255
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.88, i32 noundef %conv121) #12
  %rx_badhdr125 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 10
  %39 = ptrtoint ptr %rx_badhdr125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_badhdr125, align 4
  %inc126 = add i32 %40, 1
  store i32 %inc126, ptr %rx_badhdr125, align 4
  tail call fastcc void @brcmf_sdio_rxfail(ptr noundef %bus, i1 noundef zeroext false, i1 noundef zeroext false)
  %41 = ptrtoint ptr %len41310 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %len41310, align 2
  br label %cleanup

if.end128:                                        ; preds = %if.end107
  %42 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rd, align 2
  %conv129 = zext i8 %43 to i32
  %conv130 = and i32 %26, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv130, i32 %conv129)
  %cmp131.not = icmp eq i32 %conv130, %conv129
  br i1 %cmp131.not, label %if.end128.if.end143_crit_edge, label %do.body134

if.end128.if.end143_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

do.body134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.89, i32 noundef %conv130, i32 noundef %conv129) #12
  %rx_badseq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 11
  %44 = ptrtoint ptr %rx_badseq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_badseq, align 4
  %inc141 = add i32 %45, 1
  store i32 %inc141, ptr %rx_badseq, align 4
  %46 = ptrtoint ptr %rd to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv55, ptr %rd, align 2
  br label %if.end143

if.end143:                                        ; preds = %do.body134, %if.end128.if.end143_crit_edge
  br i1 %cmp28305309, label %if.end143.cleanup_crit_edge, label %if.end147

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end147:                                        ; preds = %if.end143
  %and148 = lshr i32 %26, 16
  %47 = trunc i32 %and148 to i16
  %conv150 = and i16 %47, 255
  %len_nxtfrm = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, ptr %rd, i32 0, i32 4
  %48 = ptrtoint ptr %len_nxtfrm to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv150, ptr %len_nxtfrm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv150)
  %cmp153 = icmp ugt i16 %conv150, 128
  br i1 %cmp153, label %if.then155, label %if.end147.if.end167_crit_edge

if.end147.if.end167_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then155:                                       ; preds = %if.end147
  %49 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp158.not = icmp eq i8 %50, 3
  br i1 %cmp158.not, label %if.then155.if.end165_crit_edge, label %do.body161

if.then155.if.end165_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

do.body161:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.90, i32 noundef %conv130) #12
  br label %if.end165

if.end165:                                        ; preds = %do.body161, %if.then155.if.end165_crit_edge
  %51 = ptrtoint ptr %len_nxtfrm to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %len_nxtfrm, align 2
  br label %if.end167

if.end167:                                        ; preds = %if.end165, %if.end147.if.end167_crit_edge
  %add.ptr168 = getelementptr i8, ptr %header, i32 8
  %52 = ptrtoint ptr %add.ptr168 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr168, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %conv170 = trunc i32 %54 to i8
  %flowcontrol = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 9
  %55 = ptrtoint ptr %flowcontrol to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flowcontrol, align 4
  %conv171 = zext i8 %56 to i32
  %conv172 = and i32 %54, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv172, i32 %conv171)
  %cmp173.not = icmp eq i32 %conv172, %conv171
  br i1 %cmp173.not, label %if.end167.if.end199_crit_edge, label %if.then175

if.end167.if.end199_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then175:                                       ; preds = %if.end167
  %neg178 = xor i32 %conv171, -1
  %and180 = and i32 %conv172, %neg178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.then175.if.end185_crit_edge, label %if.then182

if.then175.if.end185_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then182:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  %fc_xoff = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 13
  %57 = ptrtoint ptr %fc_xoff to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fc_xoff, align 4
  %inc184 = add i32 %58, 1
  store i32 %inc184, ptr %fc_xoff, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.then175.if.end185_crit_edge
  %neg189 = xor i32 %conv172, -1
  %and190 = and i32 %conv171, %neg189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end185.if.end195_crit_edge, label %if.then192

if.end185.if.end195_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195

if.then192:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  %fc_xon = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 14
  %59 = ptrtoint ptr %fc_xon to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fc_xon, align 4
  %inc194 = add i32 %60, 1
  store i32 %inc194, ptr %fc_xon, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end185.if.end195_crit_edge
  %fc_rcvd = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 12
  %61 = ptrtoint ptr %fc_rcvd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fc_rcvd, align 4
  %inc197 = add i32 %62, 1
  store i32 %inc197, ptr %fc_rcvd, align 4
  %63 = ptrtoint ptr %flowcontrol to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv170, ptr %flowcontrol, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.end195, %if.end167.if.end199_crit_edge
  %and200 = lshr i32 %54, 8
  %tx_seq = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 10
  %64 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tx_seq, align 1
  %66 = trunc i32 %and200 to i8
  %conv206 = sub i8 %66, %65
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv206)
  %cmp208 = icmp ugt i8 %conv206, 64
  br i1 %cmp208, label %do.body211, label %if.end199.if.end219_crit_edge

if.end199.if.end219_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

do.body211:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_hdparse, ptr noundef nonnull @.str.91, i32 noundef %conv130) #12
  %67 = ptrtoint ptr %tx_seq to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tx_seq, align 1
  %add217 = add i8 %68, 2
  br label %if.end219

if.end219:                                        ; preds = %do.body211, %if.end199.if.end219_crit_edge
  %tx_seq_max.0.pre-phi = phi i8 [ %add217, %do.body211 ], [ %66, %if.end199.if.end219_crit_edge ]
  %tx_max = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 11
  %69 = ptrtoint ptr %tx_max to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %tx_seq_max.0.pre-phi, ptr %tx_max, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %if.end143.cleanup_crit_edge, %do.body120, %do.body103, %do.body85, %do.body70, %do.body49, %do.body37, %do.body24, %do.body12, %do.body, %if.then
  %retval.0 = phi i32 [ -5, %do.body ], [ -71, %do.body12 ], [ -71, %do.body24 ], [ -71, %do.body37 ], [ -22, %do.body49 ], [ -71, %do.body70 ], [ -22, %do.body85 ], [ -22, %do.body103 ], [ -6, %do.body120 ], [ 0, %if.end219 ], [ -61, %if.then ], [ 0, %if.end143.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_rx_frame(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_recv_chain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_abort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_hexdump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_sdpcm_hdr(i8 noundef zeroext %dir, ptr noundef %data) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_sdpcm_hdr, i32 0, i32 1), ptr blockaddress(@trace_brcmf_sdpcm_hdr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !566

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !571

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !580
  %call42 = tail call i32 @__traceiter_brcmf_sdpcm_hdr(ptr noundef null, i8 noundef zeroext %dir, ptr noundef %data) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !581
  %13 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !571

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_sdpcm_hdr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_sdpcm_hdr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_sdpcm_hdr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_brcmf_sdpcm_hdr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 128, ptr noundef nonnull @.str.78) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !579
  %31 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_sdpcm_hdr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_send_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_txfail(ptr nocapture noundef %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_txfail, ptr noundef nonnull @.str.100) #12
  %tx_sderrs = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 4
  %2 = ptrtoint ptr %tx_sderrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_sderrs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_sderrs, align 4
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func2, align 4
  %call = tail call i32 @brcmf_sdiod_abort(ptr noundef %1, ptr noundef %5) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @sdio_writeb(ptr noundef %7, i8 noundef zeroext 2, i32 noundef 65549, ptr noundef null) #12
  %f1regdata = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 62, i32 21
  %8 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f1regdata, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, ptr %f1regdata, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call6 = tail call zeroext i8 @sdio_readb(ptr noundef %11, i32 noundef 65562, ptr noundef null) #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call8 = tail call zeroext i8 @sdio_readb(ptr noundef %13, i32 noundef 65561, ptr noundef null) #12
  %14 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f1regdata, align 4
  %add = add i32 %15, 2
  store i32 %add, ptr %f1regdata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6)
  %cmp12 = icmp eq i8 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8)
  %cmp15 = icmp eq i8 %call8, 0
  %or.cond = select i1 %cmp12, i1 %cmp15, i1 false
  br i1 %or.cond, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond:                                         ; preds = %entry
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call6.1 = tail call zeroext i8 @sdio_readb(ptr noundef %17, i32 noundef 65562, ptr noundef null) #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call8.1 = tail call zeroext i8 @sdio_readb(ptr noundef %19, i32 noundef 65561, ptr noundef null) #12
  %20 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f1regdata, align 4
  %add.1 = add i32 %21, 2
  store i32 %add.1, ptr %f1regdata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6.1)
  %cmp12.1 = icmp eq i8 %call6.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.1)
  %cmp15.1 = icmp eq i8 %call8.1, 0
  %or.cond.1 = select i1 %cmp12.1, i1 %cmp15.1, i1 false
  br i1 %or.cond.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call6.2 = tail call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef 65562, ptr noundef null) #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call8.2 = tail call zeroext i8 @sdio_readb(ptr noundef %25, i32 noundef 65561, ptr noundef null) #12
  %26 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f1regdata, align 4
  %add.2 = add i32 %27, 2
  store i32 %add.2, ptr %f1regdata, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_mdeq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txflowblock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_send_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txcomplete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_txpkt_hdalign(ptr nocapture noundef readonly %bus, ptr noundef %pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %head_align = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 67
  %3 = ptrtoint ptr %head_align to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %head_align, align 4
  %conv = zext i16 %4 to i32
  %rem = urem i32 %2, %conv
  %conv1 = trunc i32 %rem to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1)
  %tobool.not = icmp eq i16 %conv1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %2, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %rem)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %rem
  br i1 %cmp, label %if.then4, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then4:                                         ; preds = %if.then
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %bus_if = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %bus_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_if, align 4
  %stats5 = getelementptr inbounds %struct.brcmf_bus, ptr %10, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats5, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %stats5, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats5, ptr %stats5, i32 1, ptr elementtype(i32) %stats5) #12, !srcloc !582
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 12
  %12 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then4.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.then4.skb_header_cloned.exit.i_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #12
  %15 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %16, 65535
  %shr.i.i = ashr i32 %16, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.then4.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.then4.skb_header_cloned.exit.i_crit_edge ]
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %rem)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %rem
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end10_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end10_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %rem, i32 %sub.ptr.sub.i.i.i) #12
  %add.i.i = add nuw nsw i32 %21, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %pkt, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool8.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool8.not, label %skb_cow_head.exit.if.end10_crit_edge, label %if.then9

skb_cow_head.exit.if.end10_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pktcow_failed = getelementptr inbounds %struct.brcmf_bus, ptr %10, i32 0, i32 5, i32 1
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktcow_failed, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %pktcow_failed, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pktcow_failed, ptr %pktcow_failed, i32 1, ptr elementtype(i32) %pktcow_failed) #12, !srcloc !582
  br label %cleanup

if.end10:                                         ; preds = %skb_cow_head.exit.if.end10_crit_edge, %skb_header_cloned.exit.i.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %head_pad.0 = phi i16 [ %conv1, %if.then.if.end10_crit_edge ], [ 0, %skb_cow_head.exit.if.end10_crit_edge ], [ 0, %skb_header_cloned.exit.i.if.end10_crit_edge ]
  %conv11 = zext i16 %head_pad.0 to i32
  %call12 = tail call ptr @skb_push(ptr noundef %pkt, i32 noundef %conv11) #12
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %entry.if.end14_crit_edge
  %head_pad.1 = phi i16 [ %head_pad.0, %if.end10 ], [ 0, %entry.if.end14_crit_edge ]
  %dat_buf.0 = phi ptr [ %24, %if.end10 ], [ %1, %entry.if.end14_crit_edge ]
  %conv15 = zext i16 %head_pad.1 to i32
  %tx_hdrlen = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 65
  %25 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_hdrlen, align 2
  %conv16 = zext i8 %26 to i32
  %add = add nuw nsw i32 %conv16, %conv15
  %27 = call ptr @memset(ptr %dat_buf.0, i32 0, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9
  %retval.0 = phi i32 [ -12, %if.then9 ], [ %conv15, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_chip_enum_base(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_attach(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_get_core(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_module_param(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_sgtable_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_get_pmu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_buscore_read32(ptr noundef %ctx, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcmf_sdiod_readl(ptr noundef %ctx, i32 noundef %addr, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %addr)
  %cmp = icmp eq i32 %addr, 402653184
  br i1 %cmp, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %3, label %land.lhs.true.if.end12_crit_edge [
    i16 17209, label %land.lhs.true.if.then_crit_edge
    i16 17205, label %land.lhs.true.if.then_crit_edge19
  ]

land.lhs.true.if.then_crit_edge19:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge19
  %5 = and i32 %call, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %if.then.if.end12_crit_edge, label %if.then10

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and11 = and i32 %call, -65536
  %or = or i32 %and11, 17209
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %val.0 = phi i32 [ %or, %if.then10 ], [ %call, %if.then.if.end12_crit_edge ], [ %call, %entry.if.end12_crit_edge ], [ %call, %land.lhs.true.if.end12_crit_edge ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_buscore_write32(ptr noundef %ctx, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_sdiod_writel(ptr noundef %ctx, i32 noundef %addr, i32 noundef %val, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_buscoreprep(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  call void @sdio_writeb(ptr noundef %2, i8 noundef zeroext 40, i32 noundef 65550, ptr noundef nonnull %err) #12
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.110) #12
  %5 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %call = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef 65550, ptr noundef null) #12
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and)
  %cmp.not = icmp eq i32 %and, 40
  br i1 %cmp.not, label %while.cond.preheader, label %do.body5

while.cond.preheader:                             ; preds = %if.end
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %call1244 = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef 65550, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call1244)
  %tobool15.not47 = icmp ult i8 %call1244, 64
  br i1 %tobool15.not47, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end26_crit_edge

while.cond.preheader.if.end26_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.111, i32 noundef 40, i32 noundef %conv) #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %countdown.048 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ 1000009, %while.cond.preheader.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 2147480) #12
  %sub = add nsw i32 %countdown.048, -10
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %call12 = call zeroext i8 @sdio_readb(ptr noundef %13, i32 noundef 65550, ptr noundef null) #12
  %conv13 = zext i8 %call12 to i32
  %and14 = and i32 %conv13, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp16 = icmp ugt i32 %sub, 9
  %or.cond = select i1 %tobool15.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool15.not, label %do.body22, label %while.end.if.end26_crit_edge

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.body22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_buscoreprep, ptr noundef nonnull @.str.112, i32 noundef %conv13) #12
  br label %cleanup

if.end26:                                         ; preds = %while.end.if.end26_crit_edge, %while.cond.preheader.if.end26_crit_edge
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext 33, i32 noundef 65550, ptr noundef nonnull %err) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 13958620) #12
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext 0, i32 noundef 65551, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.body22, %do.body5, %do.body
  %retval.0 = phi i32 [ %6, %do.body ], [ -13, %do.body5 ], [ 0, %if.end26 ], [ -16, %do.body22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_buscore_activate(ptr noundef %ctx, ptr nocapture noundef readnone %chip, i32 noundef %rstvec) #0 align 64 {
entry:
  %rstvec.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rstvec.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rstvec, ptr %rstvec.addr, align 4
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %ctx, i32 0, i32 4
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdio_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %add = add i32 %6, 32
  tail call void @brcmf_sdiod_writel(ptr noundef %ctx, i32 noundef %add, i32 noundef -1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rstvec)
  %tobool.not = icmp eq i32 %rstvec, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 @brcmf_sdiod_ramrw(ptr noundef %ctx, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %rstvec.addr, i32 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdiod_freezer_uncount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_readconsole(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  %line = alloca [192 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %line) #12
  %0 = call ptr @memset(ptr %line, i32 255, i32 192)
  %console_addr = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 38
  %1 = ptrtoint ptr %console_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %console_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %2, 8
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %log_le = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 2
  %call = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %4, i1 noundef zeroext false, i32 noundef %add, ptr noundef %log_le, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %buf = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end4.if.end15_crit_edge

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %buf_size = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 2, i32 1
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_size, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %bufsize = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 3
  %10 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bufsize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 2592) #17
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %buf, align 4
  %cmp12 = icmp eq ptr %call9.i, null
  br i1 %cmp12, label %if.then6.cleanup_crit_edge, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %idx17 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 2, i32 2
  %12 = ptrtoint ptr %idx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx17, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %bufsize18 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 3
  %15 = ptrtoint ptr %bufsize18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bufsize18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp19 = icmp ugt i32 %14, %16
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %last = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 37, i32 5
  %17 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp22 = icmp eq i32 %14, %18
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %log_le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %log_le, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %call30 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %23, i1 noundef zeroext false, i32 noundef %21, ptr noundef %25, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end24.cleanup_crit_edge, label %while.cond.preheader

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end24
  %26 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %14)
  %cmp35.not140 = icmp eq i32 %27, %14
  br i1 %cmp35.not140, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.for.body_crit_edge

while.cond.preheader.for.body_crit_edge:          ; preds = %while.cond.preheader
  br label %for.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.backedge, %while.cond.preheader.for.body_crit_edge
  %n.0139 = phi i32 [ %n.0139.be, %for.body.backedge ], [ 0, %while.cond.preheader.for.body_crit_edge ]
  %28 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %14)
  %cmp38 = icmp eq i32 %29, %14
  br i1 %cmp38, label %if.then39, label %if.end48

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %n.0139)
  %cmp41.not = icmp ult i32 %14, %n.0139
  br i1 %cmp41.not, label %if.else, label %if.then39.cleanup.sink.split_crit_edge

if.then39.cleanup.sink.split_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bufsize18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bufsize18, align 4
  br label %cleanup.sink.split

if.end48:                                         ; preds = %for.body
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %33, i32 %29
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %add52 = add i32 %29, 1
  %36 = ptrtoint ptr %bufsize18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufsize18, align 4
  %rem = urem i32 %add52, %37
  %38 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rem, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %35)
  %cmp55 = icmp eq i8 %35, 10
  br i1 %cmp55, label %for.end, label %if.end58

if.end58:                                         ; preds = %if.end48
  %arrayidx59 = getelementptr [192 x i8], ptr %line, i32 0, i32 %n.0139
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %35, ptr %arrayidx59, align 1
  %inc = add nuw nsw i32 %n.0139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 190, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 190
  br i1 %exitcond.not, label %if.end58.if.then62_crit_edge, label %if.end58.for.body.backedge_crit_edge

if.end58.for.body.backedge_crit_edge:             ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end58.if.then62_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

for.body.backedge:                                ; preds = %if.end77.for.body.backedge_crit_edge, %if.end58.for.body.backedge_crit_edge
  %n.0139.be = phi i32 [ %inc, %if.end58.for.body.backedge_crit_edge ], [ 0, %if.end77.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0139)
  %cmp60.not = icmp eq i32 %n.0139, 0
  br i1 %cmp60.not, label %for.end.if.end77_crit_edge, label %for.end.if.then62_crit_edge

for.end.if.then62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then62:                                        ; preds = %for.end.if.then62_crit_edge, %if.end58.if.then62_crit_edge
  %n.0137 = phi i32 [ %n.0139, %for.end.if.then62_crit_edge ], [ 190, %if.end58.if.then62_crit_edge ]
  %sub63 = add nsw i32 %n.0137, -1
  %arrayidx64 = getelementptr [192 x i8], ptr %line, i32 0, i32 %sub63
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %41)
  %cmp66 = icmp eq i8 %41, 13
  %spec.select = select i1 %cmp66, i32 %sub63, i32 %n.0137
  %arrayidx70 = getelementptr [192 x i8], ptr %line, i32 0, i32 %spec.select
  %42 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx70, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmf_sdio_readconsole.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmf_sdio_readconsole, %if.end77)) #12
          to label %if.then75 [label %if.end77], !srcloc !566

if.then75:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmf_sdio_readconsole.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.122, ptr noundef nonnull %line) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.then62, %for.end.if.end77_crit_edge
  %43 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %14)
  %cmp35.not = icmp eq i32 %44, %14
  br i1 %cmp35.not, label %if.end77.cleanup_crit_edge, label %if.end77.for.body.backedge_crit_edge

if.end77.for.body.backedge_crit_edge:             ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else, %if.then39.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %31, %if.else ], [ %14, %if.then39.cleanup.sink.split_crit_edge ]
  %sub45 = sub i32 %.sink, %n.0139
  %45 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub45, ptr %last, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end77.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ -52, %if.end15.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %call30, %if.end24.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %line) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fw_alloc_request(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_sr_init(ptr nocapture noundef %bus) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str) #12
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 1
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43012, i32 %4)
  %cmp.i = icmp eq i32 %4, 43012
  %.51 = select i1 %cmp.i, i8 16, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 43752, i32 %4)
  %switch.selectcmp.case2.i = icmp eq i32 %4, 43752
  %switch.selectcmp.i = or i1 %cmp.i, %switch.selectcmp.case2.i
  %cardcap.0 = select i1 %switch.selectcmp.i, i8 8, i8 6
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call5 = call zeroext i8 @sdio_readb(ptr noundef %8, i32 noundef 65566, ptr noundef nonnull %err) #12
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end10, label %do.body7

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.142) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %not.cmp.i = xor i1 %cmp.i, true
  %. = zext i1 %not.cmp.i to i8
  %shl = shl nuw nsw i8 1, %.
  %or = or i8 %shl, %call5
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %or, i32 noundef 65566, ptr noundef nonnull %err) #12
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %if.end20, label %do.body17

do.body17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.143) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  call void @sdio_f0_writeb(ptr noundef %20, i8 noundef zeroext %cardcap.0, i32 noundef 240, ptr noundef nonnull %err) #12
  %21 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.end28, label %do.body25

do.body25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext %.51, i32 noundef 65550, ptr noundef nonnull %err) #12
  %27 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not = icmp eq i32 %28, 0
  br i1 %tobool31.not, label %if.end36, label %do.body33

do.body33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.145) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %sr_enabled = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 63
  %29 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %sr_enabled, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_sr_init, ptr noundef nonnull @.str.146) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.body33, %do.body25, %do.body17, %do.body7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_intr_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_checkdied(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  %sh = alloca %struct.sdpcm_shared, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sh) #12
  %0 = call ptr @memset(ptr %sh, i32 255, i32 64)
  %call = call fastcc i32 @brcmf_sdio_readshared(ptr noundef %bus, ptr noundef nonnull %sh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sh, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_checkdied, ptr noundef nonnull @.str.167) #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and4 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %do.body6

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_checkdied, ptr noundef nonnull @.str.175) #12
  br label %if.end10

if.end10:                                         ; preds = %do.body6, %if.else.if.end10_crit_edge, %do.body
  %and12 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %do.body15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_checkdied, ptr noundef nonnull @.str.176) #12
  %call18 = call fastcc i32 @brcmf_sdio_trap_info(ptr noundef null, ptr noundef %bus, ptr noundef nonnull %sh)
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sh) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fw_nvram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_chip_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @brcmf_sdio_verifymemory(ptr noundef %sdiodev, i32 noundef %ram_addr, ptr nocapture noundef readonly %ram_data, i32 noundef %ram_sz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_verifymemory, ptr noundef nonnull @.str.138, i32 noundef %ram_addr, i32 noundef %ram_sz) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2048) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ram_sz)
  %cmp53.not = icmp eq i32 %ram_sz, 0
  br i1 %cmp53.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %offset.055 = phi i32 [ %add16, %if.end15.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %address.054 = phi i32 [ %add17, %if.end15.while.body_crit_edge ], [ %ram_addr, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %offset.055, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ram_sz)
  %cmp1 = icmp ult i32 %add, %ram_sz
  %sub = sub i32 %ram_sz, %offset.055
  %spec.select = select i1 %cmp1, i32 2048, i32 %sub
  %call2 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %sdiodev, i1 noundef zeroext false, i32 noundef %address.054, ptr noundef nonnull %call7.i, i32 noundef %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %do.body5

do.body5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_verifymemory, ptr noundef nonnull @.str.139, i32 noundef %call2, i32 noundef %spec.select, i32 noundef %address.054) #12
  br label %while.end

if.else:                                          ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %ram_data, i32 %offset.055
  %bcmp = tail call i32 @bcmp(ptr nonnull %call7.i, ptr %arrayidx, i32 %spec.select) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.end15, label %do.body11

do.body11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_verifymemory, ptr noundef nonnull @.str.140, i32 noundef %offset.055, i32 noundef %spec.select) #12
  br label %while.end

if.end15:                                         ; preds = %if.else
  %add16 = add i32 %spec.select, %offset.055
  %add17 = add i32 %spec.select, %address.054
  %cmp = icmp ult i32 %add16, %ram_sz
  br i1 %cmp, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %do.body11, %do.body5, %while.cond.preheader.while.end_crit_edge
  %cmp46 = phi i1 [ false, %do.body11 ], [ false, %do.body5 ], [ true, %while.cond.preheader.while.end_crit_edge ], [ true, %if.end15.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp46, %while.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_preinit(ptr noundef %dev) #0 align 64 {
entry:
  %iovar = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iovar) #12
  %maxctl = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %maxctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !573

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 3536, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  %roundup = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %roundup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %roundup, align 4
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %maxctl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %maxctl, align 4
  %add29 = add i32 %add, 15
  %div106 = and i32 %add29, -4
  %head_align = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 67
  %13 = ptrtoint ptr %head_align to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head_align, align 4
  %conv = zext i16 %14 to i32
  %add30 = add i32 %div106, %conv
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add30, i32 noundef 2592) #17
  %rxbuf = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 23
  %15 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %rxbuf, align 4
  %tobool33.not = icmp eq ptr %call9.i, null
  br i1 %tobool33.not, label %if.end24.if.end35_crit_edge, label %if.then34

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %rxblen = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 24
  %16 = ptrtoint ptr %rxblen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add30, ptr %rxblen, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end24.if.end35_crit_edge
  %rev = getelementptr inbounds %struct.brcmf_core, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %18)
  %cmp = icmp ult i16 %18, 12
  br i1 %cmp, label %if.end35.if.end46_crit_edge, label %if.else

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %settings, align 4
  %sd_sgentry_align = getelementptr inbounds %struct.brcmf_mp_device, ptr %20, i32 0, i32 8, i32 0, i32 7
  %21 = ptrtoint ptr %sd_sgentry_align to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sd_sgentry_align, align 4
  %23 = tail call i16 @llvm.umax.i16(i16 %22, i16 4)
  %cond = zext i16 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %cond)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end35.if.end46_crit_edge
  %storemerge = phi i32 [ %24, %if.else ], [ 0, %if.end35.if.end46_crit_edge ]
  %.str.148.sink = phi ptr [ @.str.148, %if.else ], [ @.str.147, %if.end35.if.end46_crit_edge ]
  %25 = ptrtoint ptr %iovar to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %iovar, align 4
  %call45 = call i32 @brcmf_iovar_data_set(ptr noundef %dev, ptr noundef nonnull %.str.148.sink, ptr noundef nonnull %iovar, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp slt i32 %call45, 0
  br i1 %cmp47, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %tx_hdrlen = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 65
  %26 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 12, ptr %tx_hdrlen, align 2
  %sg_support = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %sg_support to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sg_support, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool51.not = icmp eq i8 %28, 0
  br i1 %tobool51.not, label %if.end50.if.end66_crit_edge, label %if.then52

if.end50.if.end66_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then52:                                        ; preds = %if.end50
  %txglom = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 66
  %29 = ptrtoint ptr %txglom to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %txglom, align 1
  %30 = ptrtoint ptr %iovar to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16777216, ptr %iovar, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %dev54 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev54, align 4
  %call55 = call i32 @brcmf_iovar_data_set(ptr noundef %34, ptr noundef nonnull @.str.149, ptr noundef nonnull %iovar, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then52.if.end66_crit_edge, label %if.else59

if.then52.if.end66_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.else59:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %txglom to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %txglom, align 1
  %36 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_hdrlen, align 2
  %add63 = add i8 %37, 8
  store i8 %add63, ptr %tx_hdrlen, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.else59, %if.then52.if.end66_crit_edge, %if.end50.if.end66_crit_edge
  %err.1 = phi i32 [ %call55, %if.else59 ], [ %call45, %if.end50.if.end66_crit_edge ], [ 0, %if.then52.if.end66_crit_edge ]
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %dev68 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev68, align 4
  %42 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_hdrlen, align 2
  %conv70 = zext i8 %43 to i32
  call void @brcmf_bus_add_txhdrlen(ptr noundef %41, i32 noundef %conv70) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end46.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call45, %if.end46.cleanup_crit_edge ], [ %err.1, %if.end66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iovar) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_bus_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %sdio_core = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sdio_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdio_core, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4, !annotation !563
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_bus_stop, ptr noundef nonnull @.str) #12
  %watchdog_tsk = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 55
  %9 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %watchdog_tsk, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @send_sig(i32 noundef 15, ptr noundef nonnull %10, i32 noundef 1) #12
  %11 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %watchdog_tsk, align 4
  %call5 = tail call i32 @kthread_stop(ptr noundef %12) #12
  %13 = ptrtoint ptr %watchdog_tsk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %watchdog_tsk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not = icmp eq i32 %15, 2
  br i1 %cmp.not, label %if.end.if.end31_crit_edge, label %if.then7

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then7:                                         ; preds = %if.end
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %17) #12
  %call8 = tail call fastcc i32 @brcmf_sdio_bus_sleep(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false)
  %base = getelementptr inbounds %struct.brcmf_core, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %add = add i32 %19, 36
  tail call void @brcmf_sdiod_writel(ptr noundef %3, i32 noundef %add, i32 noundef 0, ptr noundef null) #12
  %hostintmask = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %hostintmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hostintmask, align 4
  store i32 0, ptr %hostintmask, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call11 = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef 65550, ptr noundef nonnull %err) #12
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not = icmp eq i32 %25, 0
  br i1 %tobool12.not, label %if.end17, label %if.then7.do.body20_crit_edge

if.then7.do.body20_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

if.end17:                                         ; preds = %if.then7
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ci, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43012, i32 %29)
  %cmp.i = icmp eq i32 %29, 43012
  %cond = select i1 %cmp.i, i8 16, i8 2
  %or = or i8 %cond, %call11
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  call void @sdio_writeb(ptr noundef %31, i8 noundef zeroext %or, i32 noundef 65550, ptr noundef nonnull %err) #12
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool18.not = icmp eq i32 %.pr, 0
  br i1 %tobool18.not, label %if.end17.do.body24_crit_edge, label %if.end17.do.body20_crit_edge

if.end17.do.body20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

if.end17.do.body24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.body20:                                        ; preds = %if.end17.do.body20_crit_edge, %if.then7.do.body20_crit_edge
  %33 = phi i32 [ %.pr, %if.end17.do.body20_crit_edge ], [ %25, %if.then7.do.body20_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_stop, ptr noundef nonnull @.str.126, i32 noundef %33) #12
  br label %do.body24

do.body24:                                        ; preds = %do.body20, %if.end17.do.body24_crit_edge
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 256, ptr noundef nonnull @__func__.brcmf_sdio_bus_stop, ptr noundef nonnull @.str.150) #12
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func2, align 4
  %call27 = call i32 @sdio_disable_func(ptr noundef %35) #12
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add29 = add i32 %37, 32
  call void @brcmf_sdiod_writel(ptr noundef %3, i32 noundef %add29, i32 noundef %21, ptr noundef null) #12
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %39) #12
  br label %if.end31

if.end31:                                         ; preds = %do.body24, %if.end.if.end31_crit_edge
  %txq = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 8
  call void @brcmu_pktq_flush(ptr noundef %txq, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #12
  %glomd = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 21
  %40 = ptrtoint ptr %glomd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %glomd, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef %41) #12
  %glom.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 22
  %42 = ptrtoint ptr %glom.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %glom.i, align 4
  %cmp.not12.i = icmp eq ptr %43, %glom.i
  br i1 %cmp.not12.i, label %if.end31.brcmf_sdio_free_glom.exit_crit_edge, label %if.end31.for.body.i_crit_edge

if.end31.for.body.i_crit_edge:                    ; preds = %if.end31
  br label %for.body.i

if.end31.brcmf_sdio_free_glom.exit_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.for.body.i_crit_edge
  %cur.013.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %43, %if.end31.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %cur.013.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %next.0.i = load ptr, ptr %cur.013.i, align 8
  call void @skb_unlink(ptr noundef %cur.013.i, ptr noundef %glom.i) #12
  call void @brcmu_pkt_buf_free_skb(ptr noundef %cur.013.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %glom.i
  br i1 %cmp.not.i, label %for.body.i.brcmf_sdio_free_glom.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.brcmf_sdio_free_glom.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_free_glom.exit

brcmf_sdio_free_glom.exit:                        ; preds = %for.body.i.brcmf_sdio_free_glom.exit_crit_edge, %if.end31.brcmf_sdio_free_glom.exit_crit_edge
  %rxctl_lock = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 28
  call void @_raw_spin_lock_bh(ptr noundef %rxctl_lock) #12
  %rxlen = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 27
  %45 = ptrtoint ptr %rxlen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %rxlen, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %rxctl_lock) #12
  %dcmd_resp_wait.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 52
  call void @__wake_up(ptr noundef %dcmd_resp_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %rxskip = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 16
  %46 = ptrtoint ptr %rxskip to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %rxskip, align 2
  %rx_seq = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 14
  %47 = ptrtoint ptr %rx_seq to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %rx_seq, align 4
  %tx_seq = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 10
  %48 = ptrtoint ptr %tx_seq to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %tx_seq, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_txdata(ptr noundef %dev, ptr noundef %pkt) #0 align 64 {
entry:
  %eprec.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_bus_txdata, ptr noundef nonnull @.str.151, ptr noundef %7, i32 noundef %9) #12
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_hdrlen = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 65
  %12 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_hdrlen, align 2
  %conv = zext i8 %13 to i32
  %call2 = tail call ptr @skb_push(ptr noundef %pkt, i32 noundef %conv) #12
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvr, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 6
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority, align 4
  %20 = trunc i32 %19 to i8
  %conv3 = and i8 %20, 7
  %call4 = tail call zeroext i8 @brcmf_map_prio_to_prec(ptr noundef %17, i8 noundef zeroext %conv3) #12
  %conv5 = zext i8 %call4 to i32
  %txq = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 8
  %len.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len.i, align 2
  %conv.i = zext i16 %22 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_bus_txdata, ptr noundef nonnull @.str.152, i32 noundef %conv.i) #12
  %fcqueued = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 62, i32 5
  %23 = ptrtoint ptr %fcqueued to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fcqueued, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %fcqueued, align 4
  %txq_lock = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #12
  %cb = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3
  %25 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %cb, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eprec.i) #12
  %26 = ptrtoint ptr %eprec.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %eprec.i, align 4
  %qlen.i.i = getelementptr %struct.brcmf_sdio, ptr %5, i32 0, i32 8, i32 4, i32 %conv5, i32 0, i32 1
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  %max.i.i = getelementptr %struct.brcmf_sdio, ptr %5, i32 0, i32 8, i32 4, i32 %conv5, i32 1
  %29 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max.i.i, align 4
  %conv.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv.i.i)
  %cmp.i.not.i = icmp ult i32 %28, %conv.i.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end.brcmf_sdio_prec_enq.exit.thread_crit_edge

if.end.brcmf_sdio_prec_enq.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_prec_enq.exit.thread

land.lhs.true.i:                                  ; preds = %if.end
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len.i, align 2
  %max.i48.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %max.i48.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max.i48.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp.i49.not.i = icmp ult i16 %32, %34
  br i1 %cmp.i49.not.i, label %brcmf_sdio_prec_enq.exit.thread71, label %if.then6.i

brcmf_sdio_prec_enq.exit.thread71:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call ptr @brcmu_pktq_penq(ptr noundef %txq, i32 noundef %conv5, ptr noundef %pkt) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eprec.i) #12
  br label %if.end19

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call ptr @brcmu_pktq_peek_tail(ptr noundef %txq, ptr noundef nonnull %eprec.i) #12
  %35 = ptrtoint ptr %eprec.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eprec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv5)
  %cmp.i = icmp sgt i32 %36, %conv5
  br i1 %cmp.i, label %if.then6.i.brcmf_sdio_prec_enq.exit.thread_crit_edge, label %if.end11.i

if.then6.i.brcmf_sdio_prec_enq.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_prec_enq.exit.thread

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp12.i = icmp sgt i32 %36, -1
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.if.end21.i_crit_edge

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv5)
  %cmp14.i = icmp eq i32 %36, %conv5
  br i1 %cmp14.i, label %if.then13.i.brcmf_sdio_prec_enq.exit.thread_crit_edge, label %if.end16.i

if.then13.i.brcmf_sdio_prec_enq.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_prec_enq.exit.thread

if.end16.i:                                       ; preds = %if.then13.i
  %call17.i = call ptr @brcmu_pktq_pdeq_tail(ptr noundef %txq, i32 noundef %36) #12
  %cmp18.i = icmp eq ptr %call17.i, null
  br i1 %cmp18.i, label %do.body.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

do.body.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_prec_enq, ptr noundef nonnull @.str.154) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.body.i, %if.end16.i.if.end20.i_crit_edge
  call void @brcmu_pkt_buf_free_skb(ptr noundef %call17.i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end20.i, %if.end11.i.if.end21.i_crit_edge
  %call22.i = call ptr @brcmu_pktq_penq(ptr noundef %txq, i32 noundef %conv5, ptr noundef %pkt) #12
  %cmp23.i = icmp eq ptr %call22.i, null
  br i1 %cmp23.i, label %brcmf_sdio_prec_enq.exit, label %brcmf_sdio_prec_enq.exit.thread73

brcmf_sdio_prec_enq.exit.thread73:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eprec.i) #12
  br label %if.end19

brcmf_sdio_prec_enq.exit.thread:                  ; preds = %if.then13.i.brcmf_sdio_prec_enq.exit.thread_crit_edge, %if.then6.i.brcmf_sdio_prec_enq.exit.thread_crit_edge, %if.end.brcmf_sdio_prec_enq.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eprec.i) #12
  br label %if.then12

brcmf_sdio_prec_enq.exit:                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_prec_enq, ptr noundef nonnull @.str.155) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eprec.i) #12
  br label %if.then12

if.then12:                                        ; preds = %brcmf_sdio_prec_enq.exit, %brcmf_sdio_prec_enq.exit.thread
  %37 = ptrtoint ptr %tx_hdrlen to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_hdrlen, align 2
  %conv14 = zext i8 %38 to i32
  %call15 = call ptr @skb_pull(ptr noundef %pkt, i32 noundef %conv14) #12
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_txdata, ptr noundef nonnull @.str.153) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %brcmf_sdio_prec_enq.exit.thread73, %brcmf_sdio_prec_enq.exit.thread71
  %ret.0 = phi i32 [ -63, %if.then12 ], [ 0, %brcmf_sdio_prec_enq.exit.thread71 ], [ 0, %brcmf_sdio_prec_enq.exit.thread73 ]
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1791, i16 %40)
  %cmp22 = icmp ugt i16 %40, 1791
  br i1 %cmp22, label %if.then24, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %txoff = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 61
  %41 = ptrtoint ptr %txoff to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %txoff, align 2
  call void @brcmf_proto_bcdc_txflowblock(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #12
  %42 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i, align 4
  %arrayidx = getelementptr [8 x i32], ptr @qcount, i32 0, i32 %conv5
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp29 = icmp sgt i32 %43, %45
  br i1 %cmp29, label %if.then31, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end25.if.end35_crit_edge
  %dpc_triggered.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 59
  %47 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dpc_triggered.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.then.i67, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i67:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %dpc_triggered.i, align 4
  %brcmf_wq.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 57
  %50 = ptrtoint ptr %brcmf_wq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %brcmf_wq.i, align 4
  %datawork.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 58
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %datawork.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i67, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %ret.0, %if.end35.cleanup_crit_edge ], [ %ret.0, %if.then.i67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_txctl(ptr nocapture noundef readonly %dev, ptr noundef %msg, i32 noundef %msglen) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_bus_txctl, ptr noundef nonnull @.str) #12
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup84_crit_edge

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup84

if.end:                                           ; preds = %entry
  %ctrl_frame_buf = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 46
  %8 = ptrtoint ptr %ctrl_frame_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %ctrl_frame_buf, align 4
  %conv = trunc i32 %msglen to i16
  %ctrl_frame_len = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 47
  %9 = ptrtoint ptr %ctrl_frame_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ctrl_frame_len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %ctrl_frame_stat = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 48
  %10 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ctrl_frame_stat, align 2
  %dpc_triggered.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 59
  %11 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dpc_triggered.i, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.brcmf_sdio_trigger_dpc.exit_crit_edge

if.end.brcmf_sdio_trigger_dpc.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_trigger_dpc.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dpc_triggered.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dpc_triggered.i, align 4
  %brcmf_wq.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 57
  %14 = ptrtoint ptr %brcmf_wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %brcmf_wq.i, align 4
  %datawork.i = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 58
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %datawork.i) #12
  br label %brcmf_sdio_trigger_dpc.exit

brcmf_sdio_trigger_dpc.exit:                      ; preds = %if.then.i, %if.end.brcmf_sdio_trigger_dpc.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 2952) #12
  %16 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %brcmf_sdio_trigger_dpc.exit.if.end78_crit_edge, label %if.then23

brcmf_sdio_trigger_dpc.exit.if.end78_crit_edge:   ; preds = %brcmf_sdio_trigger_dpc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then23:                                        ; preds = %brcmf_sdio_trigger_dpc.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %ctrl_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 51
  %call26128 = call i32 @prepare_to_wait_event(ptr noundef %ctrl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %19 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not129 = icmp eq i8 %20, 0
  br i1 %tobool29.not129, label %if.then23.for.end_crit_edge, label %if.then23.if.end48_crit_edge

if.then23.if.end48_crit_edge:                     ; preds = %if.then23
  br label %if.end48

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end48:                                         ; preds = %cleanup.if.end48_crit_edge, %if.then23.if.end48_crit_edge
  %__ret24.1131 = phi i32 [ %__ret24.1, %cleanup.if.end48_crit_edge ], [ 250, %if.then23.if.end48_crit_edge ]
  %call26130 = phi i32 [ %call26, %cleanup.if.end48_crit_edge ], [ %call26128, %if.then23.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26130)
  %tobool49.not = icmp eq i32 %call26130, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

cleanup:                                          ; preds = %if.end48
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret24.1131) #12
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %ctrl_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %21 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool35.not = icmp eq i32 %call52, 0
  %23 = select i1 %tobool29.not, i1 %tobool35.not, i1 false
  %__ret24.1 = select i1 %23, i32 1, i32 %call52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool42.not = icmp eq i32 %__ret24.1, 0
  %24 = select i1 %tobool29.not, i1 true, i1 %tobool42.not
  br i1 %24, label %cleanup.for.end_crit_edge, label %cleanup.if.end48_crit_edge

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then23.for.end_crit_edge
  call void @finish_wait(ptr noundef %ctrl_wait, ptr noundef nonnull %__wq_entry) #12
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.end48.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %25 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %ctrl_frame_stat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool58.not = icmp eq i8 %.pr, 0
  br i1 %tobool58.not, label %if.end55.if.end78_crit_edge, label %if.then59

if.end55.if.end78_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then59:                                        ; preds = %if.end55
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void @sdio_claim_host(ptr noundef %29) #12
  %30 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctrl_frame_stat, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool62.not = icmp eq i8 %31, 0
  br i1 %tobool62.not, label %if.end71.thread, label %if.end71

if.end71.thread:                                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void @sdio_release_host(ptr noundef %35) #12
  br label %if.end78

if.end71:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_txctl, ptr noundef nonnull @.str.156) #12
  %36 = ptrtoint ptr %ctrl_frame_stat to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ctrl_frame_stat, align 2
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void @sdio_release_host(ptr noundef %40) #12
  br label %if.then80

if.end78:                                         ; preds = %if.end71.thread, %if.end55.if.end78_crit_edge, %brcmf_sdio_trigger_dpc.exit.if.end78_crit_edge
  %ctrl_frame_err = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 49
  %41 = ptrtoint ptr %ctrl_frame_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl_frame_err, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_txctl, ptr noundef nonnull @.str.157, i32 noundef %42) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !584
  %43 = ptrtoint ptr %ctrl_frame_err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl_frame_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool79.not = icmp eq i32 %44, 0
  br i1 %tobool79.not, label %if.else, label %if.end78.if.then80_crit_edge

if.end78.if.then80_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then80:                                        ; preds = %if.end78.if.then80_crit_edge, %if.end71
  %ret.2126 = phi i32 [ %44, %if.end78.if.then80_crit_edge ], [ -110, %if.end71 ]
  %tx_ctlerrs = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 62, i32 23
  br label %cleanup84.sink.split

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %tx_ctlpkts = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 62, i32 24
  br label %cleanup84.sink.split

cleanup84.sink.split:                             ; preds = %if.else, %if.then80
  %tx_ctlerrs.sink133 = phi ptr [ %tx_ctlerrs, %if.then80 ], [ %tx_ctlpkts, %if.else ]
  %retval.0.ph = phi i32 [ %ret.2126, %if.then80 ], [ 0, %if.else ]
  %45 = ptrtoint ptr %tx_ctlerrs.sink133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ctlerrs.sink133, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %tx_ctlerrs.sink133, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %cleanup84.sink.split, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup84_crit_edge ], [ %retval.0.ph, %cleanup84.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_rxctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %msg, i32 noundef %msglen) #0 align 64 {
entry:
  %pending = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pending) #12
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pending, align 1, !annotation !563
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str) #12
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 21
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxlen2 = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 27
  %call3 = call fastcc i32 @brcmf_sdio_dcmd_resp_wait(ptr noundef %6, ptr noundef %rxlen2, ptr noundef nonnull %pending)
  %rxctl_lock = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %rxctl_lock) #12
  %9 = ptrtoint ptr %rxlen2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rxlen2, align 4
  %rxctl = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 25
  %11 = ptrtoint ptr %rxctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxctl, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %msglen)
  %14 = call ptr @memcpy(ptr %msg, ptr %12, i32 %13)
  %15 = ptrtoint ptr %rxctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rxctl, align 4
  %rxctl_orig = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 26
  %16 = ptrtoint ptr %rxctl_orig to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxctl_orig, align 4
  store ptr null, ptr %rxctl_orig, align 4
  %18 = ptrtoint ptr %rxlen2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rxlen2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rxctl_lock) #12
  tail call void @vfree(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str.158, i32 noundef %10, i32 noundef %msglen) #12
  %rx_ctlpkts = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 62, i32 26
  %19 = ptrtoint ptr %rx_ctlpkts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ctlpkts, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx_ctlpkts, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp14 = icmp eq i32 %call3, 0
  br i1 %cmp14, label %do.body16, label %if.else20

do.body16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str.159) #12
  br label %if.else36

if.else20:                                        ; preds = %if.else
  %21 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pending, align 1, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %do.body27, label %do.body23

do.body23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str.160) #12
  br label %cleanup

do.body27:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16, ptr noundef nonnull @__func__.brcmf_sdio_bus_rxctl, ptr noundef nonnull @.str.161) #12
  br label %if.else36

if.else36:                                        ; preds = %do.body27, %do.body16
  tail call fastcc void @brcmf_sdio_checkdied(ptr noundef %6)
  %rx_ctlerrs = getelementptr inbounds %struct.brcmf_sdio, ptr %6, i32 0, i32 62, i32 25
  %23 = ptrtoint ptr %rx_ctlerrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ctlerrs, align 4
  %inc38 = add i32 %24, 1
  store i32 %inc38, ptr %rx_ctlerrs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %do.body23, %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.body23 ], [ -5, %entry.cleanup_crit_edge ], [ -110, %if.else36 ], [ %10, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @brcmf_sdio_bus_gettxq(ptr nocapture noundef readonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %txq = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 8
  ret ptr %txq
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_wowl_config(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_sdio_bus_get_ramsize(ptr nocapture noundef readonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 4
  %ramsize = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ramsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ramsize, align 4
  %srsize = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %srsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srsize, align 4
  %sub = sub i32 %9, %11
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_get_memdump(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %mem_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci, align 4
  %rambase = getelementptr inbounds %struct.brcmf_chip, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rambase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rambase, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_bus_get_memdump, ptr noundef nonnull @.str.163, i32 noundef %9, i32 noundef %mem_size) #12
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci, align 4
  %rambase3 = getelementptr inbounds %struct.brcmf_chip, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %rambase3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rambase3, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_size)
  %cmp32.not = icmp eq i32 %mem_size, 0
  br i1 %cmp32.not, label %entry.done_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %offset.035 = phi i32 [ %add9, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %address.034 = phi i32 [ %add10, %if.end.while.body_crit_edge ], [ %13, %entry.while.body_crit_edge ]
  %data.addr.033 = phi ptr [ %add.ptr, %if.end.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %add = add i32 %offset.035, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mem_size)
  %cmp4 = icmp ult i32 %add, %mem_size
  %sub = sub i32 %mem_size, %offset.035
  %spec.select = select i1 %cmp4, i32 2048, i32 %sub
  %call5 = tail call i32 @brcmf_sdiod_ramrw(ptr noundef %3, i1 noundef zeroext false, i32 noundef %address.034, ptr noundef %data.addr.033, i32 noundef %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.body6

do.body6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_get_memdump, ptr noundef nonnull @.str.139, i32 noundef %call5, i32 noundef %spec.select, i32 noundef %address.034) #12
  br label %done

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %data.addr.033, i32 %spec.select
  %add9 = add i32 %spec.select, %offset.035
  %add10 = add i32 %spec.select, %address.034
  %cmp = icmp ult i32 %add9, %mem_size
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

done:                                             ; preds = %if.end.done_crit_edge, %do.body6, %entry.done_crit_edge
  %err.1 = phi i32 [ %call5, %do.body6 ], [ 0, %entry.done_crit_edge ], [ 0, %if.end.done_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void @sdio_release_host(ptr noundef %17) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_get_fwname(ptr nocapture noundef readonly %dev, ptr noundef %ext, ptr noundef %fw_name) #0 align 64 {
entry:
  %fwnames = alloca [1 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwnames) #12
  %2 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames, i32 0, i32 1
  %3 = ptrtoint ptr %fwnames to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ext, ptr %fwnames, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw_name, ptr %2, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chiprev, align 4
  %call1 = call ptr @brcmf_fw_alloc_request(i32 noundef %6, i32 noundef %8, ptr noundef nonnull @brcmf_sdio_fwnames, i32 noundef 23, ptr noundef nonnull %fwnames, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdio_debugfs_create(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bus2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus2, align 4
  %call3 = tail call ptr @brcmf_debugfs_get_devdir(ptr noundef %3) #12
  %tobool.not.i = icmp eq ptr %call3, null
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %console_interval = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %console_interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %console_interval, align 4
  tail call void @brcmf_debugfs_add_entry(ptr noundef %3, ptr noundef nonnull @.str.164, ptr noundef nonnull @brcmf_sdio_forensic_read) #12
  tail call void @brcmf_debugfs_add_entry(ptr noundef %3, ptr noundef nonnull @.str.165, ptr noundef nonnull @brcmf_debugfs_sdio_count_read) #12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.166, i16 noundef zeroext 420, ptr noundef nonnull %call3, ptr noundef %console_interval) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_bus_reset(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_bus_reset, ptr noundef nonnull @.str) #12
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %3) #12
  %call1 = tail call i32 @brcmf_sdiod_remove(ptr noundef %3) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call3 = tail call i32 @mmc_hw_reset(ptr noundef %11) #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @sdio_release_host(ptr noundef %13) #12
  %bus_if5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %bus_if5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_if5, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %15, i32 noundef 0) #12
  %call6 = tail call i32 @brcmf_sdiod_probe(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body7

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_bus_reset, ptr noundef nonnull @.str.174, i32 noundef %call6) #12
  br label %if.end

if.end:                                           ; preds = %do.body7, %entry.if.end_crit_edge
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_add_txhdrlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_flush(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_map_prio_to_prec(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_peek_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_pdeq_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_dcmd_resp_wait(ptr noundef %bus, ptr nocapture noundef readonly %condition, ptr nocapture noundef writeonly %pending) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !552) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %dcmd_resp_wait = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 52
  call void @add_wait_queue(ptr noundef %dcmd_resp_wait, ptr noundef nonnull %wait) #12
  br label %__here

__here:                                           ; preds = %entry
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@brcmf_sdio_dcmd_resp_wait, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !585
  %18 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %condition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool64.not182 = icmp eq i32 %19, 0
  br i1 %tobool64.not182, label %__here.land.rhs65_crit_edge, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

__here.land.rhs65_crit_edge:                      ; preds = %__here
  br label %land.rhs65

land.rhs65:                                       ; preds = %while.body.land.rhs65_crit_edge, %__here.land.rhs65_crit_edge
  %timeout.0183 = phi i32 [ %call74, %while.body.land.rhs65_crit_edge ], [ 250, %__here.land.rhs65_crit_edge ]
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.rhs65.while.end_crit_edge, !prof !571

land.rhs65.while.end_crit_edge:                   ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

signal_pending.exit:                              ; preds = %land.rhs65
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool69.not = icmp ne i32 %and1.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0183)
  %tobool71.not = icmp eq i32 %timeout.0183, 0
  %or.cond = select i1 %tobool69.not, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %signal_pending.exit.while.end_crit_edge, label %while.body

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %signal_pending.exit
  %call74 = call i32 @schedule_timeout(i32 noundef %timeout.0183) #12
  %29 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %condition, align 4
  %tobool64.not = icmp eq i32 %30, 0
  br i1 %tobool64.not, label %while.body.land.rhs65_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.land.rhs65_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs65

while.end:                                        ; preds = %while.body.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %land.rhs65.while.end_crit_edge, %__here.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ 250, %__here.while.end_crit_edge ], [ %timeout.0183, %land.rhs65.while.end_crit_edge ], [ %timeout.0183, %signal_pending.exit.while.end_crit_edge ], [ %call74, %while.body.while.end_crit_edge ]
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %stack.i.i170 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %stack.i.i170 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stack.i.i170, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i171 = icmp eq i32 %37, 0
  br i1 %tobool.not.i171, label %signal_pending.exit175, label %while.end.if.then79_crit_edge, !prof !571

while.end.if.then79_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

signal_pending.exit175:                           ; preds = %while.end
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %34, align 4
  %and1.i.i.i.i.i172 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i172)
  %tobool78.not = icmp eq i32 %and1.i.i.i.i.i172, 0
  br i1 %tobool78.not, label %signal_pending.exit175.__here131_crit_edge, label %signal_pending.exit175.if.then79_crit_edge

signal_pending.exit175.if.then79_crit_edge:       ; preds = %signal_pending.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

signal_pending.exit175.__here131_crit_edge:       ; preds = %signal_pending.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here131

if.then79:                                        ; preds = %signal_pending.exit175.if.then79_crit_edge, %while.end.if.then79_crit_edge
  %40 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %pending, align 1
  br label %__here131

__here131:                                        ; preds = %if.then79, %signal_pending.exit175.__here131_crit_edge
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change135 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change135 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@brcmf_sdio_dcmd_resp_wait, %__here131) to i32), ptr %task_state_change135, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %44, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !586
  call void @remove_wait_queue(ptr noundef %dcmd_resp_wait, ptr noundef nonnull %wait) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 %timeout.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_debugfs_get_devdir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdio_forensic_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %sh_val.i.i = alloca i32, align 4
  %file.i.i = alloca [80 x i8], align 1
  %expr.i.i = alloca [80 x i8], align 1
  %sh.i = alloca %struct.sdpcm_shared, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sh.i) #12
  %8 = call ptr @memset(ptr %sh.i, i32 255, i32 64)
  %call.i = call fastcc i32 @brcmf_sdio_readshared(ptr noundef %7, ptr noundef nonnull %sh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.brcmf_sdio_died_dump.exit_crit_edge, label %if.end.i

entry.brcmf_sdio_died_dump.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_died_dump.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %file.i.i) #12
  %9 = getelementptr inbounds i8, ptr %file.i.i, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 79)
  %11 = ptrtoint ptr %file.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 63, ptr %file.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %expr.i.i) #12
  %12 = getelementptr inbounds i8, ptr %expr.i.i, i32 5
  %13 = call ptr @memset(ptr %12, i32 0, i32 75)
  %14 = ptrtoint ptr %expr.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 60, ptr %expr.i.i, align 1
  %15 = getelementptr inbounds [80 x i8], ptr %expr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 63, ptr %15, align 1
  %17 = getelementptr inbounds [80 x i8], ptr %expr.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 63, ptr %17, align 1
  %19 = getelementptr inbounds [80 x i8], ptr %expr.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 63, ptr %19, align 1
  %21 = getelementptr inbounds [80 x i8], ptr %expr.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 62, ptr %21, align 1
  %23 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sh.i, align 4
  %and.i.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_assert_info, ptr noundef nonnull @.str.167) #12
  br label %if.end4.i

if.else.i.i:                                      ; preds = %if.end.i
  %and2.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp3.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp3.i.i, label %do.body5.i.i, label %if.end8.i.i

do.body5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_assert_info, ptr noundef nonnull @.str.168) #12
  br label %if.end4.i

if.end8.i.i:                                      ; preds = %if.else.i.i
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void @sdio_claim_host(ptr noundef %28) #12
  %assert_file_addr.i.i = getelementptr inbounds %struct.sdpcm_shared, ptr %sh.i, i32 0, i32 3
  %29 = ptrtoint ptr %assert_file_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assert_file_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp9.not.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge, label %if.then10.i.i

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %call.i.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %32, i1 noundef zeroext false, i32 noundef %30, ptr noundef nonnull %file.i.i, i32 noundef 80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i.i, label %if.then10.i.i.brcmf_sdio_assert_info.exit.i_crit_edge, label %if.then10.i.i.if.end16.i.i_crit_edge

if.then10.i.i.if.end16.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then10.i.i.brcmf_sdio_assert_info.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_assert_info.exit.i

if.end16.i.i:                                     ; preds = %if.then10.i.i.if.end16.i.i_crit_edge, %if.end8.i.i.if.end16.i.i_crit_edge
  %assert_exp_addr.i.i = getelementptr inbounds %struct.sdpcm_shared, ptr %sh.i, i32 0, i32 2
  %33 = ptrtoint ptr %assert_exp_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %assert_exp_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp17.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp17.not.i.i, label %if.end16.i.i.if.end26.i.i_crit_edge, label %if.then18.i.i

if.end16.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then18.i.i:                                    ; preds = %if.end16.i.i
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  %call22.i.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %36, i1 noundef zeroext false, i32 noundef %34, ptr noundef nonnull %expr.i.i, i32 noundef 80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.then18.i.i.brcmf_sdio_assert_info.exit.i_crit_edge, label %if.then18.i.i.if.end26.i.i_crit_edge

if.then18.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then18.i.i.brcmf_sdio_assert_info.exit.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_assert_info.exit.i

if.end26.i.i:                                     ; preds = %if.then18.i.i.if.end26.i.i_crit_edge, %if.end16.i.i.if.end26.i.i_crit_edge
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %7, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void @sdio_release_host(ptr noundef %40) #12
  %assert_line.i.i = getelementptr inbounds %struct.sdpcm_shared, ptr %sh.i, i32 0, i32 4
  %41 = ptrtoint ptr %assert_line.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assert_line.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.169, ptr noundef nonnull %file.i.i, i32 noundef %42, ptr noundef nonnull %expr.i.i) #12
  br label %if.end4.i

brcmf_sdio_assert_info.exit.i:                    ; preds = %if.then18.i.i.brcmf_sdio_assert_info.exit.i_crit_edge, %if.then10.i.i.brcmf_sdio_assert_info.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then10.i.i.brcmf_sdio_assert_info.exit.i_crit_edge ], [ %call22.i.i, %if.then18.i.i.brcmf_sdio_assert_info.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %expr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %file.i.i) #12
  br label %brcmf_sdio_died_dump.exit

if.end4.i:                                        ; preds = %if.end26.i.i, %do.body5.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %expr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %file.i.i) #12
  %call5.i = call fastcc i32 @brcmf_sdio_trap_info(ptr noundef %seq, ptr noundef %7, ptr noundef nonnull %sh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.brcmf_sdio_died_dump.exit_crit_edge, label %if.end8.i

if.end4.i.brcmf_sdio_died_dump.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_died_dump.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sh_val.i.i) #12
  %43 = ptrtoint ptr %sh_val.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %sh_val.i.i, align 4, !annotation !563
  %console_addr.i.i = getelementptr inbounds %struct.sdpcm_shared, ptr %sh.i, i32 0, i32 5
  %44 = ptrtoint ptr %console_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %console_addr.i.i, align 4
  %add.i.i = add i32 %45, 8
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  %call.i18.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %47, i1 noundef zeroext false, i32 noundef %add.i.i, ptr noundef nonnull %sh_val.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp.i19.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp.i19.i, label %if.end8.i.brcmf_sdio_dump_console.exit.i_crit_edge, label %if.end.i.i

if.end8.i.brcmf_sdio_dump_console.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_dump_console.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  %48 = ptrtoint ptr %sh_val.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sh_val.i.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #12
  %add2.i.i = add i32 %45, 12
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %7, align 4
  %call4.i.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %52, i1 noundef zeroext false, i32 noundef %add2.i.i, ptr noundef nonnull %sh_val.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, label %if.end7.i.i

if.end.i.i.brcmf_sdio_dump_console.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_dump_console.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %53 = ptrtoint ptr %sh_val.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sh_val.i.i, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #12
  %add9.i.i = add i32 %45, 16
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 4
  %call11.i.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %57, i1 noundef zeroext false, i32 noundef %add9.i.i, ptr noundef nonnull %sh_val.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.end7.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, label %if.end14.i.i

if.end7.i.i.brcmf_sdio_dump_console.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_dump_console.exit.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %58 = ptrtoint ptr %sh_val.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sh_val.i.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2025, i32 %55)
  %cmp15.i.i = icmp ult i32 %55, 2025
  br i1 %cmp15.i.i, label %if.end19.i.i, label %if.end14.i.i.brcmf_sdio_dump_console.exit.i_crit_edge

if.end14.i.i.brcmf_sdio_dump_console.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_dump_console.exit.i

if.end19.i.i:                                     ; preds = %if.end14.i.i
  %add17.i.i = add nuw nsw i32 %55, 1
  %call18.i.i = call noalias ptr @vzalloc(i32 noundef %add17.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool.not.i.i, label %if.end19.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, label %if.end21.i.i

if.end19.i.i.brcmf_sdio_dump_console.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_sdio_dump_console.exit.i

if.end21.i.i:                                     ; preds = %if.end19.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call18.i.i, i32 %55
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx.i.i, align 1
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %7, align 4
  %call23.i.i = call i32 @brcmf_sdiod_ramrw(ptr noundef %63, i1 noundef zeroext false, i32 noundef %50, ptr noundef nonnull %call18.i.i, i32 noundef %55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i = icmp slt i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %if.end21.i.i.done.i.i_crit_edge, label %if.end26.i20.i

if.end21.i.i.done.i.i_crit_edge:                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.end26.i20.i:                                   ; preds = %if.end21.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call18.i.i, i32 %60
  %sub.i.i = sub i32 %55, %60
  %call27.i.i = call i32 @seq_write(ptr noundef %seq, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp31.not.i.i = icmp eq i32 %59, 0
  %or.cond.i.i = select i1 %cmp28.i.i, i1 true, i1 %cmp31.not.i.i
  br i1 %or.cond.i.i, label %if.end26.i20.i.done.i.i_crit_edge, label %if.then32.i.i

if.end26.i20.i.done.i.i_crit_edge:                ; preds = %if.end26.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i.i

if.then32.i.i:                                    ; preds = %if.end26.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub33.i.i = add i32 %60, -1
  %call34.i.i = call i32 @seq_write(ptr noundef %seq, ptr noundef nonnull %call18.i.i, i32 noundef %sub33.i.i) #12
  br label %done.i.i

done.i.i:                                         ; preds = %if.then32.i.i, %if.end26.i20.i.done.i.i_crit_edge, %if.end21.i.i.done.i.i_crit_edge
  %rv.0.i.i = phi i32 [ %call23.i.i, %if.end21.i.i.done.i.i_crit_edge ], [ %call27.i.i, %if.end26.i20.i.done.i.i_crit_edge ], [ %call34.i.i, %if.then32.i.i ]
  call void @vfree(ptr noundef nonnull %call18.i.i) #12
  br label %brcmf_sdio_dump_console.exit.i

brcmf_sdio_dump_console.exit.i:                   ; preds = %done.i.i, %if.end19.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, %if.end14.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, %if.end7.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, %if.end.i.i.brcmf_sdio_dump_console.exit.i_crit_edge, %if.end8.i.brcmf_sdio_dump_console.exit.i_crit_edge
  %retval.0.i21.i = phi i32 [ %rv.0.i.i, %done.i.i ], [ %call.i18.i, %if.end8.i.brcmf_sdio_dump_console.exit.i_crit_edge ], [ %call4.i.i, %if.end.i.i.brcmf_sdio_dump_console.exit.i_crit_edge ], [ %call11.i.i, %if.end7.i.i.brcmf_sdio_dump_console.exit.i_crit_edge ], [ -12, %if.end19.i.i.brcmf_sdio_dump_console.exit.i_crit_edge ], [ -12, %if.end14.i.i.brcmf_sdio_dump_console.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sh_val.i.i) #12
  br label %brcmf_sdio_died_dump.exit

brcmf_sdio_died_dump.exit:                        ; preds = %brcmf_sdio_dump_console.exit.i, %if.end4.i.brcmf_sdio_died_dump.exit_crit_edge, %brcmf_sdio_assert_info.exit.i, %entry.brcmf_sdio_died_dump.exit_crit_edge
  %error.0.i = phi i32 [ %call.i, %entry.brcmf_sdio_died_dump.exit_crit_edge ], [ %retval.0.i.i, %brcmf_sdio_assert_info.exit.i ], [ %call5.i, %if.end4.i.brcmf_sdio_died_dump.exit_crit_edge ], [ %retval.0.i21.i, %brcmf_sdio_dump_console.exit.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sh.i) #12
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_debugfs_sdio_count_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %sdcnt1 = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62
  %8 = ptrtoint ptr %sdcnt1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdcnt1, align 4
  %lastintrs = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 1
  %10 = ptrtoint ptr %lastintrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lastintrs, align 4
  %pollcnt = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 2
  %12 = ptrtoint ptr %pollcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pollcnt, align 4
  %regfails = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 3
  %14 = ptrtoint ptr %regfails to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regfails, align 4
  %tx_sderrs = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 4
  %16 = ptrtoint ptr %tx_sderrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_sderrs, align 4
  %fcqueued = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 5
  %18 = ptrtoint ptr %fcqueued to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcqueued, align 4
  %rxrtx = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 6
  %20 = ptrtoint ptr %rxrtx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxrtx, align 4
  %rx_toolong = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 7
  %22 = ptrtoint ptr %rx_toolong to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_toolong, align 4
  %rxc_errors = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 8
  %24 = ptrtoint ptr %rxc_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxc_errors, align 4
  %rx_hdrfail = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 9
  %26 = ptrtoint ptr %rx_hdrfail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_hdrfail, align 4
  %rx_badhdr = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 10
  %28 = ptrtoint ptr %rx_badhdr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_badhdr, align 4
  %rx_badseq = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 11
  %30 = ptrtoint ptr %rx_badseq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_badseq, align 4
  %fc_rcvd = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 12
  %32 = ptrtoint ptr %fc_rcvd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_rcvd, align 4
  %fc_xoff = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 13
  %34 = ptrtoint ptr %fc_xoff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fc_xoff, align 4
  %fc_xon = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 14
  %36 = ptrtoint ptr %fc_xon to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fc_xon, align 4
  %rxglomfail = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 15
  %38 = ptrtoint ptr %rxglomfail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxglomfail, align 4
  %rxglomframes = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 16
  %40 = ptrtoint ptr %rxglomframes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rxglomframes, align 4
  %rxglompkts = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 17
  %42 = ptrtoint ptr %rxglompkts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rxglompkts, align 4
  %f2rxhdrs = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 18
  %44 = ptrtoint ptr %f2rxhdrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f2rxhdrs, align 4
  %f2rxdata = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 19
  %46 = ptrtoint ptr %f2rxdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f2rxdata, align 4
  %f2txdata = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 20
  %48 = ptrtoint ptr %f2txdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f2txdata, align 4
  %f1regdata = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 21
  %50 = ptrtoint ptr %f1regdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %f1regdata, align 4
  %tickcnt = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 22
  %52 = ptrtoint ptr %tickcnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tickcnt, align 4
  %tx_ctlerrs = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 23
  %54 = ptrtoint ptr %tx_ctlerrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_ctlerrs, align 4
  %tx_ctlpkts = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 24
  %56 = ptrtoint ptr %tx_ctlpkts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_ctlpkts, align 4
  %rx_ctlerrs = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 25
  %58 = ptrtoint ptr %rx_ctlerrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_ctlerrs, align 4
  %rx_ctlpkts = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 26
  %60 = ptrtoint ptr %rx_ctlpkts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ctlpkts, align 4
  %rx_readahead_cnt = getelementptr inbounds %struct.brcmf_sdio, ptr %7, i32 0, i32 62, i32 27
  %62 = ptrtoint ptr %rx_readahead_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_readahead_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.173, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_trap_info(ptr noundef %seq, ptr nocapture noundef readonly %bus, ptr nocapture noundef readonly %sh) unnamed_addr #0 align 64 {
entry:
  %tr = alloca %struct.brcmf_trap_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tr) #12
  %0 = call ptr @memset(ptr %tr, i32 255, i32 80)
  %1 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sh, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_sdio_trap_info, ptr noundef nonnull @.str.170) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %trap_addr = getelementptr inbounds %struct.sdpcm_shared, ptr %sh, i32 0, i32 1
  %5 = ptrtoint ptr %trap_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trap_addr, align 4
  %call = call i32 @brcmf_sdiod_ramrw(ptr noundef %4, i1 noundef zeroext false, i32 noundef %6, ptr noundef nonnull %tr, i32 noundef 80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %do.body6, label %if.then4

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tr, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %epc = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 1
  %10 = ptrtoint ptr %epc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %epc, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %cpsr = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 2
  %13 = ptrtoint ptr %cpsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpsr, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %spsr = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 3
  %16 = ptrtoint ptr %spsr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spsr, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %r13 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 17
  %19 = ptrtoint ptr %r13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r13, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %r14 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 18
  %22 = ptrtoint ptr %r14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r14, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %pc = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 19
  %25 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pc, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %trap_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trap_addr, align 4
  %r0 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 4
  %30 = ptrtoint ptr %r0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r0, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %r1 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 5
  %33 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %r1, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %r2 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 6
  %36 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r2, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %r3 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 7
  %39 = ptrtoint ptr %r3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %r3, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %r4 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 8
  %42 = ptrtoint ptr %r4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %r4, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %r5 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 9
  %45 = ptrtoint ptr %r5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %r5, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %r6 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 10
  %48 = ptrtoint ptr %r6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %r6, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %r7 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 11
  %51 = ptrtoint ptr %r7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %r7, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.171, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50, i32 noundef %53) #12
  br label %cleanup

do.body6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmf_sdio_trap_info.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmf_sdio_trap_info, %cleanup)) #12
          to label %if.then12 [label %cleanup], !srcloc !566

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tr, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %epc14 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 1
  %57 = ptrtoint ptr %epc14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %epc14, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %cpsr15 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 2
  %60 = ptrtoint ptr %cpsr15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpsr15, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %spsr16 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 3
  %63 = ptrtoint ptr %spsr16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %spsr16, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %r1317 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 17
  %66 = ptrtoint ptr %r1317 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %r1317, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %r1418 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 18
  %69 = ptrtoint ptr %r1418 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %r1418, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %pc19 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 19
  %72 = ptrtoint ptr %pc19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pc19, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %trap_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %trap_addr, align 4
  %r021 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 4
  %77 = ptrtoint ptr %r021 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %r021, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %r122 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 5
  %80 = ptrtoint ptr %r122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %r122, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %r223 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 6
  %83 = ptrtoint ptr %r223 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %r223, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %r324 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 7
  %86 = ptrtoint ptr %r324 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %r324, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %r425 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 8
  %89 = ptrtoint ptr %r425 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %r425, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %r526 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 9
  %92 = ptrtoint ptr %r526 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %r526, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %r627 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 10
  %95 = ptrtoint ptr %r627 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %r627, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %r728 = getelementptr inbounds %struct.brcmf_trap_info, ptr %tr, i32 0, i32 11
  %98 = ptrtoint ptr %r728 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %r728, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmf_sdio_trap_info.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.172, i32 noundef %56, i32 noundef %59, i32 noundef %62, i32 noundef %65, i32 noundef %68, i32 noundef %71, i32 noundef %74, i32 noundef %76, i32 noundef %79, i32 noundef %82, i32 noundef %85, i32 noundef %88, i32 noundef %91, i32 noundef %94, i32 noundef %97, i32 noundef %100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body6, %if.then4, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.then4 ], [ 0, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdiod_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_sdio_htclk(ptr nocapture noundef %bus, i1 noundef zeroext %on, i1 noundef zeroext %pendok) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !563
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str) #12
  %sr_enabled = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 63
  %1 = ptrtoint ptr %sr_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sr_enabled, align 4, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %on, i32 3, i32 1
  %clkstate = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %3 = ptrtoint ptr %clkstate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %clkstate, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %on, label %if.then4, label %if.else133

if.then4:                                         ; preds = %if.end
  %alp_only = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 45
  %4 = ptrtoint ptr %alp_only to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alp_only, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool5.not, i8 16, i8 8
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @sdio_writeb(ptr noundef %9, i8 noundef zeroext %conv, i32 noundef 65550, ptr noundef nonnull %err) #12
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end12, label %do.body9

do.body9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.179, i32 noundef %11) #12
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call = call zeroext i8 @sdio_readb(ptr noundef %15, i32 noundef 65550, ptr noundef nonnull %err) #12
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end20, label %do.body17

do.body17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.180, i32 noundef %17) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call)
  %tobool22.not = icmp ult i8 %call, 64
  br i1 %tobool22.not, label %land.lhs.true29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %18 = ptrtoint ptr %alp_only to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alp_only, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %call)
  %cmp = icmp ugt i8 %call, -65
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp
  %pendok.not = xor i1 %pendok, true
  %brmerge = or i1 %or.cond, %pendok.not
  br i1 %brmerge, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true29:                                  ; preds = %if.end20
  br i1 %pendok, label %land.lhs.true29.if.then32_crit_edge, label %land.lhs.true29.if.else_crit_edge

land.lhs.true29.if.else_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true29.if.then32_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %land.lhs.true29.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call35 = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef 65545, ptr noundef nonnull %err) #12
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool36.not = icmp eq i32 %25, 0
  br i1 %tobool36.not, label %if.end41, label %do.body38

do.body38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.181, i32 noundef %25) #12
  br label %cleanup

if.end41:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %26 = or i8 %call35, 4
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void @sdio_writeb(ptr noundef %30, i8 noundef zeroext %26, i32 noundef 65545, ptr noundef nonnull %err) #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.182) #12
  %clkstate49 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %31 = ptrtoint ptr %clkstate49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %clkstate49, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true29.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %clkstate50 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %32 = ptrtoint ptr %clkstate50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clkstate50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp51 = icmp eq i32 %33, 2
  br i1 %cmp51, label %if.then53, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call56 = call zeroext i8 @sdio_readb(ptr noundef %37, i32 noundef 65545, ptr noundef nonnull %err) #12
  %38 = and i8 %call56, -5
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  call void @sdio_writeb(ptr noundef %42, i8 noundef zeroext %38, i32 noundef 65545, ptr noundef nonnull %err) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %if.else.if.end63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %43, 100
  br label %while.cond

while.cond:                                       ; preds = %if.else85, %if.end63
  %clkctl.0 = phi i8 [ %call, %if.end63 ], [ %call81, %if.else85 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %clkctl.0)
  %tobool67.not = icmp ult i8 %clkctl.0, 64
  br i1 %tobool67.not, label %while.cond.while.body_crit_edge, label %land.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.rhs:                                         ; preds = %while.cond
  %44 = ptrtoint ptr %alp_only to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %alp_only, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool69.not = icmp ne i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %clkctl.0)
  %cmp75 = icmp ugt i8 %clkctl.0, -65
  %narrow = select i1 %tobool69.not, i1 true, i1 %cmp75
  br i1 %narrow, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call81 = call zeroext i8 @sdio_readb(ptr noundef %49, i32 noundef 65550, ptr noundef nonnull %err) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %50
  %cmp82 = icmp slt i32 %sub, 0
  br i1 %cmp82, label %while.body.while.end_crit_edge, label %if.else85

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.else85:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #12
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %clkctl.1 = phi i8 [ %call81, %while.body.while.end_crit_edge ], [ %clkctl.0, %land.rhs.while.end_crit_edge ]
  %51 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool87.not = icmp eq i32 %52, 0
  br i1 %tobool87.not, label %if.end92, label %do.body89

do.body89:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.179, i32 noundef %52) #12
  br label %cleanup

if.end92:                                         ; preds = %while.end
  %conv93 = zext i8 %clkctl.1 to i32
  %and94 = and i32 %conv93, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.do.body107_crit_edge, label %land.lhs.true96

if.end92.do.body107_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body107

land.lhs.true96:                                  ; preds = %if.end92
  %53 = ptrtoint ptr %alp_only to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %alp_only, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool98.not = icmp ne i8 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and94)
  %cmp104 = icmp eq i32 %and94, 192
  %or.cond1 = select i1 %tobool98.not, i1 true, i1 %cmp104
  br i1 %or.cond1, label %if.end111, label %land.lhs.true96.do.body107_crit_edge

land.lhs.true96.do.body107_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body107

do.body107:                                       ; preds = %land.lhs.true96.do.body107_crit_edge, %if.end92.do.body107_crit_edge
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.183, i32 noundef 1000000, i32 noundef %conv93) #12
  br label %cleanup

if.end111:                                        ; preds = %land.lhs.true96
  %55 = ptrtoint ptr %clkstate50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %clkstate50, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.184) #12
  %56 = ptrtoint ptr %alp_only to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %alp_only, align 2, !range !562
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool117.not = icmp ne i8 %57, 0
  %or.cond2 = select i1 %tobool117.not, i1 true, i1 %cmp104
  br i1 %or.cond2, label %if.end111.cleanup_crit_edge, label %do.body128

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body128:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.185) #12
  br label %cleanup

if.else133:                                       ; preds = %if.end
  %clkstate134 = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 39
  %58 = ptrtoint ptr %clkstate134 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clkstate134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp135 = icmp eq i32 %59, 2
  br i1 %cmp135, label %if.then137, label %if.else133.if.end146_crit_edge

if.else133.if.end146_crit_edge:                   ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then137:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call140 = call zeroext i8 @sdio_readb(ptr noundef %63, i32 noundef 65545, ptr noundef nonnull %err) #12
  %64 = and i8 %call140, -5
  %65 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  call void @sdio_writeb(ptr noundef %68, i8 noundef zeroext %64, i32 noundef 65545, ptr noundef nonnull %err) #12
  br label %if.end146

if.end146:                                        ; preds = %if.then137, %if.else133.if.end146_crit_edge
  %69 = ptrtoint ptr %clkstate134 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %clkstate134, align 4
  %70 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  call void @sdio_writeb(ptr noundef %73, i8 noundef zeroext 0, i32 noundef 65550, ptr noundef nonnull %err) #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.186) #12
  %74 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool153.not = icmp eq i32 %75, 0
  br i1 %tobool153.not, label %if.end146.cleanup_crit_edge, label %do.body155

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body155:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_htclk, ptr noundef nonnull @.str.187, i32 noundef %75) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body155, %if.end146.cleanup_crit_edge, %do.body128, %if.end111.cleanup_crit_edge, %do.body107, %do.body89, %if.end41, %do.body38, %do.body17, %do.body9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdio_kso_control(ptr nocapture noundef readonly %bus, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %conv = zext i1 %on to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdio_kso_control, ptr noundef nonnull @.str.195, i32 noundef %conv) #12
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sdio_retune_crc_disable(ptr noundef %4) #12
  br i1 %on, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @sdio_retune_hold_now(ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv6 = zext i1 %on to i8
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext %conv6, i32 noundef 65567, ptr noundef nonnull %err) #12
  br i1 %on, label %if.then14.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ci = getelementptr inbounds %struct.brcmf_sdio, ptr %bus, i32 0, i32 1
  %13 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43012, i32 %16)
  %cmp = icmp eq i32 %16, 43012
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then14.critedge, %land.lhs.true.if.end15_crit_edge
  %cmp_val.0 = phi i32 [ 3, %if.then14.critedge ], [ 0, %land.lhs.true.if.end15_crit_edge ]
  %bmask.0 = phi i32 [ 3, %if.then14.critedge ], [ 1, %land.lhs.true.if.end15_crit_edge ]
  br label %do.body16

do.body16:                                        ; preds = %if.end34.do.body16_crit_edge, %if.end15
  %err_cnt.0 = phi i32 [ 0, %if.end15 ], [ %err_cnt.2, %if.end34.do.body16_crit_edge ]
  %try_cnt.0 = phi i32 [ 0, %if.end15 ], [ %inc38, %if.end34.do.body16_crit_edge ]
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call = call zeroext i8 @sdio_readb(ptr noundef %20, i32 noundef 65567, ptr noundef nonnull %err) #12
  %21 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true30

if.then20:                                        ; preds = %do.body16
  %conv21 = zext i8 %call to i32
  %and = and i32 %bmask.0, %conv21
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cmp_val.0)
  %cmp24 = icmp eq i32 %and, %cmp_val.0
  br i1 %cmp24, label %if.then20.do.end41_crit_edge, label %if.then20.if.end34_crit_edge

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then20.do.end41_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

land.lhs.true30:                                  ; preds = %do.body16
  %inc = add nsw i32 %err_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %err_cnt.0)
  %cmp31 = icmp sgt i32 %err_cnt.0, 5
  br i1 %cmp31, label %land.lhs.true30.do.end41_crit_edge, label %land.lhs.true30.if.end34_crit_edge

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true30.do.end41_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.end34:                                         ; preds = %land.lhs.true30.if.end34_crit_edge, %if.then20.if.end34_crit_edge
  %err_cnt.2 = phi i32 [ %inc, %land.lhs.true30.if.end34_crit_edge ], [ 0, %if.then20.if.end34_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 10737400) #12
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void @sdio_writeb(ptr noundef %27, i8 noundef zeroext %conv6, i32 noundef 65567, ptr noundef nonnull %err) #12
  %inc38 = add nuw nsw i32 %try_cnt.0, 1
  %exitcond.not = icmp eq i32 %inc38, 20001
  br i1 %exitcond.not, label %if.end34.if.end49_crit_edge, label %if.end34.do.body16_crit_edge

if.end34.do.body16_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end41:                                         ; preds = %land.lhs.true30.do.end41_crit_edge, %if.then20.do.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %try_cnt.0)
  %cmp42 = icmp ugt i32 %try_cnt.0, 2
  br i1 %cmp42, label %do.end41.if.end49_crit_edge, label %do.end41.if.end57_crit_edge

do.end41.if.end57_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end41.if.end49_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %do.end41.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %try_cnt.194 = phi i32 [ %try_cnt.0, %do.end41.if.end49_crit_edge ], [ 20001, %if.end34.if.end49_crit_edge ]
  %conv46 = zext i8 %call to i32
  %28 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_kso_control, ptr noundef nonnull @.str.196, i32 noundef %try_cnt.194, i32 noundef %conv46, i32 noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %try_cnt.194)
  %cmp50 = icmp ugt i32 %try_cnt.194, 20000
  br i1 %cmp50, label %do.body53, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.body53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdio_kso_control, ptr noundef nonnull @.str.197, i32 noundef %conv46, i32 noundef %31) #12
  br label %if.end57

if.end57:                                         ; preds = %do.body53, %if.end49.if.end57_crit_edge, %do.end41.if.end57_crit_edge
  br i1 %on, label %if.then59, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void @sdio_retune_release(ptr noundef %35) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57.if.end62_crit_edge
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void @sdio_retune_crc_enable(ptr noundef %39) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %land.lhs.true.cleanup_crit_edge
  %40 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_crc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_hold_now(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_retune_crc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !40, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !214, !216, !218, !220, !222, !223, !224, !225, !227, !228, !230, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !279, !281, !283, !285, !287, !288, !289, !290, !291, !293, !295, !297, !299, !301, !303, !304, !306, !308, !310, !312, !314, !316, !317, !319, !321, !323, !325, !327, !329, !331, !332, !334, !336, !338, !339, !340, !341, !343, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !374, !376, !378, !380, !382, !384, !386, !388, !389, !391, !393, !395, !397, !399, !401, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !437, !439, !441, !443, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !473, !475, !477, !479, !480, !482, !484, !486, !487, !489, !491, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !535, !536, !537, !539, !541, !543, !545, !547, !548, !550}
!llvm.named.register.sp = !{!552}
!llvm.module.flags = !{!553, !554, !555, !556, !557, !558, !559, !560}
!llvm.ident = !{!561}

!0 = !{ptr @__UNIQUE_ID_firmware356, !1, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 606, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware357, !3, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 607, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware358, !5, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 608, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware359, !7, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 609, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware360, !9, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 610, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware361, !11, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 611, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware362, !13, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 612, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware363, !15, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 613, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware364, !17, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 614, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware365, !19, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 615, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware366, !21, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 616, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware367, !23, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 617, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware368, !25, !"__UNIQUE_ID_firmware368", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 619, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware369, !25, !"__UNIQUE_ID_firmware369", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_firmware370, !28, !"__UNIQUE_ID_firmware370", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 620, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware371, !30, !"__UNIQUE_ID_firmware371", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 621, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware372, !30, !"__UNIQUE_ID_firmware372", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_firmware373, !33, !"__UNIQUE_ID_firmware373", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 622, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware374, !35, !"__UNIQUE_ID_firmware374", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 623, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware375, !35, !"__UNIQUE_ID_firmware375", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_firmware376, !38, !"__UNIQUE_ID_firmware376", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 624, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware377, !38, !"__UNIQUE_ID_firmware377", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_firmware378, !41, !"__UNIQUE_ID_firmware378", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 625, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware379, !43, !"__UNIQUE_ID_firmware379", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 626, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware380, !43, !"__UNIQUE_ID_firmware380", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_firmware381, !46, !"__UNIQUE_ID_firmware381", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 627, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware382, !46, !"__UNIQUE_ID_firmware382", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_firmware383, !49, !"__UNIQUE_ID_firmware383", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 628, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware384, !49, !"__UNIQUE_ID_firmware384", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_firmware385, !52, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 631, i32 1}
!53 = !{ptr @__UNIQUE_ID_firmware386, !54, !"__UNIQUE_ID_firmware386", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 632, i32 1}
!55 = !{ptr @__UNIQUE_ID_firmware387, !56, !"__UNIQUE_ID_firmware387", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 635, i32 1}
!57 = !{ptr @__func__.brcmf_sdio_isr, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3643, i32 2}
!59 = !{ptr @.str, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3646, i32 3}
!62 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3656, i32 4}
!64 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3661, i32 3}
!66 = !{ptr @__func__.brcmf_sdio_probe, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4442, i32 2}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4458, i32 7}
!70 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4461, i32 3}
!72 = !{ptr @brcmf_sdio_probe.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4465, i32 2}
!74 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4470, i32 3}
!77 = !{ptr @brcmf_sdio_probe.__key.8, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4474, i32 2}
!79 = !{ptr @.str.9, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @brcmf_sdio_probe.__key.10, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4475, i32 2}
!82 = !{ptr @.str.11, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @brcmf_sdio_probe.__key.12, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4476, i32 2}
!85 = !{ptr @.str.13, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @brcmf_sdio_probe.__key.14, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4477, i32 2}
!88 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @brcmf_sdio_probe.__key.16, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4480, i32 2}
!91 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4483, i32 22}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4487, i32 3}
!96 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @brcmf_sdio_probe._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @brcmf_sdio_probe._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4521, i32 2}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4532, i32 3}
!103 = !{ptr @__func__.brcmf_sdio_remove, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4547, i32 2}
!105 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4591, i32 2}
!107 = !{ptr @skb_queue_head_init.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!109 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @__func__.brcmf_sdio_dpc, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2592, i32 2}
!112 = !{ptr @.str.25, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2610, i32 3}
!114 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2661, i32 3}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2666, i32 3}
!118 = !{ptr @.str.28, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2671, i32 3}
!120 = !{ptr @.str.29, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2677, i32 3}
!122 = !{ptr @.str.30, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2708, i32 5}
!124 = !{ptr @.str.31, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2724, i32 3}
!126 = !{ptr @__func__.brcmf_sdio_hostmail, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1116, i32 2}
!128 = !{ptr @.str.32, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1131, i32 3}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1137, i32 3}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1140, i32 4}
!134 = !{ptr @.str.35, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1154, i32 4}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1158, i32 4}
!138 = !{ptr @.str.37, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1194, i32 3}
!140 = !{ptr @__func__.brcmf_sdio_readshared, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1055, i32 3}
!142 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1060, i32 2}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1080, i32 3}
!147 = !{ptr @.str.41, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1088, i32 2}
!149 = !{ptr @__func__.brcmf_sdio_readframes, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1865, i32 2}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1877, i32 4}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1880, i32 4}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1894, i32 5}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1902, i32 4}
!159 = !{ptr @.str.46, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1938, i32 4}
!161 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1952, i32 4}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1980, i32 5}
!165 = !{ptr @.str.49, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2001, i32 5}
!167 = !{ptr @.str.50, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2013, i32 3}
!169 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2019, i32 5}
!171 = !{ptr @.str.52, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2021, i32 5}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2028, i32 5}
!175 = !{ptr @.str.54, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2064, i32 3}
!177 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2066, i32 3}
!179 = !{ptr @__func__.brcmf_sdio_rxglom, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1528, i32 2}
!181 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1537, i32 4}
!184 = !{ptr @.str.58, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1549, i32 5}
!186 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1555, i32 5}
!188 = !{ptr @.str.60, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1571, i32 5}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1584, i32 4}
!192 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1588, i32 5}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1607, i32 4}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1609, i32 5}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1630, i32 4}
!200 = !{ptr @.str.66, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1641, i32 3}
!202 = !{ptr @.str.67, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1669, i32 4}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1693, i32 4}
!206 = !{ptr @.str.69, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1706, i32 4}
!208 = !{ptr @__func__.brcmf_sdio_rxfail, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1209, i32 2}
!210 = !{ptr @.str.70, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.71, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1232, i32 4}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1239, i32 3}
!218 = !{ptr @.str.76, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1241, i32 3}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 65, i32 1}
!222 = !{ptr @.str.77, !221, !"<string literal>", i1 false, i1 false}
!223 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!224 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!225 = distinct !{null, !226, !"__already_done", i1 false, i1 false}
!226 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!227 = !{ptr @.str.79, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @__func__.brcmf_sdio_hdparse, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1388, i32 3}
!230 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.81, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1394, i32 3}
!233 = !{ptr @.str.82, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1399, i32 3}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1403, i32 3}
!237 = !{ptr @.str.84, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1412, i32 3}
!239 = !{ptr @.str.85, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1420, i32 3}
!241 = !{ptr @.str.86, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1427, i32 3}
!243 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1433, i32 3}
!245 = !{ptr @.str.88, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1439, i32 3}
!247 = !{ptr @.str.89, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1446, i32 3}
!249 = !{ptr @.str.90, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1457, i32 4}
!251 = !{ptr @.str.91, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1472, i32 3}
!253 = distinct !{null, !254, !"__already_done", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 112, i32 1}
!255 = distinct !{null, !254, !"__warned", i1 false, i1 false}
!256 = !{ptr @__func__.brcmf_sdio_read_control, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1762, i32 2}
!258 = !{ptr @.str.92, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1791, i32 3}
!260 = !{ptr @.str.93, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1798, i32 3}
!262 = !{ptr @.str.94, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1811, i32 3}
!264 = !{ptr @.str.95, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1821, i32 2}
!266 = !{ptr @.str.96, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1827, i32 3}
!268 = !{ptr @.str.97, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!270 = !{ptr @__func__.brcmf_sdio_tx_ctrlframe, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2403, i32 2}
!272 = !{ptr @.str.98, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2439, i32 2}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2441, i32 2}
!276 = !{ptr @__func__.brcmf_sdio_txfail, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1263, i32 2}
!278 = !{ptr @.str.100, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @__func__.brcmf_sdio_sendfromq, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2340, i32 2}
!281 = !{ptr @__func__.brcmf_sdio_txpkt, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2303, i32 2}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2241, i32 4}
!285 = !{ptr @.str.102, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3961, i32 2}
!287 = !{ptr @.str.103, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.104, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @brcmf_sdio_probe_attach.__UNIQUE_ID_ddebug409, !286, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!290 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.106, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3976, i32 3}
!293 = !{ptr @.str.107, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3984, i32 3}
!295 = !{ptr @.str.108, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4004, i32 3}
!297 = !{ptr @.str.109, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4034, i32 3}
!299 = !{ptr @brcmf_sdio_buscore_ops, !300, !"brcmf_sdio_buscore_ops", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3938, i32 39}
!301 = !{ptr @__func__.brcmf_sdio_buscoreprep, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3852, i32 3}
!303 = !{ptr @.str.110, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.111, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3861, i32 3}
!306 = !{ptr @.str.112, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3872, i32 3}
!308 = !{ptr @__func__.brcmf_sdio_kso_init, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3498, i32 2}
!310 = !{ptr @.str.113, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3506, i32 3}
!312 = !{ptr @.str.114, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3516, i32 4}
!314 = !{ptr @__func__.brcmf_sdio_drivestrengthinit, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3806, i32 4}
!316 = !{ptr @.str.115, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.116, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3815, i32 3}
!319 = !{ptr @.str.117, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3837, i32 3}
!321 = !{ptr @sdiod_drvstr_tab1_1v8, !322, !"sdiod_drvstr_tab1_1v8", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 569, i32 37}
!323 = !{ptr @sdiod_drvstr_tab6_1v8, !324, !"sdiod_drvstr_tab6_1v8", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 592, i32 37}
!325 = !{ptr @sdiod_drvstr_tab2_3v3, !326, !"sdiod_drvstr_tab2_3v3", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 599, i32 37}
!327 = !{ptr @sdiod_drive_strength_tab5_1v8, !328, !"sdiod_drive_strength_tab5_1v8", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 581, i32 37}
!329 = !{ptr @init_completion.__key, !330, !"__key", i1 false, i1 false}
!330 = !{!"../include/linux/completion.h", i32 87, i32 2}
!331 = !{ptr @.str.118, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @__func__.brcmf_sdio_bus_watchdog, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3669, i32 2}
!334 = !{ptr @.str.119, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3733, i32 5}
!336 = !{ptr @.str.120, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2923, i32 4}
!338 = !{ptr @.str.121, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @brcmf_sdio_readconsole.__UNIQUE_ID_ddebug402, !337, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!340 = !{ptr @.str.122, !337, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.123, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4417, i32 5}
!343 = !{ptr @.str.124, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4418, i32 5}
!345 = !{ptr @brcmf_sdio_fwnames, !346, !"brcmf_sdio_fwnames", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 637, i32 44}
!347 = !{ptr @BRCM_43143_FIRMWARE_BASENAME, !1, !"BRCM_43143_FIRMWARE_BASENAME", i1 false, i1 false}
!348 = !{ptr @BRCM_43241B0_FIRMWARE_BASENAME, !3, !"BRCM_43241B0_FIRMWARE_BASENAME", i1 false, i1 false}
!349 = !{ptr @BRCM_43241B4_FIRMWARE_BASENAME, !5, !"BRCM_43241B4_FIRMWARE_BASENAME", i1 false, i1 false}
!350 = !{ptr @BRCM_43241B5_FIRMWARE_BASENAME, !7, !"BRCM_43241B5_FIRMWARE_BASENAME", i1 false, i1 false}
!351 = !{ptr @BRCM_4329_FIRMWARE_BASENAME, !9, !"BRCM_4329_FIRMWARE_BASENAME", i1 false, i1 false}
!352 = !{ptr @BRCM_4330_FIRMWARE_BASENAME, !11, !"BRCM_4330_FIRMWARE_BASENAME", i1 false, i1 false}
!353 = !{ptr @BRCM_4334_FIRMWARE_BASENAME, !13, !"BRCM_4334_FIRMWARE_BASENAME", i1 false, i1 false}
!354 = !{ptr @BRCM_43340_FIRMWARE_BASENAME, !15, !"BRCM_43340_FIRMWARE_BASENAME", i1 false, i1 false}
!355 = !{ptr @BRCM_4335_FIRMWARE_BASENAME, !17, !"BRCM_4335_FIRMWARE_BASENAME", i1 false, i1 false}
!356 = !{ptr @BRCM_43362_FIRMWARE_BASENAME, !19, !"BRCM_43362_FIRMWARE_BASENAME", i1 false, i1 false}
!357 = !{ptr @BRCM_4339_FIRMWARE_BASENAME, !21, !"BRCM_4339_FIRMWARE_BASENAME", i1 false, i1 false}
!358 = !{ptr @BRCM_43430A0_FIRMWARE_BASENAME, !23, !"BRCM_43430A0_FIRMWARE_BASENAME", i1 false, i1 false}
!359 = !{ptr @BRCM_43430A1_FIRMWARE_BASENAME, !25, !"BRCM_43430A1_FIRMWARE_BASENAME", i1 false, i1 false}
!360 = !{ptr @BRCM_43430B0_FIRMWARE_BASENAME, !28, !"BRCM_43430B0_FIRMWARE_BASENAME", i1 false, i1 false}
!361 = !{ptr @BRCM_43456_FIRMWARE_BASENAME, !33, !"BRCM_43456_FIRMWARE_BASENAME", i1 false, i1 false}
!362 = !{ptr @BRCM_43455_FIRMWARE_BASENAME, !30, !"BRCM_43455_FIRMWARE_BASENAME", i1 false, i1 false}
!363 = !{ptr @BRCM_4354_FIRMWARE_BASENAME, !35, !"BRCM_4354_FIRMWARE_BASENAME", i1 false, i1 false}
!364 = !{ptr @BRCM_4356_FIRMWARE_BASENAME, !38, !"BRCM_4356_FIRMWARE_BASENAME", i1 false, i1 false}
!365 = !{ptr @BRCM_4359_FIRMWARE_BASENAME, !41, !"BRCM_4359_FIRMWARE_BASENAME", i1 false, i1 false}
!366 = !{ptr @BRCM_4373_FIRMWARE_BASENAME, !43, !"BRCM_4373_FIRMWARE_BASENAME", i1 false, i1 false}
!367 = !{ptr @BRCM_43012_FIRMWARE_BASENAME, !46, !"BRCM_43012_FIRMWARE_BASENAME", i1 false, i1 false}
!368 = !{ptr @BRCM_43752_FIRMWARE_BASENAME, !49, !"BRCM_43752_FIRMWARE_BASENAME", i1 false, i1 false}
!369 = !{ptr @__func__.brcmf_sdio_firmware_callback, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4213, i32 2}
!371 = !{ptr @.str.125, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.126, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4251, i32 3}
!374 = !{ptr @.str.127, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4261, i32 2}
!376 = !{ptr @.str.128, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4273, i32 4}
!378 = !{ptr @.str.129, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4371, i32 4}
!380 = !{ptr @.str.130, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4384, i32 3}
!382 = !{ptr @.str.131, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4391, i32 3}
!384 = !{ptr @.str.132, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4407, i32 2}
!386 = !{ptr @__func__.brcmf_sdio_download_firmware, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3395, i32 2}
!388 = !{ptr @.str.133, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.134, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3400, i32 3}
!391 = !{ptr @.str.135, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3408, i32 3}
!393 = !{ptr @.str.136, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3414, i32 3}
!395 = !{ptr @__func__.brcmf_sdio_download_code_file, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3351, i32 2}
!397 = !{ptr @.str.137, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3356, i32 3}
!399 = !{ptr @__func__.brcmf_sdio_verifymemory, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3305, i32 2}
!401 = !{ptr @.str.138, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.139, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3319, i32 4}
!404 = !{ptr @.str.140, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3324, i32 4}
!406 = !{ptr @__func__.brcmf_sdio_download_nvram, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3371, i32 2}
!408 = !{ptr @.str.141, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3376, i32 3}
!410 = !{ptr @__func__.brcmf_sdio_sr_init, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3441, i32 2}
!412 = !{ptr @.str.142, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3460, i32 3}
!414 = !{ptr @.str.143, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3466, i32 3}
!416 = !{ptr @.str.144, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3475, i32 3}
!418 = !{ptr @.str.145, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3482, i32 3}
!420 = !{ptr @.str.146, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3488, i32 2}
!422 = !{ptr @brcmf_sdio_bus_ops, !423, !"brcmf_sdio_bus_ops", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4182, i32 35}
!424 = !{ptr @.str.147, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3554, i32 35}
!426 = !{ptr @.str.148, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3561, i32 35}
!428 = !{ptr @.str.149, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3572, i32 49}
!430 = !{ptr @__func__.brcmf_sdio_bus_stop, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2475, i32 2}
!432 = !{ptr @.str.150, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2512, i32 3}
!434 = !{ptr @__func__.brcmf_sdio_bus_txdata, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2804, i32 2}
!436 = !{ptr @.str.151, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.152, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2822, i32 2}
!439 = !{ptr @.str.153, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2831, i32 3}
!441 = !{ptr @__func__.brcmf_sdio_prec_enq, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2784, i32 4}
!443 = !{ptr @.str.154, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.155, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2791, i32 3}
!446 = !{ptr @qcount, !447, !"qcount", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 538, i32 12}
!448 = !{ptr @__func__.brcmf_sdio_bus_txctl, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2940, i32 2}
!450 = !{ptr @.str.156, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2957, i32 4}
!452 = !{ptr @.str.157, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 2964, i32 3}
!454 = !{ptr @__func__.brcmf_sdio_bus_rxctl, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3253, i32 2}
!456 = !{ptr @.str.158, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3271, i32 3}
!458 = !{ptr @.str.159, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3274, i32 3}
!460 = !{ptr @.str.160, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3277, i32 3}
!462 = !{ptr @.str.161, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3280, i32 3}
!464 = distinct !{null, !465, !"__already_done", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1735, i32 2}
!466 = distinct !{null, !467, !"__already_done", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1743, i32 2}
!468 = !{ptr @__func__.brcmf_sdio_bus_get_memdump, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3608, i32 2}
!470 = !{ptr @.str.163, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.164, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3225, i32 32}
!473 = !{ptr @.str.165, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3226, i32 32}
!475 = !{ptr @.str.166, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3228, i32 21}
!477 = !{ptr @__func__.brcmf_sdio_assert_info, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3092, i32 3}
!479 = !{ptr @.str.167, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.168, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3095, i32 3}
!482 = !{ptr @.str.169, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3114, i32 18}
!484 = !{ptr @__func__.brcmf_sdio_trap_info, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3043, i32 3}
!486 = !{ptr @.str.170, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @.str.171, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3054, i32 7}
!489 = !{ptr @brcmf_sdio_trap_info.__UNIQUE_ID_ddebug403, !490, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3068, i32 3}
!491 = !{ptr @.str.172, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.173, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3180, i32 6}
!494 = !{ptr @__func__.brcmf_sdio_bus_reset, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4159, i32 2}
!496 = !{ptr @.str.174, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 4175, i32 3}
!498 = !{ptr @__func__.brcmf_sdio_checkdied, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3130, i32 3}
!500 = !{ptr @.str.175, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3132, i32 3}
!502 = !{ptr @.str.176, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 3135, i32 3}
!504 = !{ptr @__func__.brcmf_sdio_clkctl, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 922, i32 2}
!506 = !{ptr @.str.177, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 944, i32 4}
!508 = !{ptr @.str.178, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 957, i32 2}
!510 = !{ptr @__func__.brcmf_sdio_sdclk, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 905, i32 2}
!512 = !{ptr @__func__.brcmf_sdio_htclk, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 789, i32 2}
!514 = !{ptr @.str.179, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 806, i32 4}
!516 = !{ptr @.str.180, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 814, i32 4}
!518 = !{ptr @.str.181, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 824, i32 5}
!520 = !{ptr @.str.182, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 831, i32 4}
!522 = !{ptr @.str.183, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 861, i32 4}
!524 = !{ptr @.str.184, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 868, i32 3}
!526 = !{ptr @.str.185, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 873, i32 5}
!528 = !{ptr @.str.186, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 892, i32 3}
!530 = !{ptr @.str.187, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 894, i32 4}
!532 = !{ptr @__func__.brcmf_sdio_bus_sleep, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 969, i32 2}
!534 = !{ptr @.str.188, !533, !"<string literal>", i1 false, i1 false}
!535 = !{ptr @.str.189, !533, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @.str.190, !533, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.191, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 985, i32 5}
!539 = !{ptr @.str.192, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 995, i32 4}
!541 = !{ptr @.str.193, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1011, i32 2}
!543 = !{ptr @.str.194, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 1014, i32 2}
!545 = !{ptr @__func__.brcmf_sdio_kso_control, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 704, i32 2}
!547 = !{ptr @.str.195, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @.str.196, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 766, i32 3}
!550 = !{ptr @.str.197, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c", i32 770, i32 3}
!552 = !{!"sp"}
!553 = !{i32 1, !"wchar_size", i32 2}
!554 = !{i32 1, !"min_enum_size", i32 4}
!555 = !{i32 8, !"branch-target-enforcement", i32 0}
!556 = !{i32 8, !"sign-return-address", i32 0}
!557 = !{i32 8, !"sign-return-address-all", i32 0}
!558 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!559 = !{i32 7, !"uwtable", i32 1}
!560 = !{i32 7, !"frame-pointer", i32 2}
!561 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!562 = !{i8 0, i8 2}
!563 = !{!"auto-init"}
!564 = !{i64 2148253110, i64 2148253136, i64 2148253165, i64 2148253199, i64 2148253230, i64 2148253253}
!565 = !{i64 2158423433}
!566 = !{i64 2148818111, i64 2148818116, i64 2148818129, i64 2148818173, i64 2148818207, i64 2148818228}
!567 = !{i64 2158421901}
!568 = !{i64 2148507636}
!569 = !{i64 751740, i64 751757, i64 751781, i64 751807, i64 751825}
!570 = !{i64 2148508006}
!571 = !{!"branch_weights", i32 2000, i32 1}
!572 = !{i64 2158357140}
!573 = !{!"branch_weights", i32 1, i32 2000}
!574 = !{i64 2155194935, i64 2155195423, i64 2155194972, i64 2155195028, i64 2155195062, i64 2155195086, i64 2155195127, i64 2155195148, i64 2155195176, i64 2155195210}
!575 = !{i64 2158361398}
!576 = !{i64 2158141666}
!577 = !{i64 2158141873}
!578 = !{i64 2149389930}
!579 = !{i64 2149390966}
!580 = !{i64 2158177572}
!581 = !{i64 2158177783}
!582 = !{i64 2148244972, i64 2148244998, i64 2148245027, i64 2148245061, i64 2148245092, i64 2148245115}
!583 = !{i64 2158369053}
!584 = !{i64 2158371545}
!585 = !{i64 2158311836}
!586 = !{i64 2158316685}
