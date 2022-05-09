; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ngene/ngene-core.c_pt.bc'
source_filename = "../drivers/media/pci/ngene/ngene-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cxd2099_cfg = type { i32, i8, i8, i32, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ngene = type { i32, ptr, ptr, i32, i32, i32, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, [16 x %struct.EVENT_BUFFER], i32, i32, %struct.tasklet_struct, ptr, i32, i32, %struct.wait_queue_head, i32, %struct.mutex, %struct.mutex, %struct.semaphore, %struct.mutex, i32, i32, %struct.spinlock, [5 x %struct.dvb_adapter], ptr, [5 x %struct.ngene_channel], ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4096 x i8], i32, i32, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, i32, i32, %struct.ngene_ci }
%struct.EVENT_BUFFER = type { i32, i8, i8, i8, i8, [2 x i32] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ngene_channel = type { %struct.device, %struct.i2c_adapter, [1 x ptr], i32, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, ptr, ptr, %struct.tasklet_struct, ptr, i32, i32, i8, i8, i8, ptr, ptr, %struct.spinlock, i16, i16, i16, i16, i16, i32, i32, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, [188 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.SRingBufferDescriptor = type { ptr, i64, i32, i32, i32, i32, ptr, i64, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.ngene_ci = type { %struct.device, %struct.i2c_adapter, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.ngene_command = type { i32, i32, %union.anon.141 }
%union.anon.141 = type { %struct.FW_STREAM_CONTROL, [192 x i8] }
%struct.FW_STREAM_CONTROL = type { %struct.FW_HEADER, i8, i8, i8, i8, i16, i64, i16, i16, i16, i16, i16, i16, i16, i16, [32 x i8] }
%struct.FW_HEADER = type { i8, i8 }
%struct.ngene_info = type { i32, i32, i8, ptr, [5 x i32], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i32, i8, [4 x i8], [4 x i8], ptr, ptr }
%struct.BUFFER_HEADER = type { i64, %struct.BUFFER_STREAM_RESULTS, i32, i32, i64, i32, i32, i64 }
%struct.BUFFER_STREAM_RESULTS = type { i32, i16, i8, i8, i16, [2 x i8], i32 }
%struct.SBufferHeader = type <{ %struct.BUFFER_HEADER, ptr, ptr, ptr, ptr, ptr }>
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.HW_SCATTER_GATHER_ELEMENT = type { i64, i32, i32 }

@__param_str_one_adapter = internal constant [18 x i8] c"ngene.one_adapter\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@one_adapter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_one_adapter = internal constant %struct.kernel_param { ptr @__param_str_one_adapter, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @one_adapter } }, section "__param", align 4
@__UNIQUE_ID_one_adaptertype383 = internal constant [31 x i8] c"ngene.parmtype=one_adapter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_one_adapter384 = internal constant [45 x i8] c"ngene.parm=one_adapter:Use only one adapter.\00", section ".modinfo", align 1
@__param_str_shutdown_workaround = internal constant [26 x i8] c"ngene.shutdown_workaround\00", align 1
@shutdown_workaround = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shutdown_workaround = internal constant %struct.kernel_param { ptr @__param_str_shutdown_workaround, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @shutdown_workaround } }, section "__param", align 4
@__UNIQUE_ID_shutdown_workaroundtype385 = internal constant [39 x i8] c"ngene.parmtype=shutdown_workaround:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown_workaround386 = internal constant [92 x i8] c"ngene.parm=shutdown_workaround:Activate workaround for shutdown problem with some chipsets.\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"ngene.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype387 = internal constant [25 x i8] c"ngene.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug388 = internal constant [46 x i8] c"ngene.parm=debug:Print debugging information.\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [17 x i8] c"ngene.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype389 = internal constant [41 x i8] c"ngene.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr390 = internal constant [42 x i8] c"ngene.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@set_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"already running\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_transfer\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/ngene/ngene-core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@set_transfer._entry_ptr = internal global ptr @set_transfer._entry, section ".printk_index", align 4
@set_transfer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"already stopped\0A\00", [47 x i8] zeroinitializer }, align 32
@set_transfer._entry_ptr.7 = internal global ptr @set_transfer._entry.5, section ".printk_index", align 4
@set_transfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 742, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %d failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@set_transfer._entry_ptr.11 = internal global ptr @set_transfer._entry.8, section ".printk_index", align 4
@ngene_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1636, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"shutdown workaround...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ngene_shutdown\00", [17 x i8] zeroinitializer }, align 32
@ngene_shutdown._entry_ptr = internal global ptr @ngene_shutdown._entry, section ".printk_index", align 4
@ngene_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Found %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_probe\00", [20 x i8] zeroinitializer }, align 32
@ngene_probe._entry_ptr = internal global ptr @ngene_probe._entry, section ".printk_index", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@ngene_command_mutex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 305, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Command timeout cmd=%02x prev=%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ngene_command_mutex\00", [44 x i8] zeroinitializer }, align 32
@ngene_command_mutex._entry_ptr = internal global ptr @ngene_command_mutex._entry, section ".printk_index", align 4
@dump_command_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 242, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"host_to_ngene (%04x): %*ph\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dump_command_io\00", [16 x i8] zeroinitializer }, align 32
@dump_command_io._entry_ptr = internal global ptr @dump_command_io._entry, section ".printk_index", align 4
@dump_command_io._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 245, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ngene_to_host (%04x): %*ph\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_command_io._entry_ptr.22 = internal global ptr @dump_command_io._entry.20, section ".printk_index", align 4
@dump_command_io._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 248, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dev->hosttongene (%p): %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_command_io._entry_ptr.25 = internal global ptr @dump_command_io._entry.23, section ".printk_index", align 4
@dump_command_io._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 251, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dev->ngenetohost (%p): %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_command_io._entry_ptr.28 = internal global ptr @dump_command_io._entry.26, section ".printk_index", align 4
@ngene_command_stream_control.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ngene\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ngene_command_stream_control\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Stream=%02x, Control=%02x, Mode=%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@I2SConfiguration = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\10\00\00\80\10\00\00", [24 x i8] zeroinitializer }, align 32
@TSFeatureDecoderSetup = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"B\00\00\02\02\BC\00\00@\06\00\02\02\BC\00\00q\07\00\02\02\BC\00\00r\00\00\02\02\BC\00\00@\07\00\02\02\BC\00\00", [56 x i8] zeroinitializer }, align 32
@ITUDecoderSetup = internal constant { [4 x [16 x i8]], [32 x i8] } { [4 x [16 x i8]] [[16 x i8] c"\1C\13\01h=\90\14 \00\00\01\B0\9C\00\00\00", [16 x i8] c"\9C\03#\C0`\0E\13\00\00\00\00\01\B0\00\00\00", [16 x i8] c"\9F\00#\C0`\0F\13\00\00\00\00\01\B0\00\00\00", [16 x i8] c"\9C\01#\C0`\0E\13\00\00\00\00\01\B0\00\00\00"], [32 x i8] zeroinitializer }, align 32
@RingBufferSizes = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 8, i32 8, i32 8], [44 x i8] zeroinitializer }, align 32
@Buffer1Sizes = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 417792, i32 417792, i32 8192, i32 8192, i32 8192], [44 x i8] zeroinitializer }, align 32
@Buffer2Sizes = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 28672, i32 28672, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nGene\00", [26 x i8] zeroinitializer }, align 32
@ngene_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dev->cmd_wq\00", [19 x i8] zeroinitializer }, align 32
@ngene_start.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->tx_wq\00", [20 x i8] zeroinitializer }, align 32
@ngene_start.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->rx_wq\00", [20 x i8] zeroinitializer }, align 32
@ngene_start.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->cmd_mutex\00", [16 x i8] zeroinitializer }, align 32
@ngene_start.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->stream_mutex\00", [45 x i8] zeroinitializer }, align 32
@ngene_start.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->i2c_switch_mutex\00", [41 x i8] zeroinitializer }, align 32
@ngene_start.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->cmd_lock\00", [17 x i8] zeroinitializer }, align 32
@ngene_start.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dev->channel[i].state_lock\00", [36 x i8] zeroinitializer }, align 32
@ngene_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSI not available\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_start\00", [20 x i8] zeroinitializer }, align 32
@ngene_start._entry_ptr = internal global ptr @ngene_start._entry, section ".printk_index", align 4
@ngene_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Device version %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ngene_init\00", [21 x i8] zeroinitializer }, align 32
@ngene_init._entry_ptr = internal global ptr @ngene_init._entry, section ".printk_index", align 4
@irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 202, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event overflow\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq_handler\00", [20 x i8] zeroinitializer }, align 32
@irq_handler._entry_ptr = internal global ptr @irq_handler._entry, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_15.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_16.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_17.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ngene_18.fw\00", [20 x i8] zeroinitializer }, align 32
@ngene_load_firm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1240, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not load firmware file %s.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ngene_load_firm\00", [16 x i8] zeroinitializer }, align 32
@ngene_load_firm._entry_ptr = internal global ptr @ngene_load_firm._entry, section ".printk_index", align 4
@ngene_load_firm._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 1242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Copy %s to your hotplug directory!\0A\00", [60 x i8] zeroinitializer }, align 32
@ngene_load_firm._entry_ptr.64 = internal global ptr @ngene_load_firm._entry.62, section ".printk_index", align 4
@ngene_load_firm._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 1248, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware %s has invalid size!\00", [34 x i8] zeroinitializer }, align 32
@ngene_load_firm._entry_ptr.67 = internal global ptr @ngene_load_firm._entry.65, section ".printk_index", align 4
@ngene_load_firm._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 1251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Loading firmware file %s.\0A\00", [37 x i8] zeroinitializer }, align 32
@ngene_load_firm._entry_ptr.70 = internal global ptr @ngene_load_firm._entry.68, section ".printk_index", align 4
@cxd_cfgtmpl = internal constant { %struct.cxd2099_cfg, [16 x i8] } { %struct.cxd2099_cfg { i32 62000, i8 0, i8 0, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@cxd_attach.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxd_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No CXD2099AR found\0A\00", [44 x i8] zeroinitializer }, align 32
@cxd_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1577, ptr @.str.74, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CXD2099AR is uninitialized!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxd_attach._entry_ptr = internal global ptr @cxd_attach._entry, section ".printk_index", align 4
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxd2099\00", [24 x i8] zeroinitializer }, align 32
@cxd_attach._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.2, i32 1593, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CXD2099AR attach failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cxd_attach._entry_ptr.78 = internal global ptr @cxd_attach._entry.76, section ".printk_index", align 4
@__const.ngene_buffer_config.tsin12_config = private unnamed_addr constant [6 x i8] c"``\00\00\00\00", align 1
@__const.ngene_buffer_config.tsin1234_config = private unnamed_addr constant [6 x i8] c"00\0000\00", align 1
@__const.ngene_buffer_config.tsio1235_config = private unnamed_addr constant [6 x i8] c"00\00(\008", align 1
@ngene_dvbdev_ci = external dso_local global %struct.dvb_device, align 4
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SW demux\00", [23 x i8] zeroinitializer }, align 32
@demux_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 113, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OOPS\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"demux_tasklet\00", [18 x i8] zeroinitializer }, align 32
@demux_tasklet._entry_ptr = internal global ptr @demux_tasklet._entry, section ".printk_index", align 4
@demux_tasklet._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Update AudioDTO = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@demux_tasklet._entry_ptr.84 = internal global ptr @demux_tasklet._entry.82, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"one_adapter\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 27, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c"shutdown_workaround\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 31, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 35, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 697, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 702, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 742, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1636, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1676, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 39, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 304, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 242, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 245, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 248, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 251, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 563, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"I2SConfiguration\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 444, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"TSFeatureDecoderSetup\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 435, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"ITUDecoderSetup\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 459, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"RingBufferSizes\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1013, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant [13 x i8] c"Buffer1Sizes\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1021, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"Buffer2Sizes\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1029, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1318, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1323, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1324, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1325, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1326, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1327, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1329, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1330, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1332, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1351, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1201, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 202, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 33, i32 31 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 34, i32 28 }
@___asan_gen_.298 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 35, i32 39 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1220, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1225, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1230, i32 13 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1235, i32 13 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1240, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1241, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1248, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1251, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"cxd_cfgtmpl\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1554, i32 33 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1572, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1577, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1582, i32 28 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1593, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 1519, i32 43 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 113, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.382 = private constant [40 x i8] c"../drivers/media/pci/ngene/ngene-core.c\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 120, i32 5 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_adapter_nr390, ptr @__UNIQUE_ID_adapter_nrtype389, ptr @__UNIQUE_ID_debug388, ptr @__UNIQUE_ID_debugtype387, ptr @__UNIQUE_ID_one_adapter384, ptr @__UNIQUE_ID_one_adaptertype383, ptr @__UNIQUE_ID_shutdown_workaround386, ptr @__UNIQUE_ID_shutdown_workaroundtype385, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_one_adapter, ptr @__param_shutdown_workaround, ptr @cxd_attach._entry, ptr @cxd_attach._entry.76, ptr @cxd_attach._entry_ptr, ptr @cxd_attach._entry_ptr.78, ptr @demux_tasklet._entry, ptr @demux_tasklet._entry.82, ptr @demux_tasklet._entry_ptr, ptr @demux_tasklet._entry_ptr.84, ptr @dump_command_io._entry, ptr @dump_command_io._entry.20, ptr @dump_command_io._entry.23, ptr @dump_command_io._entry.26, ptr @dump_command_io._entry_ptr, ptr @dump_command_io._entry_ptr.22, ptr @dump_command_io._entry_ptr.25, ptr @dump_command_io._entry_ptr.28, ptr @irq_handler._entry, ptr @irq_handler._entry_ptr, ptr @ngene_command_mutex._entry, ptr @ngene_command_mutex._entry_ptr, ptr @ngene_init._entry, ptr @ngene_init._entry_ptr, ptr @ngene_load_firm._entry, ptr @ngene_load_firm._entry.62, ptr @ngene_load_firm._entry.65, ptr @ngene_load_firm._entry.68, ptr @ngene_load_firm._entry_ptr, ptr @ngene_load_firm._entry_ptr.64, ptr @ngene_load_firm._entry_ptr.67, ptr @ngene_load_firm._entry_ptr.70, ptr @ngene_probe._entry, ptr @ngene_probe._entry_ptr, ptr @ngene_shutdown._entry, ptr @ngene_shutdown._entry_ptr, ptr @ngene_start._entry, ptr @ngene_start._entry_ptr, ptr @set_transfer._entry, ptr @set_transfer._entry.5, ptr @set_transfer._entry.8, ptr @set_transfer._entry_ptr, ptr @set_transfer._entry_ptr.11, ptr @set_transfer._entry_ptr.7, ptr @one_adapter, ptr @shutdown_workaround, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @adapter_nr, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @I2SConfiguration, ptr @TSFeatureDecoderSetup, ptr @ITUDecoderSetup, ptr @RingBufferSizes, ptr @Buffer1Sizes, ptr @Buffer2Sizes, ptr @.str.32, ptr @ngene_start.__key, ptr @.str.33, ptr @ngene_start.__key.34, ptr @.str.35, ptr @ngene_start.__key.36, ptr @.str.37, ptr @ngene_start.__key.38, ptr @.str.39, ptr @ngene_start.__key.40, ptr @.str.41, ptr @ngene_start.__key.42, ptr @.str.43, ptr @ngene_start.__key.44, ptr @.str.45, ptr @ngene_start.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @sema_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @cxd_cfgtmpl, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_adapter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_workaround to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_transfer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_transfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_command_mutex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_command_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_command_io._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_command_io._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_command_io._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I2SConfiguration to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSFeatureDecoderSetup to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ITUDecoderSetup to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RingBufferSizes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Buffer1Sizes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Buffer2Sizes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_load_firm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_load_firm._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_load_firm._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_load_firm._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd_cfgtmpl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd_attach._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demux_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demux_tasklet._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_command(ptr noundef %dev, ptr noundef %com) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_mutex = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef %com)
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef %com) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [8 x i8], align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %cmd_done = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_done, align 4
  %cmd = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %entry.if.end81_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then36
  ]

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %BootFirmware = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %BootFirmware to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %BootFirmware, align 8
  %iomem = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomem, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 49760
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !214
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %icounts = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %icounts to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %icounts, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 8
  %add.ptr5 = getelementptr i8, ptr %13, i32 49664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 8
  %add.ptr10 = getelementptr i8, ptr %15, i32 49668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 49672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 8
  %add.ptr20 = getelementptr i8, ptr %19, i32 49676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 8
  %add.ptr25 = getelementptr i8, ptr %21, i32 49680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 8
  %add.ptr30 = getelementptr i8, ptr %23, i32 49684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #7, !srcloc !217
  br label %if.end81

if.then36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %PAFWInterfaceBuffer = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 13
  %24 = ptrtoint ptr %PAFWInterfaceBuffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %PAFWInterfaceBuffer, align 8
  %conv37 = zext i32 %25 to i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %iomem42 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem42, align 8
  %add.ptr43 = getelementptr i8, ptr %28, i32 49664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %26) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem42, align 8
  %add.ptr49 = getelementptr i8, ptr %30, i32 49668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  %add = add nuw nsw i64 %conv37, 256
  %conv54 = trunc i64 %add to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv54)
  %32 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomem42, align 8
  %add.ptr56 = getelementptr i8, ptr %33, i32 49672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %31) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  tail call void @arm_heavy_mb() #7
  %sh.diff = lshr i64 %add, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %34 = and i32 %tr.sh.diff, 16777216
  %35 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem42, align 8
  %add.ptr64 = getelementptr i8, ptr %36, i32 49676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %34) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %add68 = add nuw nsw i64 %conv37, 512
  %conv70 = trunc i64 %add68 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv70)
  %38 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem42, align 8
  %add.ptr72 = getelementptr i8, ptr %39, i32 49680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %37) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %sh.diff252 = lshr i64 %add68, 8
  %tr.sh.diff253 = trunc i64 %sh.diff252 to i32
  %40 = and i32 %tr.sh.diff253, 16777216
  %41 = ptrtoint ptr %iomem42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iomem42, align 8
  %add.ptr80 = getelementptr i8, ptr %42, i32 49684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %40) #7, !srcloc !217
  br label %if.end81

if.end81:                                         ; preds = %if.then36, %if.then, %entry.if.end81_crit_edge
  %FWInterfaceBuffer = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 12
  %43 = ptrtoint ptr %FWInterfaceBuffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %FWInterfaceBuffer, align 4
  %45 = ptrtoint ptr %com to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %com, align 1
  %add83 = add i32 %46, 2
  %47 = call ptr @memcpy(ptr %44, ptr %cmd, i32 %add83)
  %BootFirmware84 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 9
  %48 = ptrtoint ptr %BootFirmware84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %BootFirmware84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %if.end81.if.end92_crit_edge, label %if.then85

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %iomem86 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %50 = ptrtoint ptr %iomem86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem86, align 8
  %add.ptr87 = getelementptr i8, ptr %51, i32 49152
  %52 = ptrtoint ptr %com to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %com, align 1
  %add91 = add i32 %53, 2
  tail call void @mmiocpy(ptr noundef %add.ptr87, ptr noundef %cmd, i32 noundef %add91) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %if.end81.if.end92_crit_edge
  %cmd_lock = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %cmd_lock) #7
  %ngenetohost = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 14
  %54 = ptrtoint ptr %ngenetohost to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ngenetohost, align 4
  %out_len = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 1
  %56 = ptrtoint ptr %out_len to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %out_len, align 1
  %add.ptr93 = getelementptr i8, ptr %55, i32 %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool95.not = icmp eq i32 %57, 0
  %spec.select.idx = zext i1 %tobool95.not to i32
  %spec.select = getelementptr i8, ptr %add.ptr93, i32 %spec.select.idx
  %58 = ptrtoint ptr %spec.select to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %spec.select, align 1
  %59 = ptrtoint ptr %ngenetohost to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ngenetohost, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %60, align 1
  %62 = load ptr, ptr %ngenetohost, align 4
  %arrayidx100 = getelementptr i8, ptr %62, i32 1
  %63 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx100, align 1
  %CmdDoneByte = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 8
  %64 = ptrtoint ptr %CmdDoneByte to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %spec.select, ptr %CmdDoneByte, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %cmd_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %iomem105 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %65 = ptrtoint ptr %iomem105 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomem105, align 8
  %add.ptr106 = getelementptr i8, ptr %66, i32 41096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 16777216) #7, !srcloc !217
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 300) #7
  %67 = ptrtoint ptr %cmd_done to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp114 = icmp eq i32 %68, 1
  br i1 %cmp114, label %if.end92.if.end164_crit_edge, label %if.then126

if.end92.if.end164_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then126:                                       ; preds = %if.end92
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %69 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %cmd_wq = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 23
  %call128260 = call i32 @prepare_to_wait_event(ptr noundef %cmd_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %70 = ptrtoint ptr %cmd_done to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmd_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp131261 = icmp eq i32 %71, 1
  br i1 %cmp131261, label %if.end154.thread, label %if.then126.cleanup_crit_edge

if.then126.cleanup_crit_edge:                     ; preds = %if.then126
  br label %cleanup

if.end154.thread:                                 ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %cmd_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end164

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then126.cleanup_crit_edge
  %__ret127.1262 = phi i32 [ %__ret127.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then126.cleanup_crit_edge ]
  %call151 = call i32 @schedule_timeout(i32 noundef %__ret127.1262) #7
  %call128 = call i32 @prepare_to_wait_event(ptr noundef %cmd_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %72 = ptrtoint ptr %cmd_done to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmd_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp131 = icmp eq i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool137.not = icmp eq i32 %call151, 0
  %74 = select i1 %cmp131, i1 %tobool137.not, i1 false
  %__ret127.1 = select i1 %74, i32 1, i32 %call151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret127.1)
  %tobool144.not = icmp eq i32 %__ret127.1, 0
  %75 = select i1 %cmp131, i1 true, i1 %tobool144.not
  br i1 %75, label %if.end154, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end154:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret127.1)
  %phi.cmp = icmp eq i32 %__ret127.1, 0
  call void @finish_wait(ptr noundef %cmd_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %do.end160, label %if.end154.if.end164_crit_edge

if.end154.if.end164_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

do.end160:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cmd, align 1
  %conv163 = zext i8 %77 to i32
  %prev_cmd = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 53
  %78 = ptrtoint ptr %prev_cmd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %prev_cmd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %conv163, i32 noundef %79) #10
  %80 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #7
  %82 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 -1, ptr %buf.i, align 8
  %83 = ptrtoint ptr %iomem105 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iomem105, align 8
  %add.ptr.i = getelementptr i8, ptr %84, i32 49152
  call void @mmiocpy(ptr noundef nonnull %buf.i, ptr noundef %add.ptr.i, i32 noundef 8) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, i32 noundef 49152, i32 noundef 8, ptr noundef nonnull %buf.i) #10
  %85 = ptrtoint ptr %iomem105 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iomem105, align 8
  %add.ptr5.i = getelementptr i8, ptr %86, i32 49408
  call void @mmiocpy(ptr noundef nonnull %buf.i, ptr noundef %add.ptr5.i, i32 noundef 8) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.21, i32 noundef 49408, i32 noundef 8, ptr noundef nonnull %buf.i) #10
  %hosttongene.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 15
  %87 = ptrtoint ptr %hosttongene.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hosttongene.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, ptr noundef %88, i32 noundef 8, ptr noundef %88) #10
  %89 = ptrtoint ptr %ngenetohost to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ngenetohost, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.27, ptr noundef %90, i32 noundef 8, ptr noundef %90) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  br label %cleanup185

if.end164:                                        ; preds = %if.end154.if.end164_crit_edge, %if.end154.thread, %if.end92.if.end164_crit_edge
  %91 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %92)
  %cmp168 = icmp eq i8 %92, 2
  br i1 %cmp168, label %if.then170, label %if.end164.if.end172_crit_edge

if.end164.if.end172_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then170:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %BootFirmware84 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %BootFirmware84, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end164.if.end172_crit_edge
  %94 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cmd, align 1
  %conv175 = zext i8 %95 to i32
  %prev_cmd176 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 53
  %96 = ptrtoint ptr %prev_cmd176 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv175, ptr %prev_cmd176, align 4
  %97 = ptrtoint ptr %out_len to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %out_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool178.not = icmp eq i32 %98, 0
  br i1 %tobool178.not, label %if.end172.cleanup185_crit_edge, label %if.end180

if.end172.cleanup185_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup185

if.end180:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %ngenetohost to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ngenetohost, align 4
  %101 = call ptr @memcpy(ptr %cmd, ptr %100, i32 %98)
  br label %cleanup185

cleanup185:                                       ; preds = %if.end180, %if.end172.cleanup185_crit_edge, %do.end160
  %retval.0 = phi i32 [ 0, %if.end180 ], [ -1, %do.end160 ], [ 0, %if.end172.cleanup185_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_command_gpio_set(ptr noundef %dev, i8 noundef zeroext %select, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  %com = alloca %struct.ngene_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com) #7
  %0 = getelementptr inbounds i8, ptr %com, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 256)
  %cmd = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 38, ptr %cmd, align 4
  %Length = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %Length to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %Length, align 1
  %shl = shl i8 %level, 7
  %or = or i8 %shl, %select
  %select5 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %select5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or, ptr %select5, align 2
  %5 = ptrtoint ptr %com to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %com, align 4
  %out_len = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 1
  %6 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out_len, align 4
  %cmd_mutex.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef nonnull %com) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com) #7
  ret i32 %call.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @FillTSBuffer(ptr nocapture noundef writeonly %Buffer, i32 noundef %Length, i32 noundef %Flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %Buffer, i32 111, i32 %Length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Length)
  %cmp6 = icmp sgt i32 %Length, 0
  br i1 %cmp6, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %Flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 285155143, i32 1193279248
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptr.08 = phi ptr [ %Buffer, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %Length.addr.07 = phi i32 [ %Length, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %1 = ptrtoint ptr %ptr.08 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %., ptr %ptr.08, align 4
  %add.ptr = getelementptr i32, ptr %ptr.08, i32 47
  %sub = add nsw i32 %Length.addr.07, -188
  %cmp = icmp ugt i32 %Length.addr.07, 188
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_transfer(ptr noundef %chan, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %running6 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 63
  %4 = ptrtoint ptr %running6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %running6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool7.not, label %if.then.if.end13_crit_edge, label %do.end

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool7.not, label %do.end11, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %card_info = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_info, align 8
  %switch_ctrl = getelementptr inbounds %struct.ngene_info, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %switch_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %switch_ctrl, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %xor = xor i32 %state, 1
  %call = tail call i32 %9(ptr noundef %chan, i32 noundef 1, i32 noundef %xor) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  br i1 %tobool.not, label %if.end18.if.end37_crit_edge, label %if.then20

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then20:                                        ; preds = %if.end18
  %state_lock = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #7
  %tsout_rbuf = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 45
  tail call void @dvb_ringbuffer_flush(ptr noundef %tsout_rbuf) #7
  %mode21 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 7
  %10 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode21, align 4
  %and = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then20.if.end24_crit_edge, label %if.then23

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %Capture1Length = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 37
  %12 = ptrtoint ptr %Capture1Length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 96256, ptr %Capture1Length, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20.if.end24_crit_edge
  %mode.0 = phi i8 [ 8, %if.then23 ], [ 0, %if.then20.if.end24_crit_edge ]
  %and26 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %pBufferExchange = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 29
  %13 = ptrtoint ptr %pBufferExchange to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tsout_exchange, ptr %pBufferExchange, align 4
  %AudioDTOValue = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 44
  %14 = ptrtoint ptr %AudioDTOValue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2147483648, ptr %AudioDTOValue, align 8
  %AudioDTOUpdated = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 43
  %15 = ptrtoint ptr %AudioDTOUpdated to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %AudioDTOUpdated, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  %and31 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.then33

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %pBufferExchange34 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 29
  %16 = ptrtoint ptr %pBufferExchange34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tsin_exchange, ptr %pBufferExchange34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end18.if.end37_crit_edge
  %control.0 = phi i8 [ -128, %if.end35 ], [ 0, %if.end18.if.end37_crit_edge ]
  %mode.1 = phi i8 [ %mode.0, %if.end35 ], [ 0, %if.end18.if.end37_crit_edge ]
  %stream_mutex = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #7
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number, align 4
  %conv = trunc i32 %18 to i8
  %call38 = tail call fastcc i32 @ngene_command_stream_control(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %control.0, i8 noundef zeroext %mode.1)
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.then41, label %do.end46

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %running42 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 63
  %19 = ptrtoint ptr %running42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %state, ptr %running42, align 4
  br label %if.end47

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %state) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.then41
  br i1 %tobool.not, label %if.then49, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock50 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock50) #7
  %pBufferExchange51 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 29
  %20 = ptrtoint ptr %pBufferExchange51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pBufferExchange51, align 4
  %tsout_rbuf52 = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 45
  tail call void @dvb_ringbuffer_flush(ptr noundef %tsout_rbuf52) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end47.cleanup_crit_edge, %do.end11, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tsout_exchange(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tsin_exchange(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ngene_command_stream_control(ptr noundef %dev, i8 noundef zeroext %stream, i8 noundef zeroext %control, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %com = alloca %struct.ngene_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %idxprom = zext i8 %stream to i32
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com) #7
  %and = and i32 %idxprom, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv2 = select i1 %tobool.not, i16 -27904, i16 -27648
  %conv7 = select i1 %tobool.not, i16 -27392, i16 -27136
  %conv12 = select i1 %tobool.not, i16 -26880, i16 -26624
  %2 = getelementptr inbounds i8, ptr %com, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 252)
  %cmd = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %cmd, align 4
  %Length = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %Length to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 62, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %control)
  %tobool16.not = icmp eq i8 %control, 0
  %cond17 = select i1 %tobool16.not, i8 0, i8 8
  %or = or i8 %cond17, %stream
  %Stream = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %Stream to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %Stream, align 2
  %mode20 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 7
  %7 = ptrtoint ptr %mode20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode20, align 4
  %and21 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i8 %or, 7
  %10 = ptrtoint ptr %Stream to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %Stream, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %Control = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %Control to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %control, ptr %Control, align 1
  %Mode = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %Mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %mode, ptr %Mode, align 4
  %13 = ptrtoint ptr %com to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %com, align 4
  %out_len = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 1
  %14 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %out_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ngene_command_stream_control.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ngene_command_stream_control, %if.then38)) #7
          to label %do.end [label %if.then38], !srcloc !230

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %Stream to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %Stream, align 2
  %conv41 = zext i8 %16 to i32
  %17 = ptrtoint ptr %Control to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Control, align 1
  %conv44 = zext i8 %18 to i32
  %19 = ptrtoint ptr %Mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %Mode, align 4
  %conv47 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ngene_command_stream_control.__UNIQUE_ID_ddebug391, ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %conv41, i32 noundef %conv44, i32 noundef %conv47) #7
  br label %do.end

do.end:                                           ; preds = %if.then38, %if.end
  %Mode49 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 28
  %21 = ptrtoint ptr %Mode49 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %mode, ptr %Mode49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %control)
  %tobool52.not = icmp sgt i8 %control, -1
  br i1 %tobool52.not, label %if.then53, label %if.end65

if.then53:                                        ; preds = %do.end
  %state_lock = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #7
  %State = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 24
  %22 = ptrtoint ptr %State to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %State, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp = icmp eq i32 %23, 3
  br i1 %cmp, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.then53
  %24 = ptrtoint ptr %State to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %State, align 8
  %HWState = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 25
  %25 = ptrtoint ptr %HWState to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %HWState, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  %cmd_mutex.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef nonnull %com) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp59 = icmp slt i32 %call.i, 0
  br i1 %cmp59, label %if.then55.cleanup_crit_edge, label %if.end62

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.then55
  %nextBuffer.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 23
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end62
  call void @msleep(i32 noundef 1) #7
  call void @_raw_spin_lock_irq(ptr noundef %state_lock) #7
  %26 = ptrtoint ptr %nextBuffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nextBuffer.i, align 4
  %Flags.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %Flags.i, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  %tobool.not.i = icmp sgt i8 %29, -1
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  br label %cleanup

if.end65:                                         ; preds = %do.end
  %conv66 = zext i8 %mode to i32
  %and67 = and i32 %conv66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else, label %if.then137

if.else:                                          ; preds = %if.end65
  %and74 = and i32 %conv66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else103, label %if.then76

if.then76:                                        ; preds = %if.else
  %Capture1Length77 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 37
  %30 = ptrtoint ptr %Capture1Length77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %Capture1Length77, align 4
  %div781 = lshr i32 %31, 8
  %conv79 = trunc i32 %div781 to i16
  %CaptureBlockCount81 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 5
  %32 = ptrtoint ptr %CaptureBlockCount81 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv79, ptr %CaptureBlockCount81, align 2
  %MaxLinesPerField = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 8
  %33 = ptrtoint ptr %MaxLinesPerField to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv79, ptr %MaxLinesPerField, align 2
  %PAHead86 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 40, i32 1
  %34 = ptrtoint ptr %PAHead86 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %PAHead86, align 8
  %Buffer_Address88 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 6
  %36 = ptrtoint ptr %Buffer_Address88 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %Buffer_Address88, align 4
  %37 = ptrtoint ptr %mode20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode20, align 4
  %and90 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then76.if.then162_crit_edge, label %if.then92

if.then76.if.then162_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then162

if.then92:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %BytesPerVBILine = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 11
  %39 = ptrtoint ptr %BytesPerVBILine to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv79, ptr %BytesPerVBILine, align 4
  %40 = ptrtoint ptr %Stream to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Stream, align 2
  %42 = or i8 %41, 7
  store i8 %42, ptr %Stream, align 2
  br label %if.then162

if.else103:                                       ; preds = %if.else
  %nBytesPerLine = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 33
  %43 = ptrtoint ptr %nBytesPerLine to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nBytesPerLine, align 2
  %BytesPerVideoLine = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 7
  %45 = ptrtoint ptr %BytesPerVideoLine to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %BytesPerVideoLine, align 4
  %nLines = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 32
  %46 = ptrtoint ptr %nLines to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nLines, align 8
  %MaxLinesPerField106 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 8
  %48 = ptrtoint ptr %MaxLinesPerField106 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %MaxLinesPerField106, align 2
  %MinLinesPerField = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 9
  %49 = ptrtoint ptr %MinLinesPerField to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 100, ptr %MinLinesPerField, align 4
  %PAHead109 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 39, i32 1
  %50 = ptrtoint ptr %PAHead109 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %PAHead109, align 8
  %Buffer_Address111 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 6
  %52 = ptrtoint ptr %Buffer_Address111 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %Buffer_Address111, align 4
  %and113 = and i32 %conv66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else103.if.else207_crit_edge, label %if.then115

if.else103.if.else207_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else207

if.then115:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  %nVBILines = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 34
  %53 = ptrtoint ptr %nVBILines to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %nVBILines, align 4
  %MaxVBILinesPerField = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 12
  %55 = ptrtoint ptr %MaxVBILinesPerField to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %MaxVBILinesPerField, align 2
  %MinVBILinesPerField = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 13
  %56 = ptrtoint ptr %MinVBILinesPerField to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %MinVBILinesPerField, align 4
  %nBytesPerVBILine = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 35
  %57 = ptrtoint ptr %nBytesPerVBILine to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nBytesPerVBILine, align 2
  %BytesPerVBILine119 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 11
  %59 = ptrtoint ptr %BytesPerVBILine119 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %BytesPerVBILine119, align 4
  br label %if.else207

if.then137:                                       ; preds = %if.end65
  %Capture1Length = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 37
  %60 = ptrtoint ptr %Capture1Length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %Capture1Length, align 4
  %div4 = lshr i32 %61, 8
  %conv70 = trunc i32 %div4 to i16
  %CaptureBlockCount = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 5
  %62 = ptrtoint ptr %CaptureBlockCount to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv70, ptr %CaptureBlockCount, align 2
  %PAHead = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 39, i32 1
  %63 = ptrtoint ptr %PAHead to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %PAHead, align 8
  %Buffer_Address = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 6
  %65 = ptrtoint ptr %Buffer_Address to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %Buffer_Address, align 4
  %state_lock133 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock133) #7
  %RingBuffer138 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 39
  %66 = ptrtoint ptr %RingBuffer138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %RingBuffer138, align 8
  %nextBuffer = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 23
  %68 = ptrtoint ptr %nextBuffer to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %nextBuffer, align 4
  %and140 = and i32 %conv66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  %SetupDataLen148 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 4
  br i1 %tobool141.not, label %if.else146, label %if.then142

if.then142:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %SetupDataLen148 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %SetupDataLen148, align 1
  %SetupDataAddr = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 14
  %70 = ptrtoint ptr %SetupDataAddr to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv12, ptr %SetupDataAddr, align 2
  %SetupData = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %71 = call ptr @memset(ptr %SetupData, i32 0, i32 10)
  br label %if.end226

if.else146:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %SetupDataLen148 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %SetupDataLen148, align 1
  %SetupDataAddr150 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 14
  %73 = ptrtoint ptr %SetupDataAddr150 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv7, ptr %SetupDataAddr150, align 2
  %SetupData152 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %card_info = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 35
  %74 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card_info, align 8
  %arrayidx155 = getelementptr %struct.ngene_info, ptr %75, i32 0, i32 16, i32 %idxprom
  %76 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %77 to i32
  %mul = shl nuw nsw i32 %conv156, 2
  %add.ptr = getelementptr i8, ptr @I2SConfiguration, i32 %mul
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %add.ptr, align 1
  %80 = ptrtoint ptr %SetupData152 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %SetupData152, align 4
  br label %if.end226

if.then162:                                       ; preds = %if.then92, %if.then76.if.then162_crit_edge
  %state_lock13311 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock13311) #7
  %TSRingBuffer163 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 40
  %81 = ptrtoint ptr %TSRingBuffer163 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %TSRingBuffer163, align 8
  %nextBuffer165 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 23
  %83 = ptrtoint ptr %nextBuffer165 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %nextBuffer165, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %stream)
  %cmp167 = icmp ugt i8 %stream, 1
  br i1 %cmp167, label %if.then169, label %if.else190

if.then169:                                       ; preds = %if.then162
  %84 = ptrtoint ptr %mode20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mode20, align 4
  %and171 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  %SetupDataLen183 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 4
  %86 = ptrtoint ptr %SetupDataLen183 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 4, ptr %SetupDataLen183, align 1
  %SetupDataAddr185 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 14
  br i1 %tobool172.not, label %if.else181, label %if.then173

if.then173:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %SetupDataAddr185 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -25856, ptr %SetupDataAddr185, align 2
  %SetupData179 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %88 = ptrtoint ptr %SetupData179 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -2147221504, ptr %SetupData179, align 4
  br label %if.end226

if.else181:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %SetupDataAddr185 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv7, ptr %SetupDataAddr185, align 2
  %SetupData187 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %90 = ptrtoint ptr %SetupData187 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1041760256, ptr %SetupData187, align 4
  br label %if.end226

if.else190:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  %SetupDataLen192 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 4
  %91 = ptrtoint ptr %SetupDataLen192 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 8, ptr %SetupDataLen192, align 1
  %92 = or i16 %conv2, 16
  %SetupDataAddr196 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 14
  %93 = ptrtoint ptr %SetupDataAddr196 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %SetupDataAddr196, align 2
  %SetupData198 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %card_info200 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 35
  %94 = ptrtoint ptr %card_info200 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card_info200, align 8
  %arrayidx202 = getelementptr %struct.ngene_info, ptr %95, i32 0, i32 15, i32 %idxprom
  %96 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %97 to i32
  %mul204 = shl nuw nsw i32 %conv203, 3
  %add.ptr205 = getelementptr i8, ptr @TSFeatureDecoderSetup, i32 %mul204
  %98 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %add.ptr205, align 1
  %100 = ptrtoint ptr %SetupData198 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %99, ptr %SetupData198, align 4
  br label %if.end226

if.else207:                                       ; preds = %if.then115, %if.else103.if.else207_crit_edge
  %state_lock1331114 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock1331114) #7
  %RingBuffer208 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 39
  %101 = ptrtoint ptr %RingBuffer208 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %RingBuffer208, align 8
  %nextBuffer210 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 23
  %103 = ptrtoint ptr %nextBuffer210 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %nextBuffer210, align 4
  %SetupDataLen212 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 4
  %104 = ptrtoint ptr %SetupDataLen212 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 24, ptr %SetupDataLen212, align 1
  %SetupDataAddr214 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 14
  %105 = ptrtoint ptr %SetupDataAddr214 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv2, ptr %SetupDataAddr214, align 2
  %SetupData216 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15
  %itumode = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 36
  %106 = ptrtoint ptr %itumode to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %itumode, align 8
  %idxprom218 = zext i16 %107 to i32
  %arrayidx219 = getelementptr [4 x [16 x i8]], ptr @ITUDecoderSetup, i32 0, i32 %idxprom218
  %108 = call ptr @memcpy(ptr %SetupData216, ptr %arrayidx219, i32 16)
  %add.ptr224 = getelementptr inbounds %struct.ngene_command, ptr %com, i32 0, i32 2, i32 0, i32 15, i32 16
  %109 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 7865344, ptr %add.ptr224, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.else207, %if.else190, %if.else181, %if.then173, %if.else146, %if.then142
  %state_lock13312 = phi ptr [ %state_lock1331114, %if.else207 ], [ %state_lock13311, %if.then173 ], [ %state_lock13311, %if.else181 ], [ %state_lock13311, %if.else190 ], [ %state_lock133, %if.then142 ], [ %state_lock133, %if.else146 ]
  %nextBuffer.i5 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 23
  %110 = ptrtoint ptr %nextBuffer.i5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nextBuffer.i5, align 4
  %Capture1Length.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 37
  %DataFormatFlags.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 42
  br label %do.body.i7

do.body.i7:                                       ; preds = %if.end.i.do.body.i7_crit_edge, %if.end226
  %Cur.0.i = phi ptr [ %111, %if.end226 ], [ %124, %if.end.i.do.body.i7_crit_edge ]
  %SR.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0.i, i32 0, i32 1
  %112 = call ptr @memset(ptr %SR.i, i32 0, i32 16)
  %113 = ptrtoint ptr %mode20 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode20, align 4
  %and.i = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %do.body.i7.if.end.i_crit_edge, label %if.then.i

do.body.i7.if.end.i_crit_edge:                    ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i7
  %Buffer1.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.i, i32 0, i32 2
  %115 = ptrtoint ptr %Buffer1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %Buffer1.i, align 4
  %117 = ptrtoint ptr %Capture1Length.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %Capture1Length.i, align 4
  %119 = ptrtoint ptr %DataFormatFlags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %DataFormatFlags.i, align 8
  %121 = call ptr @memset(ptr %116, i32 111, i32 %118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp6.i.i = icmp sgt i32 %118, 0
  br i1 %cmp6.i.i, label %while.body.lr.ph.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i
  %and.i.i = and i32 %120, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 285155143, i32 1193279248
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %ptr.08.i.i = phi ptr [ %116, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %Length.addr.07.i.i = phi i32 [ %118, %while.body.lr.ph.i.i ], [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %122 = ptrtoint ptr %ptr.08.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %..i.i, ptr %ptr.08.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %ptr.08.i.i, i32 47
  %sub.i.i = add nsw i32 %Length.addr.07.i.i, -188
  %cmp.i.i = icmp ugt i32 %Length.addr.07.i.i, 188
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.if.end.i_crit_edge

while.body.i.i.if.end.i_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end.i:                                         ; preds = %while.body.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %do.body.i7.if.end.i_crit_edge
  %Next.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.i, i32 0, i32 1
  %123 = ptrtoint ptr %Next.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %Next.i, align 4
  %125 = ptrtoint ptr %nextBuffer.i5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nextBuffer.i5, align 4
  %cmp.not.i = icmp eq ptr %124, %126
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i.do.body.i7_crit_edge

if.end.i.do.body.i7_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i7

do.end.i:                                         ; preds = %if.end.i
  %127 = ptrtoint ptr %mode20 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mode20, align 4
  %and3.i = and i32 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.end.i.clear_buffers.exit_crit_edge, label %if.then5.i

do.end.i.clear_buffers.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_buffers.exit

if.then5.i:                                       ; preds = %do.end.i
  %AudioDTOValue.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 44
  %129 = ptrtoint ptr %AudioDTOValue.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %AudioDTOValue.i, align 8
  %DTOUpdate.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %124, i32 0, i32 1, i32 6
  %131 = ptrtoint ptr %DTOUpdate.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %DTOUpdate.i, align 4
  %AudioDTOUpdated.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 43
  %132 = ptrtoint ptr %AudioDTOUpdated.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %AudioDTOUpdated.i, align 4
  %TSIdleBuffer.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 41
  %133 = ptrtoint ptr %TSIdleBuffer.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %TSIdleBuffer.i, align 8
  br label %do.body9.i

do.body9.i:                                       ; preds = %FillTSBuffer.exit53.i.do.body9.i_crit_edge, %if.then5.i
  %Cur.1.i = phi ptr [ %134, %if.then5.i ], [ %145, %FillTSBuffer.exit53.i.do.body9.i_crit_edge ]
  %SR11.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.1.i, i32 0, i32 1
  %135 = call ptr @memset(ptr %SR11.i, i32 0, i32 16)
  %Buffer112.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.1.i, i32 0, i32 2
  %136 = ptrtoint ptr %Buffer112.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %Buffer112.i, align 4
  %138 = ptrtoint ptr %Capture1Length.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %Capture1Length.i, align 4
  %140 = ptrtoint ptr %DataFormatFlags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %DataFormatFlags.i, align 8
  %142 = call ptr @memset(ptr %137, i32 111, i32 %139)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp6.i42.i = icmp sgt i32 %139, 0
  br i1 %cmp6.i42.i, label %while.body.lr.ph.i46.i, label %do.body9.i.FillTSBuffer.exit53.i_crit_edge

do.body9.i.FillTSBuffer.exit53.i_crit_edge:       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FillTSBuffer.exit53.i

while.body.lr.ph.i46.i:                           ; preds = %do.body9.i
  %and.i43.i = and i32 %141, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i)
  %tobool.not.i44.i = icmp eq i32 %and.i43.i, 0
  %..i45.i = select i1 %tobool.not.i44.i, i32 285155143, i32 1193279248
  br label %while.body.i52.i

while.body.i52.i:                                 ; preds = %while.body.i52.i.while.body.i52.i_crit_edge, %while.body.lr.ph.i46.i
  %ptr.08.i47.i = phi ptr [ %137, %while.body.lr.ph.i46.i ], [ %add.ptr.i49.i, %while.body.i52.i.while.body.i52.i_crit_edge ]
  %Length.addr.07.i48.i = phi i32 [ %139, %while.body.lr.ph.i46.i ], [ %sub.i50.i, %while.body.i52.i.while.body.i52.i_crit_edge ]
  %143 = ptrtoint ptr %ptr.08.i47.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %..i45.i, ptr %ptr.08.i47.i, align 4
  %add.ptr.i49.i = getelementptr i32, ptr %ptr.08.i47.i, i32 47
  %sub.i50.i = add nsw i32 %Length.addr.07.i48.i, -188
  %cmp.i51.i = icmp ugt i32 %Length.addr.07.i48.i, 188
  br i1 %cmp.i51.i, label %while.body.i52.i.while.body.i52.i_crit_edge, label %while.body.i52.i.FillTSBuffer.exit53.i_crit_edge

while.body.i52.i.FillTSBuffer.exit53.i_crit_edge: ; preds = %while.body.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FillTSBuffer.exit53.i

while.body.i52.i.while.body.i52.i_crit_edge:      ; preds = %while.body.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i52.i

FillTSBuffer.exit53.i:                            ; preds = %while.body.i52.i.FillTSBuffer.exit53.i_crit_edge, %do.body9.i.FillTSBuffer.exit53.i_crit_edge
  %Next15.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.1.i, i32 0, i32 1
  %144 = ptrtoint ptr %Next15.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %Next15.i, align 4
  %146 = ptrtoint ptr %TSIdleBuffer.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %TSIdleBuffer.i, align 8
  %cmp19.not.i = icmp eq ptr %145, %147
  br i1 %cmp19.not.i, label %FillTSBuffer.exit53.i.clear_buffers.exit_crit_edge, label %FillTSBuffer.exit53.i.do.body9.i_crit_edge

FillTSBuffer.exit53.i.do.body9.i_crit_edge:       ; preds = %FillTSBuffer.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

FillTSBuffer.exit53.i.clear_buffers.exit_crit_edge: ; preds = %FillTSBuffer.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_buffers.exit

clear_buffers.exit:                               ; preds = %FillTSBuffer.exit53.i.clear_buffers.exit_crit_edge, %do.end.i.clear_buffers.exit_crit_edge
  %State227 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 24
  %148 = ptrtoint ptr %State227 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 3, ptr %State227, align 8
  %and229 = and i32 %conv66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  %spec.select = select i1 %tobool230.not, i32 1, i32 2
  %149 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %idxprom, i32 25
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %spec.select, ptr %149, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock13312) #7
  %cmd_mutex.i8 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i8, i32 noundef 0) #7
  %call.i9 = call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef nonnull %com) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i8) #7
  %call.i9.lobit = ashr i32 %call.i9, 31
  br label %cleanup

cleanup:                                          ; preds = %clear_buffers.exit, %if.end63, %do.body.i.cleanup_crit_edge, %if.then55.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -1, %if.then55.cleanup_crit_edge ], [ %call.i9.lobit, %clear_buffers.exit ], [ 0, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ngene_shutdown(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %com.i = alloca %struct.ngene_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @shutdown_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i) #7
  %3 = getelementptr inbounds i8, ptr %com.i, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 252)
  %cmd.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 33, ptr %cmd.i, align 4
  %Length.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %Length.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %Length.i, align 1
  %address.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %address.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -28404, ptr %address.i, align 2
  %8 = ptrtoint ptr %com.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %com.i, align 4
  %out_len.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 1
  %9 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %out_len.i, align 4
  %cmd_mutex.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %iomem.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 49764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !217
  %call.i = call fastcc i32 @ngene_command_mutex(ptr noundef nonnull %1, ptr noundef nonnull %com.i) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i) #7
  call void @pci_disable_device(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ngene_remove(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %event_tasklet = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 19
  tail call void @tasklet_kill(ptr noundef %event_tasklet) #7
  %arrayidx = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 4
  tail call fastcc void @release_channel(ptr noundef %arrayidx)
  %arrayidx.1 = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 3
  tail call fastcc void @release_channel(ptr noundef %arrayidx.1)
  %arrayidx.2 = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 2
  tail call fastcc void @release_channel(ptr noundef %arrayidx.2)
  %arrayidx.3 = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 1
  tail call fastcc void @release_channel(ptr noundef %arrayidx.3)
  %arrayidx.4 = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 0
  tail call fastcc void @release_channel(ptr noundef %arrayidx.4)
  %en = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 54, i32 3
  %2 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %en, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dvb_ca_en50221_release(ptr noundef nonnull %3) #7
  %i2c_client.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 34, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i, align 8
  tail call void @dvb_module_release(ptr noundef %5) #7
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %i2c_client.i, align 8
  %7 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @ngene_stop(ptr noundef %1)
  tail call fastcc void @ngene_release_buffers(ptr noundef %1)
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_channel(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 15
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %running = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 63
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_transfer(ptr noundef %chan, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %demux_tasklet = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %demux_tasklet) #7
  %ci_dev = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 21
  %4 = ptrtoint ptr %ci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_dev, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dvb_unregister_device(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %ci_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ci_dev, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %fe2 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 13
  %7 = ptrtoint ptr %fe2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe2, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %8) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %9 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end10.if.end22_crit_edge, label %if.then12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then12:                                        ; preds = %if.end10
  %call14 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %10) #7
  %i2c_client_fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 3
  %11 = ptrtoint ptr %i2c_client_fe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_client_fe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %if.then12.if.end19_crit_edge, label %if.then16

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client, align 8
  tail call void @dvb_module_release(ptr noundef %14) #7
  %15 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %i2c_client, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then12.if.end19_crit_edge
  %16 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %17) #7
  %18 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fe, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end10.if.end22_crit_edge
  %has_demux = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 9
  %19 = ptrtoint ptr %has_demux to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_demux, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool23.not, label %if.end22.if.end36_crit_edge, label %if.then24

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dvbnet = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 16
  tail call void @dvb_net_release(ptr noundef %dvbnet) #7
  %close = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 15, i32 0, i32 4
  %21 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %close, align 8
  %call26 = tail call i32 %22(ptr noundef %demux) #7
  %remove_frontend = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 15, i32 0, i32 11
  %23 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remove_frontend, align 4
  %hw_frontend = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 17
  %call29 = tail call i32 %24(ptr noundef %demux, ptr noundef %hw_frontend) #7
  %25 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remove_frontend, align 4
  %mem_frontend = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 18
  %call33 = tail call i32 %26(ptr noundef %demux, ptr noundef %mem_frontend) #7
  %dmxdev = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 14
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #7
  tail call void @dvb_dmx_release(ptr noundef %demux) #7
  %27 = ptrtoint ptr %has_demux to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %has_demux, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %if.end22.if.end36_crit_edge
  %has_adapter = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 8
  %28 = ptrtoint ptr %has_adapter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_adapter, align 8, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not = icmp eq i8 %29, 0
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %30 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number, align 4
  %arrayidx39 = getelementptr %struct.ngene, ptr %1, i32 0, i32 32, i32 %31
  %call40 = tail call i32 @dvb_unregister_adapter(ptr noundef %arrayidx39) #7
  %32 = ptrtoint ptr %has_adapter to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %has_adapter, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ngene_stop(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_mutex = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_destroy(ptr noundef %cmd_mutex) #7
  %i2c_adapter = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 34, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #7
  %i2c_adapter3 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 1, i32 1
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %iomem = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 49764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 8
  %add.ptr7 = getelementptr i8, ptr %3, i32 49664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 49668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 8
  %add.ptr15 = getelementptr i8, ptr %7, i32 49672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 8
  %add.ptr19 = getelementptr i8, ptr %9, i32 49676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 8
  %add.ptr23 = getelementptr i8, ptr %11, i32 49680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #7, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 8
  %add.ptr27 = getelementptr i8, ptr %13, i32 49684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #7, !srcloc !217
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %17, ptr noundef %dev) #7
  %msi_enabled = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msi_enabled, align 8, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_msi(ptr noundef %21) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ngene_release_buffers(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.body.i.preheader_crit_edge, label %if.then

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %1) #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %free_idlebuffer.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.027.i = phi i32 [ %inc.i, %free_idlebuffer.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %TSIdleBuffer.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.027.i, i32 41
  %TSRingBuffer.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.027.i, i32 40
  %2 = ptrtoint ptr %TSIdleBuffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %TSIdleBuffer.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.i.free_idlebuffer.exit.i_crit_edge, label %if.end.i.i

for.body.i.free_idlebuffer.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_idlebuffer.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %4 = ptrtoint ptr %TSRingBuffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %TSRingBuffer.i, align 8
  tail call fastcc void @free_ringbuffer(ptr noundef %dev, ptr noundef %TSIdleBuffer.i) #7
  %NumBuffers.i.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.027.i, i32 40, i32 3
  %6 = ptrtoint ptr %NumBuffers.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %NumBuffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp11.not.i.i, label %if.end.i.i.free_idlebuffer.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.free_idlebuffer.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_idlebuffer.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %Cur.013.i.i = phi ptr [ %13, %for.body.i.i.for.body.i.i_crit_edge ], [ %5, %if.end.i.i.for.body.i.i_crit_edge ]
  %j.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %Buffer2.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.013.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %Buffer2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %Buffer2.i.i, align 4
  %scList2.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.013.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %scList2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %scList2.i.i, align 4
  %Address_of_first_entry_2.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.013.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %Address_of_first_entry_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %Address_of_first_entry_2.i.i, align 4
  %Number_of_entries_2.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.013.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %Number_of_entries_2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %Number_of_entries_2.i.i, align 4
  %inc.i.i = add nuw i32 %j.012.i.i, 1
  %Next.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.013.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %Next.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %Next.i.i, align 4
  %14 = ptrtoint ptr %NumBuffers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %NumBuffers.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.free_idlebuffer.exit.i_crit_edge

for.body.i.i.free_idlebuffer.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_idlebuffer.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

free_idlebuffer.exit.i:                           ; preds = %for.body.i.i.free_idlebuffer.exit.i_crit_edge, %if.end.i.i.free_idlebuffer.exit.i_crit_edge, %for.body.i.free_idlebuffer.exit.i_crit_edge
  %RingBuffer.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.027.i, i32 39
  tail call fastcc void @free_ringbuffer(ptr noundef %dev, ptr noundef %RingBuffer.i) #7
  tail call fastcc void @free_ringbuffer(ptr noundef %dev, ptr noundef %TSRingBuffer.i) #7
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.end.i, label %free_idlebuffer.exit.i.for.body.i_crit_edge

free_idlebuffer.exit.i.for.body.i_crit_edge:      ; preds = %free_idlebuffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %free_idlebuffer.exit.i
  %OverflowBuffer.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 10
  %16 = ptrtoint ptr %OverflowBuffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %OverflowBuffer.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.end.i.if.end.i_crit_edge, label %if.then.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %PAOverflowBuffer.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 11
  %20 = ptrtoint ptr %PAOverflowBuffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %PAOverflowBuffer.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef 8192, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.i.if.end.i_crit_edge
  %FWInterfaceBuffer.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 12
  %22 = ptrtoint ptr %FWInterfaceBuffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %FWInterfaceBuffer.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.end.i.free_common_buffers.exit_crit_edge, label %if.then5.i

if.end.i.free_common_buffers.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_common_buffers.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev6.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %pci_dev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev6.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %PAFWInterfaceBuffer.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 13
  %26 = ptrtoint ptr %PAFWInterfaceBuffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %PAFWInterfaceBuffer.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef 4096, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #7
  br label %free_common_buffers.exit

free_common_buffers.exit:                         ; preds = %if.then5.i, %if.end.i.free_common_buffers.exit_crit_edge
  %tsout_buf = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 44
  %28 = ptrtoint ptr %tsout_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tsout_buf, align 8
  tail call void @vfree(ptr noundef %29) #7
  %tsin_buf = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 46
  %30 = ptrtoint ptr %tsin_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tsin_buf, align 8
  tail call void @vfree(ptr noundef %31) #7
  %ain_buf = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 48
  %32 = ptrtoint ptr %ain_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ain_buf, align 8
  tail call void @vfree(ptr noundef %33) #7
  %vin_buf = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 50
  %34 = ptrtoint ptr %vin_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vin_buf, align 8
  tail call void @vfree(ptr noundef %35) #7
  tail call void @vfree(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  %com.i.i.i = alloca %struct.ngene_command, align 4
  %fw.i.i = alloca ptr, align 4
  %tmp.i188.i.i = alloca i32, align 4
  %tmp.i165.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 32776) #11
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.fail0_crit_edge, label %if.end4

if.end.fail0_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail0

if.end4:                                          ; preds = %if.end
  %pci_dev5 = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pci_dev, ptr %pci_dev5, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = inttoptr i32 %2 to ptr
  %card_info = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 35
  %4 = ptrtoint ptr %card_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %card_info, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %name = getelementptr inbounds %struct.ngene_info, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.14, ptr noundef %6) #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev5, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %PAFWInterfaceBuffer.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 13
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %PAFWInterfaceBuffer.i.i, i32 noundef 3264, i32 noundef 0) #7
  %FWInterfaceBuffer.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 12
  %10 = ptrtoint ptr %FWInterfaceBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i, ptr %FWInterfaceBuffer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end4.fail1_crit_edge, label %if.end.i.i

if.end4.fail1_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end.i.i:                                       ; preds = %if.end4
  %hosttongene.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 15
  %11 = ptrtoint ptr %hosttongene.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %hosttongene.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 256
  %ngenetohost.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 14
  %12 = ptrtoint ptr %ngenetohost.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i.i, ptr %ngenetohost.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %call.i.i.i, i32 512
  %EventBuffer.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 20
  %13 = ptrtoint ptr %EventBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr6.i.i, ptr %EventBuffer.i.i, align 4
  %14 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev5, align 4
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %PAOverflowBuffer.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 11
  %call.i164.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.i.i, i32 noundef 8192, ptr noundef %PAOverflowBuffer.i.i, i32 noundef 3264, i32 noundef 0) #7
  %OverflowBuffer.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 10
  %16 = ptrtoint ptr %OverflowBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i164.i.i, ptr %OverflowBuffer.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call.i164.i.i, null
  br i1 %tobool11.not.i.i, label %if.end.i.i.fail1_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.fail1_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.0216.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %status.0215.i.i = phi i32 [ %status.4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card_info, align 8
  %arrayidx.i.i = getelementptr %struct.ngene_info, ptr %18, i32 0, i32 4, i32 %i.0216.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %State.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 24
  %21 = ptrtoint ptr %State.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %State.i.i, align 8
  %and.i.i = and i32 %20, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %for.body.i.i.if.end53.i.i_crit_edge, label %if.then16.i.i

for.body.i.i.if.end53.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.then16.i.i:                                    ; preds = %for.body.i.i
  %22 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev5, align 4
  %RingBuffer.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 39
  %arrayidx20.i.i = getelementptr [5 x i32], ptr @RingBufferSizes, i32 0, i32 %i.0216.i.i
  %24 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #7
  %26 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !240
  %mul.i.i.i = shl i32 %25, 7
  %27 = ptrtoint ptr %RingBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %RingBuffer.i.i, align 8
  %MemSize2.i.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 39, i32 2
  %PAHead.i.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 39, i32 1
  %NumBuffers3.i.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 39, i32 3
  %28 = call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 4096) #7
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %29 = call ptr @memset(ptr %PAHead.i.i.i, i32 0, i32 16)
  %call.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef %28, ptr noundef nonnull %tmp.i.i.i, i32 noundef 3264, i32 noundef 0) #7
  %30 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i.i.i, align 4
  %conv.i.i.i = zext i32 %31 to i64
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %create_ring_buffer.exit.thread.i.i, label %for.cond.preheader.i.i.i

create_ring_buffer.exit.thread.i.i:               ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #7
  br label %fail1

for.cond.preheader.i.i.i:                         ; preds = %if.then16.i.i
  %sub.i.i.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp648.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %cmp648.not.i.i.i, label %for.cond.preheader.i.i.i.if.end24.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end24.i.i_crit_edge:  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %Cur.051.i.i.i = phi ptr [ %add.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i.i, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %PARingBufferCur.050.i.i.i = phi i64 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %conv.i.i.i, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %i.049.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %Cur.051.i.i.i, i32 128
  %add.i.i.i = add nuw nsw i64 %PARingBufferCur.050.i.i.i, 128
  %Next8.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %Next8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i.i.i, ptr %Next8.i.i.i, align 4
  %33 = ptrtoint ptr %Cur.051.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %add.i.i.i, ptr %Cur.051.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.049.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %sub.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.if.end24.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.if.end24.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %for.body.i.i.i.if.end24.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end24.i.i_crit_edge
  %Cur.0.lcssa.i.i.i = phi ptr [ %call.i.i.i.i, %for.cond.preheader.i.i.i.if.end24.i.i_crit_edge ], [ %add.ptr.i.i.i, %for.body.i.i.i.if.end24.i.i_crit_edge ]
  %Next10.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.lcssa.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %Next10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i.i, ptr %Next10.i.i.i, align 4
  %35 = ptrtoint ptr %Cur.0.lcssa.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %conv.i.i.i, ptr %Cur.0.lcssa.i.i.i, align 4
  %36 = ptrtoint ptr %RingBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i.i.i, ptr %RingBuffer.i.i, align 8
  %37 = ptrtoint ptr %MemSize2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %28, ptr %MemSize2.i.i.i, align 8
  %38 = ptrtoint ptr %PAHead.i.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.i.i.i, ptr %PAHead.i.i.i, align 8
  %39 = ptrtoint ptr %NumBuffers3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %25, ptr %NumBuffers3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #7
  %and25.i.i = and i32 %20, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end24.i.i
  %40 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev5, align 4
  %42 = ptrtoint ptr %PAOverflowBuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %PAOverflowBuffer.i.i, align 8
  %arrayidx33.i.i = getelementptr [5 x i32], ptr @Buffer1Sizes, i32 0, i32 %i.0216.i.i
  %44 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx33.i.i, align 4
  %arrayidx34.i.i = getelementptr [5 x i32], ptr @Buffer2Sizes, i32 0, i32 %i.0216.i.i
  %46 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx34.i.i, align 4
  %call35.i.i = call fastcc i32 @AllocateRingBuffers(ptr noundef %41, i32 noundef %43, ptr noundef %RingBuffer.i.i, i32 noundef %45, i32 noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %if.then27.i.i.fail1_crit_edge, label %if.then27.i.i.if.end53.i.i_crit_edge

if.then27.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.then27.i.i.fail1_crit_edge:                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.else.i.i:                                      ; preds = %if.end24.i.i
  %and39.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.else.i.i.if.end53.i.i_crit_edge, label %if.then41.i.i

if.else.i.i.if.end53.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.then41.i.i:                                    ; preds = %if.else.i.i
  %48 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev5, align 4
  %50 = ptrtoint ptr %PAOverflowBuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %PAOverflowBuffer.i.i, align 8
  %call47.i.i = call fastcc i32 @AllocateRingBuffers(ptr noundef %49, i32 noundef %51, ptr noundef %RingBuffer.i.i, i32 noundef 2080768, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %cmp48.i.i = icmp slt i32 %call47.i.i, 0
  br i1 %cmp48.i.i, label %if.then41.i.i.fail1_crit_edge, label %if.then41.i.i.if.end53.i.i_crit_edge

if.then41.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.then41.i.i.fail1_crit_edge:                    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end53.i.i:                                     ; preds = %if.then41.i.i.if.end53.i.i_crit_edge, %if.else.i.i.if.end53.i.i_crit_edge, %if.then27.i.i.if.end53.i.i_crit_edge, %for.body.i.i.if.end53.i.i_crit_edge
  %status.1.i.i = phi i32 [ 0, %if.then27.i.i.if.end53.i.i_crit_edge ], [ %call47.i.i, %if.then41.i.i.if.end53.i.i_crit_edge ], [ 0, %if.else.i.i.if.end53.i.i_crit_edge ], [ %status.0215.i.i, %for.body.i.i.if.end53.i.i_crit_edge ]
  %and54.i.i = and i32 %20, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end53.i.i.if.end73.i.i_crit_edge, label %if.then56.i.i

if.end53.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i.i

if.then56.i.i:                                    ; preds = %if.end53.i.i
  %52 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_dev5, align 4
  %TSRingBuffer.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i165.i.i) #7
  %54 = ptrtoint ptr %tmp.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %tmp.i165.i.i, align 4, !annotation !240
  %55 = ptrtoint ptr %TSRingBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %TSRingBuffer.i.i, align 8
  %PAHead.i167.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40, i32 1
  %dev.i169.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %56 = call ptr @memset(ptr %PAHead.i167.i.i, i32 0, i32 16)
  %call.i.i170.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i169.i.i, i32 noundef 4096, ptr noundef nonnull %tmp.i165.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not.i172.i.i = icmp eq ptr %call.i.i170.i.i, null
  br i1 %tobool.not.i172.i.i, label %create_ring_buffer.exit187.thread.i.i, label %for.body.i182.preheader.i.i

for.body.i182.preheader.i.i:                      ; preds = %if.then56.i.i
  %57 = ptrtoint ptr %tmp.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tmp.i165.i.i, align 4
  %conv.i171.i.i = zext i32 %58 to i64
  %NumBuffers3.i168.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40, i32 3
  %MemSize2.i166.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40, i32 2
  %add.ptr.i177.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 128
  %add.i178.i.i = add nuw nsw i64 %conv.i171.i.i, 128
  %Next8.i179.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %call.i.i170.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %Next8.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i177.i.i, ptr %Next8.i179.i.i, align 4
  %60 = ptrtoint ptr %call.i.i170.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %add.i178.i.i, ptr %call.i.i170.i.i, align 4
  %add.ptr.i177.1.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 256
  %add.i178.1.i.i = add nuw nsw i64 %conv.i171.i.i, 256
  %Next8.i179.1.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 184
  %61 = ptrtoint ptr %Next8.i179.1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i177.1.i.i, ptr %Next8.i179.1.i.i, align 4
  %62 = ptrtoint ptr %add.ptr.i177.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %add.i178.1.i.i, ptr %add.ptr.i177.i.i, align 4
  %add.ptr.i177.2.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 384
  %add.i178.2.i.i = add nuw nsw i64 %conv.i171.i.i, 384
  %Next8.i179.2.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 312
  %63 = ptrtoint ptr %Next8.i179.2.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i177.2.i.i, ptr %Next8.i179.2.i.i, align 4
  %64 = ptrtoint ptr %add.ptr.i177.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %add.i178.2.i.i, ptr %add.ptr.i177.1.i.i, align 4
  %add.ptr.i177.3.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 512
  %add.i178.3.i.i = add nuw nsw i64 %conv.i171.i.i, 512
  %Next8.i179.3.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 440
  %65 = ptrtoint ptr %Next8.i179.3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i177.3.i.i, ptr %Next8.i179.3.i.i, align 4
  %66 = ptrtoint ptr %add.ptr.i177.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %add.i178.3.i.i, ptr %add.ptr.i177.2.i.i, align 4
  %add.ptr.i177.4.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 640
  %add.i178.4.i.i = add nuw nsw i64 %conv.i171.i.i, 640
  %Next8.i179.4.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 568
  %67 = ptrtoint ptr %Next8.i179.4.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i177.4.i.i, ptr %Next8.i179.4.i.i, align 4
  %68 = ptrtoint ptr %add.ptr.i177.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %add.i178.4.i.i, ptr %add.ptr.i177.3.i.i, align 4
  %add.ptr.i177.5.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 768
  %add.i178.5.i.i = add nuw nsw i64 %conv.i171.i.i, 768
  %Next8.i179.5.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 696
  %69 = ptrtoint ptr %Next8.i179.5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i177.5.i.i, ptr %Next8.i179.5.i.i, align 4
  %70 = ptrtoint ptr %add.ptr.i177.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %add.i178.5.i.i, ptr %add.ptr.i177.4.i.i, align 4
  %add.ptr.i177.6.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 896
  %add.i178.6.i.i = add nuw nsw i64 %conv.i171.i.i, 896
  %Next8.i179.6.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 824
  %71 = ptrtoint ptr %Next8.i179.6.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i177.6.i.i, ptr %Next8.i179.6.i.i, align 4
  %72 = ptrtoint ptr %add.ptr.i177.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %add.i178.6.i.i, ptr %add.ptr.i177.5.i.i, align 4
  %Next10.i184.i.i = getelementptr i8, ptr %call.i.i170.i.i, i32 952
  %73 = ptrtoint ptr %Next10.i184.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i.i170.i.i, ptr %Next10.i184.i.i, align 4
  %74 = ptrtoint ptr %add.ptr.i177.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %conv.i171.i.i, ptr %add.ptr.i177.6.i.i, align 4
  %75 = ptrtoint ptr %TSRingBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i170.i.i, ptr %TSRingBuffer.i.i, align 8
  %76 = ptrtoint ptr %MemSize2.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4096, ptr %MemSize2.i166.i.i, align 8
  %77 = ptrtoint ptr %PAHead.i167.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv.i171.i.i, ptr %PAHead.i167.i.i, align 8
  %78 = ptrtoint ptr %NumBuffers3.i168.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %NumBuffers3.i168.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i165.i.i) #7
  %79 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_dev5, align 4
  %81 = ptrtoint ptr %PAOverflowBuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %PAOverflowBuffer.i.i, align 8
  %call69.i.i = call fastcc i32 @AllocateRingBuffers(ptr noundef %80, i32 noundef %82, ptr noundef %TSRingBuffer.i.i, i32 noundef 98304, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool70.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool70.not.i.i, label %for.body.i182.preheader.i.i.if.end73.i.i_crit_edge, label %for.body.i182.preheader.i.i.fail1_crit_edge

for.body.i182.preheader.i.i.fail1_crit_edge:      ; preds = %for.body.i182.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

for.body.i182.preheader.i.i.if.end73.i.i_crit_edge: ; preds = %for.body.i182.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i.i

create_ring_buffer.exit187.thread.i.i:            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i165.i.i) #7
  br label %fail1

if.end73.i.i:                                     ; preds = %for.body.i182.preheader.i.i.if.end73.i.i_crit_edge, %if.end53.i.i.if.end73.i.i_crit_edge
  %status.2.i.i = phi i32 [ 0, %for.body.i182.preheader.i.i.if.end73.i.i_crit_edge ], [ %status.1.i.i, %if.end53.i.i.if.end73.i.i_crit_edge ]
  %and74.i.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool75.not.i.i, label %if.end73.i.i.for.inc.i.i_crit_edge, label %if.then76.i.i

if.end73.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then76.i.i:                                    ; preds = %if.end73.i.i
  %83 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pci_dev5, align 4
  %TSIdleBuffer.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i188.i.i) #7
  %85 = ptrtoint ptr %tmp.i188.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %tmp.i188.i.i, align 4, !annotation !240
  %86 = ptrtoint ptr %TSIdleBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %TSIdleBuffer.i.i, align 8
  %PAHead.i190.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 41, i32 1
  %dev.i192.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %87 = call ptr @memset(ptr %PAHead.i190.i.i, i32 0, i32 16)
  %call.i.i193.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i192.i.i, i32 noundef 4096, ptr noundef nonnull %tmp.i188.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not.i195.i.i = icmp eq ptr %call.i.i193.i.i, null
  br i1 %tobool.not.i195.i.i, label %create_ring_buffer.exit201.thread.i.i, label %if.end83.i.i

create_ring_buffer.exit201.thread.i.i:            ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i188.i.i) #7
  br label %fail1

if.end83.i.i:                                     ; preds = %if.then76.i.i
  %88 = ptrtoint ptr %tmp.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tmp.i188.i.i, align 4
  %conv.i194.i.i = zext i32 %89 to i64
  %NumBuffers3.i191.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 41, i32 3
  %MemSize2.i189.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 41, i32 2
  %Next10.i198.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %call.i.i193.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %Next10.i198.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i193.i.i, ptr %Next10.i198.i.i, align 4
  %91 = ptrtoint ptr %call.i.i193.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %conv.i194.i.i, ptr %call.i.i193.i.i, align 4
  %92 = ptrtoint ptr %TSIdleBuffer.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i193.i.i, ptr %TSIdleBuffer.i.i, align 8
  %93 = ptrtoint ptr %MemSize2.i189.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4096, ptr %MemSize2.i189.i.i, align 8
  %94 = ptrtoint ptr %PAHead.i190.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv.i194.i.i, ptr %PAHead.i190.i.i, align 8
  %95 = ptrtoint ptr %NumBuffers3.i191.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %NumBuffers3.i191.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i188.i.i) #7
  %96 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_dev5, align 4
  %98 = ptrtoint ptr %PAOverflowBuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %PAOverflowBuffer.i.i, align 8
  %call89.i.i = call fastcc i32 @AllocateRingBuffers(ptr noundef %97, i32 noundef %99, ptr noundef %TSIdleBuffer.i.i, i32 noundef 98304, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool90.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.end92.i.i, label %if.end83.i.i.fail1_crit_edge

if.end83.i.i.fail1_crit_edge:                     ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end92.i.i:                                     ; preds = %if.end83.i.i
  %NumBuffers.i.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40, i32 3
  %100 = ptrtoint ptr %NumBuffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %NumBuffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp1.not.i.i.i = icmp eq i32 %101, 0
  br i1 %cmp1.not.i.i.i, label %if.end92.i.i.for.inc.i.i_crit_edge, label %for.body.i204.preheader.i.i

if.end92.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.body.i204.preheader.i.i:                      ; preds = %if.end92.i.i
  %TSRingBuffer98.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 %i.0216.i.i, i32 40
  br label %for.body.i204.i.i

for.body.i204.i.i:                                ; preds = %for.body.i204.i.i.for.body.i204.i.i_crit_edge, %for.body.i204.preheader.i.i
  %i.03.i.i.i = phi i32 [ %inc.i202.i.i, %for.body.i204.i.i.for.body.i204.i.i_crit_edge ], [ 0, %for.body.i204.preheader.i.i ]
  %Cur.0.in2.i.i.i = phi ptr [ %Next.i.i.i, %for.body.i204.i.i.for.body.i204.i.i_crit_edge ], [ %TSRingBuffer98.i.i, %for.body.i204.preheader.i.i ]
  %102 = ptrtoint ptr %Cur.0.in2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %Cur.0.i.i.i = load ptr, ptr %Cur.0.in2.i.i.i, align 4
  %103 = ptrtoint ptr %TSIdleBuffer.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %TSIdleBuffer.i.i, align 8
  %Buffer1.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %Buffer1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %Buffer1.i.i.i, align 4
  %Buffer2.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.i.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %Buffer2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %Buffer2.i.i.i, align 4
  %108 = load ptr, ptr %TSIdleBuffer.i.i, align 8
  %scList1.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %scList1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %scList1.i.i.i, align 4
  %scList2.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.i.i.i, i32 0, i32 5
  %111 = ptrtoint ptr %scList2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %scList2.i.i.i, align 4
  %112 = load ptr, ptr %TSIdleBuffer.i.i, align 8
  %Address_of_first_entry_1.i.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %Address_of_first_entry_1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %Address_of_first_entry_1.i.i.i, align 4
  %Address_of_first_entry_2.i.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0.i.i.i, i32 0, i32 7
  %115 = ptrtoint ptr %Address_of_first_entry_2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %Address_of_first_entry_2.i.i.i, align 4
  %116 = load ptr, ptr %TSIdleBuffer.i.i, align 8
  %Number_of_entries_1.i.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %Number_of_entries_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %Number_of_entries_1.i.i.i, align 4
  %Number_of_entries_2.i.i.i = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0.i.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %Number_of_entries_2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %Number_of_entries_2.i.i.i, align 4
  %Next.i.i.i = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0.i.i.i, i32 0, i32 1
  %inc.i202.i.i = add nuw i32 %i.03.i.i.i, 1
  %exitcond.not.i203.i.i = icmp eq i32 %inc.i202.i.i, %101
  br i1 %exitcond.not.i203.i.i, label %for.body.i204.i.i.for.inc.i.i_crit_edge, label %for.body.i204.i.i.for.body.i204.i.i_crit_edge

for.body.i204.i.i.for.body.i204.i.i_crit_edge:    ; preds = %for.body.i204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i204.i.i

for.body.i204.i.i.for.inc.i.i_crit_edge:          ; preds = %for.body.i204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i204.i.i.for.inc.i.i_crit_edge, %if.end92.i.i.for.inc.i.i_crit_edge, %if.end73.i.i.for.inc.i.i_crit_edge
  %status.4.i.i = phi i32 [ %status.2.i.i, %if.end73.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end92.i.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i204.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.0216.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %AllocCommonBuffers.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

AllocCommonBuffers.exit.i:                        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.4.i.i)
  %tobool.not.i = icmp eq i32 %status.4.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %AllocCommonBuffers.exit.i.fail1_crit_edge

AllocCommonBuffers.exit.i.fail1_crit_edge:        ; preds = %AllocCommonBuffers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end.i:                                         ; preds = %AllocCommonBuffers.exit.i
  %120 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %card_info, align 8
  %arrayidx.i = getelementptr %struct.ngene_info, ptr %121, i32 0, i32 4, i32 4
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then2.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call noalias ptr @vmalloc(i32 noundef 770048) #11
  %tsout_buf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 44
  %124 = ptrtoint ptr %tsout_buf.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call3.i, ptr %tsout_buf.i, align 8
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.then2.i.fail1_crit_edge, label %if.end7.i

if.then2.i.fail1_crit_edge:                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %tsout_rbuf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 45
  call void @dvb_ringbuffer_init(ptr noundef %tsout_rbuf.i, ptr noundef nonnull %call3.i, i32 noundef 770048) #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i, %if.end.i.if.end9.i_crit_edge
  %125 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %card_info, align 8
  %arrayidx12.i = getelementptr %struct.ngene_info, ptr %126, i32 0, i32 4, i32 2
  %127 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end9.i.if.end22.i_crit_edge, label %if.then15.i

if.end9.i.if.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end9.i
  %call16.i = call noalias ptr @vmalloc(i32 noundef 770048) #11
  %tsin_buf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 46
  %129 = ptrtoint ptr %tsin_buf.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call16.i, ptr %tsin_buf.i, align 8
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %if.then15.i.fail1_crit_edge, label %if.end20.i

if.then15.i.fail1_crit_edge:                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end20.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %tsin_rbuf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 47
  call void @dvb_ringbuffer_init(ptr noundef %tsin_rbuf.i, ptr noundef nonnull %call16.i, i32 noundef 770048) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end20.i, %if.end9.i.if.end22.i_crit_edge
  %130 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %card_info, align 8
  %arrayidx25.i = getelementptr %struct.ngene_info, ptr %131, i32 0, i32 4, i32 2
  %132 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx25.i, align 4
  %and26.i = and i32 %133, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end22.i.if.end35.i_crit_edge, label %if.then28.i

if.end22.i.if.end35.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then28.i:                                      ; preds = %if.end22.i
  %call29.i = call noalias ptr @vmalloc(i32 noundef 131072) #11
  %ain_buf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 48
  %134 = ptrtoint ptr %ain_buf.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call29.i, ptr %ain_buf.i, align 8
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %if.then28.i.fail1_crit_edge, label %if.end33.i

if.then28.i.fail1_crit_edge:                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end33.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %ain_rbuf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 49
  call void @dvb_ringbuffer_init(ptr noundef %ain_rbuf.i, ptr noundef nonnull %call29.i, i32 noundef 131072) #7
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end33.i, %if.end22.i.if.end35.i_crit_edge
  %135 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %card_info, align 8
  %io_type37.i = getelementptr inbounds %struct.ngene_info, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %io_type37.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %io_type37.i, align 4
  %and39.i = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end35.i.if.end48.i_crit_edge, label %if.then41.i

if.end35.i.if.end48.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then41.i:                                      ; preds = %if.end35.i
  %call42.i = call noalias ptr @vmalloc(i32 noundef 8294400) #11
  %vin_buf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 50
  %139 = ptrtoint ptr %vin_buf.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call42.i, ptr %vin_buf.i, align 8
  %tobool44.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not.i, label %if.then41.i.fail1_crit_edge, label %if.end46.i

if.then41.i.fail1_crit_edge:                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end46.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %vin_rbuf.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 51
  call void @dvb_ringbuffer_init(ptr noundef %vin_rbuf.i, ptr noundef nonnull %call42.i, i32 noundef 8294400) #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end46.i, %if.end35.i.if.end48.i_crit_edge
  %140 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pci_dev5, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 47
  %142 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 47, i32 0, i32 1
  %144 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i = icmp eq i32 %145, 0
  %sub.i = sub i32 1, %143
  %add.i = add i32 %sub.i, %145
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call61.i = call ptr @ioremap(i32 noundef %143, i32 noundef %cond.i) #7
  %iomem.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 2
  %146 = ptrtoint ptr %iomem.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call61.i, ptr %iomem.i, align 8
  %tobool63.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool63.not.i, label %if.end48.i.fail1_crit_edge, label %if.end11

if.end48.i.fail1_crit_edge:                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end11:                                         ; preds = %if.end48.i
  %147 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pci_dev5, align 4
  call void @pci_set_master(ptr noundef %148) #7
  %149 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pci_dev5, align 4
  %event_tasklet.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 19
  call void @tasklet_setup(ptr noundef %event_tasklet.i.i, ptr noundef nonnull @event_tasklet) #7
  %151 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %iomem.i, align 8
  %add.ptr.i.i45 = getelementptr i8, ptr %152, i32 49152
  call void @mmioset(ptr noundef %add.ptr.i.i45, i32 noundef 0, i32 noundef 544) #7
  %153 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %iomem.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %154, i32 50176
  call void @mmioset(ptr noundef %add.ptr3.i.i, i32 noundef 0, i32 noundef 256) #7
  %dev4.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 0, i32 4
  %155 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call1, ptr %dev4.i.i, align 8
  %number.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 0, i32 5
  %156 = ptrtoint ptr %number.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %number.i.i, align 4
  %dev4.1.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 1, i32 4
  %157 = ptrtoint ptr %dev4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call1, ptr %dev4.1.i.i, align 8
  %number.1.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 1, i32 5
  %158 = ptrtoint ptr %number.1.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %number.1.i.i, align 4
  %dev4.2.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 2, i32 4
  %159 = ptrtoint ptr %dev4.2.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call1, ptr %dev4.2.i.i, align 8
  %number.2.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 2, i32 5
  %160 = ptrtoint ptr %number.2.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 2, ptr %number.2.i.i, align 4
  %dev4.3.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 3, i32 4
  %161 = ptrtoint ptr %dev4.3.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call1, ptr %dev4.3.i.i, align 8
  %number.3.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 3, i32 5
  %162 = ptrtoint ptr %number.3.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 3, ptr %number.3.i.i, align 4
  %dev4.4.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 4, i32 4
  %163 = ptrtoint ptr %dev4.4.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call1, ptr %dev4.4.i.i, align 8
  %number.4.i.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 4, i32 5
  %164 = ptrtoint ptr %number.4.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 4, ptr %number.4.i.i, align 4
  %dev1.i.i46 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  %fw_interface_version.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 4
  %165 = ptrtoint ptr %fw_interface_version.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %fw_interface_version.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  call void @arm_heavy_mb() #7
  %166 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %iomem.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %167, i32 49764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #7, !srcloc !217
  %168 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %iomem.i, align 8
  %add.ptr10.i.i = getelementptr i8, ptr %169, i32 49760
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !214
  %171 = call i32 @llvm.bswap.i32(i32 %170) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  %icounts.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 5
  %172 = ptrtoint ptr %icounts.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %icounts.i.i, align 4
  %173 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %iomem.i, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %174, i32 36868
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #7, !srcloc !214
  %176 = lshr i32 %175, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %and.i.i47 = and i32 %176, 15
  %device_version.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 3
  %177 = ptrtoint ptr %device_version.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %and.i.i47, ptr %device_version.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i46, ptr noundef nonnull @.str.50, i32 noundef %and.i.i47) #10
  %178 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pci_dev5, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 46
  %180 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %irq.i, align 4
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %181, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.32, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i48 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i48, label %if.end11.fail1_crit_edge, label %do.body.i

if.end11.fail1_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

do.body.i:                                        ; preds = %if.end11
  %cmd_wq.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 23
  call void @__init_waitqueue_head(ptr noundef %cmd_wq.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @ngene_start.__key) #7
  %tx_wq.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 39
  call void @__init_waitqueue_head(ptr noundef %tx_wq.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @ngene_start.__key.34) #7
  %rx_wq.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 40
  call void @__init_waitqueue_head(ptr noundef %rx_wq.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @ngene_start.__key.36) #7
  %cmd_mutex.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 25
  call void @__mutex_init(ptr noundef %cmd_mutex.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @ngene_start.__key.38) #7
  %stream_mutex.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 26
  call void @__mutex_init(ptr noundef %stream_mutex.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @ngene_start.__key.40) #7
  %pll_mutex.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27
  %wait_list1.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 2
  %182 = ptrtoint ptr %pll_mutex.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %pll_mutex.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 1
  %183 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 2
  %184 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 3
  %185 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 4
  %186 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 4, i32 2
  %187 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.54, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 4, i32 3
  %188 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 4, i32 4
  %189 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 0, i32 4, i32 5
  %190 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 1
  %191 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %192 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 27, i32 2, i32 1
  %193 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %i2c_switch_mutex.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 28
  call void @__mutex_init(ptr noundef %i2c_switch_mutex.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @ngene_start.__key.42) #7
  %cmd_lock.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 31
  call void @__raw_spin_lock_init(ptr noundef %cmd_lock.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @ngene_start.__key.44, i16 noundef signext 3) #7
  %state_lock.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 0, i32 31
  call void @__raw_spin_lock_init(ptr noundef %state_lock.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ngene_start.__key.46, i16 noundef signext 3) #7
  %state_lock.1.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 1, i32 31
  call void @__raw_spin_lock_init(ptr noundef %state_lock.1.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ngene_start.__key.46, i16 noundef signext 3) #7
  %state_lock.2.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 2, i32 31
  call void @__raw_spin_lock_init(ptr noundef %state_lock.2.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ngene_start.__key.46, i16 noundef signext 3) #7
  %state_lock.3.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 3, i32 31
  call void @__raw_spin_lock_init(ptr noundef %state_lock.3.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ngene_start.__key.46, i16 noundef signext 3) #7
  %state_lock.4.i = getelementptr %struct.ngene, ptr %call1, i32 0, i32 34, i32 4, i32 31
  call void @__raw_spin_lock_init(ptr noundef %state_lock.4.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @ngene_start.__key.46, i16 noundef signext 3) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  call void @arm_heavy_mb() #7
  %194 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %iomem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %195, i32 40960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %196 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %iomem.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %197, i32 49764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 16777216) #7, !srcloc !217
  %198 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pci_dev5, align 4
  %dev1.i137.i = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #7
  %200 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %fw.i.i, align 4
  %201 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %card_info, align 8
  %fw_version.i.i = getelementptr inbounds %struct.ngene_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %fw_version.i.i, align 4
  %205 = zext i32 %204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %204, label %do.body.i.sw.epilog.i.i_crit_edge [
    i32 18, label %sw.epilog.thread.i.i
    i32 16, label %sw.bb2.i.i
    i32 17, label %sw.bb4.i.i
  ]

do.body.i.sw.epilog.i.i_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %sw.bb2.i.i, %do.body.i.sw.epilog.i.i_crit_edge
  %size.0.i.i = phi i32 [ 24446, %sw.bb4.i.i ], [ 23498, %sw.bb2.i.i ], [ 23466, %do.body.i.sw.epilog.i.i_crit_edge ]
  %fw_name.0.i.i = phi ptr [ @.str.58, %sw.bb4.i.i ], [ @.str.57, %sw.bb2.i.i ], [ @.str.56, %do.body.i.sw.epilog.i.i_crit_edge ]
  %cmd_timeout_workaround5.i.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 7
  %206 = ptrtoint ptr %cmd_timeout_workaround5.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %cmd_timeout_workaround5.i.i, align 1
  %call.i138.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull %fw_name.0.i.i, ptr noundef %dev1.i137.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %cmp.i.i = icmp slt i32 %call.i138.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.i.ngene_load_firm.exit.thread.i_crit_edge, label %sw.epilog.i.i.if.end15.i.i_crit_edge

sw.epilog.i.i.if.end15.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

sw.epilog.i.i.ngene_load_firm.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ngene_load_firm.exit.thread.i

sw.epilog.thread.i.i:                             ; preds = %do.body.i
  %call51.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.59, ptr noundef %dev1.i137.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp slt i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %sw.epilog.thread.i.i.ngene_load_firm.exit.thread.i_crit_edge, label %if.then13.i.i

sw.epilog.thread.i.i.ngene_load_firm.exit.thread.i_crit_edge: ; preds = %sw.epilog.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ngene_load_firm.exit.thread.i

ngene_load_firm.exit.thread.i:                    ; preds = %sw.epilog.thread.i.i.ngene_load_firm.exit.thread.i_crit_edge, %sw.epilog.i.i.ngene_load_firm.exit.thread.i_crit_edge
  %fw_name.055.i.i = phi ptr [ @.str.59, %sw.epilog.thread.i.i.ngene_load_firm.exit.thread.i_crit_edge ], [ %fw_name.0.i.i, %sw.epilog.i.i.ngene_load_firm.exit.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i137.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %fw_name.055.i.i) #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i137.i, ptr noundef nonnull @.str.63, ptr noundef nonnull %fw_name.055.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #7
  br label %do.body80.i

if.then13.i.i:                                    ; preds = %sw.epilog.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %fw.i.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %sw.epilog.i.i.if.end15.i.i_crit_edge
  %fw_name.05660.i.i = phi ptr [ @.str.59, %if.then13.i.i ], [ %fw_name.0.i.i, %sw.epilog.i.i.if.end15.i.i_crit_edge ]
  %size.1.i.i = phi i32 [ %210, %if.then13.i.i ], [ %size.0.i.i, %sw.epilog.i.i.if.end15.i.i_crit_edge ]
  %211 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %fw.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1.i.i, i32 %214)
  %cmp17.not.i.i = icmp eq i32 %size.1.i.i, %214
  br i1 %cmp17.not.i.i, label %do.end24.i.i, label %ngene_load_firm.exit.thread142.i

ngene_load_firm.exit.thread142.i:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i137.i, ptr noundef nonnull @.str.66, ptr noundef nonnull %fw_name.05660.i.i) #10
  %215 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %216) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #7
  br label %do.body80.i

do.end24.i.i:                                     ; preds = %if.end15.i.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i137.i, ptr noundef nonnull @.str.69, ptr noundef nonnull %fw_name.05660.i.i) #10
  %217 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i.i.i) #7
  %221 = getelementptr inbounds i8, ptr %com.i.i.i, i32 8
  %222 = call ptr @memset(ptr %221, i32 255, i32 256)
  %223 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 1, ptr %221, align 4
  %Length.i.i.i = getelementptr inbounds %struct.ngene_command, ptr %com.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %224 = ptrtoint ptr %Length.i.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %Length.i.i.i, align 1
  %225 = ptrtoint ptr %com.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %com.i.i.i, align 4
  %out_len.i.i.i = getelementptr inbounds %struct.ngene_command, ptr %com.i.i.i, i32 0, i32 1
  %226 = ptrtoint ptr %out_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %out_len.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %cmd_mutex.i, i32 noundef 0) #7
  %call.i.i.i.i50 = call fastcc i32 @ngene_command_mutex(ptr noundef %call1, ptr noundef nonnull %com.i.i.i) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i) #7
  %add.i.i.i51 = add i32 %size.1.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i51, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %and.i.i.i, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end24.i.i.ngene_load_firm.exit.i_crit_edge

do.end24.i.i.ngene_load_firm.exit.i_crit_edge:    ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ngene_load_firm.exit.i

if.then.i.i.i:                                    ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %iomem.i, align 8
  %add.ptr.i.i.i52 = getelementptr i8, ptr %228, i32 5120
  %add.ptr2.i.i.i = getelementptr i8, ptr %220, i32 1024
  %sub.i.i.i53 = add i32 %and.i.i.i, -1024
  call void @mmiocpy(ptr noundef %add.ptr.i.i.i52, ptr noundef %add.ptr2.i.i.i, i32 noundef %sub.i.i.i53) #7
  br label %ngene_load_firm.exit.i

ngene_load_firm.exit.i:                           ; preds = %if.then.i.i.i, %do.end24.i.i.ngene_load_firm.exit.i_crit_edge
  %cleft.0.i.i.i = phi i32 [ 1024, %if.then.i.i.i ], [ %and.i.i.i, %do.end24.i.i.ngene_load_firm.exit.i_crit_edge ]
  %229 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %iomem.i, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %230, i32 53248
  call void @mmiocpy(ptr noundef %add.ptr4.i.i.i, ptr noundef %220, i32 noundef %cleft.0.i.i.i) #7
  %231 = getelementptr inbounds i8, ptr %com.i.i.i, i32 12
  %232 = call ptr @memset(ptr %231, i32 0, i32 252)
  %233 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 2, ptr %221, align 4
  %234 = ptrtoint ptr %Length.i.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 4, ptr %Length.i.i.i, align 1
  %Address.i.i.i = getelementptr inbounds %struct.ngene_command, ptr %com.i.i.i, i32 0, i32 2, i32 0, i32 1
  %235 = ptrtoint ptr %Address.i.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 -12288, ptr %Address.i.i.i, align 2
  %conv.i.i.i54 = trunc i32 %cleft.0.i.i.i to i16
  %236 = ptrtoint ptr %231 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv.i.i.i54, ptr %231, align 4
  %237 = ptrtoint ptr %com.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 4, ptr %com.i.i.i, align 4
  %238 = ptrtoint ptr %out_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %out_len.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %cmd_mutex.i, i32 noundef 0) #7
  %call.i23.i.i.i = call fastcc i32 @ngene_command_mutex(ptr noundef %call1, ptr noundef nonnull %com.i.i.i) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i) #7
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i.i.i) #7
  %239 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %240) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i.i.i)
  %cmp35.i = icmp slt i32 %call.i23.i.i.i, 0
  br i1 %cmp35.i, label %ngene_load_firm.exit.i.do.body80.i_crit_edge, label %if.end37.i

ngene_load_firm.exit.i.do.body80.i_crit_edge:     ; preds = %ngene_load_firm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80.i

if.end37.i:                                       ; preds = %ngene_load_firm.exit.i
  %call38.i = call i32 @pci_msi_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool.not.i55 = icmp eq i32 %call38.i, 0
  br i1 %tobool.not.i55, label %if.end37.i.if.end71.i_crit_edge, label %land.lhs.true.i

if.end37.i.if.end71.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  %241 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %card_info, align 8
  %msi_supported.i = getelementptr inbounds %struct.ngene_info, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %msi_supported.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %msi_supported.i, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool39.not.i = icmp eq i8 %244, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i.if.end71.i_crit_edge, label %if.then40.i

land.lhs.true.i.if.end71.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  %245 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pci_dev5, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  call void @arm_heavy_mb() #7
  %247 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %iomem.i, align 8
  %add.ptr47.i = getelementptr i8, ptr %248, i32 49764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 0) #7, !srcloc !217
  %249 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pci_dev5, align 4
  %irq49.i = getelementptr inbounds %struct.pci_dev, ptr %250, i32 0, i32 46
  %251 = ptrtoint ptr %irq49.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %irq49.i, align 4
  %call50.i = call ptr @free_irq(i32 noundef %252, ptr noundef %call1) #7
  %253 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pci_dev5, align 4
  %call52.i = call i32 @pci_enable_msi(ptr noundef %254) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.else.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42.i, ptr noundef nonnull @.str.48) #10
  br label %if.end58.i

if.else.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %msi_enabled.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 6
  %255 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %msi_enabled.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else.i, %do.end57.i
  %flags.0.i = phi i32 [ 128, %do.end57.i ], [ 0, %if.else.i ]
  %256 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pci_dev5, align 4
  %irq60.i = getelementptr inbounds %struct.pci_dev, ptr %257, i32 0, i32 46
  %258 = ptrtoint ptr %irq60.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %irq60.i, align 4
  %call.i139.i = call i32 @request_threaded_irq(i32 noundef %259, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef %flags.0.i, ptr noundef nonnull @.str.32, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %cmp62.i = icmp slt i32 %call.i139.i, 0
  br i1 %cmp62.i, label %if.end58.i.fail2.i_crit_edge, label %cleanup.thread.i

if.end58.i.fail2.i_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2.i

cleanup.thread.i:                                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  call void @arm_heavy_mb() #7
  %260 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %iomem.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %261, i32 49764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 16777216) #7, !srcloc !217
  br label %if.end71.i

if.end71.i:                                       ; preds = %cleanup.thread.i, %land.lhs.true.i.if.end71.i_crit_edge, %if.end37.i.if.end71.i_crit_edge
  %call72.i = call i32 @ngene_i2c_init(ptr noundef %call1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %if.end71.i.do.body80.i_crit_edge, label %if.end75.i

if.end71.i.do.body80.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80.i

if.end75.i:                                       ; preds = %if.end71.i
  %call76.i = call i32 @ngene_i2c_init(ptr noundef %call1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end75.i.do.body80.i_crit_edge, label %if.end15

if.end75.i.do.body80.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80.i

do.body80.i:                                      ; preds = %if.end75.i.do.body80.i_crit_edge, %if.end71.i.do.body80.i_crit_edge, %ngene_load_firm.exit.i.do.body80.i_crit_edge, %ngene_load_firm.exit.thread142.i, %ngene_load_firm.exit.thread.i
  %stat.0.i = phi i32 [ %call.i23.i.i.i, %ngene_load_firm.exit.i.do.body80.i_crit_edge ], [ %call72.i, %if.end71.i.do.body80.i_crit_edge ], [ %call76.i, %if.end75.i.do.body80.i_crit_edge ], [ -1, %ngene_load_firm.exit.thread.i ], [ -1, %ngene_load_firm.exit.thread142.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  call void @arm_heavy_mb() #7
  %262 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %iomem.i, align 8
  %add.ptr84.i = getelementptr i8, ptr %263, i32 49764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 0) #7, !srcloc !217
  %264 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pci_dev5, align 4
  %irq86.i = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 46
  %266 = ptrtoint ptr %irq86.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %irq86.i, align 4
  %call87.i = call ptr @free_irq(i32 noundef %267, ptr noundef %call1) #7
  br label %fail2.i

fail2.i:                                          ; preds = %do.body80.i, %if.end58.i.fail2.i_crit_edge
  %stat.1.i = phi i32 [ %stat.0.i, %do.body80.i ], [ %call.i139.i, %if.end58.i.fail2.i_crit_edge ]
  %msi_enabled88.i = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 6
  %268 = ptrtoint ptr %msi_enabled88.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %msi_enabled88.i, align 8, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool89.not.i = icmp eq i8 %269, 0
  br i1 %tobool89.not.i, label %fail2.i.fail1_crit_edge, label %if.then90.i

fail2.i.fail1_crit_edge:                          ; preds = %fail2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.then90.i:                                      ; preds = %fail2.i
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pci_dev5, align 4
  call void @pci_disable_msi(ptr noundef %271) #7
  br label %fail1

if.end15:                                         ; preds = %if.end75.i
  call fastcc void @cxd_attach(ptr noundef nonnull %call1)
  %call16 = call fastcc i32 @ngene_buffer_config(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.fail1_crit_edge, label %if.end19

if.end15.fail1_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end19:                                         ; preds = %if.end15
  %i2c_current_bus = getelementptr inbounds %struct.ngene, ptr %call1, i32 0, i32 30
  %272 = ptrtoint ptr %i2c_current_bus to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %i2c_current_bus, align 8
  %call20 = call fastcc i32 @init_channels(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %fail2, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail2:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ngene_stop(ptr noundef nonnull %call1)
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end15.fail1_crit_edge, %if.then90.i, %fail2.i.fail1_crit_edge, %if.end11.fail1_crit_edge, %if.end48.i.fail1_crit_edge, %if.then41.i.fail1_crit_edge, %if.then28.i.fail1_crit_edge, %if.then15.i.fail1_crit_edge, %if.then2.i.fail1_crit_edge, %AllocCommonBuffers.exit.i.fail1_crit_edge, %if.end83.i.i.fail1_crit_edge, %create_ring_buffer.exit201.thread.i.i, %create_ring_buffer.exit187.thread.i.i, %for.body.i182.preheader.i.i.fail1_crit_edge, %if.then41.i.i.fail1_crit_edge, %if.then27.i.i.fail1_crit_edge, %create_ring_buffer.exit.thread.i.i, %if.end.i.i.fail1_crit_edge, %if.end4.fail1_crit_edge
  %stat.0 = phi i32 [ %call16, %if.end15.fail1_crit_edge ], [ %call20, %fail2 ], [ -12, %AllocCommonBuffers.exit.i.fail1_crit_edge ], [ -12, %if.then2.i.fail1_crit_edge ], [ -12, %if.then15.i.fail1_crit_edge ], [ -12, %if.then28.i.fail1_crit_edge ], [ -12, %if.then41.i.fail1_crit_edge ], [ -12, %if.end4.fail1_crit_edge ], [ -12, %if.end.i.i.fail1_crit_edge ], [ -12, %create_ring_buffer.exit201.thread.i.i ], [ -12, %create_ring_buffer.exit187.thread.i.i ], [ -12, %create_ring_buffer.exit.thread.i.i ], [ -12, %if.end48.i.fail1_crit_edge ], [ %stat.1.i, %fail2.i.fail1_crit_edge ], [ %stat.1.i, %if.then90.i ], [ %call.i.i, %if.end11.fail1_crit_edge ], [ -12, %if.then27.i.i.fail1_crit_edge ], [ -12, %if.then41.i.i.fail1_crit_edge ], [ -12, %for.body.i182.preheader.i.i.fail1_crit_edge ], [ -12, %if.end83.i.i.fail1_crit_edge ]
  call fastcc void @ngene_release_buffers(ptr noundef nonnull %call1)
  br label %fail0

fail0:                                            ; preds = %fail1, %if.end.fail0_crit_edge
  %stat.1 = phi i32 [ %stat.0, %fail1 ], [ -12, %if.end.fail0_crit_edge ]
  call void @pci_disable_device(ptr noundef %pci_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %fail0, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %stat.1, %fail0 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxd_attach(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %cxd_cfg = alloca %struct.cxd2099_cfg, align 4
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cxd_cfg) #7
  %2 = call ptr @memcpy(ptr %cxd_cfg, ptr @cxd_cfgtmpl, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #7
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %type, align 1, !annotation !240
  %i2c_adapter = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 34, i32 0, i32 1
  %call = call i32 @ngene_port_has_cxd2099(ptr noundef %i2c_adapter, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd_attach.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd_attach, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !230

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd_attach.__UNIQUE_ID_ddebug392, ptr noundef %dev1, ptr noundef nonnull @.str.72) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %en = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 54, i32 3
  %en15 = getelementptr inbounds %struct.cxd2099_cfg, ptr %cxd_cfg, i32 0, i32 4
  %6 = ptrtoint ptr %en15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %en, ptr %en15, align 4
  %call19 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef %i2c_adapter, i8 noundef zeroext 64, ptr noundef nonnull %cxd_cfg) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end29, label %if.end22

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 54, i32 2
  %7 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev23, align 8
  %i2c_client = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 34, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %i2c_client, align 8
  br label %cleanup

do.end29:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.77) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22, %do.end13, %if.then7, %do.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cxd_cfg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ngene_buffer_config(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %com.i35 = alloca %struct.ngene_command, align 4
  %com.i = alloca %struct.ngene_command, align 4
  %tsin12_config = alloca [6 x i8], align 1
  %tsin1234_config = alloca [6 x i8], align 1
  %tsio1235_config = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_info = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card_info, align 8
  %fw_version = getelementptr inbounds %struct.ngene_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp sgt i32 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tsin12_config) #7
  %4 = call ptr @memcpy(ptr %tsin12_config, ptr @__const.ngene_buffer_config.tsin12_config, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tsin1234_config) #7
  %5 = call ptr @memcpy(ptr %tsin1234_config, ptr @__const.ngene_buffer_config.tsin1234_config, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tsio1235_config) #7
  %6 = call ptr @memcpy(ptr %tsio1235_config, ptr @__const.ngene_buffer_config.tsio1235_config, i32 6)
  %arrayidx = getelementptr %struct.ngene_info, ptr %1, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %arrayidx4 = getelementptr %struct.ngene_info, ptr %1, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end18_crit_edge, label %if.then7

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  %arrayidx11 = getelementptr %struct.ngene_info, ptr %1, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %and12 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then7.if.end18_crit_edge, label %land.lhs.true14

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %en = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 54, i32 3
  %13 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %en, align 4
  %tobool15.not = icmp eq ptr %14, null
  %spec.select = select i1 %tobool15.not, ptr %tsin1234_config, ptr %tsio1235_config
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true14, %if.then7.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %bconf.0 = phi ptr [ %tsin1234_config, %if.then7.if.end18_crit_edge ], [ %tsin12_config, %land.lhs.true.if.end18_crit_edge ], [ %tsin12_config, %if.then.if.end18_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i) #7
  %15 = getelementptr inbounds i8, ptr %com.i, i32 16
  %16 = call ptr @memset(ptr %15, i32 255, i32 248)
  %cmd.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 18, ptr %cmd.i, align 4
  %Length.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %Length.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %Length.i, align 1
  %config3.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 2, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %config3.i, ptr %bconf.0, i32 6)
  %20 = ptrtoint ptr %com.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %com.i, align 4
  %out_len.i = getelementptr inbounds %struct.ngene_command, ptr %com.i, i32 0, i32 1
  %21 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %out_len.i, align 4
  %cmd_mutex.i.i = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i.i, i32 noundef 0) #7
  %call.i.i = call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef nonnull %com.i) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  %..i = select i1 %cmp.i, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tsio1235_config) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tsin1234_config) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tsin12_config) #7
  br label %if.end27

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.ngene_info, ptr %1, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp23 = icmp eq i32 %23, 4
  %conv = zext i1 %cmp23 to i8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %com.i35) #7
  %24 = getelementptr inbounds i8, ptr %com.i35, i32 8
  %25 = call ptr @memset(ptr %24, i32 255, i32 256)
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 17, ptr %24, align 4
  %Length.i37 = getelementptr inbounds %struct.ngene_command, ptr %com.i35, i32 0, i32 2, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %Length.i37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %Length.i37, align 1
  %config3.i38 = getelementptr inbounds %struct.ngene_command, ptr %com.i35, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %config3.i38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %config3.i38, align 2
  %29 = ptrtoint ptr %com.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %com.i35, align 4
  %out_len.i39 = getelementptr inbounds %struct.ngene_command, ptr %com.i35, i32 0, i32 1
  %30 = ptrtoint ptr %out_len.i39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %out_len.i39, align 4
  %cmd_mutex.i.i40 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex.i.i40, i32 noundef 0) #7
  %call.i.i41 = call fastcc i32 @ngene_command_mutex(ptr noundef %dev, ptr noundef nonnull %com.i35) #7
  call void @mutex_unlock(ptr noundef %cmd_mutex.i.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i42 = icmp slt i32 %call.i.i41, 0
  %..i43 = select i1 %cmp.i42, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %com.i35) #7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end18
  %stat.0 = phi i32 [ %..i, %if.end18 ], [ %..i43, %if.else ]
  ret i32 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_channels(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.inc9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025
  %number = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 5
  %0 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i.025, ptr %number, align 4
  %demux.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 15
  %dev1.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 4
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 8
  %card_info.i = getelementptr inbounds %struct.ngene, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %card_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card_info.i, align 8
  %arrayidx.i = getelementptr %struct.ngene_info, ptr %4, i32 0, i32 4, i32 %i.025
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %demux_tasklet.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 22
  tail call void @tasklet_setup(ptr noundef %demux_tasklet.i, ptr noundef nonnull @demux_tasklet) #7
  %users.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 19
  %7 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %users.i, align 8
  %type.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %type.i, align 8
  %mode.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 7
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %mode.i, align 4
  %i2c_client_fe.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 3
  %10 = ptrtoint ptr %i2c_client_fe.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i2c_client_fe.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end22.i_crit_edge, label %if.then.i

for.body.if.end22.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then.i:                                        ; preds = %for.body
  %fe.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 12
  %11 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fe.i, align 4
  %arrayidx3.i = getelementptr %struct.ngene_info, ptr %4, i32 0, i32 7, i32 %i.025
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.then.i.if.end22.i_crit_edge, label %if.then5.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then5.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 %13(ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then5.i.err.i_crit_edge, label %if.end9.i

if.then5.i.err.i_crit_edge:                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end9.i:                                        ; preds = %if.then5.i
  %14 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load ptr, ptr %fe.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end9.i.if.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %arrayidx12.i = getelementptr %struct.ngene_info, ptr %4, i32 0, i32 8, i32 %i.025
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %call17.i = tail call i32 %16(ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then14.i.err.i_crit_edge, label %if.then14.i.if.end22.i_crit_edge

if.then14.i.if.end22.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then14.i.err.i_crit_edge:                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end22.i:                                       ; preds = %if.then14.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge, %if.end9.i.if.end22.i_crit_edge, %if.then.i.if.end22.i_crit_edge, %for.body.if.end22.i_crit_edge
  %en.i = getelementptr inbounds %struct.ngene, ptr %2, i32 0, i32 54, i32 3
  %17 = ptrtoint ptr %en.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %en.i, align 4
  %tobool23.not.i = icmp ne ptr %18, null
  %and25.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %if.end28.i, label %if.end22.i.for.inc9_crit_edge

if.end22.i.for.inc9_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end28.i:                                       ; preds = %if.end22.i
  %and29.i = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end55.i_crit_edge, label %if.then31.i

if.end28.i.if.end55.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.025)
  %cmp32.i = icmp ugt i32 %i.025, 1
  br i1 %cmp32.i, label %if.end34.thread.i, label %if.end34.i

if.end34.thread.i:                                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  %DataFormatFlags.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 42
  %19 = ptrtoint ptr %DataFormatFlags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %DataFormatFlags.i, align 8
  br label %lor.lhs.false.i

if.end34.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.025)
  %cmp35.i = icmp eq i32 %i.025, 0
  br i1 %cmp35.i, label %if.end34.i.if.then39.i_crit_edge, label %if.end34.i.lor.lhs.false.i_crit_edge

if.end34.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end34.i.if.then39.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

lor.lhs.false.i:                                  ; preds = %if.end34.i.lor.lhs.false.i_crit_edge, %if.end34.thread.i
  %20 = load i32, ptr @one_adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool36.not.i = icmp eq i32 %20, 0
  br i1 %tobool36.not.i, label %lor.lhs.false.i.if.then39.i_crit_edge, label %lor.lhs.false37.i

lor.lhs.false.i.if.then39.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

lor.lhs.false37.i:                                ; preds = %lor.lhs.false.i
  %first_adapter.i = getelementptr inbounds %struct.ngene, ptr %2, i32 0, i32 33
  %21 = ptrtoint ptr %first_adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first_adapter.i, align 8
  %cmp38.i = icmp eq ptr %22, null
  br i1 %cmp38.i, label %lor.lhs.false37.i.if.then39.i_crit_edge, label %lor.lhs.false37.i.if.end55.i_crit_edge

lor.lhs.false37.i.if.end55.i_crit_edge:           ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

lor.lhs.false37.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %lor.lhs.false37.i.if.then39.i_crit_edge, %lor.lhs.false.i.if.then39.i_crit_edge, %if.end34.i.if.then39.i_crit_edge
  %arrayidx41.i = getelementptr %struct.ngene, ptr %2, i32 0, i32 32, i32 %i.025
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i, align 8
  %pci_dev.i = getelementptr inbounds %struct.ngene, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 4
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call44.i = tail call i32 @dvb_register_adapter(ptr noundef %arrayidx41.i, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef %dev43.i, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.then39.i.err.i_crit_edge, label %if.end47.i

if.then39.i.err.i_crit_edge:                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end47.i:                                       ; preds = %if.then39.i
  %first_adapter48.i = getelementptr inbounds %struct.ngene, ptr %2, i32 0, i32 33
  %27 = ptrtoint ptr %first_adapter48.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %first_adapter48.i, align 8
  %cmp49.i = icmp eq ptr %28, null
  br i1 %cmp49.i, label %if.then50.i, label %if.end47.i.if.end52.i_crit_edge

if.end47.i.if.end52.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %first_adapter48.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx41.i, ptr %first_adapter48.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end52.i_crit_edge
  %has_adapter.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 8
  %30 = ptrtoint ptr %has_adapter.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %has_adapter.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end52.i, %lor.lhs.false37.i.if.end55.i_crit_edge, %if.end28.i.if.end55.i_crit_edge
  %adapter.0.i = phi ptr [ %arrayidx41.i, %if.end52.i ], [ null, %if.end28.i.if.end55.i_crit_edge ], [ %22, %lor.lhs.false37.i.if.end55.i_crit_edge ]
  %31 = ptrtoint ptr %en.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %en.i, align 4
  %tobool58.not.i = icmp eq ptr %32, null
  %or.cond210.i = select i1 %tobool58.not.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond210.i, label %if.end55.i.if.end77.i_crit_edge, label %if.then62.i

if.end55.i.if.end77.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then62.i:                                      ; preds = %if.end55.i
  %call65.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %adapter.0.i, ptr noundef nonnull %32, i32 noundef 0, i32 noundef 1) #7
  tail call void @set_transfer(ptr noundef %arrayidx, i32 noundef 1) #7
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 8
  %DataFormatFlags68.i = getelementptr %struct.ngene, ptr %34, i32 0, i32 34, i32 2, i32 42
  %35 = ptrtoint ptr %DataFormatFlags68.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65536, ptr %DataFormatFlags68.i, align 8
  %36 = load ptr, ptr %dev1.i, align 8
  %arrayidx71.i = getelementptr %struct.ngene, ptr %36, i32 0, i32 34, i32 2
  tail call void @set_transfer(ptr noundef %arrayidx71.i, i32 noundef 1) #7
  %ci_dev.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 21
  %call72.i = tail call i32 @dvb_register_device(ptr noundef %adapter.0.i, ptr noundef %ci_dev.i, ptr noundef nonnull @ngene_dvbdev_ci, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 0) #7
  %37 = ptrtoint ptr %ci_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ci_dev.i, align 8
  %tobool74.not.i = icmp eq ptr %38, null
  br i1 %tobool74.not.i, label %if.then62.i.err.i_crit_edge, label %if.then62.i.if.end77.i_crit_edge

if.then62.i.if.end77.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then62.i.err.i_crit_edge:                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end77.i:                                       ; preds = %if.then62.i.if.end77.i_crit_edge, %if.end55.i.if.end77.i_crit_edge
  %fe78.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 12
  %39 = ptrtoint ptr %fe78.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe78.i, align 4
  %tobool79.not.i = icmp eq ptr %40, null
  br i1 %tobool79.not.i, label %if.end77.i.if.end86.i_crit_edge, label %if.then80.i

if.end77.i.if.end86.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

if.then80.i:                                      ; preds = %if.end77.i
  %call82.i = tail call i32 @dvb_register_frontend(ptr noundef %adapter.0.i, ptr noundef nonnull %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.i = icmp slt i32 %call82.i, 0
  br i1 %cmp83.i, label %if.then80.i.err.i_crit_edge, label %if.end85.i

if.then80.i.err.i_crit_edge:                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end85.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  %has_demux.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 9
  %41 = ptrtoint ptr %has_demux.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %has_demux.i, align 1
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.end85.i, %if.end77.i.if.end86.i_crit_edge
  %fe2.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 13
  %42 = ptrtoint ptr %fe2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fe2.i, align 8
  %tobool87.not.i = icmp eq ptr %43, null
  br i1 %tobool87.not.i, label %if.end86.i.if.end105.i_crit_edge, label %if.then88.i

if.end86.i.if.end105.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i

if.then88.i:                                      ; preds = %if.end86.i
  %call90.i = tail call i32 @dvb_register_frontend(ptr noundef %adapter.0.i, ptr noundef nonnull %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %if.then88.i.err.i_crit_edge, label %if.end93.i

if.then88.i.err.i_crit_edge:                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end93.i:                                       ; preds = %if.then88.i
  %44 = ptrtoint ptr %fe78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fe78.i, align 4
  %tobool95.not.i = icmp eq ptr %45, null
  br i1 %tobool95.not.i, label %if.end93.i.if.end105.i_crit_edge, label %if.then96.i

if.end93.i.if.end105.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i

if.then96.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tuner_priv.i, align 4
  %48 = ptrtoint ptr %fe2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe2.i, align 8
  %tuner_priv99.i = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %tuner_priv99.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %tuner_priv99.i, align 4
  %51 = load ptr, ptr %fe2.i, align 8
  %tuner_ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 1, i32 32
  %52 = ptrtoint ptr %fe78.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fe78.i, align 4
  %tuner_ops103.i = getelementptr inbounds %struct.dvb_frontend, ptr %53, i32 0, i32 1, i32 32
  %54 = call ptr @memcpy(ptr %tuner_ops.i, ptr %tuner_ops103.i, i32 220)
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then96.i, %if.end93.i.if.end105.i_crit_edge, %if.end86.i.if.end105.i_crit_edge
  %has_demux106.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 9
  %55 = ptrtoint ptr %has_demux106.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_demux106.i, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool107.not.i = icmp eq i8 %56, 0
  br i1 %tobool107.not.i, label %if.end105.i.for.inc9_crit_edge, label %init_channel.exit

if.end105.i.for.inc9_crit_edge:                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

err.i:                                            ; preds = %if.then88.i.err.i_crit_edge, %if.then80.i.err.i_crit_edge, %if.then62.i.err.i_crit_edge, %if.then39.i.err.i_crit_edge, %if.then14.i.err.i_crit_edge, %if.then5.i.err.i_crit_edge
  %fe115.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 12
  %57 = ptrtoint ptr %fe115.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fe115.i, align 4
  %tobool116.not.i = icmp eq ptr %58, null
  br i1 %tobool116.not.i, label %err.i.if.end120.i_crit_edge, label %if.then117.i

err.i.if.end120.i_crit_edge:                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then117.i:                                     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dvb_frontend_detach(ptr noundef nonnull %58) #7
  %59 = ptrtoint ptr %fe115.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %fe115.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then117.i, %err.i.if.end120.i_crit_edge
  tail call fastcc void @release_channel(ptr noundef %arrayidx) #7
  br label %for.inc9

init_channel.exit:                                ; preds = %if.end105.i
  %call109.i = tail call i32 @my_dvb_dmx_ts_card_init(ptr noundef %demux.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @ngene_start_feed, ptr noundef nonnull @ngene_stop_feed, ptr noundef %arrayidx) #7
  %dmxdev.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 14
  %hw_frontend.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 17
  %mem_frontend.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 18
  %call111.i = tail call i32 @my_dvb_dmxdev_ts_card_init(ptr noundef %dmxdev.i, ptr noundef %demux.i, ptr noundef %hw_frontend.i, ptr noundef %mem_frontend.i, ptr noundef %adapter.0.i) #7
  %dvbnet.i = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %i.025, i32 16
  %call113.i = tail call i32 @dvb_net_init(ptr noundef %adapter.0.i, ptr noundef %dvbnet.i, ptr noundef %demux.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %cmp3 = icmp slt i32 %call113.i, 0
  br i1 %cmp3, label %for.cond4.preheader, label %init_channel.exit.for.inc9_crit_edge

init_channel.exit.for.inc9_crit_edge:             ; preds = %init_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

for.cond4.preheader:                              ; preds = %init_channel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.025)
  %cmp529.not = icmp eq i32 %i.025, 0
  br i1 %cmp529.not, label %for.cond4.preheader.cleanup_crit_edge, label %for.body6

for.cond4.preheader.cleanup_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6:                                        ; preds = %for.cond4.preheader
  %j.030 = add nsw i32 %i.025, -1
  %arrayidx8 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %j.030
  tail call fastcc void @release_channel(ptr noundef %arrayidx8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.025)
  %cmp5 = icmp ugt i32 %i.025, 1
  br i1 %cmp5, label %for.body6.1, label %for.body6.cleanup_crit_edge

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6.1:                                      ; preds = %for.body6
  %j.030.1 = add nsw i32 %i.025, -2
  %arrayidx8.1 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %j.030.1
  tail call fastcc void @release_channel(ptr noundef %arrayidx8.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.025)
  %cmp5.1.not = icmp eq i32 %i.025, 2
  br i1 %cmp5.1.not, label %for.body6.1.cleanup_crit_edge, label %for.body6.2

for.body6.1.cleanup_crit_edge:                    ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6.2:                                      ; preds = %for.body6.1
  %j.030.2 = add nsw i32 %i.025, -3
  %arrayidx8.2 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %j.030.2
  tail call fastcc void @release_channel(ptr noundef %arrayidx8.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.025)
  %cmp5.2 = icmp ugt i32 %i.025, 3
  br i1 %cmp5.2, label %for.body6.3, label %for.body6.2.cleanup_crit_edge

for.body6.2.cleanup_crit_edge:                    ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6.3:                                      ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #9
  %j.030.3 = add nsw i32 %i.025, -4
  %arrayidx8.3 = getelementptr %struct.ngene, ptr %dev, i32 0, i32 34, i32 %j.030.3
  tail call fastcc void @release_channel(ptr noundef %arrayidx8.3)
  br label %cleanup

for.inc9:                                         ; preds = %init_channel.exit.for.inc9_crit_edge, %if.end120.i, %if.end105.i.for.inc9_crit_edge, %if.end22.i.for.inc9_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc9.cleanup_crit_edge, label %for.inc9.for.body_crit_edge

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc9.cleanup_crit_edge:                       ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc9.cleanup_crit_edge, %for.body6.3, %for.body6.2.cleanup_crit_edge, %for.body6.1.cleanup_crit_edge, %for.body6.cleanup_crit_edge, %for.cond4.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.cond4.preheader.cleanup_crit_edge ], [ -1, %for.body6.3 ], [ -1, %for.body6.2.cleanup_crit_edge ], [ -1, %for.body6.1.cleanup_crit_edge ], [ -1, %for.body6.cleanup_crit_edge ], [ 0, %for.inc9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_ringbuffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %NumBuffers = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 3
  %2 = ptrtoint ptr %NumBuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %NumBuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp50.not = icmp eq i32 %3, 0
  br i1 %cmp50.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %Buffer1Length = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 4
  %Buffer2Length = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %Cur.051 = phi ptr [ %1, %for.body.lr.ph ], [ %25, %for.inc.for.body_crit_edge ]
  %Buffer1 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051, i32 0, i32 2
  %4 = ptrtoint ptr %Buffer1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Buffer1, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.if.end5_crit_edge, label %if.then2

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %Buffer1Length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Buffer1Length, align 8
  %scList1 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051, i32 0, i32 3
  %10 = ptrtoint ptr %scList1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scList1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %11, align 1
  %conv = trunc i64 %13 to i32
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %conv, i32 noundef 0) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.body.if.end5_crit_edge
  %Buffer2 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051, i32 0, i32 4
  %14 = ptrtoint ptr %Buffer2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %Buffer2, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end5.for.inc_crit_edge, label %if.then7

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %Buffer2Length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %Buffer2Length, align 4
  %scList2 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051, i32 0, i32 5
  %20 = ptrtoint ptr %scList2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scList2, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %21, align 1
  %conv12 = trunc i64 %23 to i32
  tail call void @dma_free_attrs(ptr noundef %dev9, i32 noundef %19, ptr noundef nonnull %15, i32 noundef %conv12, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end5.for.inc_crit_edge
  %inc = add nuw i32 %j.052, 1
  %Next = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.051, i32 0, i32 1
  %24 = ptrtoint ptr %Next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %Next, align 4
  %26 = ptrtoint ptr %NumBuffers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %NumBuffers, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %SCListMem = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 6
  %28 = ptrtoint ptr %SCListMem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %SCListMem, align 8
  %tobool14.not = icmp eq ptr %29, null
  br i1 %tobool14.not, label %for.end.if.end20_crit_edge, label %if.then15

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev16 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %pci_dev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %SCListMemSize = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 8
  %32 = ptrtoint ptr %SCListMemSize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %SCListMemSize, align 8
  %PASCListMem = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 7
  %34 = ptrtoint ptr %PASCListMem to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %PASCListMem, align 8
  %conv19 = trunc i64 %35 to i32
  tail call void @dma_free_attrs(ptr noundef %dev17, i32 noundef %33, ptr noundef nonnull %29, i32 noundef %conv19, i32 noundef 0) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end.if.end20_crit_edge
  %pci_dev21 = getelementptr inbounds %struct.ngene, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %pci_dev21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %MemSize = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 2
  %38 = ptrtoint ptr %MemSize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %MemSize, align 8
  %40 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rb, align 8
  %PAHead = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %rb, i32 0, i32 1
  %42 = ptrtoint ptr %PAHead to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %PAHead, align 8
  %conv24 = trunc i64 %43 to i32
  tail call void @dma_free_attrs(ptr noundef %dev22, i32 noundef %39, ptr noundef %41, i32 noundef %conv24, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @AllocateRingBuffers(ptr noundef %pci_dev, i32 noundef %of, ptr nocapture noundef %pRingBuffer, i32 noundef %Buffer1Length, i32 noundef %Buffer2Length) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !240
  %NumBuffers = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 3
  %1 = ptrtoint ptr %NumBuffers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %NumBuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Buffer2Length)
  %cmp.not = icmp eq i32 %Buffer2Length, 0
  %mul = select i1 %cmp.not, i32 128, i32 256
  %mul1 = mul i32 %mul, %2
  %3 = tail call i32 @llvm.umax.i32(i32 %mul1, i32 4096)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull %tmp, i32 noundef 3264, i32 noundef 0) #7
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %entry.cleanup63_crit_edge, label %if.end6

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end6:                                          ; preds = %entry
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %conv = zext i32 %5 to i64
  %SCListMem7 = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 6
  %6 = ptrtoint ptr %SCListMem7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %SCListMem7, align 8
  %PASCListMem8 = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 7
  %7 = ptrtoint ptr %PASCListMem8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %PASCListMem8, align 8
  %SCListMemSize9 = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 8
  %8 = ptrtoint ptr %SCListMemSize9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %SCListMemSize9, align 8
  %Buffer1Length10 = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 4
  %9 = ptrtoint ptr %Buffer1Length10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %Buffer1Length, ptr %Buffer1Length10, align 8
  %Buffer2Length11 = getelementptr inbounds %struct.SRingBufferDescriptor, ptr %pRingBuffer, i32 0, i32 5
  %10 = ptrtoint ptr %Buffer2Length11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %Buffer2Length, ptr %Buffer2Length11, align 4
  %11 = ptrtoint ptr %NumBuffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %NumBuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13142.not = icmp eq i32 %12, 0
  br i1 %cmp13142.not, label %if.end6.cleanup63_crit_edge, label %for.body.lr.ph

if.end6.cleanup63_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

for.body.lr.ph:                                   ; preds = %if.end6
  %conv27 = zext i32 %of to i64
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %Cur.0146.in = phi ptr [ %pRingBuffer, %for.body.lr.ph ], [ %Next, %for.inc60.for.body_crit_edge ]
  %PASCListEntry.0145 = phi i64 [ %conv, %for.body.lr.ph ], [ %PASCListEntry.3, %for.inc60.for.body_crit_edge ]
  %SCListEntry.0144 = phi ptr [ %call.i, %for.body.lr.ph ], [ %SCListEntry.3, %for.inc60.for.body_crit_edge ]
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %add61, %for.inc60.for.body_crit_edge ]
  %13 = ptrtoint ptr %Cur.0146.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %Cur.0146 = load ptr, ptr %Cur.0146.in, align 4
  %call.i127 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %Buffer1Length, ptr noundef nonnull %tmp, i32 noundef 3264, i32 noundef 0) #7
  %cmp18 = icmp eq ptr %call.i127, null
  br i1 %cmp18, label %for.body.cleanup63_crit_edge, label %if.end21

for.body.cleanup63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end21:                                         ; preds = %for.body
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmp, align 4
  %conv17 = zext i32 %15 to i64
  %Buffer1 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0146, i32 0, i32 2
  %16 = ptrtoint ptr %Buffer1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i127, ptr %Buffer1, align 4
  %17 = ptrtoint ptr %SCListEntry.0144 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %conv17, ptr %SCListEntry.0144, align 1
  %Length = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 0, i32 1
  %18 = ptrtoint ptr %Length to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %Buffer1Length, ptr %Length, align 1
  %scList1 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0146, i32 0, i32 3
  %19 = ptrtoint ptr %scList1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %SCListEntry.0144, ptr %scList1, align 4
  %Address_of_first_entry_1 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0146, i32 0, i32 4
  %20 = ptrtoint ptr %Address_of_first_entry_1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %PASCListEntry.0145, ptr %Address_of_first_entry_1, align 4
  %Number_of_entries_1 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0146, i32 0, i32 2
  %21 = ptrtoint ptr %Number_of_entries_1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %Number_of_entries_1, align 4
  %SCListEntry.1133 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 1
  %22 = ptrtoint ptr %SCListEntry.1133 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %conv27, ptr %SCListEntry.1133, align 1
  %Length29 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 1, i32 1
  %23 = ptrtoint ptr %Length29 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 8192, ptr %Length29, align 1
  %SCListEntry.1 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 2
  %24 = ptrtoint ptr %SCListEntry.1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %conv27, ptr %SCListEntry.1, align 1
  %Length29.1 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 2, i32 1
  %25 = ptrtoint ptr %Length29.1 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 8192, ptr %Length29.1, align 1
  %SCListEntry.1.1 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 3
  %26 = ptrtoint ptr %SCListEntry.1.1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %conv27, ptr %SCListEntry.1.1, align 1
  %Length29.2 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 3, i32 1
  %27 = ptrtoint ptr %Length29.2 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 8192, ptr %Length29.2, align 1
  %SCListEntry.1.2 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 4
  %28 = ptrtoint ptr %SCListEntry.1.2 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %conv27, ptr %SCListEntry.1.2, align 1
  %Length29.3 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 4, i32 1
  %29 = ptrtoint ptr %Length29.3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 8192, ptr %Length29.3, align 1
  %SCListEntry.1.3 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 5
  %30 = ptrtoint ptr %SCListEntry.1.3 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %conv27, ptr %SCListEntry.1.3, align 1
  %Length29.4 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 5, i32 1
  %31 = ptrtoint ptr %Length29.4 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 8192, ptr %Length29.4, align 1
  %SCListEntry.1.4 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 6
  %32 = ptrtoint ptr %SCListEntry.1.4 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %conv27, ptr %SCListEntry.1.4, align 1
  %Length29.5 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 6, i32 1
  %33 = ptrtoint ptr %Length29.5 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 8192, ptr %Length29.5, align 1
  %SCListEntry.1.5 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 7
  %34 = ptrtoint ptr %SCListEntry.1.5 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %conv27, ptr %SCListEntry.1.5, align 1
  %Length29.6 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 7, i32 1
  %35 = ptrtoint ptr %Length29.6 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 8192, ptr %Length29.6, align 1
  %SCListEntry.1.6 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 8
  %36 = add i64 %PASCListEntry.0145, 128
  br i1 %cmp.not, label %if.end21.for.inc60_crit_edge, label %if.end34

if.end21.for.inc60_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc60

if.end34:                                         ; preds = %if.end21
  %call.i128 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %Buffer2Length, ptr noundef nonnull %tmp, i32 noundef 3264, i32 noundef 0) #7
  %cmp38 = icmp eq ptr %call.i128, null
  br i1 %cmp38, label %if.end34.cleanup63_crit_edge, label %if.end41

if.end34.cleanup63_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp, align 4
  %conv37 = zext i32 %38 to i64
  %Buffer2 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0146, i32 0, i32 4
  %39 = ptrtoint ptr %Buffer2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i128, ptr %Buffer2, align 4
  %40 = ptrtoint ptr %SCListEntry.1.6 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %conv37, ptr %SCListEntry.1.6, align 1
  %Length43 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 8, i32 1
  %41 = ptrtoint ptr %Length43 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %Buffer2Length, ptr %Length43, align 1
  %scList2 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0146, i32 0, i32 5
  %42 = ptrtoint ptr %scList2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %SCListEntry.1.6, ptr %scList2, align 4
  %Address_of_first_entry_2 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0146, i32 0, i32 7
  %43 = ptrtoint ptr %Address_of_first_entry_2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %36, ptr %Address_of_first_entry_2, align 4
  %Number_of_entries_2 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0146, i32 0, i32 5
  %44 = ptrtoint ptr %Number_of_entries_2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %Number_of_entries_2, align 4
  %add.ptr46 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 9
  %45 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %conv27, ptr %add.ptr46, align 1
  %Length54 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 9, i32 1
  %46 = ptrtoint ptr %Length54 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 8192, ptr %Length54, align 1
  %add.ptr55 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 10
  %47 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %conv27, ptr %add.ptr55, align 1
  %Length54.1 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 10, i32 1
  %48 = ptrtoint ptr %Length54.1 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 8192, ptr %Length54.1, align 1
  %add.ptr55.1 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 11
  %49 = ptrtoint ptr %add.ptr55.1 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %conv27, ptr %add.ptr55.1, align 1
  %Length54.2 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 11, i32 1
  %50 = ptrtoint ptr %Length54.2 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 8192, ptr %Length54.2, align 1
  %add.ptr55.2 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 12
  %51 = ptrtoint ptr %add.ptr55.2 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %conv27, ptr %add.ptr55.2, align 1
  %Length54.3 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 12, i32 1
  %52 = ptrtoint ptr %Length54.3 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 8192, ptr %Length54.3, align 1
  %add.ptr55.3 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 13
  %53 = ptrtoint ptr %add.ptr55.3 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %conv27, ptr %add.ptr55.3, align 1
  %Length54.4 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 13, i32 1
  %54 = ptrtoint ptr %Length54.4 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 8192, ptr %Length54.4, align 1
  %add.ptr55.4 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 14
  %55 = ptrtoint ptr %add.ptr55.4 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %conv27, ptr %add.ptr55.4, align 1
  %Length54.5 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 14, i32 1
  %56 = ptrtoint ptr %Length54.5 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 8192, ptr %Length54.5, align 1
  %add.ptr55.5 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 15
  %57 = ptrtoint ptr %add.ptr55.5 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %conv27, ptr %add.ptr55.5, align 1
  %Length54.6 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 15, i32 1
  %58 = ptrtoint ptr %Length54.6 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 8192, ptr %Length54.6, align 1
  %add.ptr55.6 = getelementptr %struct.HW_SCATTER_GATHER_ELEMENT, ptr %SCListEntry.0144, i32 16
  %59 = add i64 %PASCListEntry.0145, 256
  br label %for.inc60

for.inc60:                                        ; preds = %if.end41, %if.end21.for.inc60_crit_edge
  %SCListEntry.3 = phi ptr [ %SCListEntry.1.6, %if.end21.for.inc60_crit_edge ], [ %add.ptr55.6, %if.end41 ]
  %PASCListEntry.3 = phi i64 [ %36, %if.end21.for.inc60_crit_edge ], [ %59, %if.end41 ]
  %add61 = add nuw i32 %i.0143, 1
  %Next = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0146, i32 0, i32 1
  %60 = ptrtoint ptr %NumBuffers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %NumBuffers, align 4
  %cmp13 = icmp ult i32 %add61, %61
  br i1 %cmp13, label %for.inc60.for.body_crit_edge, label %for.inc60.cleanup63_crit_edge

for.inc60.cleanup63_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup63:                                        ; preds = %for.inc60.cleanup63_crit_edge, %if.end34.cleanup63_crit_edge, %for.body.cleanup63_crit_edge, %if.end6.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup63_crit_edge ], [ 0, %if.end6.cleanup63_crit_edge ], [ 0, %for.inc60.cleanup63_crit_edge ], [ -12, %for.body.cleanup63_crit_edge ], [ -12, %if.end34.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %BootFirmware = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %BootFirmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %BootFirmware, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  %iomem = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 49760
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !214
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %icounts3 = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 5
  %8 = ptrtoint ptr %icounts3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icounts3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 41104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !217
  %cmd_done = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 24
  %12 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cmd_done, align 4
  %cmd_wq = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %cmd_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %13 = ptrtoint ptr %icounts3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %icounts3, align 4
  br label %cleanup

do.body9:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %iomem12 = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 2
  %14 = ptrtoint ptr %iomem12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem12, align 8
  %add.ptr13 = getelementptr i8, ptr %15, i32 41104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #7, !srcloc !217
  %cmd_lock = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %cmd_lock) #7
  %CmdDoneByte = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 8
  %16 = ptrtoint ptr %CmdDoneByte to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %CmdDoneByte, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %do.body9.if.end29_crit_edge, label %land.lhs.true

do.body9.if.end29_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %do.body9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

lor.lhs.false:                                    ; preds = %land.lhs.true
  %ngenetohost = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 14
  %20 = ptrtoint ptr %ngenetohost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ngenetohost, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp17 = icmp eq i8 %23, 1
  br i1 %cmp17, label %land.lhs.true19, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true19:                                  ; preds = %lor.lhs.false
  %arrayidx21 = getelementptr i8, ptr %21, i32 1
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp23.not = icmp eq i8 %25, 0
  br i1 %cmp23.not, label %land.lhs.true19.if.end29_crit_edge, label %land.lhs.true19.if.then25_crit_edge

land.lhs.true19.if.then25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true19.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %26 = ptrtoint ptr %CmdDoneByte to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %CmdDoneByte, align 4
  %cmd_done27 = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 24
  %27 = ptrtoint ptr %cmd_done27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cmd_done27, align 4
  %cmd_wq28 = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %cmd_wq28, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true19.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge, %do.body9.if.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cmd_lock) #7
  %EventBuffer = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 20
  %28 = ptrtoint ptr %EventBuffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %EventBuffer, align 4
  %EventStatus = getelementptr inbounds %struct.EVENT_BUFFER, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %EventStatus to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %EventStatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool32.not = icmp sgt i8 %31, -1
  br i1 %tobool32.not, label %if.end29.if.end55_crit_edge, label %if.then33

if.end29.if.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then33:                                        ; preds = %if.end29
  %EventQueueWriteIndex = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 21
  %32 = ptrtoint ptr %EventQueueWriteIndex to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %EventQueueWriteIndex, align 8
  %34 = add i32 %33, 1
  %conv35 = and i32 %34, 15
  %EventQueueReadIndex = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 22
  %35 = ptrtoint ptr %EventQueueReadIndex to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %EventQueueReadIndex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35, i32 %36)
  %cmp37.not = icmp eq i32 %conv35, %36
  br i1 %cmp37.not, label %do.end47, label %if.then39

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx41 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 16, i32 %33
  %37 = call ptr @memcpy(ptr %arrayidx41, ptr %29, i32 16)
  %38 = ptrtoint ptr %EventQueueWriteIndex to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv35, ptr %EventQueueWriteIndex, align 8
  br label %if.end49

do.end47:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52) #10
  %EventQueueOverflowCount = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 17
  %39 = ptrtoint ptr %EventQueueOverflowCount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %EventQueueOverflowCount, align 4
  %add48 = add i32 %40, 1
  store i32 %add48, ptr %EventQueueOverflowCount, align 4
  %EventQueueOverflowFlag = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 18
  %41 = ptrtoint ptr %EventQueueOverflowFlag to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %EventQueueOverflowFlag, align 8
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %if.then39
  %42 = ptrtoint ptr %EventBuffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %EventBuffer, align 4
  %EventStatus51 = getelementptr inbounds %struct.EVENT_BUFFER, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %EventStatus51 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %EventStatus51, align 1
  %46 = and i8 %45, 127
  store i8 %46, ptr %EventStatus51, align 1
  %state.i = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 19, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %event_tasklet = getelementptr inbounds %struct.ngene, ptr %dev_id, i32 0, i32 19
  tail call void @__tasklet_schedule(ptr noundef %event_tasklet) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then.i, %if.end49.if.end55_crit_edge, %if.end29.if.end55_crit_edge
  %state_lock = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 4, i32 31
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #7
  %nextBuffer = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 4, i32 23
  %47 = ptrtoint ptr %nextBuffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nextBuffer, align 4
  %tobool61.not = icmp eq ptr %48, null
  br i1 %tobool61.not, label %if.end55.if.end82_crit_edge, label %if.then62

if.end55.if.end82_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then62:                                        ; preds = %if.end55
  %Flags = getelementptr inbounds %struct.BUFFER_HEADER, ptr %48, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %Flags, align 1
  %51 = and i8 %50, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %51)
  %cmp68 = icmp eq i8 %51, -128
  br i1 %cmp68, label %if.then70, label %if.then62.if.end82_crit_edge

if.then62.if.end82_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then70:                                        ; preds = %if.then62
  %or = or i8 %50, 64
  %52 = ptrtoint ptr %Flags to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %or, ptr %Flags, align 1
  %state.i136 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 4, i32 22, i32 1
  %call.i137 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.then.i139, label %if.then70.if.end82_crit_edge

if.then70.if.end82_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then.i139:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %demux_tasklet = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 4, i32 22
  tail call void @__tasklet_schedule(ptr noundef %demux_tasklet) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then.i139, %if.then70.if.end82_crit_edge, %if.then62.if.end82_crit_edge, %if.end55.if.end82_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #7
  %state_lock.1 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 3, i32 31
  tail call void @_raw_spin_lock(ptr noundef %state_lock.1) #7
  %nextBuffer.1 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 3, i32 23
  %53 = ptrtoint ptr %nextBuffer.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nextBuffer.1, align 4
  %tobool61.not.1 = icmp eq ptr %54, null
  br i1 %tobool61.not.1, label %if.end82.if.end82.1_crit_edge, label %if.then62.1

if.end82.if.end82.1_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.1

if.then62.1:                                      ; preds = %if.end82
  %Flags.1 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %54, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %Flags.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %Flags.1, align 1
  %57 = and i8 %56, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %57)
  %cmp68.1 = icmp eq i8 %57, -128
  br i1 %cmp68.1, label %if.then70.1, label %if.then62.1.if.end82.1_crit_edge

if.then62.1.if.end82.1_crit_edge:                 ; preds = %if.then62.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.1

if.then70.1:                                      ; preds = %if.then62.1
  %or.1 = or i8 %56, 64
  %58 = ptrtoint ptr %Flags.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %or.1, ptr %Flags.1, align 1
  %state.i136.1 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 3, i32 22, i32 1
  %call.i137.1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i136.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.1)
  %tobool.not.i138.1 = icmp eq i32 %call.i137.1, 0
  br i1 %tobool.not.i138.1, label %if.then.i139.1, label %if.then70.1.if.end82.1_crit_edge

if.then70.1.if.end82.1_crit_edge:                 ; preds = %if.then70.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.1

if.then.i139.1:                                   ; preds = %if.then70.1
  call void @__sanitizer_cov_trace_pc() #9
  %demux_tasklet.1 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 3, i32 22
  tail call void @__tasklet_schedule(ptr noundef %demux_tasklet.1) #7
  br label %if.end82.1

if.end82.1:                                       ; preds = %if.then.i139.1, %if.then70.1.if.end82.1_crit_edge, %if.then62.1.if.end82.1_crit_edge, %if.end82.if.end82.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.1) #7
  %state_lock.2 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 2, i32 31
  tail call void @_raw_spin_lock(ptr noundef %state_lock.2) #7
  %nextBuffer.2 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 2, i32 23
  %59 = ptrtoint ptr %nextBuffer.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nextBuffer.2, align 4
  %tobool61.not.2 = icmp eq ptr %60, null
  br i1 %tobool61.not.2, label %if.end82.1.if.end82.2_crit_edge, label %if.then62.2

if.end82.1.if.end82.2_crit_edge:                  ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.2

if.then62.2:                                      ; preds = %if.end82.1
  %Flags.2 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %60, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %Flags.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %Flags.2, align 1
  %63 = and i8 %62, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %63)
  %cmp68.2 = icmp eq i8 %63, -128
  br i1 %cmp68.2, label %if.then70.2, label %if.then62.2.if.end82.2_crit_edge

if.then62.2.if.end82.2_crit_edge:                 ; preds = %if.then62.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.2

if.then70.2:                                      ; preds = %if.then62.2
  %or.2 = or i8 %62, 64
  %64 = ptrtoint ptr %Flags.2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or.2, ptr %Flags.2, align 1
  %state.i136.2 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 2, i32 22, i32 1
  %call.i137.2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i136.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.2)
  %tobool.not.i138.2 = icmp eq i32 %call.i137.2, 0
  br i1 %tobool.not.i138.2, label %if.then.i139.2, label %if.then70.2.if.end82.2_crit_edge

if.then70.2.if.end82.2_crit_edge:                 ; preds = %if.then70.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.2

if.then.i139.2:                                   ; preds = %if.then70.2
  call void @__sanitizer_cov_trace_pc() #9
  %demux_tasklet.2 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 2, i32 22
  tail call void @__tasklet_schedule(ptr noundef %demux_tasklet.2) #7
  br label %if.end82.2

if.end82.2:                                       ; preds = %if.then.i139.2, %if.then70.2.if.end82.2_crit_edge, %if.then62.2.if.end82.2_crit_edge, %if.end82.1.if.end82.2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.2) #7
  %state_lock.3 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 1, i32 31
  tail call void @_raw_spin_lock(ptr noundef %state_lock.3) #7
  %nextBuffer.3 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 1, i32 23
  %65 = ptrtoint ptr %nextBuffer.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nextBuffer.3, align 4
  %tobool61.not.3 = icmp eq ptr %66, null
  br i1 %tobool61.not.3, label %if.end82.2.if.end82.3_crit_edge, label %if.then62.3

if.end82.2.if.end82.3_crit_edge:                  ; preds = %if.end82.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.3

if.then62.3:                                      ; preds = %if.end82.2
  %Flags.3 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %66, i32 0, i32 1, i32 3
  %67 = ptrtoint ptr %Flags.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %Flags.3, align 1
  %69 = and i8 %68, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %69)
  %cmp68.3 = icmp eq i8 %69, -128
  br i1 %cmp68.3, label %if.then70.3, label %if.then62.3.if.end82.3_crit_edge

if.then62.3.if.end82.3_crit_edge:                 ; preds = %if.then62.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.3

if.then70.3:                                      ; preds = %if.then62.3
  %or.3 = or i8 %68, 64
  %70 = ptrtoint ptr %Flags.3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or.3, ptr %Flags.3, align 1
  %state.i136.3 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 1, i32 22, i32 1
  %call.i137.3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i136.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.3)
  %tobool.not.i138.3 = icmp eq i32 %call.i137.3, 0
  br i1 %tobool.not.i138.3, label %if.then.i139.3, label %if.then70.3.if.end82.3_crit_edge

if.then70.3.if.end82.3_crit_edge:                 ; preds = %if.then70.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.3

if.then.i139.3:                                   ; preds = %if.then70.3
  call void @__sanitizer_cov_trace_pc() #9
  %demux_tasklet.3 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 1, i32 22
  tail call void @__tasklet_schedule(ptr noundef %demux_tasklet.3) #7
  br label %if.end82.3

if.end82.3:                                       ; preds = %if.then.i139.3, %if.then70.3.if.end82.3_crit_edge, %if.then62.3.if.end82.3_crit_edge, %if.end82.2.if.end82.3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.3) #7
  %state_lock.4 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %state_lock.4) #7
  %nextBuffer.4 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 0, i32 23
  %71 = ptrtoint ptr %nextBuffer.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nextBuffer.4, align 4
  %tobool61.not.4 = icmp eq ptr %72, null
  br i1 %tobool61.not.4, label %if.end82.3.if.end82.4_crit_edge, label %if.then62.4

if.end82.3.if.end82.4_crit_edge:                  ; preds = %if.end82.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.4

if.then62.4:                                      ; preds = %if.end82.3
  %Flags.4 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %72, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %Flags.4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %Flags.4, align 1
  %75 = and i8 %74, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %75)
  %cmp68.4 = icmp eq i8 %75, -128
  br i1 %cmp68.4, label %if.then70.4, label %if.then62.4.if.end82.4_crit_edge

if.then62.4.if.end82.4_crit_edge:                 ; preds = %if.then62.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.4

if.then70.4:                                      ; preds = %if.then62.4
  %or.4 = or i8 %74, 64
  %76 = ptrtoint ptr %Flags.4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %or.4, ptr %Flags.4, align 1
  %state.i136.4 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 0, i32 22, i32 1
  %call.i137.4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i136.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.4)
  %tobool.not.i138.4 = icmp eq i32 %call.i137.4, 0
  br i1 %tobool.not.i138.4, label %if.then.i139.4, label %if.then70.4.if.end82.4_crit_edge

if.then70.4.if.end82.4_crit_edge:                 ; preds = %if.then70.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.4

if.then.i139.4:                                   ; preds = %if.then70.4
  call void @__sanitizer_cov_trace_pc() #9
  %demux_tasklet.4 = getelementptr %struct.ngene, ptr %dev_id, i32 0, i32 34, i32 0, i32 22
  tail call void @__tasklet_schedule(ptr noundef %demux_tasklet.4) #7
  br label %if.end82.4

if.end82.4:                                       ; preds = %if.then.i139.4, %if.then70.4.if.end82.4_crit_edge, %if.then62.4.if.end82.4_crit_edge, %if.end82.3.if.end82.4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock.4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end82.4, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.end82.4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_i2c_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -324
  %EventQueueReadIndex = getelementptr i8, ptr %t, i32 32
  %EventQueueWriteIndex = getelementptr i8, ptr %t, i32 28
  %0 = ptrtoint ptr %EventQueueReadIndex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %EventQueueReadIndex, align 4
  %2 = ptrtoint ptr %EventQueueWriteIndex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %EventQueueWriteIndex, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not32 = icmp eq i32 %1, %3
  br i1 %cmp.not32, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %EventQueue = getelementptr i8, ptr %t, i32 -264
  %TxEventNotify = getelementptr i8, ptr %t, i32 25448
  %RxEventNotify = getelementptr i8, ptr %t, i32 25452
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %14, %if.end16.while.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.EVENT_BUFFER], ptr %EventQueue, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %Event.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %Event.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 5
  %6 = ptrtoint ptr %Event.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %Event.sroa.7.0.copyload = load i8, ptr %Event.sroa.7.0.arrayidx.sroa_idx, align 1
  %Event.sroa.10.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 6
  %7 = ptrtoint ptr %Event.sroa.10.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %Event.sroa.10.0.copyload = load i8, ptr %Event.sroa.10.0.arrayidx.sroa_idx, align 2
  %add = add i32 %4, 1
  %and = and i32 %add, 15
  %8 = ptrtoint ptr %EventQueueReadIndex to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %EventQueueReadIndex, align 4
  %conv = zext i8 %Event.sroa.7.0.copyload to i32
  %and4 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = ptrtoint ptr %TxEventNotify to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %TxEventNotify, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %add.ptr, i32 noundef %Event.sroa.0.0.copyload) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %land.lhs.true11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.end
  %11 = ptrtoint ptr %RxEventNotify to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %RxEventNotify, align 8
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end16_crit_edge, label %if.then13

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %12(ptr noundef %add.ptr, i32 noundef %Event.sroa.0.0.copyload, i8 noundef zeroext %Event.sroa.10.0.copyload) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %13 = ptrtoint ptr %EventQueueReadIndex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %EventQueueReadIndex, align 4
  %15 = ptrtoint ptr %EventQueueWriteIndex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %EventQueueWriteIndex, align 8
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_port_has_cxd2099(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @demux_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4180
  %dev = getelementptr i8, ptr %t, i32 -1884
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %nextBuffer = getelementptr i8, ptr %t, i32 24
  %4 = ptrtoint ptr %nextBuffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nextBuffer, align 4
  %state_lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #7
  %Flags174 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %Flags174 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Flags174, align 1
  %conv175 = zext i8 %7 to i32
  %and176 = and i32 %conv175, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool.not177 = icmp eq i32 %and176, 0
  br i1 %tobool.not177, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mode = getelementptr i8, ptr %t, i32 -1872
  %pBufferExchange = getelementptr i8, ptr %t, i32 40
  %DataFormatFlags = getelementptr i8, ptr %t, i32 284
  %Capture1Length = getelementptr i8, ptr %t, i32 104
  %HWState28 = getelementptr i8, ptr %t, i32 32
  %AudioDTOUpdated = getelementptr i8, ptr %t, i32 288
  %AudioDTOValue = getelementptr i8, ptr %t, i32 292
  %pBufferExchange2 = getelementptr i8, ptr %t, i32 44
  %Capture2Length = getelementptr i8, ptr %t, i32 108
  br label %while.body

while.body:                                       ; preds = %if.end105.while.body_crit_edge, %while.body.lr.ph
  %conv186 = phi i32 [ %conv175, %while.body.lr.ph ], [ %conv, %if.end105.while.body_crit_edge ]
  %8 = phi i8 [ %7, %while.body.lr.ph ], [ %67, %if.end105.while.body_crit_edge ]
  %Flags183 = phi ptr [ %Flags174, %while.body.lr.ph ], [ %Flags, %if.end105.while.body_crit_edge ]
  %Cur.0178 = phi ptr [ %5, %while.body.lr.ph ], [ %65, %if.end105.while.body_crit_edge ]
  %SR182 = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0178, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %and2 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else53, label %if.then

if.then:                                          ; preds = %while.body
  %11 = ptrtoint ptr %pBufferExchange to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pBufferExchange, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end, label %if.then13

if.then13:                                        ; preds = %if.then
  %13 = ptrtoint ptr %DataFormatFlags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DataFormatFlags, align 8
  %and9 = lshr i32 %conv186, 2
  %15 = and i32 %and9, 8
  %16 = or i32 %14, %15
  %Buffer1 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0178, i32 0, i32 2
  %17 = ptrtoint ptr %Buffer1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %Buffer1, align 4
  %19 = ptrtoint ptr %Capture1Length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %Capture1Length, align 4
  %21 = ptrtoint ptr %SR182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %SR182, align 4
  %call = tail call ptr %12(ptr noundef %add.ptr, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %16) #7
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  %23 = ptrtoint ptr %HWState28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %HWState28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %if.then18.while.end.sink.split_crit_edge, label %if.then18.if.end42_crit_edge

if.then18.if.end42_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then18.while.end.sink.split_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.sink.split

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %HWState28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %HWState28, align 4
  br label %if.end42

do.end:                                           ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.80) #10
  %26 = ptrtoint ptr %HWState28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %HWState28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp32 = icmp eq i32 %27, 2
  br i1 %cmp32, label %do.end.while.end.sink.split_crit_edge, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end.while.end.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.sink.split

if.end42:                                         ; preds = %do.end.if.end42_crit_edge, %if.else, %if.then18.if.end42_crit_edge
  %28 = ptrtoint ptr %AudioDTOUpdated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %AudioDTOUpdated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end42.if.end105_crit_edge, label %do.end47

if.end42.if.end105_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %AudioDTOValue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %AudioDTOValue, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.83, i32 noundef %31) #10
  %32 = ptrtoint ptr %AudioDTOValue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %AudioDTOValue, align 8
  %DTOUpdate = getelementptr inbounds %struct.BUFFER_HEADER, ptr %Cur.0178, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %DTOUpdate to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %DTOUpdate, align 4
  %35 = ptrtoint ptr %AudioDTOUpdated to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %AudioDTOUpdated, align 4
  br label %if.end105

if.else53:                                        ; preds = %while.body
  %36 = ptrtoint ptr %HWState28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %HWState28, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %37, label %if.then101 [
    i32 2, label %if.then57
    i32 0, label %if.else53.if.end105_crit_edge
  ]

if.else53.if.end105_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then57:                                        ; preds = %if.else53
  %39 = ptrtoint ptr %DataFormatFlags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %DataFormatFlags, align 8
  %41 = ptrtoint ptr %pBufferExchange to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pBufferExchange, align 4
  %43 = ptrtoint ptr %pBufferExchange2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pBufferExchange2, align 8
  %and65 = and i32 %conv186, 1
  %45 = lshr i8 %8, 2
  %46 = and i8 %45, 8
  %47 = zext i8 %46 to i32
  %48 = or i32 %and65, %47
  %49 = or i32 %48, %40
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  %tobool80.not = icmp eq ptr %42, null
  br i1 %tobool80.not, label %if.then57.if.end88_crit_edge, label %if.then81

if.then57.if.end88_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then81:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %Buffer182 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0178, i32 0, i32 2
  %50 = ptrtoint ptr %Buffer182 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %Buffer182, align 4
  %52 = ptrtoint ptr %Capture1Length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %Capture1Length, align 4
  %54 = ptrtoint ptr %SR182 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %SR182, align 4
  %call87 = tail call ptr %42(ptr noundef %add.ptr, ptr noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %49) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.then57.if.end88_crit_edge
  %tobool89.not = icmp eq ptr %44, null
  br i1 %tobool89.not, label %if.end88.if.end95_crit_edge, label %if.then90

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %Buffer2 = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0178, i32 0, i32 4
  %56 = ptrtoint ptr %Buffer2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %Buffer2, align 4
  %58 = ptrtoint ptr %Capture2Length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Capture2Length, align 8
  %60 = ptrtoint ptr %SR182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %SR182, align 4
  %call94 = tail call ptr %44(ptr noundef %add.ptr, ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %49) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end88.if.end95_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #7
  br label %if.end105

if.then101:                                       ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %HWState28 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %HWState28, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.end95, %if.else53.if.end105_crit_edge, %do.end47, %if.end42.if.end105_crit_edge
  %63 = ptrtoint ptr %Flags183 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %Flags183, align 1
  %Next = getelementptr inbounds %struct.SBufferHeader, ptr %Cur.0178, i32 0, i32 1
  %64 = ptrtoint ptr %Next to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %Next, align 4
  %Flags = getelementptr inbounds %struct.BUFFER_HEADER, ptr %65, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %Flags, align 1
  %conv = zext i8 %67 to i32
  %and = and i32 %conv, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end105.while.end_crit_edge, label %if.end105.while.body_crit_edge

if.end105.while.body_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end105.while.end_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end.sink.split:                             ; preds = %do.end.while.end.sink.split_crit_edge, %if.then18.while.end.sink.split_crit_edge
  %68 = ptrtoint ptr %Flags183 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %Flags183, align 1
  %70 = and i8 %69, -65
  store i8 %70, ptr %Flags183, align 1
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end105.while.end_crit_edge, %entry.while.end_crit_edge
  %Cur.0172 = phi ptr [ %5, %entry.while.end_crit_edge ], [ %Cur.0178, %while.end.sink.split ], [ %65, %if.end105.while.end_crit_edge ]
  %71 = ptrtoint ptr %nextBuffer to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %Cur.0172, ptr %nextBuffer, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @my_dvb_dmx_ts_card_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_start_feed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_stop_feed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @my_dvb_dmxdev_ts_card_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !190, !191, !192, !194, !196, !198, !199, !200, !201, !203, !204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @__param_one_adapter, !1, !"__param_one_adapter", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_one_adaptertype383, !1, !"__UNIQUE_ID_one_adaptertype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_one_adapter384, !4, !"__UNIQUE_ID_one_adapter384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 29, i32 1}
!5 = !{ptr @__param_shutdown_workaround, !6, !"__param_shutdown_workaround", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_shutdown_workaroundtype385, !6, !"__UNIQUE_ID_shutdown_workaroundtype385", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_shutdown_workaround386, !9, !"__UNIQUE_ID_shutdown_workaround386", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 33, i32 1}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype387, !11, !"__UNIQUE_ID_debugtype387", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug388, !14, !"__UNIQUE_ID_debug388", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 37, i32 1}
!15 = !{ptr @__param_adapter_nr, !16, !"__param_adapter_nr", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_adapter_nrtype389, !16, !"__UNIQUE_ID_adapter_nrtype389", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_adapter_nr390, !16, !"__UNIQUE_ID_adapter_nr390", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 697, i32 4}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @set_transfer._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @set_transfer._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 702, i32 4}
!29 = !{ptr @set_transfer._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @set_transfer._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 742, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @set_transfer._entry.8, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @set_transfer._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1636, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ngene_shutdown._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ngene_shutdown._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1676, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ngene_probe._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ngene_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @one_adapter, !47, !"one_adapter", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 27, i32 12}
!48 = !{ptr @shutdown_workaround, !49, !"shutdown_workaround", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 31, i32 12}
!50 = !{ptr @debug, !51, !"debug", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 35, i32 12}
!52 = !{ptr @__param_str_one_adapter, !1, !"__param_str_one_adapter", i1 false, i1 false}
!53 = !{ptr @__param_str_shutdown_workaround, !6, !"__param_str_shutdown_workaround", i1 false, i1 false}
!54 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!55 = !{ptr @__param_str_adapter_nr, !16, !"__param_str_adapter_nr", i1 false, i1 false}
!56 = !{ptr @__param_arr_adapter_nr, !16, !"__param_arr_adapter_nr", i1 false, i1 false}
!57 = !{ptr @adapter_nr, !16, !"adapter_nr", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 304, i32 3}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ngene_command_mutex._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ngene_command_mutex._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 242, i32 2}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dump_command_io._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @dump_command_io._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 245, i32 2}
!70 = !{ptr @dump_command_io._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @dump_command_io._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 248, i32 2}
!74 = !{ptr @dump_command_io._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dump_command_io._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 251, i32 2}
!78 = !{ptr @dump_command_io._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dump_command_io._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 563, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ngene_command_stream_control.__UNIQUE_ID_ddebug391, !81, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!85 = distinct !{null, !86, !"SPDIFConfiguration", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 449, i32 11}
!87 = !{ptr @I2SConfiguration, !88, !"I2SConfiguration", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 444, i32 11}
!89 = distinct !{null, !90, !"TS_I2SOutConfiguration", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 457, i32 11}
!91 = distinct !{null, !92, !"TS_I2SConfiguration", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 455, i32 11}
!93 = !{ptr @TSFeatureDecoderSetup, !94, !"TSFeatureDecoderSetup", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 435, i32 11}
!95 = !{ptr @ITUDecoderSetup, !96, !"ITUDecoderSetup", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 459, i32 11}
!97 = distinct !{null, !98, !"ITUFeatureDecoderSetup", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 477, i32 11}
!99 = !{ptr @RingBufferSizes, !100, !"RingBufferSizes", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1013, i32 12}
!101 = !{ptr @Buffer1Sizes, !102, !"Buffer1Sizes", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1021, i32 12}
!103 = !{ptr @Buffer2Sizes, !104, !"Buffer2Sizes", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1029, i32 12}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1318, i32 20}
!107 = !{ptr @ngene_start.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1323, i32 2}
!109 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ngene_start.__key.34, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1324, i32 2}
!112 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ngene_start.__key.36, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1325, i32 2}
!115 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ngene_start.__key.38, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1326, i32 2}
!118 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ngene_start.__key.40, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1327, i32 2}
!121 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ngene_start.__key.42, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1329, i32 2}
!124 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ngene_start.__key.44, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1330, i32 2}
!127 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ngene_start.__key.46, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1332, i32 3}
!130 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1351, i32 4}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ngene_start._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ngene_start._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1201, i32 2}
!138 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ngene_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @ngene_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 202, i32 4}
!143 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @irq_handler._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @irq_handler._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @sema_init.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1220, i32 13}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1225, i32 13}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1230, i32 13}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1235, i32 13}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1240, i32 3}
!162 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ngene_load_firm._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ngene_load_firm._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1241, i32 3}
!167 = !{ptr @ngene_load_firm._entry.62, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ngene_load_firm._entry_ptr.64, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1248, i32 3}
!171 = !{ptr @ngene_load_firm._entry.65, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ngene_load_firm._entry_ptr.67, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1251, i32 3}
!175 = !{ptr @ngene_load_firm._entry.68, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ngene_load_firm._entry_ptr.70, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1572, i32 3}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cxd_attach.__UNIQUE_ID_ddebug392, !178, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1577, i32 3}
!183 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @cxd_attach._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @cxd_attach._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.75, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1582, i32 28}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1593, i32 2}
!190 = !{ptr @cxd_attach._entry.76, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @cxd_attach._entry_ptr.78, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @cxd_cfgtmpl, !193, !"cxd_cfgtmpl", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1554, i32 33}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 1519, i32 43}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 113, i32 5}
!198 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @demux_tasklet._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @demux_tasklet._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/ngene/ngene-core.c", i32 120, i32 5}
!203 = !{ptr @demux_tasklet._entry.82, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @demux_tasklet._entry_ptr.84, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{i64 5340938}
!215 = !{i64 2158159553}
!216 = !{i64 2158159870}
!217 = !{i64 5340520}
!218 = !{i64 2158160385}
!219 = !{i64 2158160900}
!220 = !{i64 2158161415}
!221 = !{i64 2158161930}
!222 = !{i64 2158162445}
!223 = !{i64 2158162992}
!224 = !{i64 2158163573}
!225 = !{i64 2158164163}
!226 = !{i64 2158164784}
!227 = !{i64 2158165398}
!228 = !{i64 2158166019}
!229 = !{i64 2158166766}
!230 = !{i64 2148995620, i64 2148995625, i64 2148995638, i64 2148995682, i64 2148995716, i64 2148995737}
!231 = !{i64 2158205778}
!232 = !{i8 0, i8 2}
!233 = !{i64 2158190990}
!234 = !{i64 2158191505}
!235 = !{i64 2158192020}
!236 = !{i64 2158192535}
!237 = !{i64 2158193050}
!238 = !{i64 2158193565}
!239 = !{i64 2158194080}
!240 = !{!"auto-init"}
!241 = !{i64 2158180982}
!242 = !{i64 2158181808}
!243 = !{i64 2158182358}
!244 = !{i64 2158195998}
!245 = !{i64 2158196502}
!246 = !{i64 2158197017}
!247 = !{i64 2158199094}
!248 = !{i64 2158199609}
!249 = !{i64 2158149162}
!250 = !{i64 2158149434}
!251 = !{i64 2158150011}
