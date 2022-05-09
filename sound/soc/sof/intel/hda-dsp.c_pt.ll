; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-dsp.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-dsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.sof_ipc_pm_gate = type { %struct.sof_ipc_cmd_hdr, i32, [5 x i32] }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sof_ipc_pm_core_config = type { %struct.sof_ipc_cmd_hdr, i32 }

@__param_str_enable_trace_D0I3_S0 = internal constant [46 x i8] c"snd_sof_intel_hda_common.enable_trace_D0I3_S0\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@hda_enable_trace_D0I3_S0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_trace_D0I3_S0 = internal constant %struct.kernel_param { ptr @__param_str_enable_trace_D0I3_S0, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @hda_enable_trace_D0I3_S0 } }, section "__param", align 4
@__UNIQUE_ID_enable_trace_D0I3_S0type247 = internal constant [60 x i8] c"snd_sof_intel_hda_common.parmtype=enable_trace_D0I3_S0:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_trace_D0I3_S0248 = internal constant [102 x i8] c"snd_sof_intel_hda_common.parm=enable_trace_D0I3_S0:SOF HDA enable trace when the DSP is in D0I3 in S0\00", section ".modinfo", align 1
@hda_dsp_core_run.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_dsp_core_run\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sof/intel/hda-dsp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unstall/run core: core_mask = %x\0A\00", [62 x i8] zeroinitializer }, align 32
@hda_dsp_core_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: DSP start core failed: core_mask %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_core_run._entry_ptr = internal global ptr @hda_dsp_core_run._entry, section ".printk_index", align 4
@hda_dsp_enable_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: dsp core power up failed: core_mask %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hda_dsp_enable_core\00", [44 x i8] zeroinitializer }, align 32
@hda_dsp_enable_core._entry_ptr = internal global ptr @hda_dsp_enable_core._entry, section ".printk_index", align 4
@hda_dsp_core_reset_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: dsp core reset failed: core_mask %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hda_dsp_core_reset_power_down\00", [34 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_power_down._entry_ptr = internal global ptr @hda_dsp_core_reset_power_down._entry, section ".printk_index", align 4
@hda_dsp_core_reset_power_down._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: dsp core power down fail mask %x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_power_down._entry_ptr.13 = internal global ptr @hda_dsp_core_reset_power_down._entry.11, section ".printk_index", align 4
@hda_dsp_core_reset_power_down._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: dsp core disable fail mask %x: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_power_down._entry_ptr.16 = internal global ptr @hda_dsp_core_reset_power_down._entry.14, section ".printk_index", align 4
@hda_dsp_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: transition from %d to %d not allowed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hda_dsp_set_power_state\00", [40 x i8] zeroinitializer }, align 32
@hda_dsp_set_power_state._entry_ptr = internal global ptr @hda_dsp_set_power_state._entry, section ".printk_index", align 4
@hda_dsp_set_power_state._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: target state unsupported %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hda_dsp_set_power_state._entry_ptr.21 = internal global ptr @hda_dsp_set_power_state._entry.19, section ".printk_index", align 4
@hda_dsp_set_power_state._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to set requested target DSP state %d substate %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hda_dsp_set_power_state._entry_ptr.24 = internal global ptr @hda_dsp_set_power_state._entry.22, section ".printk_index", align 4
@hda_dsp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: setting dsp state %d substate %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hda_dsp_resume\00", [17 x i8] zeroinitializer }, align 32
@hda_dsp_resume._entry_ptr = internal global ptr @hda_dsp_resume._entry, section ".printk_index", align 4
@hda_dsp_runtime_idle.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_dsp_runtime_idle\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"some codecs still powered (%08X), not idle\0A\00", [52 x i8] zeroinitializer }, align 32
@hda_dsp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.2, i32 854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hda_dsp_suspend\00", [16 x i8] zeroinitializer }, align 32
@hda_dsp_suspend._entry_ptr = internal global ptr @hda_dsp_suspend._entry, section ".printk_index", align 4
@hda_dsp_suspend._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 889, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: suspending dsp\0A\00", [41 x i8] zeroinitializer }, align 32
@hda_dsp_suspend._entry_ptr.32 = internal global ptr @hda_dsp_suspend._entry.30, section ".printk_index", align 4
@hda_dsp_d0i3_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hda_dsp_d0i3_work = private unnamed_addr constant [18 x i8] c"hda_dsp_d0i3_work\00", align 1
@hda_dsp_d0i3_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.hda_dsp_d0i3_work, ptr @.str.2, i32 967, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: failed to set DSP state %d substate %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hda_dsp_d0i3_work._entry_ptr = internal global ptr @hda_dsp_d0i3_work._entry, section ".printk_index", align 4
@hda_dsp_core_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to power up core %d with err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_dsp_core_get\00", [47 x i8] zeroinitializer }, align 32
@hda_dsp_core_get._entry_ptr = internal global ptr @hda_dsp_core_get._entry, section ".printk_index", align 4
@hda_dsp_core_get._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 999, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to enable secondary core '%d' failed with %d\0A\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_core_get._entry_ptr.39 = internal global ptr @hda_dsp_core_get._entry.37, section ".printk_index", align 4
@hda_dsp_core_get._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 1009, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to power down core: %d with err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@hda_dsp_core_get._entry_ptr.42 = internal global ptr @hda_dsp_core_get._entry.40, section ".printk_index", align 4
@hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_dsp_core_reset_leave\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW Poll Status: reg[%#x]=%#x successful\0A\00", [55 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW Poll Status: reg[%#x]=%#x timedout\0A\00", [57 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: %s: timeout on HDA_DSP_REG_ADSPCS read\0A\00", [49 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_leave._entry_ptr = internal global ptr @hda_dsp_core_reset_leave._entry, section ".printk_index", align 4
@hda_dsp_core_reset_leave._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: reset leave failed: core_mask %x adspcs 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_leave._entry_ptr.49 = internal global ptr @hda_dsp_core_reset_leave._entry.47, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.52, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hda_dsp_core_is_enabled\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DSP core(s) enabled? %d : core_mask %x\0A\00", [56 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.44, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_dsp_core_reset_enter\00", [39 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.45, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_core_reset_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.55, ptr @.str.2, i32 58, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_enter._entry_ptr = internal global ptr @hda_dsp_core_reset_enter._entry, section ".printk_index", align 4
@hda_dsp_core_reset_enter._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: reset enter failed: core_mask %x adspcs 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_core_reset_enter._entry_ptr.58 = internal global ptr @hda_dsp_core_reset_enter._entry.56, section ".printk_index", align 4
@hda_dsp_core_power_up.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.44, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hda_dsp_core_power_up\00", [42 x i8] zeroinitializer }, align 32
@hda_dsp_core_power_up.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.45, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_core_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.59, ptr @.str.2, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_core_power_up._entry_ptr = internal global ptr @hda_dsp_core_power_up._entry, section ".printk_index", align 4
@hda_dsp_core_power_up._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: power up core failed core_mask %xadspcs 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_core_power_up._entry_ptr.62 = internal global ptr @hda_dsp_core_power_up._entry.60, section ".printk_index", align 4
@hda_dsp_core_power_down.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.44, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hda_dsp_core_power_down\00", [40 x i8] zeroinitializer }, align 32
@hda_dsp_core_power_down.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.45, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_core_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.63, ptr @.str.2, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_core_power_down._entry_ptr = internal global ptr @hda_dsp_core_power_down._entry, section ".printk_index", align 4
@hda_dsp_set_D0_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.64, ptr @.str.2, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_dsp_set_D0_state\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_set_D0_state._entry_ptr = internal global ptr @hda_dsp_set_D0_state._entry, section ".printk_index", align 4
@hda_dsp_set_D0_state._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: PM_GATE ipc error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_set_D0_state._entry_ptr.67 = internal global ptr @hda_dsp_set_D0_state._entry.65, section ".printk_index", align 4
@hda_dsp_update_d0i3c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIP timeout before D0I3C update!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hda_dsp_update_d0i3c_register\00", [34 x i8] zeroinitializer }, align 32
@hda_dsp_update_d0i3c_register._entry_ptr = internal global ptr @hda_dsp_update_d0i3c_register._entry, section ".printk_index", align 4
@hda_dsp_update_d0i3c_register._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIP timeout after D0I3C update!\0A\00", [63 x i8] zeroinitializer }, align 32
@hda_dsp_update_d0i3c_register._entry_ptr.72 = internal global ptr @hda_dsp_update_d0i3c_register._entry.70, section ".printk_index", align 4
@hda_dsp_state_log.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hda_dsp_state_log\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Current DSP power state: D0I0\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Current DSP power state: D0I3\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.76, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown DSP D0 substate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.77, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Current DSP power state: D1\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.78, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Current DSP power state: D2\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.79, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Current DSP power state: D3_HOT\0A\00", [63 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.80, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Current DSP power state: D3\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.81, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Current DSP power state: D3_COLD\0A\00", [62 x i8] zeroinitializer }, align 32
@hda_dsp_state_log.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.82, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown DSP power state: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: failed to start controller after resume\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hda_resume\00", [21 x i8] zeroinitializer }, align 32
@hda_resume._entry_ptr = internal global ptr @hda_resume._entry, section ".printk_index", align 4
@hda_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"error: failed to power down core during suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hda_suspend\00", [20 x i8] zeroinitializer }, align 32
@hda_suspend._entry_ptr = internal global ptr @hda_suspend._entry, section ".printk_index", align 4
@hda_suspend._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: failed to reset controller during suspend\0A\00", [46 x i8] zeroinitializer }, align 32
@hda_suspend._entry_ptr.89 = internal global ptr @hda_suspend._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"hda_enable_trace_D0I3_S0\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 26, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 163, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 172, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 262, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 287, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 295, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 302, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 559, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 564, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 569, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 761, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 806, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 852, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 889, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 965, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 984, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 998, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1009, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 90, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 97, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 107, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 319, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 147, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 50, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 56, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 67, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 197, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 203, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 214, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 233, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 239, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 421, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 457, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 379, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 389, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 484, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 487, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 490, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 496, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 499, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 502, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 505, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 508, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 511, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 688, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 634, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private constant [33 x i8] c"../sound/soc/sof/intel/hda-dsp.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 657, i32 3 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_enable_trace_D0I3_S0248, ptr @__UNIQUE_ID_enable_trace_D0I3_S0type247, ptr @__param_enable_trace_D0I3_S0, ptr @hda_dsp_core_get._entry, ptr @hda_dsp_core_get._entry.37, ptr @hda_dsp_core_get._entry.40, ptr @hda_dsp_core_get._entry_ptr, ptr @hda_dsp_core_get._entry_ptr.39, ptr @hda_dsp_core_get._entry_ptr.42, ptr @hda_dsp_core_power_down._entry, ptr @hda_dsp_core_power_down._entry_ptr, ptr @hda_dsp_core_power_up._entry, ptr @hda_dsp_core_power_up._entry.60, ptr @hda_dsp_core_power_up._entry_ptr, ptr @hda_dsp_core_power_up._entry_ptr.62, ptr @hda_dsp_core_reset_enter._entry, ptr @hda_dsp_core_reset_enter._entry.56, ptr @hda_dsp_core_reset_enter._entry_ptr, ptr @hda_dsp_core_reset_enter._entry_ptr.58, ptr @hda_dsp_core_reset_leave._entry, ptr @hda_dsp_core_reset_leave._entry.47, ptr @hda_dsp_core_reset_leave._entry_ptr, ptr @hda_dsp_core_reset_leave._entry_ptr.49, ptr @hda_dsp_core_reset_power_down._entry, ptr @hda_dsp_core_reset_power_down._entry.11, ptr @hda_dsp_core_reset_power_down._entry.14, ptr @hda_dsp_core_reset_power_down._entry_ptr, ptr @hda_dsp_core_reset_power_down._entry_ptr.13, ptr @hda_dsp_core_reset_power_down._entry_ptr.16, ptr @hda_dsp_core_run._entry, ptr @hda_dsp_core_run._entry_ptr, ptr @hda_dsp_d0i3_work._entry, ptr @hda_dsp_d0i3_work._entry_ptr, ptr @hda_dsp_enable_core._entry, ptr @hda_dsp_enable_core._entry_ptr, ptr @hda_dsp_resume._entry, ptr @hda_dsp_resume._entry_ptr, ptr @hda_dsp_set_D0_state._entry, ptr @hda_dsp_set_D0_state._entry.65, ptr @hda_dsp_set_D0_state._entry_ptr, ptr @hda_dsp_set_D0_state._entry_ptr.67, ptr @hda_dsp_set_power_state._entry, ptr @hda_dsp_set_power_state._entry.19, ptr @hda_dsp_set_power_state._entry.22, ptr @hda_dsp_set_power_state._entry_ptr, ptr @hda_dsp_set_power_state._entry_ptr.21, ptr @hda_dsp_set_power_state._entry_ptr.24, ptr @hda_dsp_suspend._entry, ptr @hda_dsp_suspend._entry.30, ptr @hda_dsp_suspend._entry_ptr, ptr @hda_dsp_suspend._entry_ptr.32, ptr @hda_dsp_update_d0i3c_register._entry, ptr @hda_dsp_update_d0i3c_register._entry.70, ptr @hda_dsp_update_d0i3c_register._entry_ptr, ptr @hda_dsp_update_d0i3c_register._entry_ptr.72, ptr @hda_resume._entry, ptr @hda_resume._entry_ptr, ptr @hda_suspend._entry, ptr @hda_suspend._entry.87, ptr @hda_suspend._entry_ptr, ptr @hda_suspend._entry_ptr.89, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @hda_enable_trace_D0I3_S0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @hda_dsp_d0i3_work._rs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_enable_trace_D0I3_S0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_enable_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_power_down._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_power_down._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_set_power_state._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_set_power_state._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_suspend._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_d0i3_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_d0i3_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_get._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_get._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_leave._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_reset_enter._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_power_up._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_core_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_set_D0_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_set_D0_state._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_update_d0i3c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_update_d0i3c_register._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_suspend._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_core_run(ptr noundef %sdev, i32 noundef %core_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hda_dsp_core_reset_leave(ptr noundef %sdev, i32 noundef %core_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_run.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_run, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !209

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_run.__UNIQUE_ID_ddebug254, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %core_mask) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %shl = shl i32 %core_mask, 8
  %call6 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl, i32 noundef 0) #5
  %pdata.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %2 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %call.i.i = tail call i32 %9(ptr noundef %sdev, ptr noundef %add.ptr.i.i) #5
  br label %snd_sof_dsp_read.exit.i

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit.i

snd_sof_dsp_read.exit.i:                          ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i36.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -524, %do.end.i.i ]
  %shl.i = shl i32 %core_mask, 24
  %and.i = and i32 %retval.0.i36.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl.i)
  %cmp.i = icmp eq i32 %and.i, %shl.i
  br i1 %cmp.i, label %land.lhs.true.i, label %snd_sof_dsp_read.exit.i.land.end.i_crit_edge

snd_sof_dsp_read.exit.i.land.end.i_crit_edge:     ; preds = %snd_sof_dsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %snd_sof_dsp_read.exit.i
  %shl2.i = shl i32 %core_mask, 16
  %and4.i = and i32 %retval.0.i36.i, %shl2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %shl2.i)
  %cmp5.i = icmp eq i32 %and4.i, %shl2.i
  %and10.i = and i32 %retval.0.i36.i, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = and i1 %cmp5.i, %tobool11.not.i
  br i1 %or.cond.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i = and i32 %retval.0.i36.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge
  %14 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ false, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge ], [ %tobool14.not.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_run, %if.then.i)) #5
          to label %hda_dsp_core_is_enabled.exit [label %if.then.i], !srcloc !209

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  %conv23.i = zext i1 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, ptr noundef %16, ptr noundef nonnull @.str.54, i32 noundef %conv23.i, i32 noundef %core_mask) #5
  br label %hda_dsp_core_is_enabled.exit

hda_dsp_core_is_enabled.exit:                     ; preds = %if.then.i, %land.end.i
  br i1 %14, label %hda_dsp_core_is_enabled.exit.cleanup_crit_edge, label %if.then8

hda_dsp_core_is_enabled.exit.cleanup_crit_edge:   ; preds = %hda_dsp_core_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %hda_dsp_core_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #5
  %call2.i = tail call fastcc i32 @hda_dsp_core_reset_enter(ptr noundef %sdev, i32 noundef %core_mask) #5
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.4, i32 noundef %core_mask) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge ], [ -5, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_core_reset_leave(ptr noundef %sdev, i32 noundef %core_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %core_mask, i32 noundef 0) #5
  %call2 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call2, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 94) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then47, %entry
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i98 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %and = and i32 %retval.0.i98, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12, label %land.lhs.true

do.body12:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_reset_leave, %if.then17)) #5
          to label %for.end [label %if.then17], !srcloc !209

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug251, ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %retval.0.i98) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call23 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then26, label %if.then47

if.then26:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i101 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i101, align 4
  %ops.i102 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i102, align 4
  %read.i103 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i103 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i103, align 4
  %tobool.not.i104 = icmp eq ptr %21, null
  br i1 %tobool.not.i104, label %do.end.i109, label %if.then.i108

if.then.i108:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %23, i32 4
  %call.i107 = tail call i32 %21(ptr noundef %sdev, ptr noundef %add.ptr.i106) #5
  br label %snd_sof_dsp_read.exit111

do.end.i109:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit111

snd_sof_dsp_read.exit111:                         ; preds = %do.end.i109, %if.then.i108
  %retval.0.i110 = phi i32 [ %call.i107, %if.then.i108 ], [ -524, %do.end.i109 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_reset_leave, %if.then40)) #5
          to label %for.end [label %if.then40], !srcloc !209

if.then40:                                        ; preds = %snd_sof_dsp_read.exit111
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug252, ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %retval.0.i110) #5
  br label %for.end

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then40, %snd_sof_dsp_read.exit111, %if.then17, %do.body12
  %adspcs.0 = phi i32 [ %retval.0.i110, %if.then40 ], [ %retval.0.i98, %if.then17 ], [ %retval.0.i98, %do.body12 ], [ %retval.0.i110, %snd_sof_dsp_read.exit111 ]
  %and50 = and i32 %adspcs.0, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #8
  br label %cleanup

if.end60:                                         ; preds = %for.end
  %30 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata.i, align 4
  %desc.i113 = getelementptr inbounds %struct.snd_sof_pdata, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %desc.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i113, align 4
  %ops.i114 = getelementptr inbounds %struct.sof_dev_desc, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %ops.i114 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i114, align 4
  %read.i115 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read.i115 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i115, align 4
  %tobool.not.i116 = icmp eq ptr %37, null
  br i1 %tobool.not.i116, label %do.end.i121, label %if.then.i120

if.then.i120:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %39, i32 4
  %call.i119 = tail call i32 %37(ptr noundef %sdev, ptr noundef %add.ptr.i118) #5
  br label %snd_sof_dsp_read.exit123

do.end.i121:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit123

snd_sof_dsp_read.exit123:                         ; preds = %do.end.i121, %if.then.i120
  %retval.0.i122 = phi i32 [ %call.i119, %if.then.i120 ], [ -524, %do.end.i121 ]
  %and63 = and i32 %retval.0.i122, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %cmp64.not = icmp eq i32 %and63, 0
  br i1 %cmp64.not, label %snd_sof_dsp_read.exit123.cleanup_crit_edge, label %do.end68

snd_sof_dsp_read.exit123.cleanup_crit_edge:       ; preds = %snd_sof_dsp_read.exit123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end68:                                         ; preds = %snd_sof_dsp_read.exit123
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.48, i32 noundef %core_mask, i32 noundef %retval.0.i122) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %snd_sof_dsp_read.exit123.cleanup_crit_edge, %do.end58
  %retval.0 = phi i32 [ -110, %do.end58 ], [ -5, %do.end68 ], [ 0, %snd_sof_dsp_read.exit123.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_enable_core(ptr noundef %sdev, i32 noundef %core_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_managed_cores_mask, align 4
  %and = and i32 %7, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %call.i.i = tail call i32 %13(ptr noundef %sdev, ptr noundef %add.ptr.i.i) #5
  br label %snd_sof_dsp_read.exit.i

do.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit.i

snd_sof_dsp_read.exit.i:                          ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i36.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -524, %do.end.i.i ]
  %shl.i = shl i32 %and, 24
  %and.i = and i32 %retval.0.i36.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl.i)
  %cmp.i = icmp eq i32 %and.i, %shl.i
  br i1 %cmp.i, label %land.lhs.true.i, label %snd_sof_dsp_read.exit.i.land.end.i_crit_edge

snd_sof_dsp_read.exit.i.land.end.i_crit_edge:     ; preds = %snd_sof_dsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %snd_sof_dsp_read.exit.i
  %shl2.i = shl i32 %and, 16
  %and4.i = and i32 %retval.0.i36.i, %shl2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %shl2.i)
  %cmp5.i = icmp eq i32 %and4.i, %shl2.i
  %and10.i = and i32 %retval.0.i36.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = and i1 %cmp5.i, %tobool11.not.i
  br i1 %or.cond.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl12.i = shl i32 %and, 8
  %and13.i = and i32 %retval.0.i36.i, %shl12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge
  %18 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ false, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge ], [ %tobool14.not.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_enable_core, %if.then.i)) #5
          to label %hda_dsp_core_is_enabled.exit [label %if.then.i], !srcloc !209

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev, align 4
  %conv23.i = zext i1 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, ptr noundef %20, ptr noundef nonnull @.str.54, i32 noundef %conv23.i, i32 noundef %and) #5
  br label %hda_dsp_core_is_enabled.exit

hda_dsp_core_is_enabled.exit:                     ; preds = %if.then.i, %land.end.i
  br i1 %18, label %hda_dsp_core_is_enabled.exit.cleanup_crit_edge, label %if.end

hda_dsp_core_is_enabled.exit.cleanup_crit_edge:   ; preds = %hda_dsp_core_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %hda_dsp_core_is_enabled.exit
  %call1 = tail call fastcc i32 @hda_dsp_core_power_up(ptr noundef %sdev, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %and) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @hda_dsp_core_run(ptr noundef %sdev, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %if.end3 ], [ 0, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_core_power_up(ptr noundef %sdev, i32 noundef %core_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %core_mask, 16
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #5
  %shl2 = shl i32 %core_mask, 24
  %call3 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call3, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 201) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then48, %entry
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i102 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %and = and i32 %retval.0.i102, %shl2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl2)
  %cmp12 = icmp eq i32 %and, %shl2
  br i1 %cmp12, label %do.body14, label %land.lhs.true

do.body14:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_power_up.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_power_up, %if.then18)) #5
          to label %for.end [label %if.then18], !srcloc !209

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_power_up.__UNIQUE_ID_ddebug255, ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %retval.0.i102) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call24 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then48

if.then27:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i105 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i105 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i105, align 4
  %ops.i106 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i106 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i106, align 4
  %read.i107 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i107, align 4
  %tobool.not.i108 = icmp eq ptr %21, null
  br i1 %tobool.not.i108, label %do.end.i113, label %if.then.i112

if.then.i112:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %23, i32 4
  %call.i111 = tail call i32 %21(ptr noundef %sdev, ptr noundef %add.ptr.i110) #5
  br label %snd_sof_dsp_read.exit115

do.end.i113:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit115

snd_sof_dsp_read.exit115:                         ; preds = %do.end.i113, %if.then.i112
  %retval.0.i114 = phi i32 [ %call.i111, %if.then.i112 ], [ -524, %do.end.i113 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_power_up.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_power_up, %if.then41)) #5
          to label %for.end [label %if.then41], !srcloc !209

if.then41:                                        ; preds = %snd_sof_dsp_read.exit115
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_power_up.__UNIQUE_ID_ddebug256, ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %retval.0.i114) #5
  br label %for.end

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then41, %snd_sof_dsp_read.exit115, %if.then18, %do.body14
  %adspcs.0 = phi i32 [ %retval.0.i102, %if.then18 ], [ %retval.0.i114, %if.then41 ], [ %retval.0.i102, %do.body14 ], [ %retval.0.i114, %snd_sof_dsp_read.exit115 ]
  %and51 = and i32 %adspcs.0, %shl2
  call void @__sanitizer_cov_trace_cmp4(i32 %and51, i32 %shl2)
  %cmp52 = icmp eq i32 %and51, %shl2
  br i1 %cmp52, label %if.end59, label %do.end57

do.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.59) #8
  br label %cleanup

if.end59:                                         ; preds = %for.end
  %30 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata.i, align 4
  %desc.i117 = getelementptr inbounds %struct.snd_sof_pdata, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %desc.i117 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i117, align 4
  %ops.i118 = getelementptr inbounds %struct.sof_dev_desc, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %ops.i118 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i118, align 4
  %read.i119 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read.i119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i119, align 4
  %tobool.not.i120 = icmp eq ptr %37, null
  br i1 %tobool.not.i120, label %do.end.i125, label %if.then.i124

if.then.i124:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %39, i32 4
  %call.i123 = tail call i32 %37(ptr noundef %sdev, ptr noundef %add.ptr.i122) #5
  br label %snd_sof_dsp_read.exit127

do.end.i125:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit127

snd_sof_dsp_read.exit127:                         ; preds = %do.end.i125, %if.then.i124
  %retval.0.i126 = phi i32 [ %call.i123, %if.then.i124 ], [ -524, %do.end.i125 ]
  %and62 = and i32 %retval.0.i126, %shl2
  call void @__sanitizer_cov_trace_cmp4(i32 %and62, i32 %shl2)
  %cmp64.not = icmp eq i32 %and62, %shl2
  br i1 %cmp64.not, label %snd_sof_dsp_read.exit127.cleanup_crit_edge, label %do.end68

snd_sof_dsp_read.exit127.cleanup_crit_edge:       ; preds = %snd_sof_dsp_read.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end68:                                         ; preds = %snd_sof_dsp_read.exit127
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.61, i32 noundef %core_mask, i32 noundef %retval.0.i126) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %snd_sof_dsp_read.exit127.cleanup_crit_edge, %do.end57
  %retval.0 = phi i32 [ -110, %do.end57 ], [ -5, %do.end68 ], [ 0, %snd_sof_dsp_read.exit127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %core_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_managed_cores_mask, align 4
  %and = and i32 %7, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl.i = shl i32 %and, 8
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl.i, i32 noundef %shl.i) #5
  %call2.i = tail call fastcc i32 @hda_dsp_core_reset_enter(ptr noundef %sdev, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %and) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @hda_dsp_core_power_down(ptr noundef %sdev, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %and, i32 noundef %call3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %call.i.i = tail call i32 %19(ptr noundef %sdev, ptr noundef %add.ptr.i.i) #5
  br label %snd_sof_dsp_read.exit.i

do.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit.i

snd_sof_dsp_read.exit.i:                          ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i36.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -524, %do.end.i.i ]
  %shl.i39 = shl i32 %and, 24
  %and.i = and i32 %retval.0.i36.i, %shl.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl.i39)
  %cmp.i = icmp eq i32 %and.i, %shl.i39
  br i1 %cmp.i, label %land.lhs.true.i, label %snd_sof_dsp_read.exit.i.land.end.i_crit_edge

snd_sof_dsp_read.exit.i.land.end.i_crit_edge:     ; preds = %snd_sof_dsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %snd_sof_dsp_read.exit.i
  %shl2.i = shl i32 %and, 16
  %and4.i = and i32 %retval.0.i36.i, %shl2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %shl2.i)
  %cmp5.i = icmp eq i32 %and4.i, %shl2.i
  %and10.i = and i32 %retval.0.i36.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = and i1 %cmp5.i, %tobool11.not.i
  br i1 %or.cond.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i = and i32 %retval.0.i36.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge
  %24 = phi i1 [ false, %land.lhs.true.i.land.end.i_crit_edge ], [ false, %snd_sof_dsp_read.exit.i.land.end.i_crit_edge ], [ %tobool14.not.i, %land.rhs.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_reset_power_down, %if.then.i)) #5
          to label %hda_dsp_core_is_enabled.exit [label %if.then.i], !srcloc !209

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  %conv23.i = zext i1 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, ptr noundef %26, ptr noundef nonnull @.str.54, i32 noundef %conv23.i, i32 noundef %and) #5
  br label %hda_dsp_core_is_enabled.exit

hda_dsp_core_is_enabled.exit:                     ; preds = %if.then.i, %land.end.i
  br i1 %24, label %do.end15, label %hda_dsp_core_is_enabled.exit.cleanup_crit_edge

hda_dsp_core_is_enabled.exit.cleanup_crit_edge:   ; preds = %hda_dsp_core_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %hda_dsp_core_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef %and, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ %call3, %do.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %do.end15 ], [ %call3, %hda_dsp_core_is_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_core_power_down(ptr noundef %sdev, i32 noundef %core_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %core_mask, 16
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl, i32 noundef 0) #5
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 237) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %shl10 = shl i32 %core_mask, 24
  br label %for.cond

for.cond:                                         ; preds = %if.then47, %entry
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i80 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %and = and i32 %retval.0.i80, %shl10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12, label %land.lhs.true

do.body12:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_power_down.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_power_down, %if.then17)) #5
          to label %for.end [label %if.then17], !srcloc !209

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_power_down.__UNIQUE_ID_ddebug257, ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %retval.0.i80) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call23 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then26, label %if.then47

if.then26:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i83 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i83, align 4
  %ops.i84 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i84, align 4
  %read.i85 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i85, align 4
  %tobool.not.i86 = icmp eq ptr %21, null
  br i1 %tobool.not.i86, label %do.end.i91, label %if.then.i90

if.then.i90:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %23, i32 4
  %call.i89 = tail call i32 %21(ptr noundef %sdev, ptr noundef %add.ptr.i88) #5
  br label %snd_sof_dsp_read.exit93

do.end.i91:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit93

snd_sof_dsp_read.exit93:                          ; preds = %do.end.i91, %if.then.i90
  %retval.0.i92 = phi i32 [ %call.i89, %if.then.i90 ], [ -524, %do.end.i91 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_power_down.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_power_down, %if.then40)) #5
          to label %for.end [label %if.then40], !srcloc !209

if.then40:                                        ; preds = %snd_sof_dsp_read.exit93
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_power_down.__UNIQUE_ID_ddebug258, ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %retval.0.i92) #5
  br label %for.end

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then40, %snd_sof_dsp_read.exit93, %if.then17, %do.body12
  %adspcs.0 = phi i32 [ %retval.0.i92, %if.then40 ], [ %retval.0.i80, %if.then17 ], [ %retval.0.i80, %do.body12 ], [ %retval.0.i92, %snd_sof_dsp_read.exit93 ]
  %and51 = and i32 %adspcs.0, %shl10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.end.if.end61_crit_edge, label %do.end59

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.63) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %for.end.if.end61_crit_edge
  %cond = phi i32 [ -110, %do.end59 ], [ 0, %for.end.if.end61_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ipc_int_enable(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %ipc_ctl = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ipc_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipc_ctl, align 4
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef %7, i32 noundef 3, i32 noundef 3) #5
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ipc_int_disable(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 0) #5
  %ipc_ctl = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ipc_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipc_ctl, align 4
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef %7, i32 noundef 3, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_set_power_state(ptr nocapture noundef %sdev, ptr nocapture noundef readonly %target_state) local_unnamed_addr #0 align 64 {
entry:
  %pm_gate.i.i = alloca %struct.sof_ipc_pm_gate, align 4
  %reply.i.i = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %substate = getelementptr inbounds %struct.sof_dsp_power_state, ptr %target_state, i32 0, i32 1
  %0 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %system_suspend_target = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 6
  %2 = ptrtoint ptr %system_suspend_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %system_suspend_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %land.lhs.true.set_statethread-pre-split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.set_statethread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_statethread-pre-split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %target_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_state, align 4
  %dsp_power_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %6 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_power_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %if.end.set_state_crit_edge

if.end.set_state_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_state

land.lhs.true4:                                   ; preds = %if.end
  %substate7 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %substate7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substate7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp8 = icmp eq i32 %1, %9
  br i1 %cmp8, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.set_statethread-pre-split_crit_edge

land.lhs.true4.set_statethread-pre-split_crit_edge: ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_statethread-pre-split

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

set_statethread-pre-split:                        ; preds = %land.lhs.true4.set_statethread-pre-split_crit_edge, %land.lhs.true.set_statethread-pre-split_crit_edge
  %10 = ptrtoint ptr %target_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %target_state, align 4
  br label %set_state

set_state:                                        ; preds = %set_statethread-pre-split, %if.end.set_state_crit_edge
  %11 = phi i32 [ %.pr, %set_statethread-pre-split ], [ %5, %if.end.set_state_crit_edge ]
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end27 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb12
  ]

sw.bb:                                            ; preds = %set_state
  %dsp_power_state.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %13 = ptrtoint ptr %dsp_power_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsp_power_state.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %14, label %do.end.i [
    i32 0, label %sw.epilog.i
    i32 4, label %sw.bb.if.end38_crit_edge
  ]

sw.bb.if.end38_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef %14, i32 noundef 0) #8
  br label %do.end34

sw.epilog.i:                                      ; preds = %sw.bb
  br i1 %cmp, label %if.then.i, label %sw.epilog.i.if.end8.i_crit_edge

sw.epilog.i.if.end8.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i:                                        ; preds = %sw.epilog.i
  %dtrace_is_supported.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %18 = ptrtoint ptr %dtrace_is_supported.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dtrace_is_supported.i, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %20 = load i8, ptr @hda_enable_trace_D0I3_S0, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %system_suspend_target.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 6
  %21 = ptrtoint ptr %system_suspend_target.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %system_suspend_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.not.i = icmp eq i32 %22, 0
  br i1 %cmp6.not.i, label %lor.lhs.false5.i.if.end8.i_crit_edge, label %lor.lhs.false5.i.if.then7.i_crit_edge

lor.lhs.false5.i.if.then7.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

lor.lhs.false5.i.if.end8.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then7.i:                                       ; preds = %lor.lhs.false5.i.if.then7.i_crit_edge, %lor.lhs.false.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %lor.lhs.false5.i.if.end8.i_crit_edge, %sw.epilog.i.if.end8.i_crit_edge
  %flags.0.i = phi i32 [ 16, %if.then7.i ], [ 0, %lor.lhs.false5.i.if.end8.i_crit_edge ], [ 4, %sw.epilog.i.if.end8.i_crit_edge ]
  %value.0.i = phi i8 [ 4, %if.then7.i ], [ 4, %lor.lhs.false5.i.if.end8.i_crit_edge ], [ 0, %sw.epilog.i.if.end8.i_crit_edge ]
  %call.i = tail call fastcc i32 @hda_dsp_update_d0i3c_register(ptr noundef %sdev, i8 noundef zeroext %value.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %if.end8.i.do.end34_crit_edge, label %if.end11.i

if.end8.i.do.end34_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

if.end11.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pm_gate.i.i) #5
  %23 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pm_gate.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sof_ipc_pm_gate, ptr %pm_gate.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i.i) #5
  %25 = ptrtoint ptr %reply.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reply.i.i, align 4, !annotation !211
  %26 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !annotation !211
  %28 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4, !annotation !211
  %30 = getelementptr inbounds i8, ptr %pm_gate.i.i, i32 12
  %31 = call ptr @memset(ptr %30, i32 0, i32 20)
  %32 = ptrtoint ptr %pm_gate.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %pm_gate.i.i, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1074266112, ptr %23, align 4
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %flags.0.i, ptr %24, align 4
  %ipc.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %35 = ptrtoint ptr %ipc.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipc.i.i, align 4
  %call.i.i = call i32 @sof_ipc_tx_message_no_pm(ptr noundef %36, i32 noundef 1074266112, ptr noundef nonnull %pm_gate.i.i, i32 noundef 32, ptr noundef nonnull %reply.i.i, i32 noundef 12) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pm_gate.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end11.i.if.end38_crit_edge

if.end11.i.if.end38_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.66, i32 noundef %call.i.i) #8
  %conv21.i = select i1 %cmp, i8 0, i8 4
  %call22.i = call fastcc i32 @hda_dsp_update_d0i3c_register(ptr noundef %sdev, i8 noundef zeroext %conv21.i) #5
  br label %do.end34

sw.bb12:                                          ; preds = %set_state
  %dsp_power_state13 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %39 = ptrtoint ptr %dsp_power_state13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dsp_power_state13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp15 = icmp eq i32 %40, 0
  br i1 %cmp15, label %land.lhs.true16, label %sw.bb12.do.end_crit_edge

sw.bb12.do.end_crit_edge:                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true16:                                  ; preds = %sw.bb12
  %substate18 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %substate18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %substate18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp19 = icmp eq i32 %42, 0
  br i1 %cmp19, label %land.lhs.true16.if.end38_crit_edge, label %land.lhs.true16.do.end_crit_edge

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true16.if.end38_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end:                                           ; preds = %land.lhs.true16.do.end_crit_edge, %sw.bb12.do.end_crit_edge
  %43 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.17, i32 noundef %40, i32 noundef 4) #8
  br label %cleanup

do.end27:                                         ; preds = %set_state
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.20, i32 noundef %11) #8
  br label %cleanup

do.end34:                                         ; preds = %do.end17.i, %if.end8.i.do.end34_crit_edge, %do.end.i
  %ret.0.ph = phi i32 [ %call.i, %if.end8.i.do.end34_crit_edge ], [ %call.i.i, %do.end17.i ], [ -22, %do.end.i ]
  %47 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdev, align 4
  %49 = ptrtoint ptr %target_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %target_state, align 4
  %51 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %substate, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.23, i32 noundef %50, i32 noundef %52) #8
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true16.if.end38_crit_edge, %if.end11.i.if.end38_crit_edge, %sw.bb.if.end38_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true16.if.end38_crit_edge ], [ 0, %sw.bb.if.end38_crit_edge ], [ %call.i.i, %if.end11.i.if.end38_crit_edge ]
  %dsp_power_state39 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %53 = ptrtoint ptr %target_state to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %target_state, align 4
  %55 = ptrtoint ptr %dsp_power_state39 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %dsp_power_state39, align 4
  call fastcc void @hda_dsp_state_log(ptr noundef %sdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end34, %do.end27, %do.end, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end27 ], [ %ret.0.ph, %do.end34 ], [ %ret.0, %if.end38 ], [ -22, %do.end ], [ 0, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hda_dsp_state_log(ptr nocapture noundef readonly %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_power_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsp_power_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %do.body126 [
    i32 0, label %sw.bb
    i32 1, label %do.body41
    i32 2, label %do.body58
    i32 3, label %do.body75
    i32 4, label %do.body92
    i32 5, label %do.body109
  ]

sw.bb:                                            ; preds = %entry
  %substate = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %substate, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %4, label %do.body22 [
    i32 0, label %do.body
    i32 1, label %do.body6
  ]

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then)) #5
          to label %sw.epilog144 [label %if.then], !srcloc !209

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug259, ptr noundef %7, ptr noundef nonnull @.str.74) #5
  br label %sw.epilog144

do.body6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then18)) #5
          to label %sw.epilog144 [label %if.then18], !srcloc !209

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug260, ptr noundef %9, ptr noundef nonnull @.str.75) #5
  br label %sw.epilog144

do.body22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then34)) #5
          to label %sw.epilog144 [label %if.then34], !srcloc !209

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  %12 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %substate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug261, ptr noundef %11, ptr noundef nonnull @.str.76, i32 noundef %13) #5
  br label %sw.epilog144

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then53)) #5
          to label %sw.epilog144 [label %if.then53], !srcloc !209

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug262, ptr noundef %15, ptr noundef nonnull @.str.77) #5
  br label %sw.epilog144

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then70)) #5
          to label %sw.epilog144 [label %if.then70], !srcloc !209

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug263, ptr noundef %17, ptr noundef nonnull @.str.78) #5
  br label %sw.epilog144

do.body75:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then87)) #5
          to label %sw.epilog144 [label %if.then87], !srcloc !209

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug264, ptr noundef %19, ptr noundef nonnull @.str.79) #5
  br label %sw.epilog144

do.body92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then104)) #5
          to label %sw.epilog144 [label %if.then104], !srcloc !209

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug265, ptr noundef %21, ptr noundef nonnull @.str.80) #5
  br label %sw.epilog144

do.body109:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then121)) #5
          to label %sw.epilog144 [label %if.then121], !srcloc !209

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug266, ptr noundef %23, ptr noundef nonnull @.str.81) #5
  br label %sw.epilog144

do.body126:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_state_log, %if.then138)) #5
          to label %sw.epilog144 [label %if.then138], !srcloc !209

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  %26 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsp_power_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_state_log.__UNIQUE_ID_ddebug267, ptr noundef %25, ptr noundef nonnull @.str.82, i32 noundef %27) #5
  br label %sw.epilog144

sw.epilog144:                                     ; preds = %if.then138, %do.body126, %if.then121, %do.body109, %if.then104, %do.body92, %if.then87, %do.body75, %if.then70, %do.body58, %if.then53, %do.body41, %if.then34, %do.body22, %if.then18, %do.body6, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_resume(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  %target_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_state) #5
  %6 = ptrtoint ptr %target_state to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %target_state, align 8
  %dsp_power_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 4
  %7 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dsp_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %snd_sof_dsp_set_power_state.exit.thread, label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit.thread:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  br label %if.end

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then
  %call.i = call i32 %16(ptr noundef %sdev, ptr noundef nonnull %target_state) #5
  call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %do.end, label %snd_sof_dsp_set_power_state.exit.if.end_crit_edge

snd_sof_dsp_set_power_state.exit.if.end_crit_edge: ; preds = %snd_sof_dsp_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %snd_sof_dsp_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  %19 = ptrtoint ptr %target_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_state, align 8
  %substate = getelementptr inbounds %struct.sof_dsp_power_state, ptr %target_state, i32 0, i32 1
  %21 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %substate, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.25, i32 noundef %20, i32 noundef %22) #8
  br label %cleanup

if.end:                                           ; preds = %snd_sof_dsp_set_power_state.exit.if.end_crit_edge, %snd_sof_dsp_set_power_state.exit.thread
  %l1_support_changed = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %l1_support_changed to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l1_support_changed, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef 0) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @pci_restore_state(ptr noundef %add.ptr) #5
  %irq = getelementptr i8, ptr %5, i32 932
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call.i29 = call i32 @irq_set_irq_wake(i32 noundef %26, i32 noundef 0) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call.i30 = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 68, i32 noundef 7, i32 noundef 0) #5
  %call1.i = tail call i32 @hda_dsp_ctrl_init_chip(ptr noundef %sdev, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.83) #8
  br label %hda_resume.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hda_dsp_ctrl_ppcap_enable(ptr noundef %sdev, i1 noundef zeroext true) #5
  tail call void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef %sdev, i1 noundef zeroext true) #5
  br label %hda_resume.exit

hda_resume.exit:                                  ; preds = %if.end.i, %do.end.i
  %power_state_access.i31 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i31, i32 noundef 0) #5
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 4
  %desc.i33 = getelementptr inbounds %struct.snd_sof_pdata, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %desc.i33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc.i33, align 4
  %ops.i34 = getelementptr inbounds %struct.sof_dev_desc, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i34, align 4
  %set_power_state.i35 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %set_power_state.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_power_state.i35, align 4
  %tobool.not.i36 = icmp eq ptr %36, null
  br i1 %tobool.not.i36, label %hda_resume.exit.snd_sof_dsp_set_power_state.exit41_crit_edge, label %if.then.i38

hda_resume.exit.snd_sof_dsp_set_power_state.exit41_crit_edge: ; preds = %hda_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_set_power_state.exit41

if.then.i38:                                      ; preds = %hda_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i37 = call i32 %36(ptr noundef %sdev, ptr noundef nonnull %target_state) #5
  br label %snd_sof_dsp_set_power_state.exit41

snd_sof_dsp_set_power_state.exit41:               ; preds = %if.then.i38, %hda_resume.exit.snd_sof_dsp_set_power_state.exit41_crit_edge
  %ret.0.i39 = phi i32 [ %call.i37, %if.then.i38 ], [ 0, %hda_resume.exit.snd_sof_dsp_set_power_state.exit41_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i31) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit41, %if.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end7 ], [ %ret.0.i39, %snd_sof_dsp_set_power_state.exit41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_runtime_resume(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  %target_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_state) #5
  %0 = ptrtoint ptr %target_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %target_state, align 8
  %call.i = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 68, i32 noundef 7, i32 noundef 0) #5
  %call1.i = tail call i32 @hda_dsp_ctrl_init_chip(ptr noundef %sdev, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.83) #8
  br label %hda_resume.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hda_dsp_ctrl_ppcap_enable(ptr noundef %sdev, i1 noundef zeroext true) #5
  tail call void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef %sdev, i1 noundef zeroext true) #5
  br label %hda_resume.exit

hda_resume.exit:                                  ; preds = %if.end.i, %do.end.i
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %8, i32 0, i32 45
  %9 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %hda_resume.exit.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

hda_resume.exit.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %hda_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %hda_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i5 = call i32 %10(ptr noundef %sdev, ptr noundef nonnull %target_state) #5
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %hda_resume.exit.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i5, %if.then.i ], [ 0, %hda_resume.exit.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_state) #5
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_runtime_idle(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %codec_powered = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 19
  %4 = ptrtoint ptr %codec_powered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_runtime_idle.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_runtime_idle, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !209

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  %8 = ptrtoint ptr %codec_powered to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_powered, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_runtime_idle.__UNIQUE_ID_ddebug268, ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_runtime_suspend(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  %target_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_state) #5
  %4 = ptrtoint ptr %target_state to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 17179869184, ptr %target_state, align 8
  %d0i3_work = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %d0i3_work) #5
  %call1 = tail call fastcc i32 @hda_suspend(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #5
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.snd_sof_dsp_set_power_state.exit_crit_edge, label %if.then.i

if.end.snd_sof_dsp_set_power_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_set_power_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %12(ptr noundef %sdev, ptr noundef nonnull %target_state) #5
  br label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then.i, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end.snd_sof_dsp_set_power_state.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %snd_sof_dsp_set_power_state.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_suspend(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 0) #5
  %ipc_ctl.i = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ipc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipc_ctl.i, align 4
  %call1.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef %7, i32 noundef 3, i32 noundef 0) #5
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_managed_cores_mask, align 4
  %call = tail call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %for.cond.preheader

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp sgt i32 %11, 0
  br i1 %cmp11, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 57, i32 %j.02
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %j.02, 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %cmp1 = icmp slt i32 %inc, %14
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @hda_dsp_ctrl_ppcap_enable(ptr noundef %sdev, i1 noundef zeroext false) #5
  tail call void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef %sdev, i1 noundef zeroext false) #5
  tail call void @hda_dsp_ctrl_stop_chip(ptr noundef %sdev) #5
  %call2 = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 68, i32 noundef 16, i32 noundef 16) #5
  %call3 = tail call i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.88.sink = phi ptr [ @.str.85, %entry.cleanup.sink.split_crit_edge ], [ @.str.88, %for.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call3, %for.end.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.88.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_suspend(ptr noundef %sdev, i32 noundef %target_state) local_unnamed_addr #0 align 64 {
entry:
  %target_dsp_state = alloca %struct.sof_dsp_power_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %hbus.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_dsp_state) #5
  %6 = getelementptr inbounds %struct.sof_dsp_power_state, ptr %target_dsp_state, i32 0, i32 1
  %7 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %target_state, ptr %target_dsp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target_state)
  %cmp = icmp eq i32 %target_state, 0
  %cond = zext i1 %cmp to i32
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %6, align 4
  %d0i3_work = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %d0i3_work) #5
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %snd_sof_dsp_set_power_state.exit.thread, label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit.thread:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  br label %if.end

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.then
  %call.i = call i32 %16(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #5
  call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %snd_sof_dsp_set_power_state.exit.if.end_crit_edge

snd_sof_dsp_set_power_state.exit.if.end_crit_edge: ; preds = %snd_sof_dsp_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %snd_sof_dsp_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  %19 = ptrtoint ptr %target_dsp_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_dsp_state, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.25, i32 noundef %20, i32 noundef %22) #8
  br label %cleanup

if.end:                                           ; preds = %snd_sof_dsp_set_power_state.exit.if.end_crit_edge, %snd_sof_dsp_set_power_state.exit.thread
  %call9 = call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef 8192) #5
  %l1_support_changed = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 6
  %frombool = zext i1 %call9 to i8
  %23 = ptrtoint ptr %l1_support_changed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %l1_support_changed, align 4
  %irq = getelementptr i8, ptr %5, i32 932
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call.i41 = call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 1) #5
  %call11 = call i32 @pci_save_state(ptr noundef %add.ptr) #5
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call fastcc i32 @hda_suspend(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %hbus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hbus.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %power_state_access.i42 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i42, i32 noundef 0) #5
  %28 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata, align 4
  %desc.i44 = getelementptr inbounds %struct.snd_sof_pdata, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %desc.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i44, align 4
  %ops.i45 = getelementptr inbounds %struct.sof_dev_desc, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i45, align 4
  %set_power_state.i46 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %33, i32 0, i32 45
  %34 = ptrtoint ptr %set_power_state.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_power_state.i46, align 4
  %tobool.not.i47 = icmp eq ptr %35, null
  br i1 %tobool.not.i47, label %if.end20.snd_sof_dsp_set_power_state.exit51_crit_edge, label %if.then.i49

if.end20.snd_sof_dsp_set_power_state.exit51_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_set_power_state.exit51

if.then.i49:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call.i48 = call i32 %35(ptr noundef %sdev, ptr noundef nonnull %target_dsp_state) #5
  br label %snd_sof_dsp_set_power_state.exit51

snd_sof_dsp_set_power_state.exit51:               ; preds = %if.then.i49, %if.end20.snd_sof_dsp_set_power_state.exit51_crit_edge
  %ret.0.i50 = phi i32 [ %call.i48, %if.then.i49 ], [ 0, %if.end20.snd_sof_dsp_set_power_state.exit51_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_state_access.i42) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_sof_dsp_set_power_state.exit51, %do.end18, %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ], [ %call13, %do.end18 ], [ %ret.0.i50, %snd_sof_dsp_set_power_state.exit51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_dsp_state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_shutdown(ptr nocapture noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %system_suspend_target = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 6
  %0 = ptrtoint ptr %system_suspend_target to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %system_suspend_target, align 4
  %1 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev, align 4
  %call = tail call i32 @snd_sof_suspend(ptr noundef %2) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hda_dsp_set_hw_params_upon_resume(ptr nocapture noundef readnone %sdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_d0i3_work(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  %target_state = alloca %struct.sof_dsp_power_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hbus = getelementptr i8, ptr %work, i32 -1456
  %0 = ptrtoint ptr %hbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hbus, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_state) #5
  %4 = ptrtoint ptr %target_state to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %target_state, align 8
  %call1 = tail call zeroext i1 @snd_sof_dsp_only_d0i3_compatible_stream_active(ptr noundef %3) #5
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state_access.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %power_state_access.i, i32 noundef 0) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %set_power_state.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_power_state.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %snd_sof_dsp_set_power_state.exit.thread, label %snd_sof_dsp_set_power_state.exit

snd_sof_dsp_set_power_state.exit.thread:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  br label %cleanup

snd_sof_dsp_set_power_state.exit:                 ; preds = %if.end
  %call.i = call i32 %12(ptr noundef %3, ptr noundef nonnull %target_state) #5
  call void @mutex_unlock(ptr noundef %power_state_access.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %snd_sof_dsp_set_power_state.exit.cleanup_crit_edge

snd_sof_dsp_set_power_state.exit.cleanup_crit_edge: ; preds = %snd_sof_dsp_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %snd_sof_dsp_set_power_state.exit
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @hda_dsp_d0i3_work._rs, ptr noundef nonnull @__func__.hda_dsp_d0i3_work) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %target_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target_state, align 8
  %substate = getelementptr inbounds %struct.sof_dsp_power_state, ptr %target_state, i32 0, i32 1
  %17 = ptrtoint ptr %substate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %substate, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef %16, i32 noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %snd_sof_dsp_set_power_state.exit.cleanup_crit_edge, %snd_sof_dsp_set_power_state.exit.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_only_d0i3_compatible_stream_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_core_get(ptr noundef %sdev, i32 noundef %core) local_unnamed_addr #0 align 64 {
entry:
  %pm_core_config = alloca %struct.sof_ipc_pm_core_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pm_core_config) #5
  %0 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pm_core_config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sof_ipc_pm_core_config, ptr %pm_core_config, i32 0, i32 1
  %2 = ptrtoint ptr %pm_core_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %pm_core_config, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1074200576, ptr %0, align 4
  %enabled_cores_mask = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 41
  %4 = ptrtoint ptr %enabled_cores_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled_cores_mask, align 4
  %shl = shl nuw i32 1, %core
  %or = or i32 %5, %shl
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %1, align 4
  %call = tail call i32 @hda_dsp_enable_core(ptr noundef %sdev, i32 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %core, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 8
  %9 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp2.not = icmp ne i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %core)
  %cmp3 = icmp eq i32 %core, 0
  %or.cond = or i1 %cmp3, %cmp2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %11 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipc, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %call8 = call i32 @sof_ipc_tx_message(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %pm_core_config, i32 noundef 12, ptr noundef nonnull %pm_core_config, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef %core, i32 noundef %call8) #8
  %call17 = call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end22:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.41, i32 noundef %core, i32 noundef %call17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ %call8, %do.end22 ], [ %call8, %do.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pm_core_config) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_core_reset_enter(ptr noundef %sdev, i32 noundef %core_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %core_mask, i32 noundef %core_mask) #5
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 54) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then46, %entry
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i100 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %and = and i32 %retval.0.i100, %core_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %core_mask)
  %cmp10 = icmp eq i32 %and, %core_mask
  br i1 %cmp10, label %do.body12, label %land.lhs.true

do.body12:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_reset_enter, %if.then16)) #5
          to label %for.end [label %if.then16], !srcloc !209

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug249, ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %retval.0.i100) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call22 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then46

if.then25:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i103 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i103, align 4
  %ops.i104 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i104 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i104, align 4
  %read.i105 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i105, align 4
  %tobool.not.i106 = icmp eq ptr %21, null
  br i1 %tobool.not.i106, label %do.end.i111, label %if.then.i110

if.then.i110:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %23, i32 4
  %call.i109 = tail call i32 %21(ptr noundef %sdev, ptr noundef %add.ptr.i108) #5
  br label %snd_sof_dsp_read.exit113

do.end.i111:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit113

snd_sof_dsp_read.exit113:                         ; preds = %do.end.i111, %if.then.i110
  %retval.0.i112 = phi i32 [ %call.i109, %if.then.i110 ], [ -524, %do.end.i111 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_core_reset_enter, %if.then39)) #5
          to label %for.end [label %if.then39], !srcloc !209

if.then39:                                        ; preds = %snd_sof_dsp_read.exit113
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug250, ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %retval.0.i112) #5
  br label %for.end

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then39, %snd_sof_dsp_read.exit113, %if.then16, %do.body12
  %adspcs.0 = phi i32 [ %retval.0.i100, %if.then16 ], [ %retval.0.i112, %if.then39 ], [ %retval.0.i100, %do.body12 ], [ %retval.0.i112, %snd_sof_dsp_read.exit113 ]
  %and49 = and i32 %adspcs.0, %core_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %core_mask)
  %cmp50 = icmp eq i32 %and49, %core_mask
  br i1 %cmp50, label %if.end57, label %do.end55

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end57:                                         ; preds = %for.end
  %30 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata.i, align 4
  %desc.i115 = getelementptr inbounds %struct.snd_sof_pdata, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %desc.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i115, align 4
  %ops.i116 = getelementptr inbounds %struct.sof_dev_desc, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i116, align 4
  %read.i117 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %read.i117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i117, align 4
  %tobool.not.i118 = icmp eq ptr %37, null
  br i1 %tobool.not.i118, label %do.end.i123, label %if.then.i122

if.then.i122:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %39, i32 4
  %call.i121 = tail call i32 %37(ptr noundef %sdev, ptr noundef %add.ptr.i120) #5
  br label %snd_sof_dsp_read.exit125

do.end.i123:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  br label %snd_sof_dsp_read.exit125

snd_sof_dsp_read.exit125:                         ; preds = %do.end.i123, %if.then.i122
  %retval.0.i124 = phi i32 [ %call.i121, %if.then.i122 ], [ -524, %do.end.i123 ]
  %and60 = and i32 %retval.0.i124, %core_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and60, i32 %core_mask)
  %cmp62.not = icmp eq i32 %and60, %core_mask
  br i1 %cmp62.not, label %snd_sof_dsp_read.exit125.cleanup_crit_edge, label %do.end66

snd_sof_dsp_read.exit125.cleanup_crit_edge:       ; preds = %snd_sof_dsp_read.exit125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end66:                                         ; preds = %snd_sof_dsp_read.exit125
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.57, i32 noundef %core_mask, i32 noundef %retval.0.i124) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %snd_sof_dsp_read.exit125.cleanup_crit_edge, %do.end55
  %retval.0 = phi i32 [ -110, %do.end55 ], [ -5, %do.end66 ], [ 0, %snd_sof_dsp_read.exit125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_update_d0i3c_register(ptr nocapture noundef readonly %sdev, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %hbus.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1
  %remap_addr.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %aligned_mmio.i.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %entry
  %retry.0.i = phi i32 [ 50, %entry ], [ %dec.i, %if.end.i ]
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4170
  %6 = ptrtoint ptr %aligned_mmio.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %aligned_mmio.i.i, align 4
  %7 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast.not.i.i = icmp eq i16 %7, 0
  br i1 %bf.cast.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr.i, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit.i

cond.false.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %conv.i.i = zext i8 %8 to i32
  br label %snd_hdac_reg_readb.exit.i

snd_hdac_reg_readb.exit.i:                        ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %conv.i.i, %cond.false.i.i ]
  %9 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %snd_hdac_reg_readb.exit.i
  %tobool2.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool2.not.i, label %while.body.i.cleanup.sink.split_crit_edge, label %if.end.i

while.body.i.cleanup.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add nsw i32 %retry.0.i, -1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  br label %while.cond.i

if.end:                                           ; preds = %snd_hdac_reg_readb.exit.i
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4170
  %12 = ptrtoint ptr %aligned_mmio.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %aligned_mmio.i.i, align 4
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %conv.i = zext i8 %14 to i32
  br label %snd_hdac_reg_readb.exit

snd_hdac_reg_readb.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i8
  %15 = and i8 %conv3.i, -5
  %or27 = or i8 %15, %value
  %16 = ptrtoint ptr %aligned_mmio.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i29 = load i16, ptr %aligned_mmio.i.i, align 4
  %17 = and i16 %bf.load.i29, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %bf.cast.not.i30 = icmp eq i16 %17, 0
  br i1 %bf.cast.not.i30, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i31 = zext i8 %or27 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i31, ptr noundef %add.ptr, i32 noundef 255) #5
  br label %snd_hdac_reg_writeb.exit

do.body.i:                                        ; preds = %snd_hdac_reg_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %or27) #5, !srcloc !215
  br label %snd_hdac_reg_writeb.exit

snd_hdac_reg_writeb.exit:                         ; preds = %do.body.i, %if.then.i
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i.i34 = getelementptr inbounds %struct.snd_sof_pdata, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %hw_pdata.i.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_pdata.i.i34, align 4
  %remap_addr.i35 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %21, i32 0, i32 1, i32 0, i32 4
  %aligned_mmio.i.i36 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %21, i32 0, i32 1, i32 0, i32 28
  br label %while.cond.i41

while.cond.i41:                                   ; preds = %if.end.i52, %snd_hdac_reg_writeb.exit
  %retry.0.i37 = phi i32 [ 50, %snd_hdac_reg_writeb.exit ], [ %dec.i51, %if.end.i52 ]
  %22 = ptrtoint ptr %remap_addr.i35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i35, align 4
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 4170
  %24 = ptrtoint ptr %aligned_mmio.i.i36 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i.i39 = load i16, ptr %aligned_mmio.i.i36, align 4
  %25 = and i16 %bf.load.i.i39, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %bf.cast.not.i.i40 = icmp eq i16 %25, 0
  br i1 %bf.cast.not.i.i40, label %cond.false.i.i45, label %cond.true.i.i43

cond.true.i.i43:                                  ; preds = %while.cond.i41
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i42 = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr.i38, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit.i48

cond.false.i.i45:                                 ; preds = %while.cond.i41
  call void @__sanitizer_cov_trace_pc() #7
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i38) #5, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %conv.i.i44 = zext i8 %26 to i32
  br label %snd_hdac_reg_readb.exit.i48

snd_hdac_reg_readb.exit.i48:                      ; preds = %cond.false.i.i45, %cond.true.i.i43
  %cond.i.i46 = phi i32 [ %call.i.i42, %cond.true.i.i43 ], [ %conv.i.i44, %cond.false.i.i45 ]
  %27 = and i32 %cond.i.i46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i47 = icmp eq i32 %27, 0
  br i1 %tobool.not.i47, label %snd_hdac_reg_readb.exit.i48.cleanup_crit_edge, label %while.body.i50

snd_hdac_reg_readb.exit.i48.cleanup_crit_edge:    ; preds = %snd_hdac_reg_readb.exit.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i50:                                   ; preds = %snd_hdac_reg_readb.exit.i48
  %tobool2.not.i49 = icmp eq i32 %retry.0.i37, 0
  br i1 %tobool2.not.i49, label %while.body.i50.cleanup.sink.split_crit_edge, label %if.end.i52

while.body.i50.cleanup.sink.split_crit_edge:      ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i52:                                       ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i51 = add nsw i32 %retry.0.i37, -1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  br label %while.cond.i41

cleanup.sink.split:                               ; preds = %while.body.i50.cleanup.sink.split_crit_edge, %while.body.i.cleanup.sink.split_crit_edge
  %.str.71.sink = phi ptr [ @.str.71, %while.body.i50.cleanup.sink.split_crit_edge ], [ @.str.68, %while.body.i.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %hbus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hbus.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull %.str.71.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %snd_hdac_reg_readb.exit.i48.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %cleanup.sink.split ], [ 0, %snd_hdac_reg_readb.exit.i48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message_no_pm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_pci_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ctrl_ppcap_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ctrl_stop_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_link_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__param_enable_trace_D0I3_S0, !1, !"__param_enable_trace_D0I3_S0", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_trace_D0I3_S0type247, !1, !"__UNIQUE_ID_enable_trace_D0I3_S0type247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_trace_D0I3_S0248, !4, !"__UNIQUE_ID_enable_trace_D0I3_S0248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 29, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 163, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hda_dsp_core_run.__UNIQUE_ID_ddebug254, !6, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 172, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hda_dsp_core_run._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @hda_dsp_core_run._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 262, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hda_dsp_enable_core._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hda_dsp_enable_core._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 287, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hda_dsp_core_reset_power_down._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @hda_dsp_core_reset_power_down._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 295, i32 3}
!29 = !{ptr @hda_dsp_core_reset_power_down._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hda_dsp_core_reset_power_down._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 302, i32 3}
!33 = !{ptr @hda_dsp_core_reset_power_down._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hda_dsp_core_reset_power_down._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 559, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hda_dsp_set_power_state._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hda_dsp_set_power_state._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 564, i32 3}
!42 = !{ptr @hda_dsp_set_power_state._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hda_dsp_set_power_state._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 569, i32 3}
!46 = !{ptr @hda_dsp_set_power_state._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hda_dsp_set_power_state._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 761, i32 4}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hda_dsp_resume._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hda_dsp_resume._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 806, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hda_dsp_runtime_idle.__UNIQUE_ID_ddebug268, !54, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 852, i32 4}
!59 = !{ptr @hda_dsp_suspend._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hda_dsp_suspend._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 889, i32 3}
!63 = !{ptr @hda_dsp_suspend._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hda_dsp_suspend._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 965, i32 3}
!67 = !{ptr @hda_dsp_d0i3_work._rs, !66, !"_rs", i1 false, i1 false}
!68 = !{ptr @__func__.hda_dsp_d0i3_work, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hda_dsp_d0i3_work._entry, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @hda_dsp_d0i3_work._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 984, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hda_dsp_core_get._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @hda_dsp_core_get._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 998, i32 3}
!79 = !{ptr @hda_dsp_core_get._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @hda_dsp_core_get._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 1009, i32 3}
!83 = !{ptr @hda_dsp_core_get._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @hda_dsp_core_get._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @hda_enable_trace_D0I3_S0, !86, !"hda_enable_trace_D0I3_S0", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 26, i32 13}
!87 = !{ptr @__param_str_enable_trace_D0I3_S0, !1, !"__param_str_enable_trace_D0I3_S0", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 90, i32 8}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug251, !89, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!92 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hda_dsp_core_reset_leave.__UNIQUE_ID_ddebug252, !89, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 97, i32 3}
!96 = !{ptr @hda_dsp_core_reset_leave._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @hda_dsp_core_reset_leave._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 107, i32 3}
!100 = !{ptr @hda_dsp_core_reset_leave._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hda_dsp_core_reset_leave._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @snd_sof_dsp_read._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @snd_sof_dsp_read._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 147, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hda_dsp_core_is_enabled.__UNIQUE_ID_ddebug253, !109, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 50, i32 8}
!114 = !{ptr @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug249, !113, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!115 = !{ptr @hda_dsp_core_reset_enter.__UNIQUE_ID_ddebug250, !113, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!116 = !{ptr @hda_dsp_core_reset_enter._entry, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 56, i32 3}
!118 = !{ptr @hda_dsp_core_reset_enter._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 67, i32 3}
!121 = !{ptr @hda_dsp_core_reset_enter._entry.56, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @hda_dsp_core_reset_enter._entry_ptr.58, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 197, i32 8}
!125 = !{ptr @hda_dsp_core_power_up.__UNIQUE_ID_ddebug255, !124, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!126 = !{ptr @hda_dsp_core_power_up.__UNIQUE_ID_ddebug256, !124, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!127 = !{ptr @hda_dsp_core_power_up._entry, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 203, i32 3}
!129 = !{ptr @hda_dsp_core_power_up._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 214, i32 3}
!132 = !{ptr @hda_dsp_core_power_up._entry.60, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @hda_dsp_core_power_up._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 233, i32 8}
!136 = !{ptr @hda_dsp_core_power_down.__UNIQUE_ID_ddebug257, !135, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!137 = !{ptr @hda_dsp_core_power_down.__UNIQUE_ID_ddebug258, !135, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!138 = !{ptr @hda_dsp_core_power_down._entry, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 239, i32 3}
!140 = !{ptr @hda_dsp_core_power_down._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 421, i32 3}
!143 = !{ptr @hda_dsp_set_D0_state._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @hda_dsp_set_D0_state._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 457, i32 3}
!147 = !{ptr @hda_dsp_set_D0_state._entry.65, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @hda_dsp_set_D0_state._entry_ptr.67, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 379, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hda_dsp_update_d0i3c_register._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @hda_dsp_update_d0i3c_register._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 389, i32 3}
!156 = !{ptr @hda_dsp_update_d0i3c_register._entry.70, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hda_dsp_update_d0i3c_register._entry_ptr.72, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 484, i32 4}
!160 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug259, !159, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 487, i32 4}
!164 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug260, !163, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 490, i32 4}
!167 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug261, !166, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 496, i32 3}
!170 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug262, !169, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 499, i32 3}
!173 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug263, !172, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 502, i32 3}
!176 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug264, !175, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 505, i32 3}
!179 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug265, !178, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 508, i32 3}
!182 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug266, !181, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 511, i32 3}
!185 = !{ptr @hda_dsp_state_log.__UNIQUE_ID_ddebug267, !184, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 688, i32 3}
!188 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @hda_resume._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @hda_resume._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 634, i32 3}
!193 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @hda_suspend._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @hda_suspend._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/sof/intel/hda-dsp.c", i32 657, i32 3}
!198 = !{ptr @hda_suspend._entry.87, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @hda_suspend._entry_ptr.89, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2148979181, i64 2148979186, i64 2148979199, i64 2148979243, i64 2148979277, i64 2148979298}
!210 = !{i8 0, i8 2}
!211 = !{!"auto-init"}
!212 = !{i64 4911858}
!213 = !{i64 2154316326}
!214 = !{i64 2154315331}
!215 = !{i64 4911463}
