; ModuleID = '/llk/IR_all_yes/drivers/soundwire/qcom.c_pt.bc'
source_filename = "../drivers/soundwire/qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_master_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_master_port_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.qcom_swrm_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qcom_swrm_ctrl = type { %struct.sdw_bus, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, %struct.work_struct, %struct.mutex, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [14 x %struct.qcom_swrm_port_config], [15 x ptr], [11 x i32], ptr, ptr, i32, i32, i32 }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.sdw_defer = type { i32, %struct.completion, ptr }
%struct.qcom_swrm_port_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.sdw_msg = type { i16, i16, i8, i8, i8, i8, ptr, i8, i8 }
%struct.sdw_port_params = type { i32, i32, i32, i32 }
%struct.sdw_transport_params = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_enable_ch = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sdw_port_config = type { i32, i32 }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_stream_runtime = type { ptr, %struct.sdw_stream_params, i32, i32, %struct.list_head, i32 }
%struct.sdw_stream_params = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_soundwire_qcom__283_1364_qcom_swrm_driver_init6 = internal global ptr @qcom_swrm_driver_init, section ".initcall6.init", align 4
@qcom_swrm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_swrm_probe, ptr @qcom_swrm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_swrm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_swrm_driver_exit = internal global ptr @qcom_swrm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [53 x i8] c"soundwire_qcom.description=Qualcomm soundwire driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [53 x i8] c"soundwire_qcom.file=drivers/soundwire/soundwire-qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [30 x i8] c"soundwire_qcom.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-soundwire\00", [17 x i8] zeroinitializer }, align 32
@qcom_swrm_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,soundwire-v1.3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @swrm_v1_3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,soundwire-v1.5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @swrm_v1_5_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@slimbus_bus = external dso_local global %struct.bus_type, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@qcom_swrm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctrl->port_lock\00", [47 x i8] zeroinitializer }, align 32
@qcom_swrm_ops = internal constant { %struct.sdw_master_ops, [32 x i8] } { %struct.sdw_master_ops { ptr null, ptr null, ptr @qcom_swrm_xfer_msg, ptr null, ptr null, ptr null, ptr @qcom_swrm_pre_bank_switch, ptr null }, [32 x i8] zeroinitializer }, align 32
@qcom_swrm_port_ops = internal constant { %struct.sdw_master_port_ops, [16 x i8] } { %struct.sdw_master_port_ops { ptr @qcom_swrm_port_params, ptr @qcom_swrm_transport_params, ptr null, ptr @qcom_swrm_port_enable }, [16 x i8] zeroinitializer }, align 32
@qcom_swrm_freq_tbl = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 9600000], [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soundwire\00", [22 x i8] zeroinitializer }, align 32
@qcom_swrm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1300, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request soundwire irq\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_swrm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/soundwire/qcom.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_swrm_probe._entry_ptr = internal global ptr @qcom_swrm_probe._entry, section ".printk_index", align 4
@qcom_swrm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1307, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register Soundwire controller (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@qcom_swrm_probe._entry_ptr.11 = internal global ptr @qcom_swrm_probe._entry.9, section ".printk_index", align 4
@qcom_swrm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1320, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Qualcomm Soundwire controller v%x.%x.%x Registered\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_swrm_probe._entry_ptr.15 = internal global ptr @qcom_swrm_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qualcomm-sdw\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qualcomm-registers\00", [45 x i8] zeroinitializer }, align 32
@swrm_reg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @swrm_reg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@qcom_swrm_cmd_fifo_rd_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"failed to read fifo: reg: 0x%x, rcmd_id: 0x%x,\09\09dev_num: 0x%x, cmd_data: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_swrm_cmd_fifo_rd_cmd\00", [38 x i8] zeroinitializer }, align 32
@qcom_swrm_cmd_fifo_rd_cmd._entry_ptr = internal global ptr @qcom_swrm_cmd_fifo_rd_cmd._entry, section ".printk_index", align 4
@swrm_wait_for_rd_fifo_avail._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.swrm_wait_for_rd_fifo_avail = private unnamed_addr constant [28 x i8] c"swrm_wait_for_rd_fifo_avail\00", align 1
@swrm_wait_for_rd_fifo_avail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.swrm_wait_for_rd_fifo_avail, ptr @.str.6, i32 271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s err read underflow\0A\00", [41 x i8] zeroinitializer }, align 32
@swrm_wait_for_rd_fifo_avail._entry_ptr = internal global ptr @swrm_wait_for_rd_fifo_avail._entry, section ".printk_index", align 4
@swrm_wait_for_wr_fifo_avail._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.swrm_wait_for_wr_fifo_avail = private unnamed_addr constant [28 x i8] c"swrm_wait_for_wr_fifo_avail\00", align 1
@swrm_wait_for_wr_fifo_avail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.swrm_wait_for_wr_fifo_avail, ptr @.str.6, i32 296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s err write overflow\0A\00", [41 x i8] zeroinitializer }, align 32
@swrm_wait_for_wr_fifo_avail._entry_ptr = internal global ptr @swrm_wait_for_wr_fifo_avail._entry, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,din-ports\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,dout-ports\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,ports-offset1\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,ports-offset2\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom,ports-sinterval-low\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,ports-block-pack-mode\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,ports-hstart\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,ports-hstop\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,ports-word-length\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom,ports-block-group-count\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom,ports-lane-control\00", [40 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qcom_swrm_irq_handler = private unnamed_addr constant [22 x i8] c"qcom_swrm_irq_handler\00", align 1
@qcom_swrm_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 515, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no slave alert found.spurious interrupt\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr = internal global ptr @qcom_swrm_irq_handler._entry, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 524, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: SWR new slave attached\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.39 = internal global ptr @qcom_swrm_irq_handler._entry.37, section ".printk_index", align 4
@qcom_swrm_irq_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 528, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Slave status not changed %x\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.42 = internal global ptr @qcom_swrm_irq_handler._entry.40, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 538, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: SWR bus clsh detected\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.46 = internal global ptr @qcom_swrm_irq_handler._entry.44, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 546, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: SWR read FIFO overflow fifo status 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.50 = internal global ptr @qcom_swrm_irq_handler._entry.48, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 552, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: SWR read FIFO underflow fifo status 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.54 = internal global ptr @qcom_swrm_irq_handler._entry.52, section ".printk_index", align 4
@qcom_swrm_irq_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 558, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: SWR write FIFO overflow fifo status %x\0A\00", [52 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.57 = internal global ptr @qcom_swrm_irq_handler._entry.55, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 565, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: SWR CMD error, fifo status 0x%x, flushing fifo\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.61 = internal global ptr @qcom_swrm_irq_handler._entry.59, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 571, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: SWR Port collision detected\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.65 = internal global ptr @qcom_swrm_irq_handler._entry.63, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 579, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: SWR read enable valid mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.69 = internal global ptr @qcom_swrm_irq_handler._entry.67, section ".printk_index", align 4
@qcom_swrm_irq_handler._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.qcom_swrm_irq_handler, ptr @.str.6, i32 597, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: SWR unknown interrupt value: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@qcom_swrm_irq_handler._entry_ptr.73 = internal global ptr @qcom_swrm_irq_handler._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDW Pin%d\00", [22 x i8] zeroinitializer }, align 32
@qcom_swrm_pdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_swrm_set_sdw_stream, ptr @qcom_swrm_get_sdw_stream, ptr null, ptr @qcom_swrm_startup, ptr @qcom_swrm_shutdown, ptr @qcom_swrm_hw_params, ptr @qcom_swrm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@qcom_swrm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.3, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qcom_swrm_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.6, i32 1031, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set sdw stream on %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_swrm_startup\00", [46 x i8] zeroinitializer }, align 32
@qcom_swrm_startup._entry_ptr = internal global ptr @qcom_swrm_startup._entry, section ".printk_index", align 4
@qcom_swrm_stream_alloc_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 931, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"All ports busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom_swrm_stream_alloc_ports\00", [35 x i8] zeroinitializer }, align 32
@qcom_swrm_stream_alloc_ports._entry_ptr = internal global ptr @qcom_swrm_stream_alloc_ports._entry, section ".printk_index", align 4
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%.3x: 0x%.2x\0A\00", [16 x i8] zeroinitializer }, align 32
@swrm_v1_3_data = internal global { %struct.qcom_swrm_data, [24 x i8] } { %struct.qcom_swrm_data { i32 16, i32 48 }, [24 x i8] zeroinitializer }, align 32
@swrm_v1_5_data = internal global { %struct.qcom_swrm_data, [24 x i8] } { %struct.qcom_swrm_data { i32 16, i32 50 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 8192, i64 16384, i64 65536]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"qcom_swrm_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1356, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1360, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"qcom_swrm_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1348, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1253, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1263, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"qcom_swrm_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 805, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"qcom_swrm_port_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 799, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"qcom_swrm_freq_tbl\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 869, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1298, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1300, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1306, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1318, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1323, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1324, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"swrm_reg_fops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1209, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 87, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 385, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 271, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 296, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1118, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1127, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1141, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1146, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1151, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1156, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1166, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1169, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1172, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1175, i32 32 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1178, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 514, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 523, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 527, i32 6 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 536, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 544, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 550, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 556, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 563, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 569, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 577, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 595, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1076, i32 50 }
@___asan_gen_.318 = private unnamed_addr constant [22 x i8] c"qcom_swrm_pdm_dai_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1049, i32 37 }
@___asan_gen_.321 = private unnamed_addr constant [24 x i8] c"qcom_swrm_dai_component\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1058, i32 46 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1030, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 931, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1204, i32 22 }
@___asan_gen_.345 = private unnamed_addr constant [15 x i8] c"swrm_v1_3_data\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 169, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"swrm_v1_5_data\00", align 1
@___asan_gen_.349 = private constant [28 x i8] c"../drivers/soundwire/qcom.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 174, i32 30 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_qcom_swrm_driver_exit, ptr @__initcall__kmod_soundwire_qcom__283_1364_qcom_swrm_driver_init6, ptr @qcom_swrm_cmd_fifo_rd_cmd._entry, ptr @qcom_swrm_cmd_fifo_rd_cmd._entry_ptr, ptr @qcom_swrm_driver_exit, ptr @qcom_swrm_irq_handler._entry, ptr @qcom_swrm_irq_handler._entry.37, ptr @qcom_swrm_irq_handler._entry.40, ptr @qcom_swrm_irq_handler._entry.44, ptr @qcom_swrm_irq_handler._entry.48, ptr @qcom_swrm_irq_handler._entry.52, ptr @qcom_swrm_irq_handler._entry.55, ptr @qcom_swrm_irq_handler._entry.59, ptr @qcom_swrm_irq_handler._entry.63, ptr @qcom_swrm_irq_handler._entry.67, ptr @qcom_swrm_irq_handler._entry.71, ptr @qcom_swrm_irq_handler._entry_ptr, ptr @qcom_swrm_irq_handler._entry_ptr.39, ptr @qcom_swrm_irq_handler._entry_ptr.42, ptr @qcom_swrm_irq_handler._entry_ptr.46, ptr @qcom_swrm_irq_handler._entry_ptr.50, ptr @qcom_swrm_irq_handler._entry_ptr.54, ptr @qcom_swrm_irq_handler._entry_ptr.57, ptr @qcom_swrm_irq_handler._entry_ptr.61, ptr @qcom_swrm_irq_handler._entry_ptr.65, ptr @qcom_swrm_irq_handler._entry_ptr.69, ptr @qcom_swrm_irq_handler._entry_ptr.73, ptr @qcom_swrm_probe._entry, ptr @qcom_swrm_probe._entry.12, ptr @qcom_swrm_probe._entry.9, ptr @qcom_swrm_probe._entry_ptr, ptr @qcom_swrm_probe._entry_ptr.11, ptr @qcom_swrm_probe._entry_ptr.15, ptr @qcom_swrm_startup._entry, ptr @qcom_swrm_startup._entry_ptr, ptr @qcom_swrm_stream_alloc_ports._entry, ptr @qcom_swrm_stream_alloc_ports._entry_ptr, ptr @swrm_wait_for_rd_fifo_avail._entry, ptr @swrm_wait_for_rd_fifo_avail._entry_ptr, ptr @swrm_wait_for_wr_fifo_avail._entry, ptr @swrm_wait_for_wr_fifo_avail._entry_ptr, ptr @qcom_swrm_driver, ptr @.str, ptr @qcom_swrm_of_match, ptr @.str.1, ptr @qcom_swrm_probe.__key, ptr @.str.2, ptr @qcom_swrm_ops, ptr @qcom_swrm_port_ops, ptr @qcom_swrm_freq_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @swrm_reg_fops, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @swrm_wait_for_rd_fifo_avail._rs, ptr @.str.21, ptr @.str.22, ptr @swrm_wait_for_wr_fifo_avail._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @qcom_swrm_irq_handler._rs, ptr @.str.35, ptr @qcom_swrm_irq_handler._rs.36, ptr @.str.38, ptr @.str.41, ptr @qcom_swrm_irq_handler._rs.43, ptr @.str.45, ptr @qcom_swrm_irq_handler._rs.47, ptr @.str.49, ptr @qcom_swrm_irq_handler._rs.51, ptr @.str.53, ptr @.str.56, ptr @qcom_swrm_irq_handler._rs.58, ptr @.str.60, ptr @qcom_swrm_irq_handler._rs.62, ptr @.str.64, ptr @qcom_swrm_irq_handler._rs.66, ptr @.str.68, ptr @qcom_swrm_irq_handler._rs.70, ptr @.str.72, ptr @.str.74, ptr @qcom_swrm_pdm_dai_ops, ptr @qcom_swrm_dai_component, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @swrm_v1_3_data, ptr @swrm_v1_5_data], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_port_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_freq_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_reg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_cmd_fifo_rd_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_wait_for_rd_fifo_avail._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_wait_for_rd_fifo_avail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_wait_for_wr_fifo_avail._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_wait_for_wr_fifo_avail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_irq_handler._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_pdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_swrm_stream_alloc_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_v1_3_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swrm_v1_5_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_swrm_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_swrm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_swrm_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i198 = alloca i32, align 4
  %off1.i = alloca [14 x i8], align 1
  %off2.i = alloca [14 x i8], align 1
  %si.i = alloca [14 x i8], align 1
  %bp_mode.i = alloca [14 x i8], align 1
  %hstart.i = alloca [14 x i8], align 1
  %hstop.i = alloca [14 x i8], align 1
  %word_length.i = alloca [14 x i8], align 1
  %blk_group_count.i = alloca [14 x i8], align 1
  %lane_control.i = alloca [14 x i8], align 1
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !178
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 984, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %default_rows = getelementptr inbounds %struct.qcom_swrm_data, ptr %call2, i32 0, i32 1
  %1 = ptrtoint ptr %default_rows to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %default_rows, align 4
  %call3 = tail call i32 @sdw_find_row_index(i32 noundef %2) #9
  %rows_index = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %rows_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %rows_index, align 4
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %call4 = tail call i32 @sdw_find_col_index(i32 noundef %5) #9
  %cols_index = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %cols_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %cols_index, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %10, @slimbus_bus
  %reg_read = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 26
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %11 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qcom_swrm_ahb_reg_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 27
  %12 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qcom_swrm_ahb_reg_write, ptr %reg_write, align 8
  %call7 = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #9
  %regmap = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %regmap, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end21_crit_edge

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qcom_swrm_cpu_reg_read, ptr %reg_read, align 4
  %reg_write13 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 27
  %15 = ptrtoint ptr %reg_write13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qcom_swrm_cpu_reg_write, ptr %reg_write13, align 8
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %mmio = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call14, ptr %mmio, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then5.if.end21_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call22 = tail call i32 @of_irq_get(ptr noundef %19, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 12
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call22, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp slt i32 %call22, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %hclk = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28, ptr %hclk, align 8
  %cmp.i191 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call.i192 = tail call i32 @clk_prepare(ptr noundef %call28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.clk_prepare_enable.exit_crit_edge

if.end34.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end34
  %call1.i = tail call i32 @clk_enable(ptr noundef %call28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call28) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end34.clk_prepare_enable.exit_crit_edge
  %dev37 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %dev37, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i, align 4
  %port_lock = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %port_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qcom_swrm_probe.__key) #9
  %broadcast = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %broadcast, align 4
  %wait.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #9
  %enumeration = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %enumeration to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %enumeration, align 4
  %wait.i193 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i193, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #9
  %ops = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @qcom_swrm_ops, ptr %ops, align 8
  %port_ops = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %port_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @qcom_swrm_port_ops, ptr %port_ops, align 4
  %compute_params = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %compute_params to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @qcom_swrm_compute_params, ptr %compute_params, align 4
  %30 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev37, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %off1.i) #9
  %34 = call ptr @memset(ptr %off1.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %off2.i) #9
  %35 = call ptr @memset(ptr %off2.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %si.i) #9
  %36 = call ptr @memset(ptr %si.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %bp_mode.i) #9
  %37 = call ptr @memset(ptr %bp_mode.i, i32 0, i32 14)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %hstart.i) #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %hstop.i) #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %word_length.i) #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %blk_group_count.i) #9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %lane_control.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i, align 4, !annotation !178
  %reg_read.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 26
  %39 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_read.i, align 4
  %call.i194 = call i32 %40(ptr noundef nonnull %call.i, i32 noundef 256, ptr noundef nonnull %val.i) #9
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i, align 4
  %and.i = and i32 %42, 31
  %num_dout_ports.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 15
  %43 = ptrtoint ptr %num_dout_ports.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i, ptr %num_dout_ports.i, align 4
  %and29.i = lshr i32 %42, 5
  %shr30.i = and i32 %and29.i, 31
  %num_din_ports.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 14
  %44 = ptrtoint ptr %num_din_ports.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr30.i, ptr %num_din_ports.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.24, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %45 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i195 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i195, label %if.end.i197, label %clk_prepare_enable.exit.qcom_swrm_get_port_config.exit_crit_edge

clk_prepare_enable.exit.qcom_swrm_get_port_config.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit

if.end.i197:                                      ; preds = %clk_prepare_enable.exit
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %48 = ptrtoint ptr %num_din_ports.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_din_ports.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.i196 = icmp sgt i32 %47, %49
  br i1 %cmp.i196, label %if.end.i197.qcom_swrm_get_port_config.exit.thread_crit_edge, label %if.end34.i

if.end.i197.qcom_swrm_get_port_config.exit.thread_crit_edge: ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit.thread

if.end34.i:                                       ; preds = %if.end.i197
  %50 = ptrtoint ptr %num_din_ports.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %num_din_ports.i, align 8
  %call.i.i214.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.25, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  %51 = call i32 @llvm.smin.i32(i32 %call.i.i214.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i214.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i214.i, -1
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end34.i.qcom_swrm_get_port_config.exit_crit_edge

if.end34.i.qcom_swrm_get_port_config.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit

if.end39.i:                                       ; preds = %if.end34.i
  %52 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i, align 4
  %54 = ptrtoint ptr %num_dout_ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_dout_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp41.i = icmp sgt i32 %53, %55
  br i1 %cmp41.i, label %if.end39.i.qcom_swrm_get_port_config.exit.thread_crit_edge, label %if.end43.i

if.end39.i.qcom_swrm_get_port_config.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit.thread

if.end43.i:                                       ; preds = %if.end39.i
  %56 = ptrtoint ptr %num_dout_ports.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %num_dout_ports.i, align 4
  %57 = ptrtoint ptr %num_din_ports.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_din_ports.i, align 8
  %add.i = add i32 %58, %53
  %dout_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 18
  call void @_set_bit(i32 noundef 0, ptr noundef %dout_port_mask.i) #9
  %din_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 19
  call void @_set_bit(i32 noundef 0, ptr noundef %din_port_mask.i) #9
  %call.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.26, ptr noundef nonnull %off1.i, i32 noundef %add.i, i32 noundef 0) #9
  %59 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool48.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end43.i.qcom_swrm_get_port_config.exit_crit_edge

if.end43.i.qcom_swrm_get_port_config.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit

if.end50.i:                                       ; preds = %if.end43.i
  %call.i215.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.27, ptr noundef nonnull %off2.i, i32 noundef %add.i, i32 noundef 0) #9
  %60 = call i32 @llvm.smin.i32(i32 %call.i215.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i215.i)
  %tobool53.not.i = icmp sgt i32 %call.i215.i, -1
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end50.i.qcom_swrm_get_port_config.exit_crit_edge

if.end50.i.qcom_swrm_get_port_config.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit

if.end55.i:                                       ; preds = %if.end50.i
  %call.i216.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.28, ptr noundef nonnull %si.i, i32 noundef %add.i, i32 noundef 0) #9
  %61 = call i32 @llvm.smin.i32(i32 %call.i216.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i216.i)
  %tobool58.not.i = icmp sgt i32 %call.i216.i, -1
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end55.i.qcom_swrm_get_port_config.exit_crit_edge

if.end55.i.qcom_swrm_get_port_config.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit

if.end60.i:                                       ; preds = %if.end55.i
  %call.i217.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.29, ptr noundef nonnull %bp_mode.i, i32 noundef %add.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i217.i)
  %tobool63.not.i = icmp sgt i32 %call.i217.i, -1
  br i1 %tobool63.not.i, label %if.end60.i.if.end69.i_crit_edge, label %if.then64.i

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then64.i:                                      ; preds = %if.end60.i
  %version.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 13
  %62 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16973825, i32 %63)
  %cmp65.i = icmp ult i32 %63, 16973825
  br i1 %cmp65.i, label %if.then66.i, label %if.then64.i.qcom_swrm_get_port_config.exit.thread_crit_edge

if.then64.i.qcom_swrm_get_port_config.exit.thread_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit.thread

if.then66.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = call ptr @memset(ptr %bp_mode.i, i32 255, i32 14)
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then66.i, %if.end60.i.if.end69.i_crit_edge
  %65 = call ptr @memset(ptr %hstart.i, i32 255, i32 14)
  %call.i218.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.30, ptr noundef nonnull %hstart.i, i32 noundef %add.i, i32 noundef 0) #9
  %66 = call ptr @memset(ptr %hstop.i, i32 255, i32 14)
  %call.i219.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.31, ptr noundef nonnull %hstop.i, i32 noundef %add.i, i32 noundef 0) #9
  %67 = call ptr @memset(ptr %word_length.i, i32 255, i32 14)
  %call.i220.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.32, ptr noundef nonnull %word_length.i, i32 noundef %add.i, i32 noundef 0) #9
  %68 = call ptr @memset(ptr %blk_group_count.i, i32 255, i32 14)
  %call.i221.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef nonnull %blk_group_count.i, i32 noundef %add.i, i32 noundef 0) #9
  %69 = call ptr @memset(ptr %lane_control.i, i32 255, i32 14)
  %call.i222.i = call i32 @of_property_read_variable_u8_array(ptr noundef %33, ptr noundef nonnull @.str.34, ptr noundef nonnull %lane_control.i, i32 noundef %add.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp85223.i = icmp sgt i32 %add.i, 0
  br i1 %cmp85223.i, label %if.end69.i.for.body.i_crit_edge, label %if.end69.i.qcom_swrm_get_port_config.exit.thread215_crit_edge

if.end69.i.qcom_swrm_get_port_config.exit.thread215_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit.thread215

if.end69.i.for.body.i_crit_edge:                  ; preds = %if.end69.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end69.i.for.body.i_crit_edge
  %i.0224.i = phi i32 [ %add86.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end69.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [14 x i8], ptr %si.i, i32 0, i32 %i.0224.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i, align 1
  %add86.i = add nuw nsw i32 %i.0224.i, 1
  %arrayidx87.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i
  %72 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx87.i, align 1
  %arrayidx89.i = getelementptr [14 x i8], ptr %off1.i, i32 0, i32 %i.0224.i
  %73 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx89.i, align 1
  %off193.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 1
  %75 = ptrtoint ptr %off193.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %off193.i, align 1
  %arrayidx94.i = getelementptr [14 x i8], ptr %off2.i, i32 0, i32 %i.0224.i
  %76 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx94.i, align 1
  %off298.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 2
  %78 = ptrtoint ptr %off298.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %off298.i, align 1
  %arrayidx99.i = getelementptr [14 x i8], ptr %bp_mode.i, i32 0, i32 %i.0224.i
  %79 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx99.i, align 1
  %bp_mode103.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 3
  %81 = ptrtoint ptr %bp_mode103.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %bp_mode103.i, align 1
  %arrayidx104.i = getelementptr [14 x i8], ptr %hstart.i, i32 0, i32 %i.0224.i
  %82 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx104.i, align 1
  %hstart108.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 4
  %84 = ptrtoint ptr %hstart108.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %hstart108.i, align 1
  %arrayidx109.i = getelementptr [14 x i8], ptr %hstop.i, i32 0, i32 %i.0224.i
  %85 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx109.i, align 1
  %hstop113.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 5
  %87 = ptrtoint ptr %hstop113.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %hstop113.i, align 1
  %arrayidx114.i = getelementptr [14 x i8], ptr %word_length.i, i32 0, i32 %i.0224.i
  %88 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx114.i, align 1
  %word_length118.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 6
  %90 = ptrtoint ptr %word_length118.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %word_length118.i, align 1
  %arrayidx119.i = getelementptr [14 x i8], ptr %blk_group_count.i, i32 0, i32 %i.0224.i
  %91 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx119.i, align 1
  %blk_group_count123.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 7
  %93 = ptrtoint ptr %blk_group_count123.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %blk_group_count123.i, align 1
  %arrayidx124.i = getelementptr [14 x i8], ptr %lane_control.i, i32 0, i32 %i.0224.i
  %94 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx124.i, align 1
  %lane_control128.i = getelementptr %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 23, i32 %add86.i, i32 8
  %96 = ptrtoint ptr %lane_control128.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %lane_control128.i, align 1
  %exitcond.not.i = icmp eq i32 %add86.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.qcom_swrm_get_port_config.exit.thread215_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qcom_swrm_get_port_config.exit.thread215_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_get_port_config.exit.thread215

qcom_swrm_get_port_config.exit.thread:            ; preds = %if.then64.i.qcom_swrm_get_port_config.exit.thread_crit_edge, %if.end39.i.qcom_swrm_get_port_config.exit.thread_crit_edge, %if.end.i197.qcom_swrm_get_port_config.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i217.i, %if.then64.i.qcom_swrm_get_port_config.exit.thread_crit_edge ], [ -22, %if.end39.i.qcom_swrm_get_port_config.exit.thread_crit_edge ], [ -22, %if.end.i197.qcom_swrm_get_port_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %lane_control.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %blk_group_count.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %word_length.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstop.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstart.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bp_mode.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %si.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off2.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off1.i) #9
  br label %err_clk

qcom_swrm_get_port_config.exit.thread215:         ; preds = %for.body.i.qcom_swrm_get_port_config.exit.thread215_crit_edge, %if.end69.i.qcom_swrm_get_port_config.exit.thread215_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %lane_control.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %blk_group_count.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %word_length.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstop.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstart.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bp_mode.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %si.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off2.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off1.i) #9
  br label %if.end45

qcom_swrm_get_port_config.exit:                   ; preds = %if.end55.i.qcom_swrm_get_port_config.exit_crit_edge, %if.end50.i.qcom_swrm_get_port_config.exit_crit_edge, %if.end43.i.qcom_swrm_get_port_config.exit_crit_edge, %if.end34.i.qcom_swrm_get_port_config.exit_crit_edge, %clk_prepare_enable.exit.qcom_swrm_get_port_config.exit_crit_edge
  %retval.0.i = phi i32 [ %45, %clk_prepare_enable.exit.qcom_swrm_get_port_config.exit_crit_edge ], [ %51, %if.end34.i.qcom_swrm_get_port_config.exit_crit_edge ], [ %59, %if.end43.i.qcom_swrm_get_port_config.exit_crit_edge ], [ %60, %if.end50.i.qcom_swrm_get_port_config.exit_crit_edge ], [ %61, %if.end55.i.qcom_swrm_get_port_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %lane_control.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %blk_group_count.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %word_length.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstop.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hstart.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bp_mode.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %si.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off2.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %off1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool43.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool43.not, label %qcom_swrm_get_port_config.exit.if.end45_crit_edge, label %qcom_swrm_get_port_config.exit.err_clk_crit_edge

qcom_swrm_get_port_config.exit.err_clk_crit_edge: ; preds = %qcom_swrm_get_port_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk

qcom_swrm_get_port_config.exit.if.end45_crit_edge: ; preds = %qcom_swrm_get_port_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %qcom_swrm_get_port_config.exit.if.end45_crit_edge, %qcom_swrm_get_port_config.exit.thread215
  %params47 = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11
  %max_dr_freq = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11, i32 2
  %97 = ptrtoint ptr %max_dr_freq to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 9600000, ptr %max_dr_freq, align 4
  %curr_dr_freq = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11, i32 3
  %98 = ptrtoint ptr %curr_dr_freq to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 9600000, ptr %curr_dr_freq, align 4
  %99 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %call2, align 4
  %col = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11, i32 5
  %101 = ptrtoint ptr %col to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %col, align 4
  %102 = ptrtoint ptr %default_rows to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %default_rows, align 4
  %row = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11, i32 6
  %104 = ptrtoint ptr %row to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %row, align 4
  %105 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg_read.i, align 4
  %call51 = call i32 %106(ptr noundef nonnull %call.i, i32 noundef 4172, ptr noundef nonnull %val) #9
  %107 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val, align 4
  %and = and i32 %108, 1
  %109 = ptrtoint ptr %params47 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and, ptr %params47, align 4
  %110 = xor i32 %and, 1
  %next_bank = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 11, i32 1
  %111 = ptrtoint ptr %next_bank to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %next_bank, align 4
  %max_clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 2
  %112 = ptrtoint ptr %max_clk_freq to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 9600000, ptr %max_clk_freq, align 8
  %num_clk_gears = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 3
  %113 = ptrtoint ptr %num_clk_gears to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %num_clk_gears, align 4
  %num_clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 5
  %114 = ptrtoint ptr %num_clk_freq to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %num_clk_freq, align 4
  %clk_freq = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 6
  %115 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @qcom_swrm_freq_tbl, ptr %clk_freq, align 8
  %116 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call2, align 4
  %default_col = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 9
  %118 = ptrtoint ptr %default_col to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %default_col, align 4
  %119 = ptrtoint ptr %default_rows to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %default_rows, align 4
  %default_row = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 12, i32 8
  %121 = ptrtoint ptr %default_row to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %default_row, align 8
  %122 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_read.i, align 4
  %version = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 13
  %call59 = call i32 %123(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %version) #9
  %124 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq, align 8
  %call61 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %125, ptr noundef null, ptr noundef nonnull @qcom_swrm_irq_handler, i32 noundef 8193, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #12
  br label %err_clk

if.end67:                                         ; preds = %if.end45
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %126 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fwnode, align 4
  %call69 = call i32 @sdw_bus_master_add(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef %127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end75, label %do.end74

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call69) #12
  br label %err_clk

if.end75:                                         ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i198) #9
  %128 = ptrtoint ptr %rows_index to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rows_index, align 4
  %130 = ptrtoint ptr %cols_index to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cols_index, align 8
  %shl.i = shl i32 %129, 3
  %and15.i = and i32 %shl.i, 248
  %and41.i = and i32 %131, 7
  %or.i = or i32 %and41.i, %and15.i
  %132 = ptrtoint ptr %val.i198 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i, ptr %val.i198, align 4
  %reg_write.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 27
  %133 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_write.i, align 8
  %call.i200 = call i32 %134(ptr noundef %call.i, i32 noundef 4124, i32 noundef %or.i) #9
  %135 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_write.i, align 8
  %call43.i = call i32 %136(ptr noundef %call.i, i32 noundef 1280, i32 noundef 1) #9
  %intr_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 20
  %137 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 131071, ptr %intr_mask.i, align 8
  %138 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_write.i, align 8
  %call45.i = call i32 %139(ptr noundef %call.i, i32 noundef 516, i32 noundef 131071) #9
  %140 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_read.i, align 4
  %call46.i = call i32 %141(ptr noundef %call.i, i32 noundef 4168, ptr noundef nonnull %val.i198) #9
  %142 = ptrtoint ptr %val.i198 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val.i198, align 4
  %or.i.i = or i32 %143, 4063232
  store i32 %or.i.i, ptr %val.i198, align 4
  %144 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_write.i, align 8
  %call48.i = call i32 %145(ptr noundef %call.i, i32 noundef 4168, i32 noundef %or.i.i) #9
  %146 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_write.i, align 8
  %call50.i = call i32 %147(ptr noundef %call.i, i32 noundef 4164, i32 noundef 2) #9
  %148 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17104897, i32 %149)
  %cmp.i203 = icmp ugt i32 %149, 17104897
  %150 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_write.i, align 8
  %..i = select i1 %cmp.i203, i32 -2147483641, i32 7
  %call55.i = call i32 %151(ptr noundef %call.i, i32 noundef 788, i32 noundef %..i) #9
  %152 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_write.i, align 8
  %call58.i = call i32 %153(ptr noundef %call.i, i32 noundef 4, i32 noundef 3) #9
  %mmio.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 3
  %154 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i, align 8
  %tobool59.not.i = icmp eq ptr %155, null
  br i1 %tobool59.not.i, label %if.end75.qcom_swrm_init.exit_crit_edge, label %if.then60.i

if.end75.qcom_swrm_init.exit_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_init.exit

if.then60.i:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg_write.i, align 8
  %call62.i = call i32 %157(ptr noundef %call.i, i32 noundef 528, i32 noundef 131071) #9
  br label %qcom_swrm_init.exit

qcom_swrm_init.exit:                              ; preds = %if.then60.i, %if.end75.qcom_swrm_init.exit_crit_edge
  %slave_status.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 28
  %158 = ptrtoint ptr %slave_status.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %slave_status.i, align 4
  %159 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_read.i, align 4
  %call65.i = call i32 %160(ptr noundef %call.i, i32 noundef 256, ptr noundef nonnull %val.i198) #9
  %161 = ptrtoint ptr %val.i198 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val.i198, align 4
  %and82.i = lshr i32 %162, 15
  %shr.i = and i32 %and82.i, 31
  %rd_fifo_depth.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 30
  %163 = ptrtoint ptr %rd_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %shr.i, ptr %rd_fifo_depth.i, align 4
  %and99.i = lshr i32 %162, 10
  %shr100.i = and i32 %and99.i, 31
  %wr_fifo_depth.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 29
  %164 = ptrtoint ptr %wr_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %shr100.i, ptr %wr_fifo_depth.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i198) #9
  %call79 = call i32 @wait_for_completion_timeout(ptr noundef %enumeration, i32 noundef 20) #9
  %165 = ptrtoint ptr %num_dout_ports.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_dout_ports.i, align 4
  %167 = ptrtoint ptr %num_din_ports.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_din_ports.i, align 8
  %add.i206 = add i32 %168, %166
  %169 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev37, align 8
  %171 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i206, i32 168) #9
  %172 = extractvalue { i32, i1 } %171, 1
  br i1 %172, label %qcom_swrm_init.exit.err_master_add_crit_edge, label %devm_kcalloc.exit.i, !prof !179

qcom_swrm_init.exit.err_master_add_crit_edge:     ; preds = %qcom_swrm_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master_add

devm_kcalloc.exit.i:                              ; preds = %qcom_swrm_init.exit
  %173 = extractvalue { i32, i1 } %171, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %170, i32 noundef %173, i32 noundef 3520) #9
  %tobool.not.i207 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i207, label %devm_kcalloc.exit.i.err_master_add_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.err_master_add_crit_edge:     ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master_add

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i206)
  %cmp51.not.i = icmp eq i32 %add.i206, 0
  br i1 %cmp51.not.i, label %for.cond.preheader.i.qcom_swrm_register_dais.exit_crit_edge, label %for.cond.preheader.i.for.body.i209_crit_edge

for.cond.preheader.i.for.body.i209_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i209

for.cond.preheader.i.qcom_swrm_register_dais.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_register_dais.exit

for.body.i209:                                    ; preds = %if.end7.i.for.body.i209_crit_edge, %for.cond.preheader.i.for.body.i209_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end7.i.for.body.i209_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i209_crit_edge ]
  %call2.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %170, i32 noundef 3264, ptr noundef nonnull @.str.74, i32 noundef %i.052.i) #9
  %arrayidx.i208 = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i.i, i32 %i.052.i
  %174 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call2.i, ptr %arrayidx.i208, align 8
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %for.body.i209.err_master_add_crit_edge, label %if.end7.i

for.body.i209.err_master_add_crit_edge:           ; preds = %for.body.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master_add

if.end7.i:                                        ; preds = %for.body.i209
  %175 = ptrtoint ptr %num_dout_ports.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_dout_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %176)
  %cmp9.i = icmp slt i32 %i.052.i, %176
  %playback.i = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i.i, i32 %i.052.i, i32 11
  %capture.i = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i.i, i32 %i.052.i, i32 10
  %stream.0.i = select i1 %cmp9.i, ptr %playback.i, ptr %capture.i
  %channels_min.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 5
  %177 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 6
  %178 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %channels_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 2
  %179 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 128, ptr %rates.i, align 8
  %formats.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 1
  %180 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 4, ptr %formats.i, align 8
  %ops.i = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i.i, i32 %i.052.i, i32 8
  %181 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @qcom_swrm_pdm_dai_ops, ptr %ops.i, align 8
  %id.i = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i.i, i32 %i.052.i, i32 1
  %182 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %i.052.i, ptr %id.i, align 4
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i210 = icmp eq i32 %inc.i, %add.i206
  br i1 %exitcond.not.i210, label %if.end7.i.qcom_swrm_register_dais.exit_crit_edge, label %if.end7.i.for.body.i209_crit_edge

if.end7.i.for.body.i209_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i209

if.end7.i.qcom_swrm_register_dais.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_register_dais.exit

qcom_swrm_register_dais.exit:                     ; preds = %if.end7.i.qcom_swrm_register_dais.exit_crit_edge, %for.cond.preheader.i.qcom_swrm_register_dais.exit_crit_edge
  %183 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev37, align 8
  %call17.i = call i32 @devm_snd_soc_register_component(ptr noundef %184, ptr noundef nonnull @qcom_swrm_dai_component, ptr noundef nonnull %call5.i.i.i, i32 noundef %add.i206) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool81.not = icmp eq i32 %call17.i, 0
  br i1 %tobool81.not, label %do.end86, label %qcom_swrm_register_dais.exit.err_master_add_crit_edge

qcom_swrm_register_dais.exit.err_master_add_crit_edge: ; preds = %qcom_swrm_register_dais.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master_add

do.end86:                                         ; preds = %qcom_swrm_register_dais.exit
  call void @__sanitizer_cov_trace_pc() #11
  %185 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %version, align 4
  %shr = lshr i32 %186, 24
  %shr90 = lshr i32 %186, 16
  %and91 = and i32 %shr90, 255
  %and93 = and i32 %186, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %shr, i32 noundef %and91, i32 noundef %and93) #12
  %debugfs = getelementptr inbounds %struct.sdw_bus, ptr %call.i, i32 0, i32 14
  %187 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %debugfs, align 8
  %call95 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef %188) #9
  %debugfs96 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %call.i, i32 0, i32 4
  %189 = ptrtoint ptr %debugfs96 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call95, ptr %debugfs96, align 4
  %call98 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %call95, ptr noundef nonnull %call.i, ptr noundef nonnull @swrm_reg_fops) #9
  br label %cleanup

err_master_add:                                   ; preds = %qcom_swrm_register_dais.exit.err_master_add_crit_edge, %for.body.i209.err_master_add_crit_edge, %devm_kcalloc.exit.i.err_master_add_crit_edge, %qcom_swrm_init.exit.err_master_add_crit_edge
  %retval.0.i211220 = phi i32 [ %call17.i, %qcom_swrm_register_dais.exit.err_master_add_crit_edge ], [ -12, %devm_kcalloc.exit.i.err_master_add_crit_edge ], [ -12, %qcom_swrm_init.exit.err_master_add_crit_edge ], [ -12, %for.body.i209.err_master_add_crit_edge ]
  call void @sdw_bus_master_delete(ptr noundef nonnull %call.i) #9
  br label %err_clk

err_clk:                                          ; preds = %err_master_add, %do.end74, %do.end66, %qcom_swrm_get_port_config.exit.err_clk_crit_edge, %qcom_swrm_get_port_config.exit.thread
  %ret.0 = phi i32 [ %retval.0.i, %qcom_swrm_get_port_config.exit.err_clk_crit_edge ], [ %call61, %do.end66 ], [ %call69, %do.end74 ], [ %retval.0.i211220, %err_master_add ], [ %retval.0.i.ph, %qcom_swrm_get_port_config.exit.thread ]
  %190 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hclk, align 8
  call void @clk_disable(ptr noundef %191) #9
  call void @clk_unprepare(ptr noundef %191) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %do.end86, %if.then31, %if.end21.cleanup_crit_edge, %if.then17, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end86 ], [ %17, %if.then17 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ %22, %if.then31 ], [ %ret.0, %err_clk ], [ %call22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @sdw_bus_master_delete(ptr noundef %1) #9
  %hclk = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_find_row_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_find_col_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_ahb_reg_read(ptr nocapture noundef readonly %ctrl, i32 noundef %reg, ptr noundef %val) #2 align 64 {
entry:
  %reg.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %reg, ptr %reg.addr, align 4
  %regmap = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %ctrl, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_write(ptr noundef %2, i32 noundef 3213, ptr noundef nonnull %reg.addr, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 3217, ptr noundef %val, i32 noundef 4) #9
  %3 = lshr i32 %call1, 30
  %4 = and i32 %3, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_ahb_reg_write(ptr nocapture noundef readonly %ctrl, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %reg, ptr %reg.addr, align 4
  %1 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val, ptr %val.addr, align 4
  %regmap = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 3205, ptr noundef nonnull %val.addr, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 3209, ptr noundef nonnull %reg.addr, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_cpu_reg_read(ptr nocapture noundef readonly %ctrl, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !180
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_cpu_reg_write(ptr nocapture noundef readonly %ctrl, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %mmio = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %ctrl, i32 0, i32 3
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !183
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_compute_params(ptr noundef readonly %bus) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rt_list = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 13
  %0 = ptrtoint ptr %m_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn176 = load ptr, ptr %m_rt_list, align 4
  %cmp.not177 = icmp eq ptr %.pn176, %m_rt_list
  br i1 %cmp.not177, label %entry.for.end109_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

for.cond.loopexit:                                ; preds = %for.cond29.loopexit.for.cond.loopexit_crit_edge, %for.end.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i32 [ %i.0178, %for.end.for.cond.loopexit_crit_edge ], [ %i.2.lcssa, %for.cond29.loopexit.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %.pn179 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn179, align 4
  %cmp.not = icmp eq ptr %.pn, %m_rt_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end109_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.for.end109_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn179 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn176, %entry.for.body_crit_edge ]
  %i.0178 = phi i32 [ %i.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %port_list = getelementptr i8, ptr %.pn179, i32 -16
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn157164 = load ptr, ptr %port_list, align 4
  %cmp11.not165 = icmp eq ptr %.pn157164, %port_list
  br i1 %cmp11.not165, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %.pn157166 = phi ptr [ %.pn157, %for.inc.for.body13_crit_edge ], [ %.pn157164, %for.body.for.body13_crit_edge ]
  %p_rt.0 = getelementptr i8, ptr %.pn157166, i32 -64
  %3 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_rt.0, align 4
  %port_num = getelementptr i8, ptr %.pn157166, i32 -52
  %5 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %port_num, align 4
  %word_length = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %4, i32 6
  %6 = ptrtoint ptr %word_length to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %word_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp15.not = icmp eq i8 %7, -1
  br i1 %cmp15.not, label %for.body13.for.inc_crit_edge, label %if.then

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  %port_params = getelementptr i8, ptr %.pn157166, i32 -16
  %add = add nuw nsw i32 %conv, 1
  %8 = ptrtoint ptr %port_params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %4, ptr %port_params, align 4
  %bps1.i = getelementptr i8, ptr %.pn157166, i32 -12
  %9 = ptrtoint ptr %bps1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %bps1.i, align 4
  %flow_mode2.i = getelementptr i8, ptr %.pn157166, i32 -8
  %10 = ptrtoint ptr %flow_mode2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flow_mode2.i, align 4
  %data_mode3.i = getelementptr i8, ptr %.pn157166, i32 -4
  %11 = ptrtoint ptr %data_mode3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data_mode3.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body13.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn157166 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn157 = load ptr, ptr %.pn157166, align 4
  %cmp11.not = icmp eq ptr %.pn157, %port_list
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %slave_rt_list = getelementptr i8, ptr %.pn179, i32 -24
  %13 = ptrtoint ptr %slave_rt_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn158171 = load ptr, ptr %slave_rt_list, align 4
  %cmp31.not172 = icmp eq ptr %.pn158171, %slave_rt_list
  br i1 %cmp31.not172, label %for.end.for.cond.loopexit_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.for.cond.loopexit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.cond29.loopexit:                              ; preds = %if.end88.for.cond29.loopexit_crit_edge, %for.body34.for.cond29.loopexit_crit_edge
  %i.2.lcssa = phi i32 [ %i.1173, %for.body34.for.cond29.loopexit_crit_edge ], [ %inc, %if.end88.for.cond29.loopexit_crit_edge ]
  %14 = ptrtoint ptr %.pn158174 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn158 = load ptr, ptr %.pn158174, align 4
  %cmp31.not = icmp eq ptr %.pn158, %slave_rt_list
  br i1 %cmp31.not, label %for.cond29.loopexit.for.cond.loopexit_crit_edge, label %for.cond29.loopexit.for.body34_crit_edge

for.cond29.loopexit.for.body34_crit_edge:         ; preds = %for.cond29.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.cond29.loopexit.for.cond.loopexit_crit_edge:  ; preds = %for.cond29.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body34:                                       ; preds = %for.cond29.loopexit.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %.pn158174 = phi ptr [ %.pn158, %for.cond29.loopexit.for.body34_crit_edge ], [ %.pn158171, %for.end.for.body34_crit_edge ]
  %i.1173 = phi i32 [ %i.2.lcssa, %for.cond29.loopexit.for.body34_crit_edge ], [ %i.0178, %for.end.for.body34_crit_edge ]
  %s_rt.0 = getelementptr i8, ptr %.pn158174, i32 -12
  %15 = ptrtoint ptr %s_rt.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_rt.0, align 4
  %port_list37 = getelementptr i8, ptr %.pn158174, i32 8
  %17 = ptrtoint ptr %port_list37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn159167 = load ptr, ptr %port_list37, align 4
  %cmp44.not168 = icmp eq ptr %.pn159167, %port_list37
  br i1 %cmp44.not168, label %for.body34.for.cond29.loopexit_crit_edge, label %for.body34.for.body47_crit_edge

for.body34.for.body47_crit_edge:                  ; preds = %for.body34
  br label %for.body47

for.body34.for.cond29.loopexit_crit_edge:         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond29.loopexit

for.body47:                                       ; preds = %if.end88.for.body47_crit_edge, %for.body34.for.body47_crit_edge
  %.pn159170 = phi ptr [ %.pn159, %if.end88.for.body47_crit_edge ], [ %.pn159167, %for.body34.for.body47_crit_edge ]
  %i.2169 = phi i32 [ %inc, %if.end88.for.body47_crit_edge ], [ %i.1173, %for.body34.for.body47_crit_edge ]
  %p_rt.1 = getelementptr i8, ptr %.pn159170, i32 -64
  %18 = ptrtoint ptr %p_rt.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p_rt.1, align 4
  %arrayidx49 = getelementptr %struct.sdw_slave, ptr %16, i32 0, i32 9, i32 %19
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  %i.2. = select i1 %tobool.not, i32 %i.2169, i32 %21
  %pcfg.0 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2.
  %port_num58 = getelementptr i8, ptr %.pn159170, i32 -52
  %22 = ptrtoint ptr %port_num58 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %port_num58, align 4
  %23 = ptrtoint ptr %pcfg.0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcfg.0, align 1
  %conv59 = zext i8 %24 to i32
  %add60 = add nuw nsw i32 %conv59, 1
  %sample_interval = getelementptr i8, ptr %.pn159170, i32 -44
  %25 = ptrtoint ptr %sample_interval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add60, ptr %sample_interval, align 4
  %off1 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 1
  %26 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %off1, align 1
  %conv62 = zext i8 %27 to i32
  %offset1 = getelementptr i8, ptr %.pn159170, i32 -40
  %28 = ptrtoint ptr %offset1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv62, ptr %offset1, align 4
  %off2 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 2
  %29 = ptrtoint ptr %off2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %off2, align 1
  %conv64 = zext i8 %30 to i32
  %offset2 = getelementptr i8, ptr %.pn159170, i32 -36
  %31 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv64, ptr %offset2, align 4
  %bp_mode = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 3
  %32 = ptrtoint ptr %bp_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bp_mode, align 1
  %conv66 = zext i8 %33 to i32
  %blk_pkg_mode = getelementptr i8, ptr %.pn159170, i32 -24
  %34 = ptrtoint ptr %blk_pkg_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv66, ptr %blk_pkg_mode, align 4
  %blk_group_count = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 7
  %35 = ptrtoint ptr %blk_group_count to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %blk_group_count, align 1
  %conv68 = zext i8 %36 to i32
  %blk_grp_ctrl = getelementptr i8, ptr %.pn159170, i32 -48
  %37 = ptrtoint ptr %blk_grp_ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv68, ptr %blk_grp_ctrl, align 4
  %hstart = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 4
  %38 = ptrtoint ptr %hstart to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hstart, align 1
  %conv70 = zext i8 %39 to i32
  %hstart72 = getelementptr i8, ptr %.pn159170, i32 -32
  %40 = ptrtoint ptr %hstart72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv70, ptr %hstart72, align 4
  %hstop = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 5
  %41 = ptrtoint ptr %hstop to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hstop, align 1
  %conv73 = zext i8 %42 to i32
  %hstop75 = getelementptr i8, ptr %.pn159170, i32 -28
  %43 = ptrtoint ptr %hstop75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv73, ptr %hstop75, align 4
  %lane_control = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 8
  %44 = ptrtoint ptr %lane_control to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lane_control, align 1
  %conv76 = zext i8 %45 to i32
  %lane_ctrl = getelementptr i8, ptr %.pn159170, i32 -20
  %46 = ptrtoint ptr %lane_ctrl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv76, ptr %lane_ctrl, align 4
  %word_length78 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %i.2., i32 6
  %47 = ptrtoint ptr %word_length78 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %word_length78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp80.not = icmp eq i8 %48, -1
  br i1 %cmp80.not, label %for.body47.if.end88_crit_edge, label %if.then82

for.body47.if.end88_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then82:                                        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  %conv79 = zext i8 %48 to i32
  %port_params83 = getelementptr i8, ptr %.pn159170, i32 -16
  %add87 = add nuw nsw i32 %conv79, 1
  %49 = ptrtoint ptr %port_params83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %19, ptr %port_params83, align 4
  %bps1.i161 = getelementptr i8, ptr %.pn159170, i32 -12
  %50 = ptrtoint ptr %bps1.i161 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add87, ptr %bps1.i161, align 4
  %flow_mode2.i162 = getelementptr i8, ptr %.pn159170, i32 -8
  %51 = ptrtoint ptr %flow_mode2.i162 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flow_mode2.i162, align 4
  %data_mode3.i163 = getelementptr i8, ptr %.pn159170, i32 -4
  %52 = ptrtoint ptr %data_mode3.i163 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %data_mode3.i163, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %for.body47.if.end88_crit_edge
  %inc = add i32 %i.2169, 1
  %53 = ptrtoint ptr %.pn159170 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn159 = load ptr, ptr %.pn159170, align 4
  %cmp44.not = icmp eq ptr %.pn159, %port_list37
  br i1 %cmp44.not, label %if.end88.for.cond29.loopexit_crit_edge, label %if.end88.for.body47_crit_edge

if.end88.for.body47_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

if.end88.for.cond29.loopexit_crit_edge:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond29.loopexit

for.end109:                                       ; preds = %for.cond.loopexit.for.end109_crit_edge, %entry.for.end109_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %status.i2.i = alloca i32, align 4
  %status.i.i = alloca i32, align 4
  %id.i = alloca %struct.sdw_slave_id, align 8
  %val1.i = alloca i32, align 4
  %val2.i = alloca i32, align 4
  %val.i224 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %value = alloca i32, align 4
  %intr_sts = alloca i32, align 4
  %slave_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_sts) #9
  %0 = ptrtoint ptr %intr_sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intr_sts, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_status) #9
  %1 = ptrtoint ptr %slave_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %slave_status, align 4, !annotation !178
  %reg_read = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 26
  %2 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_read, align 4
  %call = call i32 %3(ptr noundef %dev_id, i32 noundef 512, ptr noundef nonnull %intr_sts) #9
  %4 = ptrtoint ptr %intr_sts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_sts, align 4
  %intr_mask = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 20
  %6 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_mask, align 8
  %and = and i32 %7, %5
  %reg_write159 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 27
  %broadcast = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 5
  %dev138 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 1
  %slave_status29 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 28
  %arrayidx.i228 = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 0
  %arrayidx.1.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 1
  %arrayidx.2.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 2
  %arrayidx.3.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 3
  %arrayidx.4.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 4
  %arrayidx.5.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 5
  %arrayidx.6.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 6
  %arrayidx.7.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 7
  %arrayidx.8.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 8
  %arrayidx.9.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 9
  %arrayidx.10.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 10
  %arrayidx.i240 = getelementptr inbounds i8, ptr %val2.i, i32 1
  %arrayidx8.i = getelementptr inbounds i8, ptr %val1.i, i32 3
  %arrayidx13.i = getelementptr inbounds i8, ptr %val1.i, i32 2
  %arrayidx17.i = getelementptr inbounds i8, ptr %val1.i, i32 1
  %slaves.i = getelementptr inbounds %struct.sdw_bus, ptr %dev_id, i32 0, i32 4
  %.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %id.i, i32 0, i32 1
  %bus_lock.i.i = getelementptr inbounds %struct.sdw_bus, ptr %dev_id, i32 0, i32 6
  %assigned.i.i = getelementptr inbounds %struct.sdw_bus, ptr %dev_id, i32 0, i32 5
  %enumeration.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %intr_sts_masked.0 = phi i32 [ %and, %entry ], [ %and164, %for.end.do.body_crit_edge ]
  %ret.0 = phi i32 [ 1, %entry ], [ %ret.2, %for.end.do.body_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %ret.1246 = phi i32 [ %ret.0, %do.body ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %i.0245 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0245
  %and1 = and i32 %shl, %intr_sts_masked.0
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and1, ptr %value, align 4
  %9 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1, label %do.body148 [
    i32 0, label %for.body.for.inc_crit_edge
    i32 1, label %sw.bb
    i32 2, label %for.body.do.body16_crit_edge
    i32 4, label %for.body.do.body16_crit_edge252
    i32 8, label %do.body45
    i32 16, label %sw.bb60
    i32 32, label %sw.bb74
    i32 64, label %sw.bb88
    i32 128, label %sw.bb97
    i32 256, label %do.body114
    i32 512, label %do.body131
    i32 1024, label %sw.bb147
    i32 8192, label %for.body.for.inc_crit_edge253
    i32 16384, label %for.body.for.inc_crit_edge254
    i32 65536, label %for.body.for.inc_crit_edge255
  ]

for.body.for.inc_crit_edge255:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.for.inc_crit_edge254:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.for.inc_crit_edge253:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.do.body16_crit_edge252:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

for.body.do.body16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !178
  %11 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_read, align 4
  %call.i = call i32 %12(ptr noundef %dev_id, i32 noundef 4240, ptr noundef nonnull %val.i) #9
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 2
  br i1 %cmp1.i, label %sw.bb.if.else_crit_edge, label %for.inc.i

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.i:                                        ; preds = %sw.bb
  %shr.1.i = lshr i32 %14, 2
  %15 = and i32 %14, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp1.1.i = icmp eq i32 %15, 8
  br i1 %cmp1.1.i, label %for.inc.i.if.else_crit_edge, label %for.inc.1.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.1.i:                                      ; preds = %for.inc.i
  %shr.2.i = lshr i32 %14, 4
  %16 = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp1.2.i = icmp eq i32 %16, 32
  br i1 %cmp1.2.i, label %for.inc.1.i.if.else_crit_edge, label %for.inc.2.i

for.inc.1.i.if.else_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %shr.3.i = lshr i32 %14, 6
  %17 = and i32 %14, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %17)
  %cmp1.3.i = icmp eq i32 %17, 128
  br i1 %cmp1.3.i, label %for.inc.2.i.if.else_crit_edge, label %for.inc.3.i

for.inc.2.i.if.else_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %shr.4.i = lshr i32 %14, 8
  %18 = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %18)
  %cmp1.4.i = icmp eq i32 %18, 512
  br i1 %cmp1.4.i, label %for.inc.3.i.if.else_crit_edge, label %for.inc.4.i

for.inc.3.i.if.else_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %shr.5.i = lshr i32 %14, 10
  %19 = and i32 %14, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp1.5.i = icmp eq i32 %19, 2048
  br i1 %cmp1.5.i, label %for.inc.4.i.if.else_crit_edge, label %for.inc.5.i

for.inc.4.i.if.else_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %shr.6.i = lshr i32 %14, 12
  %20 = and i32 %14, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %20)
  %cmp1.6.i = icmp eq i32 %20, 8192
  br i1 %cmp1.6.i, label %for.inc.5.i.if.else_crit_edge, label %for.inc.6.i

for.inc.5.i.if.else_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %shr.7.i = lshr i32 %14, 14
  %21 = and i32 %14, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %21)
  %cmp1.7.i = icmp eq i32 %21, 32768
  br i1 %cmp1.7.i, label %for.inc.6.i.if.else_crit_edge, label %for.inc.7.i

for.inc.6.i.if.else_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %shr.8.i = lshr i32 %14, 16
  %22 = and i32 %14, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %22)
  %cmp1.8.i = icmp eq i32 %22, 131072
  br i1 %cmp1.8.i, label %for.inc.7.i.if.else_crit_edge, label %for.inc.8.i

for.inc.7.i.if.else_crit_edge:                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %shr.9.i = lshr i32 %14, 18
  %23 = and i32 %14, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %23)
  %cmp1.9.i = icmp eq i32 %23, 524288
  br i1 %cmp1.9.i, label %for.inc.8.i.if.else_crit_edge, label %for.inc.9.i

for.inc.8.i.if.else_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %shr.10.i = lshr i32 %14, 20
  %24 = and i32 %14, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %24)
  %cmp1.10.i = icmp eq i32 %24, 2097152
  br i1 %cmp1.10.i, label %for.inc.9.i.if.else_crit_edge, label %do.body5

for.inc.9.i.if.else_crit_edge:                    ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body5:                                         ; preds = %for.inc.9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body5.for.inc_crit_edge, label %do.end

do.body5.for.inc_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.35) #12
  br label %for.inc

if.else:                                          ; preds = %for.inc.9.i.if.else_crit_edge, %for.inc.8.i.if.else_crit_edge, %for.inc.7.i.if.else_crit_edge, %for.inc.6.i.if.else_crit_edge, %for.inc.5.i.if.else_crit_edge, %for.inc.4.i.if.else_crit_edge, %for.inc.3.i.if.else_crit_edge, %for.inc.2.i.if.else_crit_edge, %for.inc.1.i.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %dev_num.013.lcssa.i = phi i32 [ 0, %sw.bb.if.else_crit_edge ], [ 1, %for.inc.i.if.else_crit_edge ], [ 2, %for.inc.1.i.if.else_crit_edge ], [ 3, %for.inc.2.i.if.else_crit_edge ], [ 4, %for.inc.3.i.if.else_crit_edge ], [ 5, %for.inc.4.i.if.else_crit_edge ], [ 6, %for.inc.5.i.if.else_crit_edge ], [ 7, %for.inc.6.i.if.else_crit_edge ], [ 8, %for.inc.7.i.if.else_crit_edge ], [ 9, %for.inc.8.i.if.else_crit_edge ], [ 10, %for.inc.9.i.if.else_crit_edge ]
  %shr.lcssa.i = phi i32 [ %14, %sw.bb.if.else_crit_edge ], [ %shr.1.i, %for.inc.i.if.else_crit_edge ], [ %shr.2.i, %for.inc.1.i.if.else_crit_edge ], [ %shr.3.i, %for.inc.2.i.if.else_crit_edge ], [ %shr.4.i, %for.inc.3.i.if.else_crit_edge ], [ %shr.5.i, %for.inc.4.i.if.else_crit_edge ], [ %shr.6.i, %for.inc.5.i.if.else_crit_edge ], [ %shr.7.i, %for.inc.6.i.if.else_crit_edge ], [ %shr.8.i, %for.inc.7.i.if.else_crit_edge ], [ %shr.9.i, %for.inc.8.i.if.else_crit_edge ], [ %shr.10.i, %for.inc.9.i.if.else_crit_edge ]
  %arrayidx.i = getelementptr %struct.qcom_swrm_ctrl, ptr %dev_id, i32 0, i32 25, i32 %dev_num.013.lcssa.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.lcssa.i, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call13 = call i32 @sdw_handle_slave_status(ptr noundef %dev_id, ptr noundef %arrayidx.i228) #9
  br label %for.inc

do.body16:                                        ; preds = %for.body.do.body16_crit_edge, %for.body.do.body16_crit_edge252
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.36, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body16.do.end26_crit_edge, label %do.end22

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end22, %do.body16.do.end26_crit_edge
  %30 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_read, align 4
  %call28 = call i32 %31(ptr noundef %dev_id, i32 noundef 4240, ptr noundef nonnull %slave_status) #9
  %32 = ptrtoint ptr %slave_status29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slave_status29, align 4
  %34 = ptrtoint ptr %slave_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slave_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp30 = icmp eq i32 %33, %35
  br i1 %cmp30, label %do.end34, label %if.else36

do.end34:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.41, i32 noundef %33) #12
  br label %for.inc

if.else36:                                        ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i224) #9
  %38 = ptrtoint ptr %val.i224 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i224, align 4, !annotation !178
  %39 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_read, align 4
  %call.i226 = call i32 %40(ptr noundef %dev_id, i32 noundef 4240, ptr noundef nonnull %val.i224) #9
  %41 = ptrtoint ptr %val.i224 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i224, align 4
  %43 = ptrtoint ptr %slave_status29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %slave_status29, align 4
  %and.i227 = and i32 %42, 3
  %44 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i227, ptr %arrayidx.i228, align 4
  %shr.1.i229 = lshr i32 %42, 2
  %and.1.i = and i32 %shr.1.i229, 3
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.1.i, ptr %arrayidx.1.i, align 4
  %shr.2.i230 = lshr i32 %42, 4
  %and.2.i = and i32 %shr.2.i230, 3
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.2.i, ptr %arrayidx.2.i, align 4
  %shr.3.i231 = lshr i32 %42, 6
  %and.3.i = and i32 %shr.3.i231, 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.3.i, ptr %arrayidx.3.i, align 4
  %shr.4.i232 = lshr i32 %42, 8
  %and.4.i = and i32 %shr.4.i232, 3
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.4.i, ptr %arrayidx.4.i, align 4
  %shr.5.i233 = lshr i32 %42, 10
  %and.5.i = and i32 %shr.5.i233, 3
  %49 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.5.i, ptr %arrayidx.5.i, align 4
  %shr.6.i234 = lshr i32 %42, 12
  %and.6.i = and i32 %shr.6.i234, 3
  %50 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.6.i, ptr %arrayidx.6.i, align 4
  %shr.7.i235 = lshr i32 %42, 14
  %and.7.i = and i32 %shr.7.i235, 3
  %51 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.7.i, ptr %arrayidx.7.i, align 4
  %shr.8.i236 = lshr i32 %42, 16
  %and.8.i = and i32 %shr.8.i236, 3
  %52 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.8.i, ptr %arrayidx.8.i, align 4
  %shr.9.i237 = lshr i32 %42, 18
  %and.9.i = and i32 %shr.9.i237, 3
  %53 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.9.i, ptr %arrayidx.9.i, align 4
  %shr.10.i238 = lshr i32 %42, 20
  %and.10.i = and i32 %shr.10.i238, 3
  %54 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.10.i, ptr %arrayidx.10.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i224) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id.i) #9
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %id.i, align 8, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1.i) #9
  %56 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val1.i, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2.i) #9
  %57 = ptrtoint ptr %val2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val2.i, align 4, !annotation !178
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc52.i.for.body.i_crit_edge, %if.else36
  %i.016.i = phi i32 [ 1, %if.else36 ], [ %inc.i, %for.inc52.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_read, align 4
  %mul.i = shl i32 %i.016.i, 3
  %add.i = add nuw nsw i32 %mul.i, 1328
  %call.i241 = call i32 %59(ptr noundef %dev_id, i32 noundef %add.i, ptr noundef nonnull %val1.i) #9
  %60 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_read, align 4
  %add3.i = add nuw nsw i32 %mul.i, 1332
  %call4.i = call i32 %61(ptr noundef %dev_id, i32 noundef %add3.i, ptr noundef nonnull %val2.i) #9
  %62 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %64 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool5.not.i = icmp eq i32 %65, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.qcom_swrm_enumerate.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.qcom_swrm_enumerate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_enumerate.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %66 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i240, align 1
  %conv.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %val2.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val2.i, align 4
  %conv7.i = zext i8 %69 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %70 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %71 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %or.i, %shl10.i
  %conv12.i = zext i32 %or11.i to i64
  %72 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx13.i, align 2
  %conv14.i = zext i8 %73 to i64
  %shl15.i = shl nuw nsw i64 %conv14.i, 24
  %or16.i = or i64 %shl15.i, %conv12.i
  %74 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %75 to i64
  %shl19.i = shl nuw nsw i64 %conv18.i, 32
  %or20.i = or i64 %or16.i, %shl19.i
  %76 = ptrtoint ptr %val1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val1.i, align 4
  %conv22.i = zext i8 %77 to i64
  %shl23.i = shl nuw nsw i64 %conv22.i, 40
  %or24.i = or i64 %or20.i, %shl23.i
  call void @sdw_extract_slave_id(ptr noundef %dev_id, i64 noundef %or24.i, ptr noundef nonnull %id.i) #9
  %78 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slaves.i, align 8
  br label %for.cond32.i

for.cond32.i:                                     ; preds = %for.body37.i.for.cond32.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %79, %if.end.i ], [ %.pn.i, %for.body37.i.for.cond32.i_crit_edge ]
  %cmp35.not.i = icmp eq ptr %.pn.in.i, %slaves.i
  br i1 %cmp35.not.i, label %if.then49.critedge.i, label %for.body37.i

for.body37.i:                                     ; preds = %for.cond32.i
  %slave.0.i = getelementptr i8, ptr %.pn.in.i, i32 -1020
  %80 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %81 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.0.load.i = load i32, ptr %id.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %.fca.0.load.i, 0
  %82 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %call38.i = call i32 @sdw_compare_devid(ptr noundef %slave.0.i, [2 x i32] %.fca.1.insert.i) #9
  %cmp39.i = icmp eq i32 %call38.i, 0
  br i1 %cmp39.i, label %if.then41.i, label %for.body37.i.for.cond32.i_crit_edge

for.body37.i.for.cond32.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond32.i

if.then41.i:                                      ; preds = %for.body37.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %83 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %status.i.i, align 4, !annotation !178
  %84 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_read, align 4
  %call.i.i = call i32 %85(ptr noundef %dev_id, i32 noundef 4240, ptr noundef nonnull %status.i.i) #9
  %86 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %status.i.i, align 4
  %mul.i.i = shl nuw i32 %i.016.i, 1
  %shr.i.i = lshr i32 %87, %mul.i.i
  %and.i.i = and i32 %shr.i.i, 3
  store i32 %and.i.i, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then41.i.qcom_swrm_set_slave_dev_num.exit.i_crit_edge

if.then41.i.qcom_swrm_set_slave_dev_num.exit.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_set_slave_dev_num.exit.i

if.then.i.i:                                      ; preds = %if.then41.i
  %tobool.not.i.i = icmp eq ptr %slave.0.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %i.016.i to i16
  %dev_num.i.i = getelementptr i8, ptr %.pn.in.i, i32 908
  %88 = ptrtoint ptr %dev_num.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i.i, ptr %dev_num.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then1.i.i, %if.then.i.i.if.end.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %bus_lock.i.i, i32 noundef 0) #9
  call void @_set_bit(i32 noundef %i.016.i, ptr noundef %assigned.i.i) #9
  call void @mutex_unlock(ptr noundef %bus_lock.i.i) #9
  br label %qcom_swrm_set_slave_dev_num.exit.i

qcom_swrm_set_slave_dev_num.exit.i:               ; preds = %if.end.i.i, %if.then41.i.qcom_swrm_set_slave_dev_num.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  br label %for.inc52.i

if.then49.critedge.i:                             ; preds = %for.cond32.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i2.i) #9
  %89 = ptrtoint ptr %status.i2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %status.i2.i, align 4, !annotation !178
  %90 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_read, align 4
  %call.i4.i = call i32 %91(ptr noundef %dev_id, i32 noundef 4240, ptr noundef nonnull %status.i2.i) #9
  %92 = ptrtoint ptr %status.i2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status.i2.i, align 4
  %mul.i5.i = shl nuw i32 %i.016.i, 1
  %shr.i6.i = lshr i32 %93, %mul.i5.i
  %and.i7.i = and i32 %shr.i6.i, 3
  store i32 %and.i7.i, ptr %status.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i7.i)
  %cmp.i8.i = icmp eq i32 %and.i7.i, 1
  br i1 %cmp.i8.i, label %if.then.i9.i, label %if.then49.critedge.i.qcom_swrm_set_slave_dev_num.exit13.i_crit_edge

if.then49.critedge.i.qcom_swrm_set_slave_dev_num.exit13.i_crit_edge: ; preds = %if.then49.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_set_slave_dev_num.exit13.i

if.then.i9.i:                                     ; preds = %if.then49.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_lock_nested(ptr noundef %bus_lock.i.i, i32 noundef 0) #9
  call void @_set_bit(i32 noundef %i.016.i, ptr noundef %assigned.i.i) #9
  call void @mutex_unlock(ptr noundef %bus_lock.i.i) #9
  br label %qcom_swrm_set_slave_dev_num.exit13.i

qcom_swrm_set_slave_dev_num.exit13.i:             ; preds = %if.then.i9.i, %if.then49.critedge.i.qcom_swrm_set_slave_dev_num.exit13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i2.i) #9
  %call50.i = call i32 @sdw_slave_add(ptr noundef %dev_id, ptr noundef nonnull %id.i, ptr noundef null) #9
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %qcom_swrm_set_slave_dev_num.exit13.i, %qcom_swrm_set_slave_dev_num.exit.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc52.i.qcom_swrm_enumerate.exit_crit_edge, label %for.inc52.i.for.body.i_crit_edge

for.inc52.i.for.body.i_crit_edge:                 ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc52.i.qcom_swrm_enumerate.exit_crit_edge:   ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_enumerate.exit

qcom_swrm_enumerate.exit:                         ; preds = %for.inc52.i.qcom_swrm_enumerate.exit_crit_edge, %land.lhs.true.i.qcom_swrm_enumerate.exit_crit_edge
  call void @complete(ptr noundef %enumeration.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id.i) #9
  %call42 = call i32 @sdw_handle_slave_status(ptr noundef %dev_id, ptr noundef %arrayidx.i228) #9
  br label %for.inc

do.body45:                                        ; preds = %for.body
  %call46 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.43, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body45.do.end55_crit_edge, label %do.end51

do.body45.do.end55_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #12
  br label %do.end55

do.end55:                                         ; preds = %do.end51, %do.body45.do.end55_crit_edge
  %96 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %intr_mask, align 8
  %and57 = and i32 %97, -9
  store i32 %and57, ptr %intr_mask, align 8
  %98 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_write159, align 8
  %call59 = call i32 %99(ptr noundef %dev_id, i32 noundef 528, i32 noundef %and57) #9
  br label %for.inc

sw.bb60:                                          ; preds = %for.body
  %100 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_read, align 4
  %call62 = call i32 %101(ptr noundef %dev_id, i32 noundef 780, ptr noundef nonnull %value) #9
  %call64 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.47, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %sw.bb60.for.inc_crit_edge, label %do.end69

sw.bb60.for.inc_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end69:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev138, align 8
  %104 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.qcom_swrm_irq_handler, i32 noundef %105) #12
  br label %for.inc

sw.bb74:                                          ; preds = %for.body
  %106 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_read, align 4
  %call76 = call i32 %107(ptr noundef %dev_id, i32 noundef 780, ptr noundef nonnull %value) #9
  %call78 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.51, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %sw.bb74.for.inc_crit_edge, label %do.end83

sw.bb74.for.inc_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end83:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev138, align 8
  %110 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.qcom_swrm_irq_handler, i32 noundef %111) #12
  br label %for.inc

sw.bb88:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_read, align 4
  %call90 = call i32 %113(ptr noundef %dev_id, i32 noundef 780, ptr noundef nonnull %value) #9
  %114 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev138, align 8
  %116 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.qcom_swrm_irq_handler, i32 noundef %117) #12
  %118 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_write159, align 8
  %call96 = call i32 %119(ptr noundef %dev_id, i32 noundef 776, i32 noundef 1) #9
  br label %for.inc

sw.bb97:                                          ; preds = %for.body
  %120 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg_read, align 4
  %call99 = call i32 %121(ptr noundef %dev_id, i32 noundef 780, ptr noundef nonnull %value) #9
  %call101 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.58, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %sw.bb97.do.end110_crit_edge, label %do.end106

sw.bb97.do.end110_crit_edge:                      ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end110

do.end106:                                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev138, align 8
  %124 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.qcom_swrm_irq_handler, i32 noundef %125) #12
  br label %do.end110

do.end110:                                        ; preds = %do.end106, %sw.bb97.do.end110_crit_edge
  %126 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_write159, align 8
  %call112 = call i32 %127(ptr noundef %dev_id, i32 noundef 776, i32 noundef 1) #9
  br label %for.inc

do.body114:                                       ; preds = %for.body
  %call115 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.62, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.body114.do.end124_crit_edge, label %do.end120

do.body114.do.end124_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end124

do.end120:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #12
  br label %do.end124

do.end124:                                        ; preds = %do.end120, %do.body114.do.end124_crit_edge
  %130 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %intr_mask, align 8
  %and126 = and i32 %131, -257
  store i32 %and126, ptr %intr_mask, align 8
  %132 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_write159, align 8
  %call129 = call i32 %133(ptr noundef %dev_id, i32 noundef 528, i32 noundef %and126) #9
  br label %for.inc

do.body131:                                       ; preds = %for.body
  %call132 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.66, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.body131.do.end141_crit_edge, label %do.end137

do.body131.do.end141_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end141

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #12
  br label %do.end141

do.end141:                                        ; preds = %do.end137, %do.body131.do.end141_crit_edge
  %136 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %intr_mask, align 8
  %and143 = and i32 %137, -513
  store i32 %and143, ptr %intr_mask, align 8
  %138 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_write159, align 8
  %call146 = call i32 %139(ptr noundef %dev_id, i32 noundef 528, i32 noundef %and143) #9
  br label %for.inc

sw.bb147:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef %broadcast) #9
  br label %for.inc

do.body148:                                       ; preds = %for.body
  %call149 = call i32 @___ratelimit(ptr noundef nonnull @qcom_swrm_irq_handler._rs.70, ptr noundef nonnull @__func__.qcom_swrm_irq_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %do.body148.for.inc_crit_edge, label %do.end154

do.body148.for.inc_crit_edge:                     ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev138, align 8
  %142 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.qcom_swrm_irq_handler, i32 noundef %143) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end154, %do.body148.for.inc_crit_edge, %sw.bb147, %do.end141, %do.end124, %do.end110, %sw.bb88, %do.end83, %sw.bb74.for.inc_crit_edge, %do.end69, %sw.bb60.for.inc_crit_edge, %do.end55, %qcom_swrm_enumerate.exit, %do.end34, %if.else, %do.end, %do.body5.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge253, %for.body.for.inc_crit_edge254, %for.body.for.inc_crit_edge255
  %ret.2 = phi i32 [ %ret.1246, %sw.bb147 ], [ %ret.1246, %do.end141 ], [ %ret.1246, %do.end124 ], [ %ret.1246, %do.end110 ], [ %ret.1246, %sw.bb88 ], [ %ret.1246, %do.end83 ], [ %ret.1246, %sw.bb74.for.inc_crit_edge ], [ %ret.1246, %do.end69 ], [ %ret.1246, %sw.bb60.for.inc_crit_edge ], [ %ret.1246, %do.end55 ], [ %ret.1246, %do.end34 ], [ %ret.1246, %qcom_swrm_enumerate.exit ], [ %ret.1246, %do.end ], [ %ret.1246, %do.body5.for.inc_crit_edge ], [ %ret.1246, %if.else ], [ %ret.1246, %for.body.for.inc_crit_edge ], [ %ret.1246, %for.body.for.inc_crit_edge253 ], [ %ret.1246, %for.body.for.inc_crit_edge254 ], [ %ret.1246, %for.body.for.inc_crit_edge255 ], [ 0, %do.end154 ], [ 0, %do.body148.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0245, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %144 = ptrtoint ptr %reg_write159 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_write159, align 8
  %146 = ptrtoint ptr %intr_sts to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %intr_sts, align 4
  %call160 = call i32 %145(ptr noundef %dev_id, i32 noundef 520, i32 noundef %147) #9
  %148 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_read, align 4
  %call162 = call i32 %149(ptr noundef %dev_id, i32 noundef 512, ptr noundef nonnull %intr_sts) #9
  %150 = ptrtoint ptr %intr_sts to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %intr_sts, align 4
  %152 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %intr_mask, align 8
  %and164 = and i32 %153, %151
  %tobool166.not = icmp eq i32 %and164, 0
  br i1 %tobool166.not, label %do.end167, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end167:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_status) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_sts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %ret.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_bus_master_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_bus_master_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_xfer_msg(ptr noundef %bus, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %value.i.i72 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %cmd_data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond25.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond25.preheader:                             ; preds = %entry
  %len26 = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %len26 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp28100.not = icmp eq i16 %4, 0
  br i1 %cmp28100.not, label %for.cond25.preheader.cleanup_crit_edge, label %for.body30.lr.ph

for.cond25.preheader.cleanup_crit_edge:           ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body30.lr.ph:                                 ; preds = %for.cond25.preheader
  %buf31 = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 6
  %dev_num33 = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 2
  %wcmd_id.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 22
  %reg_read.i.i78 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 26
  %wr_fifo_depth.i.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 29
  %reg_write.i86 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %version.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 13
  %broadcast.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 5
  br label %for.body30

for.cond.preheader:                               ; preds = %entry
  %len2 = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp4105.not = icmp eq i16 %6, 0
  br i1 %cmp4105.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv3104 = zext i16 %6 to i32
  %dev_num = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.sdw_msg, ptr %msg, i32 0, i32 6
  %rcmd_id.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 21
  %reg_write.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %reg_read.i.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %conv3107 = phi i32 [ %conv3104, %for.body.lr.ph ], [ %conv3, %if.end17.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %add18, %if.end17.for.body_crit_edge ]
  %sub = sub i32 %conv3107, %i.0106
  %7 = call i32 @llvm.smin.i32(i32 %sub, i32 1)
  %8 = ptrtoint ptr %dev_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_num, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg, align 4
  %12 = trunc i32 %i.0106 to i16
  %conv15 = add i16 %11, %12
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %i.0106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_data.i) #9
  %15 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %cmd_data.i, align 4, !annotation !178
  %16 = ptrtoint ptr %rcmd_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rcmd_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %17)
  %cmp.not.i.i = icmp eq i8 %17, 15
  br i1 %cmp.not.i.i, label %for.body.swrm_get_packed_reg_val.exit.i_crit_edge, label %if.then.i.i

for.body.swrm_get_packed_reg_val.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %swrm_get_packed_reg_val.exit.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %17)
  %cmp3.i.i = icmp ult i8 %17, 14
  %add.i.i = add i8 %17, 1
  %id.0.i.i = select i1 %cmp3.i.i, i8 %add.i.i, i8 0
  %18 = ptrtoint ptr %rcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %id.0.i.i, ptr %rcmd_id.i, align 1
  %phi.cast.i.i = zext i8 %id.0.i.i to i32
  %phi.bo.i.i = shl nuw nsw i32 %phi.cast.i.i, 16
  br label %swrm_get_packed_reg_val.exit.i

swrm_get_packed_reg_val.exit.i:                   ; preds = %if.then.i.i, %for.body.swrm_get_packed_reg_val.exit.i_crit_edge
  %id.1.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i ], [ 983040, %for.body.swrm_get_packed_reg_val.exit.i_crit_edge ]
  %conv9.i.i = zext i16 %conv15 to i32
  %conv11.i.i = zext i8 %9 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 20
  %conv14.i.i = shl i32 %7, 24
  %or.i.i = or i32 %conv14.i.i, %conv9.i.i
  %or13.i.i = or i32 %or.i.i, %shl12.i.i
  %or16.i.i = or i32 %or13.i.i, %id.1.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 105, i32 noundef 2) #9
  %19 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_write.i, align 8
  %call1.i = call i32 %20(ptr noundef %bus, i32 noundef 772, i32 noundef %or16.i.i) #9
  call void @usleep_range_state(i32 noundef 250, i32 noundef 255, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #9
  %21 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %value.i.i, align 4, !annotation !178
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %swrm_get_packed_reg_val.exit.i
  %fifo_retry_count.0.i.i = phi i32 [ 30, %swrm_get_packed_reg_val.exit.i ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %reg_read.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_read.i.i, align 4
  %call.i.i = call i32 %23(ptr noundef %bus, i32 noundef 780, ptr noundef nonnull %value.i.i) #9
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.i.i, align 4
  %26 = and i32 %25, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i63.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i63.i, label %if.end.i.i, label %swrm_wait_for_rd_fifo_avail.exit.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #9
  %dec.i.i = add nsw i32 %fifo_retry_count.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %fifo_retry_count.0.i.i, 0
  br i1 %tobool.not.i.i, label %do.body18.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body18.i.i:                                    ; preds = %if.end.i.i
  %call19.i.i = call i32 @___ratelimit(ptr noundef nonnull @swrm_wait_for_rd_fifo_avail._rs, ptr noundef nonnull @__func__.swrm_wait_for_rd_fifo_avail) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.body18.i.i.swrm_wait_for_rd_fifo_avail.exit.thread.i_crit_edge, label %do.end24.i.i

do.body18.i.i.swrm_wait_for_rd_fifo_avail.exit.thread.i_crit_edge: ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %swrm_wait_for_rd_fifo_avail.exit.thread.i

do.end24.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.swrm_wait_for_rd_fifo_avail) #12
  br label %swrm_wait_for_rd_fifo_avail.exit.thread.i

swrm_wait_for_rd_fifo_avail.exit.thread.i:        ; preds = %do.end24.i.i, %do.body18.i.i.swrm_wait_for_rd_fifo_avail.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  br label %qcom_swrm_cmd_fifo_rd_cmd.exit

swrm_wait_for_rd_fifo_avail.exit.i:               ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  %29 = ptrtoint ptr %reg_read.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_read.i.i, align 4
  %call3.i = call i32 %30(ptr noundef %bus, i32 noundef 792, ptr noundef nonnull %cmd_data.i) #9
  %31 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmd_data.i, align 4
  %conv4.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv4.i, ptr %arrayidx, align 1
  %and18.i = lshr i32 %32, 8
  %shr.i = and i32 %and18.i, 15
  %34 = ptrtoint ptr %rcmd_id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rcmd_id.i, align 4
  %conv20.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv20.i)
  %cmp.not.i = icmp eq i32 %shr.i, %conv20.i
  br i1 %cmp.not.i, label %swrm_wait_for_rd_fifo_avail.exit.i.if.end17_crit_edge, label %if.end30.i

swrm_wait_for_rd_fifo_avail.exit.i.if.end17_crit_edge: ; preds = %swrm_wait_for_rd_fifo_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end30.i:                                       ; preds = %swrm_wait_for_rd_fifo_avail.exit.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 505, i32 noundef 2) #9
  %36 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_write.i, align 8
  %call27.i = call i32 %37(ptr noundef %bus, i32 noundef 776, i32 noundef 1) #9
  %38 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_write.i, align 8
  %call29.i = call i32 %39(ptr noundef %bus, i32 noundef 772, i32 noundef %or16.i.i) #9
  %40 = ptrtoint ptr %reg_read.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_read.i.i, align 4
  %call3.1.i = call i32 %41(ptr noundef %bus, i32 noundef 792, ptr noundef nonnull %cmd_data.i) #9
  %42 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd_data.i, align 4
  %conv4.1.i = trunc i32 %43 to i8
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv4.1.i, ptr %arrayidx, align 1
  %and18.1.i = lshr i32 %43, 8
  %shr.1.i = and i32 %and18.1.i, 15
  %45 = ptrtoint ptr %rcmd_id.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rcmd_id.i, align 4
  %conv20.1.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv20.1.i)
  %cmp.not.1.i = icmp eq i32 %shr.1.i, %conv20.1.i
  br i1 %cmp.not.1.i, label %if.end30.i.if.end17_crit_edge, label %if.end30.1.i

if.end30.i.if.end17_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end30.1.i:                                     ; preds = %if.end30.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 505, i32 noundef 2) #9
  %47 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_write.i, align 8
  %call27.1.i = call i32 %48(ptr noundef %bus, i32 noundef 776, i32 noundef 1) #9
  %49 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_write.i, align 8
  %call29.1.i = call i32 %50(ptr noundef %bus, i32 noundef 772, i32 noundef %or16.i.i) #9
  %51 = ptrtoint ptr %reg_read.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_read.i.i, align 4
  %call3.2.i = call i32 %52(ptr noundef %bus, i32 noundef 792, ptr noundef nonnull %cmd_data.i) #9
  %53 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_data.i, align 4
  %conv4.2.i = trunc i32 %54 to i8
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv4.2.i, ptr %arrayidx, align 1
  %and18.2.i = lshr i32 %54, 8
  %shr.2.i = and i32 %and18.2.i, 15
  %56 = ptrtoint ptr %rcmd_id.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rcmd_id.i, align 4
  %conv20.2.i = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv20.2.i)
  %cmp.not.2.i = icmp eq i32 %shr.2.i, %conv20.2.i
  br i1 %cmp.not.2.i, label %if.end30.1.i.if.end17_crit_edge, label %if.end30.2.i

if.end30.1.i.if.end17_crit_edge:                  ; preds = %if.end30.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end30.2.i:                                     ; preds = %if.end30.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.i.i.le = zext i8 %9 to i32
  %conv20.2.i.le = zext i8 %57 to i32
  %dev.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 1
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  %60 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmd_data.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.19, i32 noundef %conv9.i.i, i32 noundef %conv20.2.i.le, i32 noundef %conv11.i.i.le, i32 noundef %61) #12
  br label %qcom_swrm_cmd_fifo_rd_cmd.exit

qcom_swrm_cmd_fifo_rd_cmd.exit:                   ; preds = %if.end30.2.i, %swrm_wait_for_rd_fifo_avail.exit.thread.i
  %retval.0.i = phi i32 [ 1, %if.end30.2.i ], [ 4, %swrm_wait_for_rd_fifo_avail.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_data.i) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end30.1.i.if.end17_crit_edge, %if.end30.i.if.end17_crit_edge, %swrm_wait_for_rd_fifo_avail.exit.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_data.i) #9
  %add18 = add i32 %7, %i.0106
  %62 = ptrtoint ptr %len2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len2, align 2
  %conv3 = zext i16 %63 to i32
  %cmp4 = icmp slt i32 %add18, %conv3
  br i1 %cmp4, label %if.end17.for.body_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %for.body30.lr.ph
  %i.1101 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc, %for.inc.for.body30_crit_edge ]
  %64 = ptrtoint ptr %buf31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf31, align 4
  %arrayidx32 = getelementptr i8, ptr %65, i32 %i.1101
  %66 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx32, align 1
  %68 = ptrtoint ptr %dev_num33 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dev_num33, align 4
  %70 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %msg, align 4
  %72 = trunc i32 %i.1101 to i16
  %conv37 = add i16 %71, %72
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %69)
  %cmp.i = icmp eq i8 %69, 15
  br i1 %cmp.i, label %swrm_get_packed_reg_val.exit.i77, label %if.else.i

swrm_get_packed_reg_val.exit.i77:                 ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i.i73 = zext i16 %conv37 to i32
  %conv14.i.i74 = zext i8 %67 to i32
  %shl15.i.i = shl nuw i32 %conv14.i.i74, 24
  %or.i.i75 = or i32 %shl15.i.i, %conv9.i.i73
  %or16.i.i76 = or i32 %or.i.i75, 16711680
  br label %if.end.i

if.else.i:                                        ; preds = %for.body30
  %73 = ptrtoint ptr %wcmd_id.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %wcmd_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %74)
  %cmp.not.i35.i = icmp eq i8 %74, 15
  br i1 %cmp.not.i35.i, label %if.else.i.swrm_get_packed_reg_val.exit51.i_crit_edge, label %if.then.i41.i

if.else.i.swrm_get_packed_reg_val.exit51.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %swrm_get_packed_reg_val.exit51.i

if.then.i41.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %74)
  %cmp3.i36.i = icmp ult i8 %74, 14
  %add.i37.i = add i8 %74, 1
  %id.0.i38.i = select i1 %cmp3.i36.i, i8 %add.i37.i, i8 0
  %75 = ptrtoint ptr %wcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %id.0.i38.i, ptr %wcmd_id.i, align 1
  %phi.cast.i39.i = zext i8 %id.0.i38.i to i32
  %phi.bo.i40.i = shl nuw nsw i32 %phi.cast.i39.i, 16
  br label %swrm_get_packed_reg_val.exit51.i

swrm_get_packed_reg_val.exit51.i:                 ; preds = %if.then.i41.i, %if.else.i.swrm_get_packed_reg_val.exit51.i_crit_edge
  %id.1.i42.i = phi i32 [ %phi.bo.i40.i, %if.then.i41.i ], [ 983040, %if.else.i.swrm_get_packed_reg_val.exit51.i_crit_edge ]
  %conv9.i43.i = zext i16 %conv37 to i32
  %conv11.i44.i = zext i8 %69 to i32
  %shl12.i45.i = shl nuw nsw i32 %conv11.i44.i, 20
  %conv14.i46.i = zext i8 %67 to i32
  %shl15.i47.i = shl nuw i32 %conv14.i46.i, 24
  %or.i48.i = or i32 %shl15.i47.i, %conv9.i43.i
  %or13.i49.i = or i32 %or.i48.i, %shl12.i45.i
  %or16.i50.i = or i32 %or13.i49.i, %id.1.i42.i
  br label %if.end.i

if.end.i:                                         ; preds = %swrm_get_packed_reg_val.exit51.i, %swrm_get_packed_reg_val.exit.i77
  %val.0.i = phi i32 [ %or16.i.i76, %swrm_get_packed_reg_val.exit.i77 ], [ %or16.i50.i, %swrm_get_packed_reg_val.exit51.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i72) #9
  %76 = ptrtoint ptr %value.i.i72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %value.i.i72, align 4, !annotation !178
  br label %do.body.i.i81

do.body.i.i81:                                    ; preds = %if.end.i.i84.do.body.i.i81_crit_edge, %if.end.i
  %fifo_retry_count.0.i.i79 = phi i32 [ 30, %if.end.i ], [ %dec.i.i82, %if.end.i.i84.do.body.i.i81_crit_edge ]
  %77 = ptrtoint ptr %reg_read.i.i78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_read.i.i78, align 4
  %call.i.i80 = call i32 %78(ptr noundef %bus, i32 noundef 780, ptr noundef nonnull %value.i.i72) #9
  %79 = ptrtoint ptr %value.i.i72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %value.i.i72, align 4
  %and.i.i = lshr i32 %80, 8
  %shr.i.i = and i32 %and.i.i, 31
  %81 = ptrtoint ptr %wr_fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wr_fifo_depth.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %82)
  %cmp.i.i = icmp ult i32 %shr.i.i, %82
  br i1 %cmp.i.i, label %do.body.i.i81.if.end5.i_crit_edge, label %if.end.i.i84

do.body.i.i81.if.end5.i_crit_edge:                ; preds = %do.body.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end.i.i84:                                     ; preds = %do.body.i.i81
  call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #9
  %dec.i.i82 = add nsw i32 %fifo_retry_count.0.i.i79, -1
  %tobool.not.i.i83 = icmp eq i32 %fifo_retry_count.0.i.i79, 0
  br i1 %tobool.not.i.i83, label %do.end15.i.i, label %if.end.i.i84.do.body.i.i81_crit_edge

if.end.i.i84.do.body.i.i81_crit_edge:             ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i81

do.end15.i.i:                                     ; preds = %if.end.i.i84
  %83 = ptrtoint ptr %wr_fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wr_fifo_depth.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %84)
  %cmp17.i.i = icmp eq i32 %shr.i.i, %84
  br i1 %cmp17.i.i, label %do.body19.i.i, label %do.end15.i.i.if.end5.i_crit_edge

do.end15.i.i.if.end5.i_crit_edge:                 ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.body19.i.i:                                    ; preds = %do.end15.i.i
  %call20.i.i = call i32 @___ratelimit(ptr noundef nonnull @swrm_wait_for_wr_fifo_avail._rs, ptr noundef nonnull @__func__.swrm_wait_for_wr_fifo_avail) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %do.body19.i.i.qcom_swrm_cmd_fifo_wr_cmd.exit.thread92_crit_edge, label %do.end25.i.i

do.body19.i.i.qcom_swrm_cmd_fifo_wr_cmd.exit.thread92_crit_edge: ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_cmd_fifo_wr_cmd.exit.thread92

do.end25.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i85 = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 1
  %85 = ptrtoint ptr %dev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i85, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.swrm_wait_for_wr_fifo_avail) #12
  br label %qcom_swrm_cmd_fifo_wr_cmd.exit.thread92

qcom_swrm_cmd_fifo_wr_cmd.exit.thread92:          ; preds = %do.end25.i.i, %do.body19.i.i.qcom_swrm_cmd_fifo_wr_cmd.exit.thread92_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i72) #9
  br label %cleanup

if.end5.i:                                        ; preds = %do.end15.i.i.if.end5.i_crit_edge, %do.body.i.i81.if.end5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i72) #9
  %87 = ptrtoint ptr %reg_write.i86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_write.i86, align 8
  %call6.i = call i32 %88(ptr noundef %bus, i32 noundef 768, i32 noundef %val.0.i) #9
  %89 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16973825, i32 %90)
  %cmp7.i = icmp ult i32 %90, 16973825
  br i1 %cmp7.i, label %if.then9.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 150, i32 noundef 155, i32 noundef 2) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end10.i_crit_edge
  br i1 %cmp.i, label %qcom_swrm_cmd_fifo_wr_cmd.exit, label %if.end10.i.for.inc_crit_edge

if.end10.i.for.inc_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

qcom_swrm_cmd_fifo_wr_cmd.exit:                   ; preds = %if.end10.i
  %call16.i = call i32 @wait_for_completion_timeout(ptr noundef %broadcast.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i.not, label %qcom_swrm_cmd_fifo_wr_cmd.exit.cleanup_crit_edge, label %qcom_swrm_cmd_fifo_wr_cmd.exit.for.inc_crit_edge

qcom_swrm_cmd_fifo_wr_cmd.exit.for.inc_crit_edge: ; preds = %qcom_swrm_cmd_fifo_wr_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

qcom_swrm_cmd_fifo_wr_cmd.exit.cleanup_crit_edge: ; preds = %qcom_swrm_cmd_fifo_wr_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %qcom_swrm_cmd_fifo_wr_cmd.exit.for.inc_crit_edge, %if.end10.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.1101, 1
  %91 = ptrtoint ptr %len26 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %len26, align 2
  %conv27 = zext i16 %92 to i32
  %cmp28 = icmp ult i32 %inc, %conv27
  br i1 %cmp28, label %for.inc.for.body30_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %qcom_swrm_cmd_fifo_wr_cmd.exit.cleanup_crit_edge, %qcom_swrm_cmd_fifo_wr_cmd.exit.thread92, %if.end17.cleanup_crit_edge, %qcom_swrm_cmd_fifo_rd_cmd.exit, %for.cond.preheader.cleanup_crit_edge, %for.cond25.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qcom_swrm_cmd_fifo_rd_cmd.exit ], [ 0, %entry.cleanup_crit_edge ], [ 1, %qcom_swrm_cmd_fifo_wr_cmd.exit.thread92 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond25.preheader.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 1, %qcom_swrm_cmd_fifo_wr_cmd.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_pre_bank_switch(ptr noundef %bus) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bank = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %next_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_bank, align 4
  %mul = shl i32 %1, 6
  %add = add i32 %mul, 4124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !178
  %reg_read = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 26
  %3 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_read, align 4
  %call = call i32 %4(ptr noundef %bus, i32 noundef %add, ptr noundef nonnull %val) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %cols_index = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 16
  %7 = ptrtoint ptr %cols_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cols_index, align 8
  %and.i = and i32 %6, -8
  %9 = and i32 %8, 7
  %or.i = or i32 %and.i, %9
  store i32 %or.i, ptr %val, align 4
  %rows_index = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 17
  %10 = ptrtoint ptr %rows_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rows_index, align 4
  %and.i19 = and i32 %or.i, -249
  %12 = shl i32 %11, 3
  %13 = and i32 %12, 248
  %or.i24 = or i32 %13, %and.i19
  store i32 %or.i24, ptr %val, align 4
  %reg_write = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %14 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write, align 8
  %call1 = call i32 %15(ptr noundef %bus, i32 noundef %add, i32 noundef %or.i24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_port_params(ptr noundef %bus, ptr nocapture noundef readonly %p_params, i32 noundef %bank) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 8
  %2 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_params, align 4
  %sub = shl i32 %3, 8
  %add = add i32 %sub, 4140
  %bps = getelementptr inbounds %struct.sdw_port_params, ptr %p_params, i32 0, i32 1
  %4 = ptrtoint ptr %bps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bps, align 4
  %sub1 = add i32 %5, -1
  %call = tail call i32 %1(ptr noundef %bus, i32 noundef %add, i32 noundef %sub1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_transport_params(ptr noundef %bus, ptr nocapture noundef readonly %params, i32 noundef %bank) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.sdw_transport_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num, align 4
  %sub = shl i32 %1, 8
  %mul1 = shl i32 %bank, 6
  %add = add i32 %mul1, 4132
  %add2 = add i32 %add, %sub
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1
  %off1 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 1
  %2 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %off1, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %off2 = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 2
  %4 = ptrtoint ptr %off2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %off2, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %or7 = or i32 %or, %conv6
  %reg_write = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write, align 8
  %call = tail call i32 %9(ptr noundef %bus, i32 noundef %add2, i32 noundef %or7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %lane_control = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 8
  %10 = ptrtoint ptr %lane_control to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lane_control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not = icmp eq i8 %11, -1
  br i1 %cmp.not, label %if.end.if.end24_crit_edge, label %if.then10

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then10:                                        ; preds = %if.end
  %conv8 = zext i8 %11 to i32
  %12 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num, align 4
  %sub12 = shl i32 %13, 8
  %add14 = add i32 %mul1, 4136
  %add16 = add i32 %add14, %sub12
  %14 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write, align 8
  %call20 = tail call i32 %15(ptr noundef %bus, i32 noundef %add16, i32 noundef %conv8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then10.if.end24_crit_edge, label %if.then10.err_crit_edge

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.then10.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %blk_group_count = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 7
  %16 = ptrtoint ptr %blk_group_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blk_group_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp26.not = icmp eq i8 %17, -1
  br i1 %cmp26.not, label %if.end24.if.end42_crit_edge, label %if.then28

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then28:                                        ; preds = %if.end24
  %conv25 = zext i8 %17 to i32
  %18 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_num, align 4
  %sub30 = shl i32 %19, 8
  %add32 = add i32 %mul1, 4144
  %add34 = add i32 %add32, %sub30
  %20 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_write, align 8
  %call38 = tail call i32 %21(ptr noundef %bus, i32 noundef %add34, i32 noundef %conv25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then28.if.end42_crit_edge, label %if.then28.err_crit_edge

if.then28.err_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %if.then28.if.end42_crit_edge, %if.end24.if.end42_crit_edge
  %hstart = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 4
  %22 = ptrtoint ptr %hstart to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hstart, align 1
  %conv43 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp44.not = icmp eq i8 %23, -1
  br i1 %cmp44.not, label %if.end42.if.else_crit_edge, label %land.lhs.true

if.end42.if.else_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end42
  %hstop = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 5
  %24 = ptrtoint ptr %hstop to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hstop, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp47.not = icmp eq i8 %25, -1
  br i1 %cmp47.not, label %land.lhs.true.if.else_crit_edge, label %if.then49

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv46 = zext i8 %25 to i32
  %26 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_num, align 4
  %sub51 = shl i32 %27, 8
  %add53 = add i32 %mul1, 4148
  %add55 = add i32 %add53, %sub51
  %shl58 = shl nuw nsw i32 %conv46, 4
  %or61 = or i32 %shl58, %conv43
  %28 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_write, align 8
  %call63 = tail call i32 %29(ptr noundef %bus, i32 noundef %add55, i32 noundef %or61) #9
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end42.if.else_crit_edge
  %30 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_num, align 4
  %sub65 = shl i32 %31, 8
  %add67 = add i32 %mul1, 4148
  %add69 = add i32 %add67, %sub65
  %32 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write, align 8
  %call71 = tail call i32 %33(ptr noundef %bus, i32 noundef %add69, i32 noundef 240) #9
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then49
  %ret.0 = phi i32 [ %call63, %if.then49 ], [ %call71, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool73.not = icmp eq i32 %ret.0, 0
  br i1 %tobool73.not, label %if.end75, label %if.end72.err_crit_edge

if.end72.err_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end75:                                         ; preds = %if.end72
  %bp_mode = getelementptr %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 23, i32 %1, i32 3
  %34 = ptrtoint ptr %bp_mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bp_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp77.not = icmp eq i8 %35, -1
  br i1 %cmp77.not, label %if.end75.err_crit_edge, label %if.then79

if.end75.err_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %conv76 = zext i8 %35 to i32
  %36 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num, align 4
  %sub81 = shl i32 %37, 8
  %add83 = add i32 %mul1, 4152
  %add85 = add i32 %add83, %sub81
  %38 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_write, align 8
  %call89 = tail call i32 %39(ptr noundef %bus, i32 noundef %add85, i32 noundef %conv76) #9
  br label %err

err:                                              ; preds = %if.then79, %if.end75.err_crit_edge, %if.end72.err_crit_edge, %if.then28.err_crit_edge, %if.then10.err_crit_edge, %entry.err_crit_edge
  %ret.1 = phi i32 [ %call, %entry.err_crit_edge ], [ %call20, %if.then10.err_crit_edge ], [ %call38, %if.then28.err_crit_edge ], [ %ret.0, %if.end72.err_crit_edge ], [ %call89, %if.then79 ], [ 0, %if.end75.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_port_enable(ptr noundef %bus, ptr nocapture noundef readonly %enable_ch, i32 noundef %bank) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enable_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_ch, align 4
  %sub = shl i32 %1, 8
  %mul1 = shl i32 %bank, 6
  %add = add i32 %mul1, 4132
  %add2 = add i32 %add, %sub
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !178
  %reg_read = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 26
  %3 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_read, align 4
  %call = call i32 %4(ptr noundef %bus, i32 noundef %add2, ptr noundef nonnull %val) #9
  %enable = getelementptr inbounds %struct.sdw_enable_ch, ptr %enable_ch, i32 0, i32 2
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 4, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ch_mask = getelementptr inbounds %struct.sdw_enable_ch, ptr %enable_ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch_mask, align 4
  %shl = shl i32 %8, 24
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %or = or i32 %10, %shl
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 16777215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %val, align 4
  %reg_write = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %bus, i32 0, i32 27
  %14 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write, align 8
  %call3 = call i32 %15(ptr noundef %bus, i32 noundef %add2, i32 noundef %storemerge) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_handle_slave_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_extract_slave_id(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_compare_devid(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_slave_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_swrm_set_sdw_stream(ptr nocapture noundef readonly %dai, ptr noundef %stream, i32 noundef %direction) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %stream, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qcom_swrm_get_sdw_stream(ptr nocapture noundef readonly %dai, i32 noundef %direction) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai, align 4
  %call1 = tail call ptr @sdw_alloc_stream(ptr noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %arrayidx, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp35.not = icmp eq i32 %12, 0
  br i1 %cmp35.not, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 11
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.036 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dais, align 4
  %15 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_cpus, align 4
  %add = add i32 %16, %i.036
  %arrayidx3 = getelementptr ptr, ptr %14, i32 %add
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 8
  %set_stream.i = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %set_stream.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_stream.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %snd_soc_dai_set_stream.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

snd_soc_dai_set_stream.exit:                      ; preds = %for.body
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream, align 4
  %call.i = tail call i32 %24(ptr noundef nonnull %18, ptr noundef nonnull %call1, i32 noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, -524
  %or.cond = or i1 %cmp6, %cmp7.not
  br i1 %or.cond, label %snd_soc_dai_set_stream.exit.for.inc_crit_edge, label %do.end

snd_soc_dai_set_stream.exit.for.inc_crit_edge:    ; preds = %snd_soc_dai_set_stream.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %snd_soc_dai_set_stream.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.75, ptr noundef %30) #12
  tail call void @sdw_release_stream(ptr noundef nonnull %call1) #9
  br label %cleanup

for.inc:                                          ; preds = %snd_soc_dai_set_stream.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.036, 1
  %31 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_swrm_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @sdw_release_stream(ptr noundef %7) #9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx3 = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %pconfig.i = alloca [14 x %struct.sdw_port_config], align 4
  %sconfig.i = alloca %struct.sdw_stream_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pconfig.i) #9
  %10 = call ptr @memset(ptr %pconfig.i, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sconfig.i) #9
  %11 = getelementptr inbounds %struct.sdw_stream_config, ptr %sconfig.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sdw_stream_config, ptr %sconfig.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.sdw_stream_config, ptr %sconfig.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sdw_stream_config, ptr %sconfig.i, i32 0, i32 4
  %port_lock.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %port_lock.i, i32 noundef 0) #9
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn126.i = load ptr, ptr %master_list.i, align 4
  %cmp.not127.i = icmp eq ptr %.pn126.i, %master_list.i
  br i1 %cmp.not127.i, label %entry.qcom_swrm_stream_alloc_ports.exit_crit_edge, label %for.body.lr.ph.i

entry.qcom_swrm_stream_alloc_ports.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_alloc_ports.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %num_dout_ports.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 15
  %dout_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 18
  %num_din_ports.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 14
  %din_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 19
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.cond8.loopexit.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %nports.1.lcssa.i = phi i32 [ %nports.0128.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %nports.2.lcssa.i, %for.cond8.loopexit.i.for.cond.loopexit.i_crit_edge ]
  %16 = ptrtoint ptr %.pn129.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn129.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.qcom_swrm_stream_alloc_ports.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.loopexit.i.qcom_swrm_stream_alloc_ports.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_alloc_ports.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn129.i = phi ptr [ %.pn126.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %nports.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nports.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %direction2.i = getelementptr i8, ptr %.pn129.i, i32 -24
  %17 = ptrtoint ptr %direction2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %direction2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i = icmp eq i32 %18, 0
  %maxport.0.in.i = select i1 %cmp3.i, ptr %num_dout_ports.i, ptr %num_din_ports.i
  %port_mask.1.i = select i1 %cmp3.i, ptr %dout_port_mask.i, ptr %din_port_mask.i
  %19 = ptrtoint ptr %maxport.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %maxport.0.i = load i32, ptr %maxport.0.in.i, align 4
  %slave_rt_list.i = getelementptr i8, ptr %.pn129.i, i32 -16
  %20 = ptrtoint ptr %slave_rt_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn107121.i = load ptr, ptr %slave_rt_list.i, align 4
  %cmp10.not122.i = icmp eq ptr %.pn107121.i, %slave_rt_list.i
  br i1 %cmp10.not122.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body12.i_crit_edge

for.body.i.for.body12.i_crit_edge:                ; preds = %for.body.i
  br label %for.body12.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

for.cond8.loopexit.i:                             ; preds = %if.end28.i.for.cond8.loopexit.i_crit_edge, %for.body12.i.for.cond8.loopexit.i_crit_edge
  %nports.2.lcssa.i = phi i32 [ %nports.1123.i, %for.body12.i.for.cond8.loopexit.i_crit_edge ], [ %inc.i, %if.end28.i.for.cond8.loopexit.i_crit_edge ]
  %21 = ptrtoint ptr %.pn107124.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn107.i = load ptr, ptr %.pn107124.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn107.i, %slave_rt_list.i
  br i1 %cmp10.not.i, label %for.cond8.loopexit.i.for.cond.loopexit.i_crit_edge, label %for.cond8.loopexit.i.for.body12.i_crit_edge

for.cond8.loopexit.i.for.body12.i_crit_edge:      ; preds = %for.cond8.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.cond8.loopexit.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond8.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

for.body12.i:                                     ; preds = %for.cond8.loopexit.i.for.body12.i_crit_edge, %for.body.i.for.body12.i_crit_edge
  %.pn107124.i = phi ptr [ %.pn107.i, %for.cond8.loopexit.i.for.body12.i_crit_edge ], [ %.pn107121.i, %for.body.i.for.body12.i_crit_edge ]
  %nports.1123.i = phi i32 [ %nports.2.lcssa.i, %for.cond8.loopexit.i.for.body12.i_crit_edge ], [ %nports.0128.i, %for.body.i.for.body12.i_crit_edge ]
  %s_rt.0.i = getelementptr i8, ptr %.pn107124.i, i32 -12
  %22 = ptrtoint ptr %s_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_rt.0.i, align 4
  %port_list.i = getelementptr i8, ptr %.pn107124.i, i32 8
  %24 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn108117.i = load ptr, ptr %port_list.i, align 4
  %cmp20.not118.i = icmp eq ptr %.pn108117.i, %port_list.i
  br i1 %cmp20.not118.i, label %for.body12.i.for.cond8.loopexit.i_crit_edge, label %for.body12.i.for.body22.i_crit_edge

for.body12.i.for.body22.i_crit_edge:              ; preds = %for.body12.i
  br label %for.body22.i

for.body12.i.for.cond8.loopexit.i_crit_edge:      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.loopexit.i

for.body22.i:                                     ; preds = %if.end28.i.for.body22.i_crit_edge, %for.body12.i.for.body22.i_crit_edge
  %.pn108120.i = phi ptr [ %.pn108.i, %if.end28.i.for.body22.i_crit_edge ], [ %.pn108117.i, %for.body12.i.for.body22.i_crit_edge ]
  %nports.2119.i = phi i32 [ %inc.i, %if.end28.i.for.body22.i_crit_edge ], [ %nports.1123.i, %for.body12.i.for.body22.i_crit_edge ]
  %p_rt.0.i = getelementptr i8, ptr %.pn108120.i, i32 -64
  %25 = ptrtoint ptr %p_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_rt.0.i, align 4
  %arrayidx.i = getelementptr %struct.sdw_slave, ptr %23, i32 0, i32 9, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.else24.i, label %for.body22.i.if.end25.i_crit_edge

for.body22.i.if.end25.i_crit_edge:                ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.else24.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %port_mask.1.i, i32 noundef %maxport.0.i) #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else24.i, %for.body22.i.if.end25.i_crit_edge
  %pn.0.i = phi i32 [ %call.i, %if.else24.i ], [ %28, %for.body22.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pn.0.i, i32 %maxport.0.i)
  %cmp26.i = icmp sgt i32 %pn.0.i, %maxport.0.i
  br i1 %cmp26.i, label %err.i, label %if.end28.i

if.end28.i:                                       ; preds = %if.end25.i
  tail call void @_set_bit(i32 noundef %pn.0.i, ptr noundef %port_mask.1.i) #9
  %arrayidx29.i = getelementptr [14 x %struct.sdw_port_config], ptr %pconfig.i, i32 0, i32 %nports.2119.i
  %29 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %pn.0.i, ptr %arrayidx29.i, align 4
  %ch_mask.i = getelementptr i8, ptr %.pn108120.i, i32 -60
  %30 = ptrtoint ptr %ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_mask.i, align 4
  %ch_mask32.i = getelementptr [14 x %struct.sdw_port_config], ptr %pconfig.i, i32 0, i32 %nports.2119.i, i32 1
  %32 = ptrtoint ptr %ch_mask32.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ch_mask32.i, align 4
  %inc.i = add i32 %nports.2119.i, 1
  %33 = ptrtoint ptr %.pn108120.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn108.i = load ptr, ptr %.pn108120.i, align 4
  %cmp20.not.i = icmp eq ptr %.pn108.i, %port_list.i
  br i1 %cmp20.not.i, label %if.end28.i.for.cond8.loopexit.i_crit_edge, label %if.end28.i.for.body22.i_crit_edge

if.end28.i.for.body22.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i

if.end28.i.for.cond8.loopexit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.loopexit.i

err.i:                                            ; preds = %if.end25.i
  %dev.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nports.2119.i)
  %cmp64132.i = icmp sgt i32 %nports.2119.i, 0
  br i1 %cmp64132.i, label %err.i.for.body65.i_crit_edge, label %err.i.if.then_crit_edge

err.i.if.then_crit_edge:                          ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

err.i.for.body65.i_crit_edge:                     ; preds = %err.i
  br label %for.body65.i

for.body65.i:                                     ; preds = %for.body65.i.for.body65.i_crit_edge, %err.i.for.body65.i_crit_edge
  %i.0133.i = phi i32 [ %inc69.i, %for.body65.i.for.body65.i_crit_edge ], [ 0, %err.i.for.body65.i_crit_edge ]
  %arrayidx66.i = getelementptr [14 x %struct.sdw_port_config], ptr %pconfig.i, i32 0, i32 %i.0133.i
  %36 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66.i, align 4
  tail call void @_clear_bit(i32 noundef %37, ptr noundef %port_mask.1.i) #9
  %inc69.i = add nuw nsw i32 %i.0133.i, 1
  %exitcond.not.i = icmp eq i32 %inc69.i, %nports.2119.i
  br i1 %exitcond.not.i, label %for.body65.i.if.then_crit_edge, label %for.body65.i.for.body65.i_crit_edge

for.body65.i.for.body65.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65.i

for.body65.i.if.then_crit_edge:                   ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

qcom_swrm_stream_alloc_ports.exit:                ; preds = %for.cond.loopexit.i.qcom_swrm_stream_alloc_ports.exit_crit_edge, %entry.qcom_swrm_stream_alloc_ports.exit_crit_edge
  %nports.0.lcssa.i = phi i32 [ 0, %entry.qcom_swrm_stream_alloc_ports.exit_crit_edge ], [ %nports.1.lcssa.i, %for.cond.loopexit.i.qcom_swrm_stream_alloc_ports.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp52.i = icmp eq i32 %9, 1
  %..i = zext i1 %cmp52.i to i32
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %..i, ptr %13, align 4
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %11, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  %42 = ptrtoint ptr %sconfig.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %sconfig.i, align 4
  %type.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %7, i32 0, i32 3
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %14, align 4
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %12, align 4
  %call60.i = call i32 @sdw_stream_add_master(ptr noundef %3, ptr noundef nonnull %sconfig.i, ptr noundef nonnull %pconfig.i, i32 noundef %nports.0.lcssa.i, ptr noundef %7) #9
  call void @mutex_unlock(ptr noundef %port_lock.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sconfig.i) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pconfig.i) #9
  br label %if.end

if.then:                                          ; preds = %for.body65.i.if.then_crit_edge, %err.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_lock.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sconfig.i) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pconfig.i) #9
  tail call void @mutex_lock_nested(ptr noundef %port_lock.i, i32 noundef 0) #9
  %47 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn39.i = load ptr, ptr %master_list.i, align 4
  %cmp.not40.i = icmp eq ptr %.pn39.i, %master_list.i
  br i1 %cmp.not40.i, label %if.then.qcom_swrm_stream_free_ports.exit_crit_edge, label %if.then.for.body.i17_crit_edge

if.then.for.body.i17_crit_edge:                   ; preds = %if.then
  br label %for.body.i17

if.then.qcom_swrm_stream_free_ports.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_free_ports.exit

for.cond.loopexit.i15:                            ; preds = %for.body11.i.for.cond.loopexit.i15_crit_edge, %for.body.i17.for.cond.loopexit.i15_crit_edge
  %48 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i13 = load ptr, ptr %.pn41.i, align 4
  %cmp.not.i14 = icmp eq ptr %.pn.i13, %master_list.i
  br i1 %cmp.not.i14, label %for.cond.loopexit.i15.qcom_swrm_stream_free_ports.exit_crit_edge, label %for.cond.loopexit.i15.for.body.i17_crit_edge

for.cond.loopexit.i15.for.body.i17_crit_edge:     ; preds = %for.cond.loopexit.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i17

for.cond.loopexit.i15.qcom_swrm_stream_free_ports.exit_crit_edge: ; preds = %for.cond.loopexit.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_free_ports.exit

for.body.i17:                                     ; preds = %for.cond.loopexit.i15.for.body.i17_crit_edge, %if.then.for.body.i17_crit_edge
  %.pn41.i = phi ptr [ %.pn.i13, %for.cond.loopexit.i15.for.body.i17_crit_edge ], [ %.pn39.i, %if.then.for.body.i17_crit_edge ]
  %direction.i = getelementptr i8, ptr %.pn41.i, i32 -24
  %49 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp2.i = icmp eq i32 %50, 0
  %port_mask.0.i = select i1 %cmp2.i, ptr %dout_port_mask.i, ptr %din_port_mask.i
  %port_list.i16 = getelementptr i8, ptr %.pn41.i, i32 -8
  %51 = ptrtoint ptr %port_list.i16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn3536.i = load ptr, ptr %port_list.i16, align 4
  %cmp9.not37.i = icmp eq ptr %.pn3536.i, %port_list.i16
  br i1 %cmp9.not37.i, label %for.body.i17.for.cond.loopexit.i15_crit_edge, label %for.body.i17.for.body11.i_crit_edge

for.body.i17.for.body11.i_crit_edge:              ; preds = %for.body.i17
  br label %for.body11.i

for.body.i17.for.cond.loopexit.i15_crit_edge:     ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i15

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.i17.for.body11.i_crit_edge
  %.pn3538.i = phi ptr [ %.pn35.i, %for.body11.i.for.body11.i_crit_edge ], [ %.pn3536.i, %for.body.i17.for.body11.i_crit_edge ]
  %p_rt.0.i18 = getelementptr i8, ptr %.pn3538.i, i32 -64
  %52 = ptrtoint ptr %p_rt.0.i18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %p_rt.0.i18, align 4
  tail call void @_clear_bit(i32 noundef %53, ptr noundef %port_mask.0.i) #9
  %54 = ptrtoint ptr %.pn3538.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn35.i = load ptr, ptr %.pn3538.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn35.i, %port_list.i16
  br i1 %cmp9.not.i, label %for.body11.i.for.cond.loopexit.i15_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.body11.i.for.cond.loopexit.i15_crit_edge:     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i15

qcom_swrm_stream_free_ports.exit:                 ; preds = %for.cond.loopexit.i15.qcom_swrm_stream_free_ports.exit_crit_edge, %if.then.qcom_swrm_stream_free_ports.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_lock.i) #9
  br label %if.end

if.end:                                           ; preds = %qcom_swrm_stream_free_ports.exit, %qcom_swrm_stream_alloc_ports.exit
  %ret.0112.i22 = phi i32 [ -16, %qcom_swrm_stream_free_ports.exit ], [ 0, %qcom_swrm_stream_alloc_ports.exit ]
  ret i32 %ret.0112.i22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_swrm_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 24, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %port_lock.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %port_lock.i, i32 noundef 0) #9
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn39.i = load ptr, ptr %master_list.i, align 4
  %cmp.not40.i = icmp eq ptr %.pn39.i, %master_list.i
  br i1 %cmp.not40.i, label %entry.qcom_swrm_stream_free_ports.exit_crit_edge, label %for.body.lr.ph.i

entry.qcom_swrm_stream_free_ports.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_free_ports.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %dout_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 18
  %din_port_mask.i = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %3, i32 0, i32 19
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body11.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %9 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn41.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.qcom_swrm_stream_free_ports.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.loopexit.i.qcom_swrm_stream_free_ports.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_swrm_stream_free_ports.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn39.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %direction.i = getelementptr i8, ptr %.pn41.i, i32 -24
  %10 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp eq i32 %11, 0
  %port_mask.0.i = select i1 %cmp2.i, ptr %dout_port_mask.i, ptr %din_port_mask.i
  %port_list.i = getelementptr i8, ptr %.pn41.i, i32 -8
  %12 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn3536.i = load ptr, ptr %port_list.i, align 4
  %cmp9.not37.i = icmp eq ptr %.pn3536.i, %port_list.i
  br i1 %cmp9.not37.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %.pn3538.i = phi ptr [ %.pn35.i, %for.body11.i.for.body11.i_crit_edge ], [ %.pn3536.i, %for.body.i.for.body11.i_crit_edge ]
  %p_rt.0.i = getelementptr i8, ptr %.pn3538.i, i32 -64
  %13 = ptrtoint ptr %p_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_rt.0.i, align 4
  tail call void @_clear_bit(i32 noundef %14, ptr noundef %port_mask.0.i) #9
  %15 = ptrtoint ptr %.pn3538.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn35.i = load ptr, ptr %.pn3538.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn35.i, %port_list.i
  br i1 %cmp9.not.i, label %for.body11.i.for.cond.loopexit.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.body11.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

qcom_swrm_stream_free_ports.exit:                 ; preds = %for.cond.loopexit.i.qcom_swrm_stream_free_ports.exit_crit_edge, %entry.qcom_swrm_stream_free_ports.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_lock.i) #9
  %call2 = tail call i32 @sdw_stream_remove_master(ptr noundef %3, ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdw_alloc_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_release_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_master(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_master(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swrm_reg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @swrm_reg_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swrm_reg_show(ptr noundef %s_file, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s_file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #9
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !178
  %reg_read = getelementptr inbounds %struct.qcom_swrm_ctrl, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.06 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_read, align 4
  %call = call i32 %4(ptr noundef %1, i32 noundef %reg.06, ptr noundef nonnull %reg_val) #9
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s_file, ptr noundef nonnull @.str.79, i32 noundef %reg.06, i32 noundef %6) #9
  %add = add nuw nsw i32 %reg.06, 4
  %cmp = icmp ult i32 %reg.06, 5949
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !161, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_soundwire_qcom__283_1364_qcom_swrm_driver_init6, !1, !"__initcall__kmod_soundwire_qcom__283_1364_qcom_swrm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/qcom.c", i32 1364, i32 1}
!2 = !{ptr @__exitcall_qcom_swrm_driver_exit, !1, !"__exitcall_qcom_swrm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description284, !4, !"__UNIQUE_ID_description284", i1 false, i1 false}
!4 = !{!"../drivers/soundwire/qcom.c", i32 1366, i32 1}
!5 = !{ptr @__UNIQUE_ID_file285, !6, !"__UNIQUE_ID_file285", i1 false, i1 false}
!6 = !{!"../drivers/soundwire/qcom.c", i32 1367, i32 1}
!7 = !{ptr @__UNIQUE_ID_license286, !6, !"__UNIQUE_ID_license286", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soundwire/qcom.c", i32 1360, i32 11}
!10 = !{ptr @qcom_swrm_driver, !11, !"qcom_swrm_driver", i1 false, i1 false}
!11 = !{!"../drivers/soundwire/qcom.c", i32 1356, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soundwire/qcom.c", i32 1253, i32 33}
!14 = !{ptr @qcom_swrm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/soundwire/qcom.c", i32 1263, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soundwire/qcom.c", i32 1298, i32 6}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soundwire/qcom.c", i32 1300, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qcom_swrm_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_swrm_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soundwire/qcom.c", i32 1306, i32 3}
!29 = !{ptr @qcom_swrm_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_swrm_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soundwire/qcom.c", i32 1318, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qcom_swrm_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcom_swrm_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soundwire/qcom.c", i32 1323, i32 37}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soundwire/qcom.c", i32 1324, i32 22}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qcom_swrm_ops, !44, !"qcom_swrm_ops", i1 false, i1 false}
!44 = !{!"../drivers/soundwire/qcom.c", i32 805, i32 36}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soundwire/qcom.c", i32 385, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @qcom_swrm_cmd_fifo_rd_cmd._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @qcom_swrm_cmd_fifo_rd_cmd._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soundwire/qcom.c", i32 271, i32 3}
!52 = !{ptr @swrm_wait_for_rd_fifo_avail._rs, !51, !"_rs", i1 false, i1 false}
!53 = !{ptr @__func__.swrm_wait_for_rd_fifo_avail, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @swrm_wait_for_rd_fifo_avail._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @swrm_wait_for_rd_fifo_avail._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @swrm_wait_for_wr_fifo_avail._rs, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/soundwire/qcom.c", i32 296, i32 3}
!59 = !{ptr @__func__.swrm_wait_for_wr_fifo_avail, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @swrm_wait_for_wr_fifo_avail._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @swrm_wait_for_wr_fifo_avail._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @qcom_swrm_port_ops, !64, !"qcom_swrm_port_ops", i1 false, i1 false}
!64 = !{!"../drivers/soundwire/qcom.c", i32 799, i32 41}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soundwire/qcom.c", i32 1118, i32 33}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soundwire/qcom.c", i32 1127, i32 33}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soundwire/qcom.c", i32 1141, i32 38}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soundwire/qcom.c", i32 1146, i32 38}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soundwire/qcom.c", i32 1151, i32 38}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soundwire/qcom.c", i32 1156, i32 38}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soundwire/qcom.c", i32 1166, i32 32}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soundwire/qcom.c", i32 1169, i32 32}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soundwire/qcom.c", i32 1172, i32 32}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soundwire/qcom.c", i32 1175, i32 32}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soundwire/qcom.c", i32 1178, i32 32}
!87 = !{ptr @qcom_swrm_freq_tbl, !88, !"qcom_swrm_freq_tbl", i1 false, i1 false}
!88 = !{!"../drivers/soundwire/qcom.c", i32 869, i32 12}
!89 = !{ptr @qcom_swrm_irq_handler._rs, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/soundwire/qcom.c", i32 514, i32 6}
!91 = !{ptr @__func__.qcom_swrm_irq_handler, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qcom_swrm_irq_handler._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @qcom_swrm_irq_handler._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @qcom_swrm_irq_handler._rs.36, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/soundwire/qcom.c", i32 523, i32 5}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qcom_swrm_irq_handler._entry.37, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qcom_swrm_irq_handler._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soundwire/qcom.c", i32 527, i32 6}
!102 = !{ptr @qcom_swrm_irq_handler._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @qcom_swrm_irq_handler._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @qcom_swrm_irq_handler._rs.43, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/soundwire/qcom.c", i32 536, i32 5}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @qcom_swrm_irq_handler._entry.44, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @qcom_swrm_irq_handler._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @qcom_swrm_irq_handler._rs.47, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/soundwire/qcom.c", i32 544, i32 5}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qcom_swrm_irq_handler._entry.48, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @qcom_swrm_irq_handler._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @qcom_swrm_irq_handler._rs.51, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/soundwire/qcom.c", i32 550, i32 5}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @qcom_swrm_irq_handler._entry.52, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @qcom_swrm_irq_handler._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soundwire/qcom.c", i32 556, i32 5}
!121 = !{ptr @qcom_swrm_irq_handler._entry.55, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qcom_swrm_irq_handler._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @qcom_swrm_irq_handler._rs.58, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../drivers/soundwire/qcom.c", i32 563, i32 5}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qcom_swrm_irq_handler._entry.59, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @qcom_swrm_irq_handler._entry_ptr.61, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @qcom_swrm_irq_handler._rs.62, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/soundwire/qcom.c", i32 569, i32 5}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @qcom_swrm_irq_handler._entry.63, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @qcom_swrm_irq_handler._entry_ptr.65, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @qcom_swrm_irq_handler._rs.66, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/soundwire/qcom.c", i32 577, i32 5}
!135 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @qcom_swrm_irq_handler._entry.67, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @qcom_swrm_irq_handler._entry_ptr.69, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @qcom_swrm_irq_handler._rs.70, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/soundwire/qcom.c", i32 595, i32 5}
!140 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @qcom_swrm_irq_handler._entry.71, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @qcom_swrm_irq_handler._entry_ptr.73, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/soundwire/qcom.c", i32 1076, i32 50}
!145 = !{ptr @qcom_swrm_pdm_dai_ops, !146, !"qcom_swrm_pdm_dai_ops", i1 false, i1 false}
!146 = !{!"../drivers/soundwire/qcom.c", i32 1049, i32 37}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/soundwire/qcom.c", i32 1030, i32 4}
!149 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @qcom_swrm_startup._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @qcom_swrm_startup._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/soundwire/qcom.c", i32 931, i32 6}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qcom_swrm_stream_alloc_ports._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qcom_swrm_stream_alloc_ports._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @qcom_swrm_dai_component, !158, !"qcom_swrm_dai_component", i1 false, i1 false}
!158 = !{!"../drivers/soundwire/qcom.c", i32 1058, i32 46}
!159 = !{ptr @swrm_reg_fops, !160, !"swrm_reg_fops", i1 false, i1 false}
!160 = !{!"../drivers/soundwire/qcom.c", i32 1209, i32 1}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soundwire/qcom.c", i32 1204, i32 22}
!163 = !{ptr @qcom_swrm_of_match, !164, !"qcom_swrm_of_match", i1 false, i1 false}
!164 = !{!"../drivers/soundwire/qcom.c", i32 1348, i32 34}
!165 = !{ptr @swrm_v1_3_data, !166, !"swrm_v1_3_data", i1 false, i1 false}
!166 = !{!"../drivers/soundwire/qcom.c", i32 169, i32 30}
!167 = !{ptr @swrm_v1_5_data, !168, !"swrm_v1_5_data", i1 false, i1 false}
!168 = !{!"../drivers/soundwire/qcom.c", i32 174, i32 30}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{i64 4266240}
!181 = !{i64 2155003074}
!182 = !{i64 2155003287}
!183 = !{i64 4265822}
!184 = !{i8 0, i8 2}
