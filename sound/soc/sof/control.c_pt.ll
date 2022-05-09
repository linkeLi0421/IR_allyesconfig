; ModuleID = '/llk/IR_all_yes/sound/soc/sof/control.c_pt.bc'
source_filename = "../sound/soc/sof/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.2, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.2 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_sof_control = type { ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, %struct.list_head, %struct.snd_sof_led_control, i8 }
%struct.snd_sof_led_control = type { i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.sof_ipc_ctrl_data = type { %struct.sof_ipc_reply, i32, i32, i32, i32, %struct.sof_ipc_host_buffer, i32, i32, i32, [6 x i32], %union.anon.92 }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%union.anon.92 = type { [0 x %struct.sof_ipc_ctrl_value_chan] }
%struct.sof_ipc_ctrl_value_chan = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon, [64 x i8] }
%union.anon = type { %struct.anon.1, [40 x i8] }
%struct.anon.1 = type { i32, i32, [64 x i8], i64, i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.snd_ctl_tlv = type { i32, i32, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Volume\00", [24 x i8] zeroinitializer }, align 32
@snd_sof_bytes_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_bytes_get = private unnamed_addr constant [18 x i8] c"snd_sof_bytes_get\00", align 1
@snd_sof_bytes_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.snd_sof_bytes_get, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: data max %d exceeds ucontrol data array size\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sof/control.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sof_bytes_get._entry_ptr = internal global ptr @snd_sof_bytes_get._entry, section ".printk_index", align 4
@snd_sof_bytes_get._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_get._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.snd_sof_bytes_get, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error: %u bytes of control data is invalid, max is %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_sof_bytes_get._entry_ptr.9 = internal global ptr @snd_sof_bytes_get._entry.7, section ".printk_index", align 4
@snd_sof_bytes_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_bytes_put = private unnamed_addr constant [18 x i8] c"snd_sof_bytes_put\00", align 1
@snd_sof_bytes_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.snd_sof_bytes_put, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_bytes_put._entry_ptr = internal global ptr @snd_sof_bytes_put._entry, section ".printk_index", align 4
@snd_sof_bytes_put._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_put._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.snd_sof_bytes_put, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error: data size too big %u bytes max is %zu\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_sof_bytes_put._entry_ptr.13 = internal global ptr @snd_sof_bytes_put._entry.11, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_bytes_ext_put = private unnamed_addr constant [22 x i8] c"snd_sof_bytes_ext_put\00", align 1
@snd_sof_bytes_ext_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"error: inconsistent TLV, data %d + header %zu > %d\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr = internal global ptr @snd_sof_bytes_ext_put._entry, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: Bytes data size %d exceeds max %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr.18 = internal global ptr @snd_sof_bytes_ext_put._entry.16, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: incorrect numid %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr.22 = internal global ptr @snd_sof_bytes_ext_put._entry.20, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: Wrong ABI magic 0x%08x.\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr.26 = internal global ptr @snd_sof_bytes_ext_put._entry.24, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: Incompatible ABI version 0x%08x.\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr.30 = internal global ptr @snd_sof_bytes_ext_put._entry.28, section ".printk_index", align 4
@snd_sof_bytes_ext_put._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.snd_sof_bytes_ext_put, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: Mismatch in ABI data size (truncated?).\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_put._entry_ptr.34 = internal global ptr @snd_sof_bytes_ext_put._entry.32, section ".printk_index", align 4
@snd_sof_bytes_ext_volatile_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_bytes_ext_volatile_get = private unnamed_addr constant [31 x i8] c"snd_sof_bytes_ext_volatile_get\00", align 1
@snd_sof_bytes_ext_volatile_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.snd_sof_bytes_ext_volatile_get, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: bytes_ext get failed to resume %d\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_volatile_get._entry_ptr = internal global ptr @snd_sof_bytes_ext_volatile_get._entry, section ".printk_index", align 4
@snd_sof_bytes_ext_volatile_get._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_volatile_get._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.snd_sof_bytes_ext_volatile_get, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: user data size %d exceeds max size %zu.\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_volatile_get._entry_ptr.39 = internal global ptr @snd_sof_bytes_ext_volatile_get._entry.37, section ".printk_index", align 4
@snd_sof_bytes_ext_volatile_get._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_volatile_get._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.snd_sof_bytes_ext_volatile_get, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: bytes_ext get failed to idle %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_volatile_get._entry_ptr.43 = internal global ptr @snd_sof_bytes_ext_volatile_get._entry.41, section ".printk_index", align 4
@snd_sof_bytes_ext_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_bytes_ext_get = private unnamed_addr constant [22 x i8] c"snd_sof_bytes_ext_get\00", align 1
@snd_sof_bytes_ext_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.snd_sof_bytes_ext_get, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_bytes_ext_get._entry_ptr = internal global ptr @snd_sof_bytes_ext_get._entry, section ".printk_index", align 4
@snd_sof_control_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Component data is not supported in control notification\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_sof_control_notify\00", [41 x i8] zeroinitializer }, align 32
@snd_sof_control_notify._entry_ptr = internal global ptr @snd_sof_control_notify._entry, section ".printk_index", align 4
@snd_sof_control_notify._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: unknown cmd %u\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_sof_control_notify._entry_ptr.48 = internal global ptr @snd_sof_control_notify._entry.46, section ".printk_index", align 4
@snd_sof_control_notify._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: component notification size mismatch\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_sof_control_notify._entry_ptr.51 = internal global ptr @snd_sof_control_notify._entry.49, section ".printk_index", align 4
@snd_sof_refresh_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: failed to get control data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_sof_refresh_control\00", [40 x i8] zeroinitializer }, align 32
@snd_sof_refresh_control._entry_ptr = internal global ptr @snd_sof_refresh_control._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_sof_update_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: cdata binary size mismatch %u - %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_sof_update_control\00", [41 x i8] zeroinitializer }, align 32
@snd_sof_update_control._entry_ptr = internal global ptr @snd_sof_update_control._entry, section ".printk_index", align 4
@snd_sof_update_control._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: cdata channel count mismatch %u - %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_sof_update_control._entry_ptr.61 = internal global ptr @snd_sof_update_control._entry.59, section ".printk_index", align 4
@switch.table.snd_sof_control_notify = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 3, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 152, i32 54 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 270, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 278, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 304, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 312, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 357, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 364, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 371, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 381, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 388, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 395, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 429, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 444, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 472, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 507, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 576, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 605, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 656, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 88, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 230, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 214, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 156, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 541, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [27 x i8] c"../sound/soc/sof/control.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 550, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [36 x i8] c"switch.table.snd_sof_control_notify\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @snd_sof_bytes_ext_get._entry, ptr @snd_sof_bytes_ext_get._entry_ptr, ptr @snd_sof_bytes_ext_put._entry, ptr @snd_sof_bytes_ext_put._entry.16, ptr @snd_sof_bytes_ext_put._entry.20, ptr @snd_sof_bytes_ext_put._entry.24, ptr @snd_sof_bytes_ext_put._entry.28, ptr @snd_sof_bytes_ext_put._entry.32, ptr @snd_sof_bytes_ext_put._entry_ptr, ptr @snd_sof_bytes_ext_put._entry_ptr.18, ptr @snd_sof_bytes_ext_put._entry_ptr.22, ptr @snd_sof_bytes_ext_put._entry_ptr.26, ptr @snd_sof_bytes_ext_put._entry_ptr.30, ptr @snd_sof_bytes_ext_put._entry_ptr.34, ptr @snd_sof_bytes_ext_volatile_get._entry, ptr @snd_sof_bytes_ext_volatile_get._entry.37, ptr @snd_sof_bytes_ext_volatile_get._entry.41, ptr @snd_sof_bytes_ext_volatile_get._entry_ptr, ptr @snd_sof_bytes_ext_volatile_get._entry_ptr.39, ptr @snd_sof_bytes_ext_volatile_get._entry_ptr.43, ptr @snd_sof_bytes_get._entry, ptr @snd_sof_bytes_get._entry.7, ptr @snd_sof_bytes_get._entry_ptr, ptr @snd_sof_bytes_get._entry_ptr.9, ptr @snd_sof_bytes_put._entry, ptr @snd_sof_bytes_put._entry.11, ptr @snd_sof_bytes_put._entry_ptr, ptr @snd_sof_bytes_put._entry_ptr.13, ptr @snd_sof_control_notify._entry, ptr @snd_sof_control_notify._entry.46, ptr @snd_sof_control_notify._entry.49, ptr @snd_sof_control_notify._entry_ptr, ptr @snd_sof_control_notify._entry_ptr.48, ptr @snd_sof_control_notify._entry_ptr.51, ptr @snd_sof_refresh_control._entry, ptr @snd_sof_refresh_control._entry_ptr, ptr @snd_sof_update_control._entry, ptr @snd_sof_update_control._entry.59, ptr @snd_sof_update_control._entry_ptr, ptr @snd_sof_update_control._entry_ptr.61, ptr @.str, ptr @snd_sof_bytes_get._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_sof_bytes_get._rs.6, ptr @.str.8, ptr @snd_sof_bytes_put._rs, ptr @snd_sof_bytes_put._rs.10, ptr @.str.12, ptr @snd_sof_bytes_ext_put._rs, ptr @.str.14, ptr @snd_sof_bytes_ext_put._rs.15, ptr @.str.17, ptr @snd_sof_bytes_ext_put._rs.19, ptr @.str.21, ptr @snd_sof_bytes_ext_put._rs.23, ptr @.str.25, ptr @snd_sof_bytes_ext_put._rs.27, ptr @.str.29, ptr @snd_sof_bytes_ext_put._rs.31, ptr @.str.33, ptr @snd_sof_bytes_ext_volatile_get._rs, ptr @.str.35, ptr @snd_sof_bytes_ext_volatile_get._rs.36, ptr @.str.38, ptr @snd_sof_bytes_ext_volatile_get._rs.40, ptr @.str.42, ptr @snd_sof_bytes_ext_get._rs, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @switch.table.snd_sof_control_notify], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_get._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_get._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_put._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_put._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_put._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_volatile_get._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_bytes_ext_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_control_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_control_notify._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_control_notify._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_refresh_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_update_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_update_control._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_sof_control_notify to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control_data, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  %comp_data_dirty.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %comp_data_dirty.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.snd_sof_refresh_control.exit_crit_edge, label %if.end.i

entry.snd_sof_refresh_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 18
  %15 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

pm_runtime_active.exit.i:                         ; preds = %if.end.i
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 15
  %17 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge

pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

pm_runtime_active.exit.i.if.end3.i_crit_edge:     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %pm_runtime_active.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %18 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 4607827, ptr %18, align 1
  %abi.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 1, i32 1
  %20 = ptrtoint ptr %abi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 50405376, ptr %abi.i, align 1
  %21 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %comp_data_dirty.i, align 4
  %call6.i = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.snd_sof_refresh_control.exit_crit_edge

if.end3.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %call6.i) #11
  %24 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %comp_data_dirty.i, align 4
  br label %snd_sof_refresh_control.exit

snd_sof_refresh_control.exit:                     ; preds = %do.end.i, %if.end3.i.snd_sof_refresh_control.exit_crit_edge, %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge, %entry.snd_sof_refresh_control.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.not = icmp eq i32 %8, 0
  br i1 %cmp10.not, label %snd_sof_refresh_control.exit.for.end_crit_edge, label %for.body.lr.ph

snd_sof_refresh_control.exit.for.end_crit_edge:   ; preds = %snd_sof_refresh_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %snd_sof_refresh_control.exit
  %25 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %volume_table = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 9
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ipc_to_mixer.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ipc_to_mixer.exit.for.body_crit_edge ]
  %value = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %25, i32 0, i32 %i.011, i32 1
  %26 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %value, align 1
  %28 = ptrtoint ptr %volume_table to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %volume_table, align 4
  %30 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %31)
  %cmp7.i = icmp ult i32 %31, 2147483647
  br i1 %cmp7.i, label %for.body.for.body.i_crit_edge, label %for.body.ipc_to_mixer.exit_crit_edge

for.body.ipc_to_mixer.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_to_mixer.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %29, i32 %i.08.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp1.not.i = icmp ult i32 %33, %27
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.ipc_to_mixer.exit_crit_edge

for.body.i.ipc_to_mixer.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_to_mixer.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %i.08.i, %31
  br i1 %exitcond.not.i, label %for.inc.i.ipc_to_mixer.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ipc_to_mixer.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_to_mixer.exit

ipc_to_mixer.exit:                                ; preds = %for.inc.i.ipc_to_mixer.exit_crit_edge, %for.body.i.ipc_to_mixer.exit_crit_edge, %for.body.ipc_to_mixer.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %for.body.ipc_to_mixer.exit_crit_edge ], [ %31, %for.inc.i.ipc_to_mixer.exit_crit_edge ], [ %i.08.i, %for.body.i.ipc_to_mixer.exit_crit_edge ]
  %arrayidx2 = getelementptr [128 x i32], ptr %value1, i32 0, i32 %i.011
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %ipc_to_mixer.exit.for.end_crit_edge, label %ipc_to_mixer.exit.for.body_crit_edge

ipc_to_mixer.exit.for.body_crit_edge:             ; preds = %ipc_to_mixer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

ipc_to_mixer.exit.for.end_crit_edge:              ; preds = %ipc_to_mixer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %ipc_to_mixer.exit.for.end_crit_edge, %snd_sof_refresh_control.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27.not = icmp eq i32 %8, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control_data, align 4
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %volume_table = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 9
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %10, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %lor.end.for.body_crit_edge, %for.body.lr.ph
  %change.0.off029 = phi i1 [ false, %for.body.lr.ph ], [ %21, %lor.end.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %lor.end.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value2, i32 0, i32 %i.028
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %volume_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %volume_table, align 4
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  %add = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.not.i = icmp ult i32 %13, %add
  %sub.pn.i = select i1 %cmp.not.i, i32 %13, i32 %17
  %retval.0.in.i = getelementptr i32, ptr %15, i32 %sub.pn.i
  %18 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  br i1 %change.0.off029, label %for.body.lor.end_crit_edge, label %lor.rhs

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %value4 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.028, i32 1
  %19 = ptrtoint ptr %value4 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %value4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %20)
  %cmp5 = icmp ne i32 %retval.0.i, %20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %21 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %cmp5, %lor.rhs ]
  %arrayidx6 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.028
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %i.028, ptr %arrayidx6, align 1
  %value8 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.028, i32 1
  %23 = ptrtoint ptr %value8 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %retval.0.i, ptr %value8, align 1
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %lor.end.for.end_crit_edge, label %lor.end.for.body_crit_edge

lor.end.for.body_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.end.for.end_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %lor.end.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %21, %lor.end.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %for.end.if.then_crit_edge, label %pm_runtime_active.exit

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_runtime_active.exit:                           ; preds = %for.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then_crit_edge, label %pm_runtime_active.exit.if.end_crit_edge

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_active.exit.if.then_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %pm_runtime_active.exit.if.then_crit_edge, %for.end.if.then_crit_edge
  %call10 = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_active.exit.if.end_crit_edge
  %conv = zext i1 %change.0.off0.lcssa to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_ipc_set_get_comp_data(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_sof_volume_info(ptr noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_channels, align 4
  %platform_max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %platform_max1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %platform_max1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max, align 4
  %11 = ptrtoint ptr %platform_max1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %platform_max1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = phi i32 [ %10, %if.then ], [ %8, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str)
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.else, %land.lhs.true.if.end7_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 1, %land.lhs.true.if.end7_crit_edge ]
  %type6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %13 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %type6, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %value, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %sub = sub i32 %12, %17
  %max10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %max10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %max10, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control_data, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  %comp_data_dirty.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %comp_data_dirty.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.snd_sof_refresh_control.exit_crit_edge, label %if.end.i

entry.snd_sof_refresh_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 18
  %15 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

pm_runtime_active.exit.i:                         ; preds = %if.end.i
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 15
  %17 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge

pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

pm_runtime_active.exit.i.if.end3.i_crit_edge:     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %pm_runtime_active.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %18 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 4607827, ptr %18, align 1
  %abi.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 1, i32 1
  %20 = ptrtoint ptr %abi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 50405376, ptr %abi.i, align 1
  %21 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %comp_data_dirty.i, align 4
  %call6.i = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.snd_sof_refresh_control.exit_crit_edge

if.end3.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %call6.i) #11
  %24 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %comp_data_dirty.i, align 4
  br label %snd_sof_refresh_control.exit

snd_sof_refresh_control.exit:                     ; preds = %do.end.i, %if.end3.i.snd_sof_refresh_control.exit_crit_edge, %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge, %entry.snd_sof_refresh_control.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  br i1 %cmp8.not, label %snd_sof_refresh_control.exit.for.end_crit_edge, label %for.body.lr.ph

snd_sof_refresh_control.exit.for.end_crit_edge:   ; preds = %snd_sof_refresh_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %snd_sof_refresh_control.exit
  %25 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %value = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %25, i32 0, i32 %i.09, i32 1
  %26 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %value, align 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value1, i32 0, i32 %i.09
  %28 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %snd_sof_refresh_control.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp31.not = icmp eq i32 %8, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control_data, align 4
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %10, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %lor.end.for.body_crit_edge, %for.body.lr.ph
  %change.0.off033 = phi i1 [ false, %for.body.lr.ph ], [ %16, %lor.end.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %lor.end.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value2, i32 0, i32 %i.032
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br i1 %change.0.off033, label %for.body.lor.end_crit_edge, label %lor.rhs

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %value4 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.032, i32 1
  %14 = ptrtoint ptr %value4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %value4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5 = icmp ne i32 %13, %15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %16 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %cmp5, %lor.rhs ]
  %arrayidx6 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.032
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %i.032, ptr %arrayidx6, align 1
  %value8 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.032, i32 1
  %18 = ptrtoint ptr %value8 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %13, ptr %value8, align 1
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %lor.end.for.end_crit_edge, label %lor.end.for.body_crit_edge

lor.end.for.body_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.end.for.end_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %lor.end.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %16, %lor.end.for.end_crit_edge ]
  %led_ctl = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 11
  %19 = ptrtoint ptr %led_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %led_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  %index.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %index2.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index2.i.i, align 4
  %sub.i.i = sub i32 %22, %24
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %25 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i, align 4
  %27 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i, i32 %26) #8, !srcloc !124
  %and.i.i = and i32 %27, %sub.i.i
  %shl.i = shl nuw i32 1, %and.i.i
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %28 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp25.i = icmp sgt i32 %29, 0
  br i1 %cmp25.i, label %if.then.for.body.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [128 x i32], ptr %value.i, i32 0, i32 %i.026.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %temp.0.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ 0, %for.cond.i.for.end.i_crit_edge ], [ %shl.i, %for.body.i.for.end.i_crit_edge ]
  %led_value.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %led_value.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %led_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.0.i, i32 %33)
  %cmp1.i = icmp eq i32 %temp.0.i, %33
  br i1 %cmp1.i, label %for.end.i.if.end_crit_edge, label %if.end3.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end3.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %led_value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %temp.0.i, ptr %led_value.i, align 4
  %direction.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.i = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %temp.0.i)
  %tobool9.not.i = icmp eq i32 %temp.0.i, 0
  %cond.i = zext i1 %tobool9.not.i to i32
  %..i = zext i1 %tobool7.not.i to i32
  tail call void @ledtrig_audio_set(i32 noundef %..i, i32 noundef %cond.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %for.end.i.if.end_crit_edge, %for.end.if.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 12, i32 18
  %39 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  br i1 %cmp.i, label %if.end.if.then10_crit_edge, label %pm_runtime_active.exit

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

pm_runtime_active.exit:                           ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 12, i32 15
  %41 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then10_crit_edge, label %pm_runtime_active.exit.if.end12_crit_edge

pm_runtime_active.exit.if.end12_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pm_runtime_active.exit.if.then10_crit_edge:       ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %pm_runtime_active.exit.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %call11 = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext true) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %pm_runtime_active.exit.if.end12_crit_edge
  %conv = zext i1 %change.0.off0.lcssa to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_enum_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 8, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %control_data, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  %comp_data_dirty.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %comp_data_dirty.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.snd_sof_refresh_control.exit_crit_edge, label %if.end.i

entry.snd_sof_refresh_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 18
  %15 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

pm_runtime_active.exit.i:                         ; preds = %if.end.i
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 15
  %17 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge

pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

pm_runtime_active.exit.i.if.end3.i_crit_edge:     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %pm_runtime_active.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %18 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 4607827, ptr %18, align 1
  %abi.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 1, i32 1
  %20 = ptrtoint ptr %abi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 50405376, ptr %abi.i, align 1
  %21 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %comp_data_dirty.i, align 4
  %call6.i = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.snd_sof_refresh_control.exit_crit_edge

if.end3.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %call6.i) #11
  %24 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %comp_data_dirty.i, align 4
  br label %snd_sof_refresh_control.exit

snd_sof_refresh_control.exit:                     ; preds = %do.end.i, %if.end3.i.snd_sof_refresh_control.exit_crit_edge, %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge, %entry.snd_sof_refresh_control.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  br i1 %cmp8.not, label %snd_sof_refresh_control.exit.for.end_crit_edge, label %for.body.lr.ph

snd_sof_refresh_control.exit.for.end_crit_edge:   ; preds = %snd_sof_refresh_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %snd_sof_refresh_control.exit
  %25 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %6, i32 0, i32 10
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %value = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %25, i32 0, i32 %i.09, i32 1
  %26 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %value, align 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value1, i32 0, i32 %i.09
  %28 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %snd_sof_refresh_control.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_enum_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 8, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.not = icmp eq i32 %8, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control_data, align 4
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %10, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %lor.end.for.body_crit_edge, %for.body.lr.ph
  %change.0.off026 = phi i1 [ false, %for.body.lr.ph ], [ %16, %lor.end.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %lor.end.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value2, i32 0, i32 %i.025
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  br i1 %change.0.off026, label %for.body.lor.end_crit_edge, label %lor.rhs

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %value4 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.025, i32 1
  %14 = ptrtoint ptr %value4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %value4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5 = icmp ne i32 %13, %15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %16 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %cmp5, %lor.rhs ]
  %arrayidx6 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.025
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %i.025, ptr %arrayidx6, align 1
  %value8 = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %11, i32 0, i32 %i.025, i32 1
  %18 = ptrtoint ptr %value8 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %13, ptr %value8, align 1
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %lor.end.for.end_crit_edge, label %lor.end.for.body_crit_edge

lor.end.for.body_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.end.for.end_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %lor.end.for.end_crit_edge, %entry.for.end_crit_edge
  %change.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %16, %lor.end.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 18
  %21 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %for.end.if.then_crit_edge, label %pm_runtime_active.exit

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_runtime_active.exit:                           ; preds = %for.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 15
  %23 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then_crit_edge, label %pm_runtime_active.exit.if.end_crit_edge

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_active.exit.if.then_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %pm_runtime_active.exit.if.then_crit_edge, %for.end.if.then_crit_edge
  %call9 = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_active.exit.if.end_crit_edge
  %conv = zext i1 %change.0.off0.lcssa to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_bytes_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_bytes_ext, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control_data, align 4
  %9 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %comp_data_dirty.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 12
  %10 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %comp_data_dirty.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.snd_sof_refresh_control.exit_crit_edge, label %if.end.i

entry.snd_sof_refresh_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

pm_runtime_active.exit.i:                         ; preds = %if.end.i
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge

pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

pm_runtime_active.exit.i.if.end3.i_crit_edge:     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %pm_runtime_active.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 4607827, ptr %9, align 1
  %abi.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 1
  %18 = ptrtoint ptr %abi.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 50405376, ptr %abi.i, align 1
  %19 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %comp_data_dirty.i, align 4
  %call6.i = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.snd_sof_refresh_control.exit_crit_edge

if.end3.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.52, i32 noundef %call6.i) #11
  %22 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %comp_data_dirty.i, align 4
  br label %snd_sof_refresh_control.exit

snd_sof_refresh_control.exit:                     ; preds = %do.end.i, %if.end3.i.snd_sof_refresh_control.exit_crit_edge, %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge, %entry.snd_sof_refresh_control.exit_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %24)
  %cmp = icmp ugt i32 %24, 512
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %snd_sof_refresh_control.exit
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_get._rs, ptr noundef nonnull @__func__.snd_sof_bytes_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %28) #11
  br label %cleanup

if.end7:                                          ; preds = %snd_sof_refresh_control.exit
  %size8 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %size8 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %size8, align 1
  %sub = add nsw i32 %24, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub)
  %cmp10 = icmp ugt i32 %30, %sub
  br i1 %cmp10, label %do.body12, label %if.end26

do.body12:                                        ; preds = %if.end7
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_get._rs.6, ptr noundef nonnull @__func__.snd_sof_bytes_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev19, align 4
  %33 = ptrtoint ptr %size8 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %size8, align 1
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %sub22 = add i32 %36, -32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %34, i32 noundef %sub22) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %30, 32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %37 = call ptr @memcpy(ptr %value, ptr %9, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end18, %do.body12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end18 ], [ -22, %do.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_bytes_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_bytes_ext, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control_data, align 4
  %9 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp = icmp ugt i32 %11, 512
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_put._rs, ptr noundef nonnull @__func__.snd_sof_bytes_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %15) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %size8 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %size8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %size8, align 1
  %sub = add nsw i32 %11, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub)
  %cmp10 = icmp ugt i32 %17, %sub
  br i1 %cmp10, label %do.body12, label %if.end26

do.body12:                                        ; preds = %if.end7
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_put._rs.10, ptr noundef nonnull @__func__.snd_sof_bytes_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  %20 = ptrtoint ptr %size8 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %size8, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %sub22 = add i32 %23, -32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %sub22) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end7
  %add = add i32 %17, 32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %9, ptr %value, i32 %add)
  %dev29 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev29, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 18
  %27 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.end26.if.then31_crit_edge, label %pm_runtime_active.exit

if.end26.if.then31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

pm_runtime_active.exit:                           ; preds = %if.end26
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 15
  %29 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then31_crit_edge, label %pm_runtime_active.exit.cleanup_crit_edge

pm_runtime_active.exit.cleanup_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pm_runtime_active.exit.if.then31_crit_edge:       ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %pm_runtime_active.exit.if.then31_crit_edge, %if.end26.if.then31_crit_edge
  %call32 = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %pm_runtime_active.exit.cleanup_crit_edge, %do.end18, %do.body12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end18 ], [ -22, %do.body12.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %pm_runtime_active.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_bytes_ext_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %binary_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.snd_ctl_tlv, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_bytes_ext, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #8
  %9 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %header, align 4, !annotation !125
  %10 = getelementptr inbounds %struct.snd_ctl_tlv, ptr %header, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %binary_data, i32 8, i32 -1226833920) #12, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %header, i32 noundef 8) #8
  %13 = call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !128
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %header, ptr noundef %binary_data, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i159 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i159
  %add.ptr.i.i = getelementptr i8, ptr %header, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i159)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  %add = add i32 %18, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp4 = icmp ugt i32 %add, %size
  br i1 %cmp4, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end3
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef %22, i32 noundef 8, i32 noundef %size) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %24)
  %cmp16 = icmp ugt i32 %18, %24
  br i1 %cmp16, label %do.body18, label %if.end31

do.body18:                                        ; preds = %if.end14
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs.15, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.end24

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev25, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %10, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.17, i32 noundef %28, i32 noundef %30) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  %31 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %header, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 3
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp32.not = icmp eq i32 %32, %34
  br i1 %cmp32.not, label %if.end46, label %do.body34

do.body34:                                        ; preds = %if.end31
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs.19, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %do.end40

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %35 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev41, align 4
  %37 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %header, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %38) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %39 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %tlv = getelementptr inbounds %struct.snd_ctl_tlv, ptr %binary_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.i.i = icmp slt i32 %18, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end46
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end46
  call void @__check_object_size(ptr noundef %39, i32 noundef %18, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 156) #8
  %call.i.i138 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i138, label %if.then.i.i.i.if.end.i.i151_crit_edge, label %land.lhs.true.i.i141

if.then.i.i.i.if.end.i.i151_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i151

land.lhs.true.i.i141:                             ; preds = %if.then.i.i.i
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %tlv, i32 %18, i32 -1226833920) #12, !srcloc !126
  %asmresult.i.i139 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i139)
  %cmp.i6.i140 = icmp eq i32 %asmresult.i.i139, 0
  br i1 %cmp.i6.i140, label %if.then.i7.i148, label %land.lhs.true.i.i141.if.end.i.i151_crit_edge, !prof !127

land.lhs.true.i.i141.if.end.i.i151_crit_edge:     ; preds = %land.lhs.true.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i151

if.then.i7.i148:                                  ; preds = %land.lhs.true.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef %18) #8
  %41 = call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i.i143 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i143 to ptr
  %cpu_domain.i.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i144) #6, !srcloc !128
  %and.i.i.i.i145 = and i32 %43, -13
  %or.i.i.i.i146 = or i32 %and.i.i.i.i145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i146) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %call1.i.i.i147 = call i32 @arm_copy_from_user(ptr noundef %39, ptr noundef %tlv, i32 noundef %18) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  br label %if.end.i.i151

if.end.i.i151:                                    ; preds = %if.then.i7.i148, %land.lhs.true.i.i141.if.end.i.i151_crit_edge, %if.then.i.i.i.if.end.i.i151_crit_edge
  %res.0.i.i149 = phi i32 [ %18, %if.then.i.i.i.if.end.i.i151_crit_edge ], [ %call1.i.i.i147, %if.then.i7.i148 ], [ %18, %land.lhs.true.i.i141.if.end.i.i151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i149)
  %tobool4.not.i.i150 = icmp eq i32 %res.0.i.i149, 0
  br i1 %tobool4.not.i.i150, label %if.end52, label %if.then11.i.i154, !prof !127

if.then11.i.i154:                                 ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i152 = sub i32 %18, %res.0.i.i149
  %add.ptr.i.i153 = getelementptr i8, ptr %39, i32 %sub.i.i152
  %44 = call ptr @memset(ptr %add.ptr.i.i153, i32 0, i32 %res.0.i.i149)
  br label %cleanup

if.end52:                                         ; preds = %if.end.i.i151
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4607827, i32 %46)
  %cmp54.not = icmp eq i32 %46, 4607827
  br i1 %cmp54.not, label %if.end69, label %do.body56

do.body56:                                        ; preds = %if.end52
  %call57 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs.23, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end62

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %47 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev63, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %39, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.25, i32 noundef %50) #11
  br label %cleanup

if.end69:                                         ; preds = %if.end52
  %abi = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 1
  %51 = ptrtoint ptr %abi to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %abi, align 1
  %shr.mask = and i32 %52, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %shr.mask)
  %cmp71.not = icmp eq i32 %shr.mask, 50331648
  br i1 %cmp71.not, label %if.end86, label %do.body73

do.body73:                                        ; preds = %if.end69
  %call74 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs.27, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.body73.cleanup_crit_edge, label %do.end79

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %53 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev80, align 4
  %55 = ptrtoint ptr %abi to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %abi, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.29, i32 noundef %56) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end69
  %size88 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %size88 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %size88, align 1
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %2, align 4
  %sub = add i32 %60, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %sub)
  %cmp90 = icmp ugt i32 %58, %sub
  br i1 %cmp90, label %do.body92, label %if.end103

do.body92:                                        ; preds = %if.end86
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_put._rs.31, ptr noundef nonnull @__func__.snd_sof_bytes_ext_put) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.cleanup_crit_edge, label %do.end98

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %dev99 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %61 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end103:                                        ; preds = %if.end86
  %dev104 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %63 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev104, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 12, i32 18
  %65 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i = icmp eq i32 %66, 0
  br i1 %cmp.i, label %if.end103.if.then106_crit_edge, label %pm_runtime_active.exit

if.end103.if.then106_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

pm_runtime_active.exit:                           ; preds = %if.end103
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 12, i32 15
  %67 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then106_crit_edge, label %pm_runtime_active.exit.cleanup_crit_edge

pm_runtime_active.exit.cleanup_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pm_runtime_active.exit.if.then106_crit_edge:      ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then106:                                       ; preds = %pm_runtime_active.exit.if.then106_crit_edge, %if.end103.if.then106_crit_edge
  %call107 = call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %pm_runtime_active.exit.cleanup_crit_edge, %do.end98, %do.body92.cleanup_crit_edge, %do.end79, %do.body73.cleanup_crit_edge, %do.end62, %do.body56.cleanup_crit_edge, %if.then11.i.i154, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %do.end40, %do.body34.cleanup_crit_edge, %do.end24, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end24 ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %do.end40 ], [ -22, %do.body34.cleanup_crit_edge ], [ -22, %do.end62 ], [ -22, %do.body56.cleanup_crit_edge ], [ -22, %do.end79 ], [ -22, %do.body73.cleanup_crit_edge ], [ -22, %do.end98 ], [ -22, %do.body92.cleanup_crit_edge ], [ 0, %if.then106 ], [ 0, %pm_runtime_active.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i154 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_bytes_ext_volatile_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %binary_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.snd_ctl_tlv, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_bytes_ext, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #8
  %9 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %header, align 4, !annotation !125
  %10 = getelementptr inbounds %struct.snd_ctl_tlv, ptr %header, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_volatile_get._rs, ptr noundef nonnull @__func__.snd_sof_bytes_ext_volatile_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %call.i) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !132
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end11.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %19 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 4607827, ptr %19, align 1
  %abi = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 1
  %21 = ptrtoint ptr %abi to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 50405376, ptr %abi, align 1
  %call15 = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.out_crit_edge, label %if.end18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end13
  %size20 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %size20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size20, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %sub21 = add i32 %25, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub21)
  %cmp22 = icmp ugt i32 %23, %sub21
  br i1 %cmp22, label %do.body24, label %if.end39

do.body24:                                        ; preds = %if.end18
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_volatile_get._rs.36, ptr noundef nonnull @__func__.snd_sof_bytes_ext_volatile_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body24.out_crit_edge, label %do.end30

do.body24.out_crit_edge:                          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %size20 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %size20, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %sub35 = add i32 %31, -32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.38, i32 noundef %29, i32 noundef %sub35) #11
  br label %out

if.end39:                                         ; preds = %if.end18
  %add = add i32 %23, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp42 = icmp ugt i32 %add, %sub
  br i1 %cmp42, label %if.end39.out_crit_edge, label %if.end44

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end44:                                         ; preds = %if.end39
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 3
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %cmd, align 1
  %34 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %header, align 4
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %10, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end44.out_crit_edge, label %if.end.i.i

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %if.end44
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %binary_data, i32 8, i32 -1226833920) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %header, i32 noundef 8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %binary_data, ptr noundef nonnull %header, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool46.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool46.not, label %if.end48, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end48:                                         ; preds = %copy_to_user.exit
  %tlv = getelementptr inbounds %struct.snd_ctl_tlv, ptr %binary_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end48
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %out

if.then.i.i.i:                                    ; preds = %if.end48
  call void @__check_object_size(ptr noundef %19, i32 noundef %add, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 174) #8
  %call.i.i111 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i111, label %if.then.i.i.i.copy_to_user.exit119_crit_edge, label %if.end.i.i114

if.then.i.i.i.copy_to_user.exit119_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit119

if.end.i.i114:                                    ; preds = %if.then.i.i.i
  %37 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %tlv, i32 %add, i32 -1226833920) #12, !srcloc !134
  %asmresult.i.i112 = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112)
  %cmp.i6.i113 = icmp eq i32 %asmresult.i.i112, 0
  br i1 %cmp.i6.i113, label %if.then2.i.i117, label %if.end.i.i114.copy_to_user.exit119_crit_edge

if.end.i.i114.copy_to_user.exit119_crit_edge:     ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit119

if.then2.i.i117:                                  ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i115 = call zeroext i1 @__kasan_check_read(ptr noundef %19, i32 noundef %add) #8
  %call.i12.i.i116 = call i32 @arm_copy_to_user(ptr noundef %tlv, ptr noundef %19, i32 noundef %add) #8
  br label %copy_to_user.exit119

copy_to_user.exit119:                             ; preds = %if.then2.i.i117, %if.end.i.i114.copy_to_user.exit119_crit_edge, %if.then.i.i.i.copy_to_user.exit119_crit_edge
  %n.addr.0.i118 = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit119_crit_edge ], [ %call.i12.i.i116, %if.then2.i.i117 ], [ %add, %if.end.i.i114.copy_to_user.exit119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i118)
  %tobool52.not = icmp eq i32 %n.addr.0.i118, 0
  %spec.select = select i1 %tobool52.not, i32 %call15, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit119, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end44.out_crit_edge, %if.end39.out_crit_edge, %do.end30, %do.body24.out_crit_edge, %if.end13.out_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end13.out_crit_edge ], [ -22, %do.end30 ], [ -22, %do.body24.out_crit_edge ], [ -28, %if.end39.out_crit_edge ], [ -14, %copy_to_user.exit.out_crit_edge ], [ -14, %if.end44.out_crit_edge ], [ -14, %if.end.i.i.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ %spec.select, %copy_to_user.exit119 ]
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i121 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i121, ptr %last_busy.i, align 8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i122 = call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp58 = icmp slt i32 %call.i122, 0
  br i1 %cmp58, label %do.body60, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body60:                                        ; preds = %out
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_volatile_get._rs.40, ptr noundef nonnull @__func__.snd_sof_bytes_ext_volatile_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %do.end66

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.42, i32 noundef %call.i122) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.body60.cleanup_crit_edge, %out.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %ret.0, %do.body60.cleanup_crit_edge ], [ %ret.0, %do.end66 ], [ %ret.0, %out.cleanup_crit_edge ], [ %call.i, %do.end11.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_bytes_ext_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %binary_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.snd_ctl_tlv, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private = getelementptr inbounds %struct.soc_bytes_ext, ptr %2, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #8
  %9 = getelementptr inbounds %struct.snd_ctl_tlv, ptr %header, i32 0, i32 1
  %comp_data_dirty.i = getelementptr inbounds %struct.snd_sof_control, ptr %4, i32 0, i32 12
  %10 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %comp_data_dirty.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.snd_sof_refresh_control.exit_crit_edge, label %if.end.i

entry.snd_sof_refresh_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 18
  %16 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i67 = icmp eq i32 %17, 0
  br i1 %cmp.i.i67, label %if.end.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

pm_runtime_active.exit.i:                         ; preds = %if.end.i
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 15
  %18 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end3.i_crit_edge, label %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge

pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

pm_runtime_active.exit.i.if.end3.i_crit_edge:     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %pm_runtime_active.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %19 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 4607827, ptr %19, align 1
  %abi.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 1
  %21 = ptrtoint ptr %abi.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 50405376, ptr %abi.i, align 1
  %22 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %comp_data_dirty.i, align 4
  %call6.i = tail call i32 @snd_sof_ipc_set_get_comp_data(ptr noundef %4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.i.snd_sof_refresh_control.exit_crit_edge

if.end3.i.snd_sof_refresh_control.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_sof_refresh_control.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.52, i32 noundef %call6.i) #11
  %25 = ptrtoint ptr %comp_data_dirty.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %comp_data_dirty.i, align 4
  br label %snd_sof_refresh_control.exit

snd_sof_refresh_control.exit:                     ; preds = %do.end.i, %if.end3.i.snd_sof_refresh_control.exit_crit_edge, %pm_runtime_active.exit.i.snd_sof_refresh_control.exit_crit_edge, %entry.snd_sof_refresh_control.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %snd_sof_refresh_control.exit.cleanup_crit_edge, label %if.end

snd_sof_refresh_control.exit.cleanup_crit_edge:   ; preds = %snd_sof_refresh_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %snd_sof_refresh_control.exit
  %26 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 10
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 4607827, ptr %26, align 1
  %abi = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 1
  %28 = ptrtoint ptr %abi to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 50405376, ptr %abi, align 1
  %size4 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %size4 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %size4, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %sub5 = add i32 %32, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub5)
  %cmp6 = icmp ugt i32 %30, %sub5
  br i1 %cmp6, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_bytes_ext_get._rs, ptr noundef nonnull @__func__.snd_sof_bytes_ext_get) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %size4 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %size4, align 1
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %sub13 = add i32 %38, -32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.38, i32 noundef %36, i32 noundef %sub13) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %sub = add i32 %size, -8
  %add = add i32 %30, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp20 = icmp ugt i32 %add, %sub
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %8, i32 0, i32 3
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %cmd, align 1
  %41 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %header, align 4
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %9, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end22.cleanup_crit_edge, label %if.end.i.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end22
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %binary_data, i32 8, i32 -1226833920) #12, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %header, i32 noundef 8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %binary_data, ptr noundef nonnull %header, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool24.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool24.not, label %if.end26, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %copy_to_user.exit
  %tlv = getelementptr inbounds %struct.snd_ctl_tlv, ptr %binary_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end26
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end26
  call void @__check_object_size(ptr noundef %26, i32 noundef %add, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 174) #8
  %call.i.i58 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i58, label %if.then.i.i.i.copy_to_user.exit66_crit_edge, label %if.end.i.i61

if.then.i.i.i.copy_to_user.exit66_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit66

if.end.i.i61:                                     ; preds = %if.then.i.i.i
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %tlv, i32 %add, i32 -1226833920) #12, !srcloc !134
  %asmresult.i.i59 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i59)
  %cmp.i6.i60 = icmp eq i32 %asmresult.i.i59, 0
  br i1 %cmp.i6.i60, label %if.then2.i.i64, label %if.end.i.i61.copy_to_user.exit66_crit_edge

if.end.i.i61.copy_to_user.exit66_crit_edge:       ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit66

if.then2.i.i64:                                   ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef %26, i32 noundef %add) #8
  %call.i12.i.i63 = call i32 @arm_copy_to_user(ptr noundef %tlv, ptr noundef %26, i32 noundef %add) #8
  br label %copy_to_user.exit66

copy_to_user.exit66:                              ; preds = %if.then2.i.i64, %if.end.i.i61.copy_to_user.exit66_crit_edge, %if.then.i.i.i.copy_to_user.exit66_crit_edge
  %n.addr.0.i65 = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit66_crit_edge ], [ %call.i12.i.i63, %if.then2.i.i64 ], [ %add, %if.end.i.i61.copy_to_user.exit66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i65)
  %tobool30.not = icmp eq i32 %n.addr.0.i65, 0
  %spec.select = select i1 %tobool30.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit66, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %snd_sof_refresh_control.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %snd_sof_refresh_control.exit.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -28, %if.end17.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.end22.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_control_notify(ptr noundef readonly %sdev, ptr nocapture noundef readonly %cdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 2
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %type1, align 1
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %widget_list = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 37
  %comp_id6 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %widget_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %widget_list
  br i1 %cmp5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %comp_id = getelementptr i8, ptr %.pn, i32 -32
  %6 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_id, align 4
  %8 = ptrtoint ptr %comp_id6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %comp_id6, align 1
  %cmp7 = icmp eq i32 %7, %9
  br i1 %cmp7, label %if.end16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end16:                                         ; preds = %for.body
  %swidget.0.le = getelementptr i8, ptr %.pn, i32 -36
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 3
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %switch.lookup, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.47, i32 noundef %11) #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end16
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_sof_control_notify, i32 0, i32 %11
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %widget24 = getelementptr i8, ptr %.pn, i32 -4
  %16 = ptrtoint ptr %widget24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %widget24, align 4
  %num_kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26123 = icmp sgt i32 %19, 0
  br i1 %cmp26123, label %for.body27.lr.ph, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body27.lr.ph:                                 ; preds = %switch.lookup
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 21, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %kcontrol_news = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 19
  %index30 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 4
  br label %for.body27

for.body27:                                       ; preds = %for.inc35.for.body27_crit_edge, %for.body27.lr.ph
  %i.0124 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc, %for.inc35.for.body27_crit_edge ]
  %arrayidx = getelementptr i32, ptr %22, i32 %i.0124
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %switch.load)
  %cmp28 = icmp eq i32 %24, %switch.load
  br i1 %cmp28, label %land.lhs.true, label %for.body27.for.inc35_crit_edge

for.body27.for.inc35_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

land.lhs.true:                                    ; preds = %for.body27
  %25 = ptrtoint ptr %kcontrol_news to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kcontrol_news, align 4
  %index = getelementptr %struct.snd_kcontrol_new, ptr %26, i32 %i.0124, i32 4
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  %29 = ptrtoint ptr %index30 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %index30, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp31 = icmp eq i32 %28, %30
  br i1 %cmp31, label %for.end36, label %land.lhs.true.for.inc35_crit_edge

land.lhs.true.for.inc35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.inc35:                                        ; preds = %land.lhs.true.for.inc35_crit_edge, %for.body27.for.inc35_crit_edge
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc35.cleanup_crit_edge, label %for.inc35.for.body27_crit_edge

for.inc35.for.body27_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end36:                                        ; preds = %land.lhs.true
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 20
  %31 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kcontrols, align 4
  %arrayidx33 = getelementptr ptr, ptr %32, i32 %i.0124
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx33, align 4
  %tobool37.not = icmp eq ptr %34, null
  br i1 %tobool37.not, label %for.end36.cleanup_crit_edge, label %if.end39

for.end36.cleanup_crit_edge:                      ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %for.end36
  %35 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end39.cleanup_crit_edge [
    i32 0, label %if.end39.sw.bb41_crit_edge
    i32 2, label %if.end39.sw.bb41_crit_edge140
    i32 3, label %sw.bb43
    i32 1, label %sw.bb47
  ]

if.end39.sw.bb41_crit_edge140:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

if.end39.sw.bb41_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb41:                                          ; preds = %if.end39.sw.bb41_crit_edge, %if.end39.sw.bb41_crit_edge140
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 0, i32 7
  %36 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private_value, align 4
  %38 = inttoptr i32 %37 to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %38, i32 0, i32 9, i32 5
  br label %sw.epilog52

sw.bb43:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %private_value44 = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 0, i32 7
  %39 = ptrtoint ptr %private_value44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %private_value44, align 4
  %41 = inttoptr i32 %40 to ptr
  %private46 = getelementptr inbounds %struct.soc_bytes_ext, ptr %41, i32 0, i32 1, i32 5
  br label %sw.epilog52

sw.bb47:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %private_value48 = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 0, i32 7
  %42 = ptrtoint ptr %private_value48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private_value48, align 4
  %44 = inttoptr i32 %43 to ptr
  %private50 = getelementptr inbounds %struct.soc_enum, ptr %44, i32 0, i32 8, i32 5
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.bb47, %sw.bb43, %sw.bb41
  %scontrol.0.in = phi ptr [ %private50, %sw.bb47 ], [ %private46, %sw.bb43 ], [ %private, %sw.bb41 ]
  %45 = ptrtoint ptr %scontrol.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %scontrol.0 = load ptr, ptr %scontrol.0.in, align 4
  %46 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %1, label %sw.epilog52.cleanup_crit_edge [
    i32 0, label %sw.epilog52.sw.bb54_crit_edge
    i32 1, label %sw.epilog52.sw.bb54_crit_edge141
    i32 4, label %sw.epilog52.sw.bb55_crit_edge
    i32 5, label %sw.epilog52.sw.bb55_crit_edge142
  ]

sw.epilog52.sw.bb55_crit_edge142:                 ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

sw.epilog52.sw.bb55_crit_edge:                    ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

sw.epilog52.sw.bb54_crit_edge141:                 ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb54

sw.epilog52.sw.bb54_crit_edge:                    ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb54

sw.epilog52.cleanup_crit_edge:                    ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb54:                                          ; preds = %sw.epilog52.sw.bb54_crit_edge, %sw.epilog52.sw.bb54_crit_edge141
  %num_elems = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 6
  %47 = ptrtoint ptr %num_elems to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %num_elems, align 1
  %mul = shl i32 %48, 3
  %add = add i32 %mul, 92
  br label %sw.epilog60

sw.bb55:                                          ; preds = %sw.epilog52.sw.bb55_crit_edge, %sw.epilog52.sw.bb55_crit_edge142
  %num_elems56 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 6
  %49 = ptrtoint ptr %num_elems56 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %num_elems56, align 1
  %add58 = add i32 %50, 124
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.bb55, %sw.bb54
  %expected_size.0 = phi i32 [ %add58, %sw.bb55 ], [ %add, %sw.bb54 ]
  %51 = ptrtoint ptr %cdata to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %cdata, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %expected_size.0)
  %cmp61.not = icmp eq i32 %52, %expected_size.0
  br i1 %cmp61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end67:                                         ; preds = %sw.epilog60
  %num_elems68 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 6
  %55 = ptrtoint ptr %num_elems68 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %num_elems68, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool69.not = icmp eq i32 %56, 0
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end67
  %57 = ptrtoint ptr %scontrol.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scontrol.0, align 4
  %control_data.i = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 7
  %59 = ptrtoint ptr %control_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %control_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then70
  %size.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %60, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %62)
  %cmp2.not.i = icmp eq i32 %56, %62
  br i1 %cmp2.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %58, i32 0, i32 3
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.57, i32 noundef %56, i32 noundef %62) #11
  br label %if.end71

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %60, i32 0, i32 10
  %66 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 10
  %67 = call ptr @memcpy(ptr %65, ptr %66, i32 %56)
  br label %if.end71

if.else.i:                                        ; preds = %if.then70
  %num_channels.i = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 4
  %68 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %69)
  %cmp11.not.i = icmp eq i32 %56, %69
  br i1 %cmp11.not.i, label %for.body.lr.ph.i, label %do.end15.i

for.body.lr.ph.i:                                 ; preds = %if.else.i
  %70 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %cdata, i32 0, i32 10
  %71 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %60, i32 0, i32 10
  br label %for.body.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev16.i = getelementptr inbounds %struct.snd_soc_component, ptr %58, i32 0, i32 3
  %72 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.60, i32 noundef %56, i32 noundef %69) #11
  br label %if.end71

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %70, i32 0, i32 %i.050.i, i32 1
  %74 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %value.i, align 1
  %value23.i = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %71, i32 0, i32 %i.050.i, i32 1
  %76 = ptrtoint ptr %value23.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %value23.i, align 1
  %inc.i = add nuw i32 %i.050.i, 1
  %77 = ptrtoint ptr %num_elems68 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %num_elems68, align 1
  %cmp21.i = icmp ult i32 %inc.i, %78
  br i1 %cmp21.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end71_crit_edge

for.body.i.if.end71_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %comp_data_dirty = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 12
  %79 = ptrtoint ptr %comp_data_dirty to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %comp_data_dirty, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else, %for.body.i.if.end71_crit_edge, %do.end15.i, %if.end.i, %do.end.i
  %80 = ptrtoint ptr %swidget.0.le to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %swidget.0.le, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %snd_card, align 4
  tail call void @snd_ctl_notify_one(ptr noundef %85, i32 noundef 1, ptr noundef nonnull %34, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end65, %sw.epilog52.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %for.end36.cleanup_crit_edge, %for.inc35.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end21, %for.cond.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify_one(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ledtrig_audio_set(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/control.c", i32 152, i32 54}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/control.c", i32 270, i32 3}
!4 = !{ptr @snd_sof_bytes_get._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.snd_sof_bytes_get, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_sof_bytes_get._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_sof_bytes_get._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @snd_sof_bytes_get._rs.6, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/control.c", i32 278, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_sof_bytes_get._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_sof_bytes_get._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @snd_sof_bytes_put._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/control.c", i32 304, i32 3}
!19 = !{ptr @__func__.snd_sof_bytes_put, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @snd_sof_bytes_put._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @snd_sof_bytes_put._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @snd_sof_bytes_put._rs.10, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/control.c", i32 312, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @snd_sof_bytes_put._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @snd_sof_bytes_put._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @snd_sof_bytes_ext_put._rs, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/control.c", i32 357, i32 3}
!29 = !{ptr @__func__.snd_sof_bytes_ext_put, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @snd_sof_bytes_ext_put._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @snd_sof_bytes_ext_put._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @snd_sof_bytes_ext_put._rs.15, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/control.c", i32 364, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_sof_bytes_ext_put._entry.16, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @snd_sof_bytes_ext_put._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @snd_sof_bytes_ext_put._rs.19, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/control.c", i32 371, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @snd_sof_bytes_ext_put._entry.20, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @snd_sof_bytes_ext_put._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @snd_sof_bytes_ext_put._rs.23, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../sound/soc/sof/control.c", i32 381, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @snd_sof_bytes_ext_put._entry.24, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @snd_sof_bytes_ext_put._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @snd_sof_bytes_ext_put._rs.27, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/control.c", i32 388, i32 3}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @snd_sof_bytes_ext_put._entry.28, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_sof_bytes_ext_put._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @snd_sof_bytes_ext_put._rs.31, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/control.c", i32 395, i32 3}
!55 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snd_sof_bytes_ext_put._entry.32, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @snd_sof_bytes_ext_put._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @snd_sof_bytes_ext_volatile_get._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/control.c", i32 429, i32 3}
!60 = !{ptr @__func__.snd_sof_bytes_ext_volatile_get, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_sof_bytes_ext_volatile_get._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @snd_sof_bytes_ext_volatile_get._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @snd_sof_bytes_ext_volatile_get._rs.36, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../sound/soc/sof/control.c", i32 444, i32 3}
!66 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @snd_sof_bytes_ext_volatile_get._entry.37, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @snd_sof_bytes_ext_volatile_get._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @snd_sof_bytes_ext_volatile_get._rs.40, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/control.c", i32 472, i32 3}
!71 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @snd_sof_bytes_ext_volatile_get._entry.41, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @snd_sof_bytes_ext_volatile_get._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @snd_sof_bytes_ext_get._rs, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/control.c", i32 507, i32 3}
!76 = !{ptr @__func__.snd_sof_bytes_ext_get, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snd_sof_bytes_ext_get._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_sof_bytes_ext_get._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/sof/control.c", i32 576, i32 3}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_sof_control_notify._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @snd_sof_control_notify._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sof/control.c", i32 605, i32 3}
!86 = !{ptr @snd_sof_control_notify._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @snd_sof_control_notify._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sof/control.c", i32 656, i32 3}
!90 = !{ptr @snd_sof_control_notify._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @snd_sof_control_notify._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sof/control.c", i32 88, i32 3}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @snd_sof_refresh_control._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @snd_sof_refresh_control._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!99 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/sof/control.c", i32 541, i32 4}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @snd_sof_update_control._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @snd_sof_update_control._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/sof/control.c", i32 550, i32 3}
!111 = !{ptr @snd_sof_update_control._entry.59, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @snd_sof_update_control._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i8 0, i8 2}
!124 = !{i64 950940, i64 950957}
!125 = !{!"auto-init"}
!126 = !{i64 2153618375, i64 2153618400}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 6113930}
!129 = !{i64 6114127}
!130 = !{i64 2153599360}
!131 = !{i64 2148500577}
!132 = !{i64 987177, i64 987202, i64 987224, i64 987240, i64 987252, i64 987272, i64 987296, i64 987312, i64 987324}
!133 = !{i64 2148500765}
!134 = !{i64 2153619056, i64 2153619081}
