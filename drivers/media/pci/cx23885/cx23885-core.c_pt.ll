; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-core.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_subid = type { i16, i16, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.141, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.141 = type { ptr }
%struct.cx23885_riscmem = type { i32, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cx23885_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx23885_riscmem, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description385 = internal constant [54 x i8] c"cx23885.description=Driver for cx23885 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [47 x i8] c"cx23885.author=Steven Toth <stoth@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [47 x i8] c"cx23885.file=drivers/media/pci/cx23885/cx23885\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [20 x i8] c"cx23885.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version389 = internal constant [22 x i8] c"cx23885.version=0.0.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx23885\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_dma_reset_workaround = internal constant [29 x i8] c"cx23885.dma_reset_workaround\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dma_reset_workaround = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_dma_reset_workaround = internal constant %struct.kernel_param { ptr @__param_str_dma_reset_workaround, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dma_reset_workaround } }, section "__param", align 4
@__UNIQUE_ID_dma_reset_workaroundtype390 = internal constant [42 x i8] c"cx23885.parmtype=dma_reset_workaround:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_reset_workaround391 = internal constant [125 x i8] c"cx23885.parm=dma_reset_workaround:periodic RiSC dma engine reset; 0-force disable, 1-driver detect (default), 2-force enable\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"cx23885.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype392 = internal constant [27 x i8] c"cx23885.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug393 = internal constant [41 x i8] c"cx23885.parm=debug:enable debug messages\00", section ".modinfo", align 1
@__param_str_card = internal constant [13 x i8] c"cx23885.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype394 = internal constant [35 x i8] c"cx23885.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card395 = internal constant [28 x i8] c"cx23885.parm=card:card type\00", section ".modinfo", align 1
@cx23885_sram_channel_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx23885: %s: %s() Erasing channel [%s]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx23885_sram_channel_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx23885/cx23885-core.c\00", [55 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_setup._entry_ptr = internal global ptr @cx23885_sram_channel_setup._entry, section ".printk_index", align 4
@cx23885_sram_channel_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx23885: %s: %s() Configuring channel [%s]\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_setup._entry_ptr.8 = internal global ptr @cx23885_sram_channel_setup._entry.6, section ".printk_index", align 4
@cx23885_sram_channel_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx23885: %s: %s() 0x%08x <- 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_setup._entry_ptr.11 = internal global ptr @cx23885_sram_channel_setup._entry.9, section ".printk_index", align 4
@cx23885_sram_channel_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx23885: %s: [bridge %d] sram setup %s: bpl=%d lines=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_setup._entry_ptr.14 = internal global ptr @cx23885_sram_channel_setup._entry.12, section ".printk_index", align 4
@cx23885_sram_channel_dump.name = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init risc lo\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init risc hi\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdt base\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdt size\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iq base\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iq size\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"risc pc lo\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"risc pc hi\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iq wr ptr\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iq rd ptr\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdt current\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci target lo\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci target hi\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"line / byte\00", [20 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014cx23885: %s: %s - dma channel status dump\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx23885_sram_channel_dump\00", [38 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr = internal global ptr @cx23885_sram_channel_dump._entry, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014cx23885: %s:   cmds: %-15s: 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.33 = internal global ptr @cx23885_sram_channel_dump._entry.31, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.5, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014cx23885: %s:   risc%d: \00", [38 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.36 = internal global ptr @cx23885_sram_channel_dump._entry.34, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.5, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014cx23885: %s:   (0x%08x) iq %x: \00", [62 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.39 = internal global ptr @cx23885_sram_channel_dump._entry.37, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.5, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014cx23885: %s:   iq %x: 0x%08x [ arg #%d ]\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.42 = internal global ptr @cx23885_sram_channel_dump._entry.40, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.5, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014cx23885: %s: fifo: 0x%08x -> 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.45 = internal global ptr @cx23885_sram_channel_dump._entry.43, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.5, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014cx23885: %s: ctrl: 0x%08x -> 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.48 = internal global ptr @cx23885_sram_channel_dump._entry.46, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.5, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014cx23885: %s:   ptr1_reg: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.51 = internal global ptr @cx23885_sram_channel_dump._entry.49, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.30, ptr @.str.5, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014cx23885: %s:   ptr2_reg: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.54 = internal global ptr @cx23885_sram_channel_dump._entry.52, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.30, ptr @.str.5, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014cx23885: %s:   cnt1_reg: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.57 = internal global ptr @cx23885_sram_channel_dump._entry.55, section ".printk_index", align 4
@cx23885_sram_channel_dump._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.30, ptr @.str.5, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014cx23885: %s:   cnt2_reg: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_sram_channel_dump._entry_ptr.60 = internal global ptr @cx23885_sram_channel_dump._entry.58, section ".printk_index", align 4
@cx23885_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s: %s() w: %d, h: %d, f: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_start_dma\00", [46 x i8] zeroinitializer }, align 32
@cx23885_start_dma._entry_ptr = internal global ptr @cx23885_start_dma._entry, section ".printk_index", align 4
@cx23885_boards = external dso_local local_unnamed_addr global [0 x %struct.cx23885_board], align 4
@cx23885_start_dma._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cx23885: %s() Unsupported .portb/c (0x%08x)/(0x%08x)\0A\00", [40 x i8] zeroinitializer }, align 32
@cx23885_start_dma._entry_ptr.65 = internal global ptr @cx23885_start_dma._entry.63, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx23885_start_dma._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx23885: %s: %s() enabling TS int's and DMA\0A\00", [49 x i8] zeroinitializer }, align 32
@cx23885_start_dma._entry_ptr.68 = internal global ptr @cx23885_start_dma._entry.66, section ".printk_index", align 4
@cx23885_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017cx23885: %s: %s: %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx23885_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@cx23885_buf_prepare._entry_ptr = internal global ptr @cx23885_buf_prepare._entry, section ".printk_index", align 4
@cx23885_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx23885: %s: [%p/%d] %s - first active\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@cx23885_buf_queue._entry_ptr = internal global ptr @cx23885_buf_queue._entry, section ".printk_index", align 4
@cx23885_buf_queue._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.5, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx23885: %s: [%p/%d] %s - append to active\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23885_buf_queue._entry_ptr.75 = internal global ptr @cx23885_buf_queue._entry.73, section ".printk_index", align 4
@cx23885_cancel_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017cx23885: %s: %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_cancel_buffers\00", [41 x i8] zeroinitializer }, align 32
@cx23885_cancel_buffers._entry_ptr = internal global ptr @cx23885_cancel_buffers._entry, section ".printk_index", align 4
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cancel\00", [25 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx23885: %s: status: 0x%08x  mask: 0x%08x count: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx23885_irq_417\00", [16 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr = internal global ptr @cx23885_irq_417._entry, section ".printk_index", align 4
@cx23885_irq_417._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013cx23885: %s: V4L mpeg risc op code error, status = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.83 = internal global ptr @cx23885_irq_417._entry.81, section ".printk_index", align 4
@cx23885_irq_417._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx23885: %s:         VID_B_MSK_BAD_PKT\0A\00", [54 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.86 = internal global ptr @cx23885_irq_417._entry.84, section ".printk_index", align 4
@cx23885_irq_417._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.5, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx23885: %s:         VID_B_MSK_OPC_ERR\0A\00", [54 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.89 = internal global ptr @cx23885_irq_417._entry.87, section ".printk_index", align 4
@cx23885_irq_417._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.5, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx23885: %s:         VID_B_MSK_VBI_OPC_ERR\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.92 = internal global ptr @cx23885_irq_417._entry.90, section ".printk_index", align 4
@cx23885_irq_417._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.5, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017cx23885: %s:         VID_B_MSK_SYNC\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.95 = internal global ptr @cx23885_irq_417._entry.93, section ".printk_index", align 4
@cx23885_irq_417._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.80, ptr @.str.5, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx23885: %s:         VID_B_MSK_VBI_SYNC\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.98 = internal global ptr @cx23885_irq_417._entry.96, section ".printk_index", align 4
@cx23885_irq_417._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.80, ptr @.str.5, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cx23885: %s:         VID_B_MSK_OF\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.101 = internal global ptr @cx23885_irq_417._entry.99, section ".printk_index", align 4
@cx23885_irq_417._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.80, ptr @.str.5, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s:         VID_B_MSK_VBI_OF\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.104 = internal global ptr @cx23885_irq_417._entry.102, section ".printk_index", align 4
@cx23885_irq_417._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.80, ptr @.str.5, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s:         VID_B_MSK_RISCI1\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23885_irq_417._entry_ptr.107 = internal global ptr @cx23885_irq_417._entry.105, section ".printk_index", align 4
@cx23885_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cx23885: %s: Setting GPIO on encoder ports\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx23885_gpio_set\00", [47 x i8] zeroinitializer }, align 32
@cx23885_gpio_set._entry_ptr = internal global ptr @cx23885_gpio_set._entry, section ".printk_index", align 4
@cx23885_gpio_set._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.5, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016cx23885: %s: Unsupported\0A\00", [36 x i8] zeroinitializer }, align 32
@cx23885_gpio_set._entry_ptr.112 = internal global ptr @cx23885_gpio_set._entry.110, section ".printk_index", align 4
@cx23885_gpio_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.5, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013cx23885: %s: Clearing GPIO moving on encoder ports\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_gpio_clear\00", [45 x i8] zeroinitializer }, align 32
@cx23885_gpio_clear._entry_ptr = internal global ptr @cx23885_gpio_clear._entry, section ".printk_index", align 4
@cx23885_gpio_clear._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.114, ptr @.str.5, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23885_gpio_clear._entry_ptr.116 = internal global ptr @cx23885_gpio_clear._entry.115, section ".printk_index", align 4
@cx23885_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx23885: %s: Reading GPIO moving on encoder ports\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx23885_gpio_get\00", [47 x i8] zeroinitializer }, align 32
@cx23885_gpio_get._entry_ptr = internal global ptr @cx23885_gpio_get._entry, section ".printk_index", align 4
@cx23885_gpio_get._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.118, ptr @.str.5, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23885_gpio_get._entry_ptr.120 = internal global ptr @cx23885_gpio_get._entry.119, section ".printk_index", align 4
@cx23885_gpio_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.5, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx23885: %s: Enabling GPIO on encoder ports\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx23885_gpio_enable\00", [44 x i8] zeroinitializer }, align 32
@cx23885_gpio_enable._entry_ptr = internal global ptr @cx23885_gpio_enable._entry, section ".printk_index", align 4
@cx23885_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cx23885_pci_tbl, ptr @cx23885_initdev, ptr @cx23885_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cx23885__397_2267_cx23885_init6 = internal global ptr @cx23885_init, section ".initcall6.init", align 4
@__exitcall_cx23885_fini = internal global ptr @cx23885_fini, section ".exitcall.exit", align 4
@card = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@cx23885_risc_decode.instr = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr null, ptr @.str.123, ptr @.str.124, ptr null, ptr null, ptr @.str.125, ptr null, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"skip\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"writec\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jump\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"readc\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writerm\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writecm\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writecr\00", [24 x i8] zeroinitializer }, align 32
@cx23885_risc_decode.incr = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3, i32 3, i32 4, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@cx23885_risc_decode.bits = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resync\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cnt0\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cnt1\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"18\00", [29 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"19\00", [29 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"20\00", [29 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"21\00", [29 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"22\00", [29 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"23\00", [29 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq1\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq2\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eol\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sol\00", [28 x i8] zeroinitializer }, align 32
@cx23885_risc_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0170x%08x [ %s\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx23885_risc_decode\00", [44 x i8] zeroinitializer }, align 32
@cx23885_risc_decode._entry_ptr = internal global ptr @cx23885_risc_decode._entry, section ".printk_index", align 4
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@cx23885_risc_decode._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.150, ptr @.str.5, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@cx23885_risc_decode._entry_ptr.154 = internal global ptr @cx23885_risc_decode._entry.152, section ".printk_index", align 4
@cx23885_risc_decode._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.150, ptr @.str.5, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c count=%d ]\0A\00", [17 x i8] zeroinitializer }, align 32
@cx23885_risc_decode._entry_ptr.157 = internal global ptr @cx23885_risc_decode._entry.155, section ".printk_index", align 4
@cx23885_clear_bridge_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.5, i32 627, ptr @.str.160, ptr @.str.161 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dma in progress detected 0x%08x 0x%08x, clearing\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx23885_clear_bridge_error\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx23885_clear_bridge_error._entry_ptr = internal global ptr @cx23885_clear_bridge_error._entry, section ".printk_index", align 4
@cx23885_risc_disasm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.5, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cx23885: %s: risc disasm: %p [dma=0x%08lx]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx23885_risc_disasm\00", [44 x i8] zeroinitializer }, align 32
@cx23885_risc_disasm._entry_ptr = internal global ptr @cx23885_risc_disasm._entry, section ".printk_index", align 4
@cx23885_risc_disasm._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.5, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016cx23885: %s:   %04d: \00", [40 x i8] zeroinitializer }, align 32
@cx23885_risc_disasm._entry_ptr.166 = internal global ptr @cx23885_risc_disasm._entry.164, section ".printk_index", align 4
@cx23885_risc_disasm._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.5, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx23885: %s:   %04d: 0x%08x [ arg #%d ]\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_risc_disasm._entry_ptr.169 = internal global ptr @cx23885_risc_disasm._entry.167, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.5, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017cx23885: %s: %s() Register Dump\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx23885_tsport_reg_dump\00", [40 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr = internal global ptr @cx23885_tsport_reg_dump._entry, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.5, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() DEV_CNTRL2               0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.174 = internal global ptr @cx23885_tsport_reg_dump._entry.172, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.5, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() PCI_INT_MSK              0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.177 = internal global ptr @cx23885_tsport_reg_dump._entry.175, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.5, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() AUD_INT_INT_MSK          0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.180 = internal global ptr @cx23885_tsport_reg_dump._entry.178, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.5, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() AUD_INT_DMA_CTL          0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.183 = internal global ptr @cx23885_tsport_reg_dump._entry.181, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.171, ptr @.str.5, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() AUD_EXT_INT_MSK          0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.186 = internal global ptr @cx23885_tsport_reg_dump._entry.184, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.171, ptr @.str.5, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() AUD_EXT_DMA_CTL          0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.189 = internal global ptr @cx23885_tsport_reg_dump._entry.187, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.171, ptr @.str.5, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() PAD_CTRL                 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.192 = internal global ptr @cx23885_tsport_reg_dump._entry.190, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.171, ptr @.str.5, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() ALT_PIN_OUT_SEL          0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.195 = internal global ptr @cx23885_tsport_reg_dump._entry.193, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.171, ptr @.str.5, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: %s() GPIO2                    0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.198 = internal global ptr @cx23885_tsport_reg_dump._entry.196, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.171, ptr @.str.5, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() gpcnt(0x%08X)          0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.201 = internal global ptr @cx23885_tsport_reg_dump._entry.199, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.171, ptr @.str.5, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() gpcnt_ctl(0x%08X)      0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.204 = internal global ptr @cx23885_tsport_reg_dump._entry.202, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.171, ptr @.str.5, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() dma_ctl(0x%08X)        0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.207 = internal global ptr @cx23885_tsport_reg_dump._entry.205, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.171, ptr @.str.5, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() src_sel(0x%08X)        0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.210 = internal global ptr @cx23885_tsport_reg_dump._entry.208, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.171, ptr @.str.5, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() lngth(0x%08X)          0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.213 = internal global ptr @cx23885_tsport_reg_dump._entry.211, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.171, ptr @.str.5, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() hw_sop_ctrl(0x%08X)    0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.216 = internal global ptr @cx23885_tsport_reg_dump._entry.214, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.171, ptr @.str.5, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() gen_ctrl(0x%08X)       0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.219 = internal global ptr @cx23885_tsport_reg_dump._entry.217, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.171, ptr @.str.5, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() bd_pkt_status(0x%08X)  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.222 = internal global ptr @cx23885_tsport_reg_dump._entry.220, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.171, ptr @.str.5, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() sop_status(0x%08X)     0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.225 = internal global ptr @cx23885_tsport_reg_dump._entry.223, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.171, ptr @.str.5, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() fifo_ovfl_stat(0x%08X) 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.228 = internal global ptr @cx23885_tsport_reg_dump._entry.226, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.171, ptr @.str.5, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() vld_misc(0x%08X)       0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.231 = internal global ptr @cx23885_tsport_reg_dump._entry.229, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.171, ptr @.str.5, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() ts_clk_en(0x%08X)      0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.234 = internal global ptr @cx23885_tsport_reg_dump._entry.232, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.171, ptr @.str.5, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() ts_int_msk(0x%08X)     0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.237 = internal global ptr @cx23885_tsport_reg_dump._entry.235, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.171, ptr @.str.5, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() ts_int_status(0x%08X)  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.240 = internal global ptr @cx23885_tsport_reg_dump._entry.238, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.171, ptr @.str.5, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() PCI_INT_STAT           0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.243 = internal global ptr @cx23885_tsport_reg_dump._entry.241, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.171, ptr @.str.5, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() VID_B_INT_MSTAT        0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.246 = internal global ptr @cx23885_tsport_reg_dump._entry.244, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.171, ptr @.str.5, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() VID_B_INT_SSTAT        0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.249 = internal global ptr @cx23885_tsport_reg_dump._entry.247, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.171, ptr @.str.5, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() VID_C_INT_MSTAT        0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.252 = internal global ptr @cx23885_tsport_reg_dump._entry.250, section ".printk_index", align 4
@cx23885_tsport_reg_dump._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.171, ptr @.str.5, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: %s() VID_C_INT_SSTAT        0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_tsport_reg_dump._entry_ptr.255 = internal global ptr @cx23885_tsport_reg_dump._entry.253, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.256 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@cx23885_stop_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.257, ptr @.str.5, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx23885_stop_dma\00", [47 x i8] zeroinitializer }, align 32
@cx23885_stop_dma._entry_ptr = internal global ptr @cx23885_stop_dma._entry, section ".printk_index", align 4
@cx23885_stop_dma.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.257, ptr @.str.5, ptr @.str.258, i8 1, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delay=%d reg1=0x%08x reg2=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@do_cancel_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.5, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s: [%p/%d] %s - dma=0x%08lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_cancel_buffers\00", [46 x i8] zeroinitializer }, align 32
@do_cancel_buffers._entry_ptr = internal global ptr @do_cancel_buffers._entry, section ".printk_index", align 4
@cx23885_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.5, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx23885: %s: [%p/%d] wakeup reg=%d buf=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx23885_wakeup\00", [17 x i8] zeroinitializer }, align 32
@cx23885_wakeup._entry_ptr = internal global ptr @cx23885_wakeup._entry, section ".printk_index", align 4
@cx23885_wakeup._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.5, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23885_wakeup._entry_ptr.264 = internal global ptr @cx23885_wakeup._entry.263, section ".printk_index", align 4
@cx23885_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5361, i32 34898, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5361, i32 34944, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cx23885_initdev._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.265 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cx23885_core:2133:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@cx23885_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.5, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016cx23885: %s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx23885_initdev\00", [16 x i8] zeroinitializer }, align 32
@cx23885_initdev._entry_ptr = internal global ptr @cx23885_initdev._entry, section ".printk_index", align 4
@cx23885_initdev._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.5, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cx23885: %s/0: Oops: no 32bit PCI DMA ???\0A\00", [51 x i8] zeroinitializer }, align 32
@cx23885_initdev._entry_ptr.270 = internal global ptr @cx23885_initdev._entry.268, section ".printk_index", align 4
@cx23885_initdev._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.267, ptr @.str.5, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cx23885: %s: can't get IRQ %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_initdev._entry_ptr.273 = internal global ptr @cx23885_initdev._entry.271, section ".printk_index", align 4
@cx23885_v4l2_dev_notify_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.274 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&dev->cx25840_work)\00", [58 x i8] zeroinitializer }, align 32
@cx23885_v4l2_dev_notify_init.__key.275 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.276 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->ir_rx_work)\00", [60 x i8] zeroinitializer }, align 32
@cx23885_v4l2_dev_notify_init.__key.277 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.278 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->ir_tx_work)\00", [60 x i8] zeroinitializer }, align 32
@cx23885_dev_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.279 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->pci_irqmask_lock\00", [41 x i8] zeroinitializer }, align 32
@cx23885_dev_setup.__key.280 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.281 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@cx23885_dev_setup.__key.282 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.283 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@cx23885_dev_setup.__key.284 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.285 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->gpio_lock\00", [16 x i8] zeroinitializer }, align 32
@cx23885_devcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx23885[%d]\00", [20 x i8] zeroinitializer }, align 32
@cx23887_sram_channels = internal global { [9 x %struct.sram_channel], [116 x i8] } { [9 x %struct.sram_channel] [%struct.sram_channel { ptr @.str.318, i32 65536, i32 66992, i32 67504, i32 64, i32 10240, i32 1048576, i32 1048640, i32 1048704, i32 1048768, i32 0 }, %struct.sram_channel { ptr @.str.319, i32 65616, i32 67056, i32 67600, i32 12288, i32 4096, i32 1048580, i32 1048644, i32 1048708, i32 1048772, i32 0 }, %struct.sram_channel { ptr @.str.320, i32 65696, i32 67120, i32 67696, i32 20480, i32 4096, i32 1048584, i32 1048648, i32 1048712, i32 1048776, i32 0 }, %struct.sram_channel { ptr @.str.321, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048588, i32 1048652, i32 1048716, i32 1048780, i32 0 }, %struct.sram_channel { ptr @.str.322, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048592, i32 1048656, i32 1048720, i32 1048784, i32 0 }, %struct.sram_channel { ptr @.str.323, i32 65856, i32 67184, i32 67792, i32 24576, i32 4096, i32 1048592, i32 1048656, i32 1048720, i32 1048784, i32 0 }, %struct.sram_channel { ptr @.str.324, i32 65936, i32 67248, i32 67888, i32 28672, i32 4096, i32 1048596, i32 1048660, i32 1048724, i32 1048788, i32 0 }, %struct.sram_channel { ptr @.str.325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048600, i32 1048664, i32 1048728, i32 1048792, i32 0 }, %struct.sram_channel { ptr @.str.326, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048604, i32 1048668, i32 1048732, i32 1048796, i32 0 }], [116 x i8] zeroinitializer }, align 32
@cx23885_sram_channels = internal global { [9 x %struct.sram_channel], [116 x i8] } { [9 x %struct.sram_channel] [%struct.sram_channel { ptr @.str.318, i32 65536, i32 66432, i32 66752, i32 64, i32 10240, i32 1048576, i32 1048640, i32 1048704, i32 1048768, i32 0 }, %struct.sram_channel { ptr @.str.327, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048580, i32 1048644, i32 1048708, i32 1048772, i32 0 }, %struct.sram_channel { ptr @.str.320, i32 65696, i32 66560, i32 66944, i32 20480, i32 4096, i32 1048584, i32 1048648, i32 1048712, i32 1048776, i32 0 }, %struct.sram_channel { ptr @.str.321, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048588, i32 1048652, i32 1048716, i32 1048780, i32 0 }, %struct.sram_channel { ptr @.str.322, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048592, i32 1048656, i32 1048720, i32 1048784, i32 0 }, %struct.sram_channel { ptr @.str.323, i32 65856, i32 66624, i32 67040, i32 24576, i32 4096, i32 1048592, i32 1048656, i32 1048720, i32 1048784, i32 0 }, %struct.sram_channel { ptr @.str.324, i32 65936, i32 66688, i32 68096, i32 28672, i32 4096, i32 1048596, i32 1048660, i32 1048724, i32 1048788, i32 0 }, %struct.sram_channel { ptr @.str.325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048600, i32 1048664, i32 1048728, i32 1048792, i32 0 }, %struct.sram_channel { ptr @.str.326, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048604, i32 1048668, i32 1048732, i32 1048796, i32 0 }], [116 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.5, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017cx23885: %s: %s() Memory configured for PCIe bridge type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_dev_setup\00", [46 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr = internal global ptr @cx23885_dev_setup._entry, section ".printk_index", align 4
@cx23885_bcount = external dso_local local_unnamed_addr constant i32, align 4
@cx23885_idcount = external dso_local local_unnamed_addr constant i32, align 4
@cx23885_subids = external dso_local local_unnamed_addr global [0 x %struct.cx23885_subid], align 4
@cx23885_dev_setup._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.288, ptr @.str.5, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013cx23885: CORE %s No more PCIe resources for subsystem: %04x:%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.291 = internal global ptr @cx23885_dev_setup._entry.289, section ".printk_index", align 4
@cx23885_dev_setup._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.288, ptr @.str.5, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016cx23885: CORE %s: subsystem: %04x:%04x, board: %s [card=%d,%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.294 = internal global ptr @cx23885_dev_setup._entry.292, section ".printk_index", align 4
@.str.295 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insmod option\00", [18 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"autodetected\00", [19 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.288, ptr @.str.5, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017cx23885: %s: %s() tuner_type = 0x%x tuner_addr = 0x%x tuner_bus = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.299 = internal global ptr @cx23885_dev_setup._entry.297, section ".printk_index", align 4
@cx23885_dev_setup._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.288, ptr @.str.5, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx23885: %s: %s() radio_type = 0x%x radio_addr = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.302 = internal global ptr @cx23885_dev_setup._entry.300, section ".printk_index", align 4
@cx23885_dev_setup._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.288, ptr @.str.5, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cx23885: %s() Failed to register analog video adapters on VID_A\0A\00", [61 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.305 = internal global ptr @cx23885_dev_setup._entry.303, section ".printk_index", align 4
@cx23885_dev_setup._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.288, ptr @.str.5, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cx23885: %s() Failed to register dvb adapters on VID_B\0A\00", [38 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.308 = internal global ptr @cx23885_dev_setup._entry.306, section ".printk_index", align 4
@cx23885_dev_setup._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.288, ptr @.str.5, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cx23885: %s() Failed to register 417 on VID_B\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.311 = internal global ptr @cx23885_dev_setup._entry.309, section ".printk_index", align 4
@cx23885_dev_setup._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.288, ptr @.str.5, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cx23885: %s() Failed to register dvb on VID_C\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.314 = internal global ptr @cx23885_dev_setup._entry.312, section ".printk_index", align 4
@cx23885_dev_setup._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.288, ptr @.str.5, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cx23885: %s() Failed to register 417 on VID_C\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23885_dev_setup._entry_ptr.317 = internal global ptr @cx23885_dev_setup._entry.315, section ".printk_index", align 4
@.str.318 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VID A\00", [26 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VID A (VBI)\00", [20 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TS1 B\00", [26 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch4\00", [28 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch5\00", [28 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TS2 C\00", [26 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TV Audio\00", [23 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch8\00", [28 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch9\00", [28 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ch2\00", [28 x i8] zeroinitializer }, align 32
@cx23885_init_tsport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.5, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017cx23885: %s: %s(portno=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx23885_init_tsport\00", [44 x i8] zeroinitializer }, align 32
@cx23885_init_tsport._entry_ptr = internal global ptr @cx23885_init_tsport._entry, section ".printk_index", align 4
@cx23885_init_tsport.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.330 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&port->slock\00", [19 x i8] zeroinitializer }, align 32
@cx23885_init_tsport.__key.331 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.332 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&port->frontends.lock\00", [42 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str.5, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx23885: %s: can't get MMIO memory @ 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_resources\00", [18 x i8] zeroinitializer }, align 32
@get_resources._entry_ptr = internal global ptr @get_resources._entry, section ".printk_index", align 4
@cx23885_pci_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.335, ptr @.str.5, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_pci_quirks\00", [45 x i8] zeroinitializer }, align 32
@cx23885_pci_quirks._entry_ptr = internal global ptr @cx23885_pci_quirks._entry, section ".printk_index", align 4
@cx23885_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.336, ptr @.str.5, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx23885_reset\00", [18 x i8] zeroinitializer }, align 32
@cx23885_reset._entry_ptr = internal global ptr @cx23885_reset._entry, section ".printk_index", align 4
@cx23885_dev_checkrevision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.338, ptr @.str.5, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cx23885: %s() New hardware revision found 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx23885_dev_checkrevision\00", [38 x i8] zeroinitializer }, align 32
@cx23885_dev_checkrevision._entry_ptr = internal global ptr @cx23885_dev_checkrevision._entry, section ".printk_index", align 4
@cx23885_dev_checkrevision._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.338, ptr @.str.5, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx23885: %s() Hardware revision = 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_dev_checkrevision._entry_ptr.341 = internal global ptr @cx23885_dev_checkrevision._entry.339, section ".printk_index", align 4
@cx23885_dev_checkrevision._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.338, ptr @.str.5, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx23885: %s() Hardware revision unknown 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@cx23885_dev_checkrevision._entry_ptr.344 = internal global ptr @cx23885_dev_checkrevision._entry.342, section ".printk_index", align 4
@cx23885_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.346, ptr @.str.5, i32 1796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: pci_status: 0x%08x  pci_mask: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx23885_irq\00", [20 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr = internal global ptr @cx23885_irq._entry, section ".printk_index", align 4
@cx23885_irq._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.346, ptr @.str.5, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.348 = internal global ptr @cx23885_irq._entry.347, section ".printk_index", align 4
@cx23885_irq._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.346, ptr @.str.5, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017cx23885: %s: vida_status: 0x%08x vida_mask: 0x%08x count: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.351 = internal global ptr @cx23885_irq._entry.349, section ".printk_index", align 4
@cx23885_irq._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.346, ptr @.str.5, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017cx23885: %s: audint_status: 0x%08x audint_mask: 0x%08x count: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.354 = internal global ptr @cx23885_irq._entry.352, section ".printk_index", align 4
@cx23885_irq._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.346, ptr @.str.5, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017cx23885: %s: ts1_status: 0x%08x  ts1_mask: 0x%08x count: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.357 = internal global ptr @cx23885_irq._entry.355, section ".printk_index", align 4
@cx23885_irq._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.346, ptr @.str.5, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017cx23885: %s: ts2_status: 0x%08x  ts2_mask: 0x%08x count: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.360 = internal global ptr @cx23885_irq._entry.358, section ".printk_index", align 4
@cx23885_irq._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.346, ptr @.str.5, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_RISC_RD   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.363 = internal global ptr @cx23885_irq._entry.361, section ".printk_index", align 4
@cx23885_irq._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.346, ptr @.str.5, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_RISC_WR   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.366 = internal global ptr @cx23885_irq._entry.364, section ".printk_index", align 4
@cx23885_irq._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.368, ptr @.str.346, ptr @.str.5, i32 1846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_AL_RD     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.369 = internal global ptr @cx23885_irq._entry.367, section ".printk_index", align 4
@cx23885_irq._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @.str.346, ptr @.str.5, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_AL_WR     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.372 = internal global ptr @cx23885_irq._entry.370, section ".printk_index", align 4
@cx23885_irq._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.374, ptr @.str.346, ptr @.str.5, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_APB_DMA   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.375 = internal global ptr @cx23885_irq._entry.373, section ".printk_index", align 4
@cx23885_irq._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.346, ptr @.str.5, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_VID_C     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.378 = internal global ptr @cx23885_irq._entry.376, section ".printk_index", align 4
@cx23885_irq._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.346, ptr @.str.5, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_VID_B     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.381 = internal global ptr @cx23885_irq._entry.379, section ".printk_index", align 4
@cx23885_irq._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.346, ptr @.str.5, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_VID_A     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.384 = internal global ptr @cx23885_irq._entry.382, section ".printk_index", align 4
@cx23885_irq._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.346, ptr @.str.5, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_AUD_INT   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.387 = internal global ptr @cx23885_irq._entry.385, section ".printk_index", align 4
@cx23885_irq._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.346, ptr @.str.5, i32 1874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_AUD_EXT   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.390 = internal global ptr @cx23885_irq._entry.388, section ".printk_index", align 4
@cx23885_irq._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.346, ptr @.str.5, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_GPIO0     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.393 = internal global ptr @cx23885_irq._entry.391, section ".printk_index", align 4
@cx23885_irq._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.346, ptr @.str.5, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_GPIO1     0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.396 = internal global ptr @cx23885_irq._entry.394, section ".printk_index", align 4
@cx23885_irq._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.346, ptr @.str.5, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_AV_CORE   0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.399 = internal global ptr @cx23885_irq._entry.397, section ".printk_index", align 4
@cx23885_irq._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.346, ptr @.str.5, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (PCI_MSK_IR        0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq._entry_ptr.402 = internal global ptr @cx23885_irq._entry.400, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx23885_irq_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.403, ptr @.str.404, ptr @.str.5, i32 1740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx23885: %s:  (VID_BC_MSK_OPC_ERR 0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx23885_irq_ts\00", [17 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr = internal global ptr @cx23885_irq_ts._entry, section ".printk_index", align 4
@cx23885_irq_ts._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.404, ptr @.str.5, i32 1744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx23885: %s:  (VID_BC_MSK_BAD_PKT 0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr.407 = internal global ptr @cx23885_irq_ts._entry.405, section ".printk_index", align 4
@cx23885_irq_ts._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.404, ptr @.str.5, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx23885: %s:  (VID_BC_MSK_SYNC    0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr.410 = internal global ptr @cx23885_irq_ts._entry.408, section ".printk_index", align 4
@cx23885_irq_ts._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.412, ptr @.str.404, ptr @.str.5, i32 1752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx23885: %s:  (VID_BC_MSK_OF      0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr.413 = internal global ptr @cx23885_irq_ts._entry.411, section ".printk_index", align 4
@cx23885_irq_ts._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.404, ptr @.str.5, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cx23885: %s: mpeg risc op code error\0A\00", [56 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr.416 = internal global ptr @cx23885_irq_ts._entry.414, section ".printk_index", align 4
@cx23885_irq_ts._entry.417 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.418, ptr @.str.404, ptr @.str.5, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s:  (RISCI1            0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_irq_ts._entry_ptr.419 = internal global ptr @cx23885_irq_ts._entry.417, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cx23885_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.421, ptr @.str.5, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cx23885: cx23885 driver version %s loaded\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx23885_init\00", [19 x i8] zeroinitializer }, align 32
@cx23885_init._entry_ptr = internal global ptr @cx23885_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 885, i64 887, i64 888]
@__sancov_gen_cov_switch_values.422 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.423 = internal global [4 x i64] [i64 2, i64 16, i64 34898, i64 34944]
@__sancov_gen_cov_switch_values.424 = internal global [4 x i64] [i64 2, i64 32, i64 56, i64 57]
@__sancov_gen_cov_switch_values.425 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.426 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.427 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.428 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.429 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 14, i64 15]
@__sancov_gen_cov_switch_values.430 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 35]
@__sancov_gen_cov_switch_values.431 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 30]
@__sancov_gen_cov_switch_values.432 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.433 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.434 = internal global [4 x i64] [i64 2, i64 32, i64 1074034176, i64 1074034177]
@__sancov_gen_cov_switch_values.435 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 33, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant [21 x i8] c"dma_reset_workaround\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 43, i32 21 }
@___asan_gen_.448 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 47, i32 21 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 462, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 470, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 487, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 517, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 529, i32 15 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 530, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 531, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 532, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 533, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 534, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 535, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 536, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 537, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 538, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 539, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 540, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 541, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 542, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 543, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 548, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 551, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 557, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 564, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 569, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 574, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 576, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 578, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 580, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 582, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 584, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1402, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1426, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1494, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1582, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1629, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1637, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1666, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1668, i32 26 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1682, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1692, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1695, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1697, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1699, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1701, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1703, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1705, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1707, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1714, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2002, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2009, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2019, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2026, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2036, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2043, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2057, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant [19 x i8] c"cx23885_pci_driver\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2248, i32 26 }
@___asan_gen_.766 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 51, i32 21 }
@___asan_gen_.769 = private unnamed_addr constant [6 x i8] c"instr\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 386, i32 15 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 388, i32 26 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 393, i32 26 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 389, i32 26 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 392, i32 26 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 387, i32 26 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 390, i32 26 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 391, i32 26 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 394, i32 26 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 395, i32 26 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 396, i32 26 }
@___asan_gen_.802 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 398, i32 13 }
@___asan_gen_.805 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 407, i32 15 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 408, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 408, i32 11 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 408, i32 19 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 408, i32 27 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 409, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 409, i32 11 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 409, i32 19 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 409, i32 27 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 410, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 410, i32 11 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 410, i32 19 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 410, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 411, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 411, i32 11 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 411, i32 19 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 411, i32 27 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 415, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 419, i32 4 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 420, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 625, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 594, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 597, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 600, i32 4 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1335, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1336, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1338, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1340, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1342, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1344, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1346, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1348, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1350, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1352, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1354, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1356, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1358, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1361, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1363, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1365, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1367, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1369, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1371, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1373, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1375, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1377, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1379, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1381, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1383, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1385, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1387, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1389, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1391, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 1163, i32 7 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1538, i32 2 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1552, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1657, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 440, i32 4 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 443, i32 4 }
@___asan_gen_.1126 = private unnamed_addr constant [16 x i8] c"cx23885_pci_tbl\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2229, i32 35 }
@___asan_gen_.1129 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2133, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2158, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2167, i32 3 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2174, i32 3 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1967, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1968, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1969, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 876, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 877, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 879, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 880, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant [17 x i8] c"cx23885_devcount\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 61, i32 21 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 885, i32 21 }
@___asan_gen_.1204 = private unnamed_addr constant [22 x i8] c"cx23887_sram_channels\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 196, i32 28 }
@___asan_gen_.1207 = private unnamed_addr constant [22 x i8] c"cx23885_sram_channels\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 85, i32 28 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 903, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 984, i32 3 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 998, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1013, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1015, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1048, i32 4 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1058, i32 4 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1064, i32 4 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1074, i32 4 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1080, i32 4 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 198, i32 12 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 210, i32 12 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 222, i32 12 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 234, i32 12 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 246, i32 12 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 258, i32 12 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 270, i32 12 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 282, i32 12 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 294, i32 12 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 99, i32 12 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 734, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 742, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 747, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 725, i32 2 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 704, i32 2 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 663, i32 2 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 844, i32 3 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 848, i32 3 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 851, i32 3 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1795, i32 3 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1818, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1820, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1822, i32 2 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1824, i32 2 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1826, i32 2 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1837, i32 4 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1841, i32 4 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1845, i32 4 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1849, i32 4 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1853, i32 4 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1857, i32 4 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1861, i32 4 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1865, i32 4 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1869, i32 4 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1873, i32 4 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1877, i32 4 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1881, i32 4 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1885, i32 4 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1889, i32 4 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1739, i32 4 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1743, i32 4 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1747, i32 4 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1751, i32 4 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1754, i32 3 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 1762, i32 3 }
@___asan_gen_.1531 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1538 = private constant [44 x i8] c"../drivers/media/pci/cx23885/cx23885-core.c\00", align 1
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1538, i32 2257, i32 2 }
@llvm.compiler.used = appending global [512 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_card395, ptr @__UNIQUE_ID_cardtype394, ptr @__UNIQUE_ID_debug393, ptr @__UNIQUE_ID_debugtype392, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_dma_reset_workaround391, ptr @__UNIQUE_ID_dma_reset_workaroundtype390, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_version389, ptr @__exitcall_cx23885_fini, ptr @__initcall__kmod_cx23885__397_2267_cx23885_init6, ptr @__modver_attr, ptr @__param_card, ptr @__param_debug, ptr @__param_dma_reset_workaround, ptr @cx23885_buf_prepare._entry, ptr @cx23885_buf_prepare._entry_ptr, ptr @cx23885_buf_queue._entry, ptr @cx23885_buf_queue._entry.73, ptr @cx23885_buf_queue._entry_ptr, ptr @cx23885_buf_queue._entry_ptr.75, ptr @cx23885_cancel_buffers._entry, ptr @cx23885_cancel_buffers._entry_ptr, ptr @cx23885_clear_bridge_error._entry, ptr @cx23885_clear_bridge_error._entry_ptr, ptr @cx23885_dev_checkrevision._entry, ptr @cx23885_dev_checkrevision._entry.339, ptr @cx23885_dev_checkrevision._entry.342, ptr @cx23885_dev_checkrevision._entry_ptr, ptr @cx23885_dev_checkrevision._entry_ptr.341, ptr @cx23885_dev_checkrevision._entry_ptr.344, ptr @cx23885_dev_setup._entry, ptr @cx23885_dev_setup._entry.289, ptr @cx23885_dev_setup._entry.292, ptr @cx23885_dev_setup._entry.297, ptr @cx23885_dev_setup._entry.300, ptr @cx23885_dev_setup._entry.303, ptr @cx23885_dev_setup._entry.306, ptr @cx23885_dev_setup._entry.309, ptr @cx23885_dev_setup._entry.312, ptr @cx23885_dev_setup._entry.315, ptr @cx23885_dev_setup._entry_ptr, ptr @cx23885_dev_setup._entry_ptr.291, ptr @cx23885_dev_setup._entry_ptr.294, ptr @cx23885_dev_setup._entry_ptr.299, ptr @cx23885_dev_setup._entry_ptr.302, ptr @cx23885_dev_setup._entry_ptr.305, ptr @cx23885_dev_setup._entry_ptr.308, ptr @cx23885_dev_setup._entry_ptr.311, ptr @cx23885_dev_setup._entry_ptr.314, ptr @cx23885_dev_setup._entry_ptr.317, ptr @cx23885_fini, ptr @cx23885_gpio_clear._entry, ptr @cx23885_gpio_clear._entry.115, ptr @cx23885_gpio_clear._entry_ptr, ptr @cx23885_gpio_clear._entry_ptr.116, ptr @cx23885_gpio_enable._entry, ptr @cx23885_gpio_enable._entry_ptr, ptr @cx23885_gpio_get._entry, ptr @cx23885_gpio_get._entry.119, ptr @cx23885_gpio_get._entry_ptr, ptr @cx23885_gpio_get._entry_ptr.120, ptr @cx23885_gpio_set._entry, ptr @cx23885_gpio_set._entry.110, ptr @cx23885_gpio_set._entry_ptr, ptr @cx23885_gpio_set._entry_ptr.112, ptr @cx23885_init._entry, ptr @cx23885_init._entry_ptr, ptr @cx23885_init_tsport._entry, ptr @cx23885_init_tsport._entry_ptr, ptr @cx23885_initdev._entry, ptr @cx23885_initdev._entry.268, ptr @cx23885_initdev._entry.271, ptr @cx23885_initdev._entry_ptr, ptr @cx23885_initdev._entry_ptr.270, ptr @cx23885_initdev._entry_ptr.273, ptr @cx23885_irq._entry, ptr @cx23885_irq._entry.347, ptr @cx23885_irq._entry.349, ptr @cx23885_irq._entry.352, ptr @cx23885_irq._entry.355, ptr @cx23885_irq._entry.358, ptr @cx23885_irq._entry.361, ptr @cx23885_irq._entry.364, ptr @cx23885_irq._entry.367, ptr @cx23885_irq._entry.370, ptr @cx23885_irq._entry.373, ptr @cx23885_irq._entry.376, ptr @cx23885_irq._entry.379, ptr @cx23885_irq._entry.382, ptr @cx23885_irq._entry.385, ptr @cx23885_irq._entry.388, ptr @cx23885_irq._entry.391, ptr @cx23885_irq._entry.394, ptr @cx23885_irq._entry.397, ptr @cx23885_irq._entry.400, ptr @cx23885_irq._entry_ptr, ptr @cx23885_irq._entry_ptr.348, ptr @cx23885_irq._entry_ptr.351, ptr @cx23885_irq._entry_ptr.354, ptr @cx23885_irq._entry_ptr.357, ptr @cx23885_irq._entry_ptr.360, ptr @cx23885_irq._entry_ptr.363, ptr @cx23885_irq._entry_ptr.366, ptr @cx23885_irq._entry_ptr.369, ptr @cx23885_irq._entry_ptr.372, ptr @cx23885_irq._entry_ptr.375, ptr @cx23885_irq._entry_ptr.378, ptr @cx23885_irq._entry_ptr.381, ptr @cx23885_irq._entry_ptr.384, ptr @cx23885_irq._entry_ptr.387, ptr @cx23885_irq._entry_ptr.390, ptr @cx23885_irq._entry_ptr.393, ptr @cx23885_irq._entry_ptr.396, ptr @cx23885_irq._entry_ptr.399, ptr @cx23885_irq._entry_ptr.402, ptr @cx23885_irq_417._entry, ptr @cx23885_irq_417._entry.102, ptr @cx23885_irq_417._entry.105, ptr @cx23885_irq_417._entry.81, ptr @cx23885_irq_417._entry.84, ptr @cx23885_irq_417._entry.87, ptr @cx23885_irq_417._entry.90, ptr @cx23885_irq_417._entry.93, ptr @cx23885_irq_417._entry.96, ptr @cx23885_irq_417._entry.99, ptr @cx23885_irq_417._entry_ptr, ptr @cx23885_irq_417._entry_ptr.101, ptr @cx23885_irq_417._entry_ptr.104, ptr @cx23885_irq_417._entry_ptr.107, ptr @cx23885_irq_417._entry_ptr.83, ptr @cx23885_irq_417._entry_ptr.86, ptr @cx23885_irq_417._entry_ptr.89, ptr @cx23885_irq_417._entry_ptr.92, ptr @cx23885_irq_417._entry_ptr.95, ptr @cx23885_irq_417._entry_ptr.98, ptr @cx23885_irq_ts._entry, ptr @cx23885_irq_ts._entry.405, ptr @cx23885_irq_ts._entry.408, ptr @cx23885_irq_ts._entry.411, ptr @cx23885_irq_ts._entry.414, ptr @cx23885_irq_ts._entry.417, ptr @cx23885_irq_ts._entry_ptr, ptr @cx23885_irq_ts._entry_ptr.407, ptr @cx23885_irq_ts._entry_ptr.410, ptr @cx23885_irq_ts._entry_ptr.413, ptr @cx23885_irq_ts._entry_ptr.416, ptr @cx23885_irq_ts._entry_ptr.419, ptr @cx23885_pci_quirks._entry, ptr @cx23885_pci_quirks._entry_ptr, ptr @cx23885_reset._entry, ptr @cx23885_reset._entry_ptr, ptr @cx23885_risc_decode._entry, ptr @cx23885_risc_decode._entry.152, ptr @cx23885_risc_decode._entry.155, ptr @cx23885_risc_decode._entry_ptr, ptr @cx23885_risc_decode._entry_ptr.154, ptr @cx23885_risc_decode._entry_ptr.157, ptr @cx23885_risc_disasm._entry, ptr @cx23885_risc_disasm._entry.164, ptr @cx23885_risc_disasm._entry.167, ptr @cx23885_risc_disasm._entry_ptr, ptr @cx23885_risc_disasm._entry_ptr.166, ptr @cx23885_risc_disasm._entry_ptr.169, ptr @cx23885_sram_channel_dump._entry, ptr @cx23885_sram_channel_dump._entry.31, ptr @cx23885_sram_channel_dump._entry.34, ptr @cx23885_sram_channel_dump._entry.37, ptr @cx23885_sram_channel_dump._entry.40, ptr @cx23885_sram_channel_dump._entry.43, ptr @cx23885_sram_channel_dump._entry.46, ptr @cx23885_sram_channel_dump._entry.49, ptr @cx23885_sram_channel_dump._entry.52, ptr @cx23885_sram_channel_dump._entry.55, ptr @cx23885_sram_channel_dump._entry.58, ptr @cx23885_sram_channel_dump._entry_ptr, ptr @cx23885_sram_channel_dump._entry_ptr.33, ptr @cx23885_sram_channel_dump._entry_ptr.36, ptr @cx23885_sram_channel_dump._entry_ptr.39, ptr @cx23885_sram_channel_dump._entry_ptr.42, ptr @cx23885_sram_channel_dump._entry_ptr.45, ptr @cx23885_sram_channel_dump._entry_ptr.48, ptr @cx23885_sram_channel_dump._entry_ptr.51, ptr @cx23885_sram_channel_dump._entry_ptr.54, ptr @cx23885_sram_channel_dump._entry_ptr.57, ptr @cx23885_sram_channel_dump._entry_ptr.60, ptr @cx23885_sram_channel_setup._entry, ptr @cx23885_sram_channel_setup._entry.12, ptr @cx23885_sram_channel_setup._entry.6, ptr @cx23885_sram_channel_setup._entry.9, ptr @cx23885_sram_channel_setup._entry_ptr, ptr @cx23885_sram_channel_setup._entry_ptr.11, ptr @cx23885_sram_channel_setup._entry_ptr.14, ptr @cx23885_sram_channel_setup._entry_ptr.8, ptr @cx23885_start_dma._entry, ptr @cx23885_start_dma._entry.63, ptr @cx23885_start_dma._entry.66, ptr @cx23885_start_dma._entry_ptr, ptr @cx23885_start_dma._entry_ptr.65, ptr @cx23885_start_dma._entry_ptr.68, ptr @cx23885_stop_dma._entry, ptr @cx23885_stop_dma._entry_ptr, ptr @cx23885_tsport_reg_dump._entry, ptr @cx23885_tsport_reg_dump._entry.172, ptr @cx23885_tsport_reg_dump._entry.175, ptr @cx23885_tsport_reg_dump._entry.178, ptr @cx23885_tsport_reg_dump._entry.181, ptr @cx23885_tsport_reg_dump._entry.184, ptr @cx23885_tsport_reg_dump._entry.187, ptr @cx23885_tsport_reg_dump._entry.190, ptr @cx23885_tsport_reg_dump._entry.193, ptr @cx23885_tsport_reg_dump._entry.196, ptr @cx23885_tsport_reg_dump._entry.199, ptr @cx23885_tsport_reg_dump._entry.202, ptr @cx23885_tsport_reg_dump._entry.205, ptr @cx23885_tsport_reg_dump._entry.208, ptr @cx23885_tsport_reg_dump._entry.211, ptr @cx23885_tsport_reg_dump._entry.214, ptr @cx23885_tsport_reg_dump._entry.217, ptr @cx23885_tsport_reg_dump._entry.220, ptr @cx23885_tsport_reg_dump._entry.223, ptr @cx23885_tsport_reg_dump._entry.226, ptr @cx23885_tsport_reg_dump._entry.229, ptr @cx23885_tsport_reg_dump._entry.232, ptr @cx23885_tsport_reg_dump._entry.235, ptr @cx23885_tsport_reg_dump._entry.238, ptr @cx23885_tsport_reg_dump._entry.241, ptr @cx23885_tsport_reg_dump._entry.244, ptr @cx23885_tsport_reg_dump._entry.247, ptr @cx23885_tsport_reg_dump._entry.250, ptr @cx23885_tsport_reg_dump._entry.253, ptr @cx23885_tsport_reg_dump._entry_ptr, ptr @cx23885_tsport_reg_dump._entry_ptr.174, ptr @cx23885_tsport_reg_dump._entry_ptr.177, ptr @cx23885_tsport_reg_dump._entry_ptr.180, ptr @cx23885_tsport_reg_dump._entry_ptr.183, ptr @cx23885_tsport_reg_dump._entry_ptr.186, ptr @cx23885_tsport_reg_dump._entry_ptr.189, ptr @cx23885_tsport_reg_dump._entry_ptr.192, ptr @cx23885_tsport_reg_dump._entry_ptr.195, ptr @cx23885_tsport_reg_dump._entry_ptr.198, ptr @cx23885_tsport_reg_dump._entry_ptr.201, ptr @cx23885_tsport_reg_dump._entry_ptr.204, ptr @cx23885_tsport_reg_dump._entry_ptr.207, ptr @cx23885_tsport_reg_dump._entry_ptr.210, ptr @cx23885_tsport_reg_dump._entry_ptr.213, ptr @cx23885_tsport_reg_dump._entry_ptr.216, ptr @cx23885_tsport_reg_dump._entry_ptr.219, ptr @cx23885_tsport_reg_dump._entry_ptr.222, ptr @cx23885_tsport_reg_dump._entry_ptr.225, ptr @cx23885_tsport_reg_dump._entry_ptr.228, ptr @cx23885_tsport_reg_dump._entry_ptr.231, ptr @cx23885_tsport_reg_dump._entry_ptr.234, ptr @cx23885_tsport_reg_dump._entry_ptr.237, ptr @cx23885_tsport_reg_dump._entry_ptr.240, ptr @cx23885_tsport_reg_dump._entry_ptr.243, ptr @cx23885_tsport_reg_dump._entry_ptr.246, ptr @cx23885_tsport_reg_dump._entry_ptr.249, ptr @cx23885_tsport_reg_dump._entry_ptr.252, ptr @cx23885_tsport_reg_dump._entry_ptr.255, ptr @cx23885_wakeup._entry, ptr @cx23885_wakeup._entry.263, ptr @cx23885_wakeup._entry_ptr, ptr @cx23885_wakeup._entry_ptr.264, ptr @do_cancel_buffers._entry, ptr @do_cancel_buffers._entry_ptr, ptr @get_resources._entry, ptr @get_resources._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dma_reset_workaround, ptr @debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @cx23885_sram_channel_dump.name, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @cx23885_pci_driver, ptr @card, ptr @cx23885_risc_decode.instr, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @cx23885_risc_decode.incr, ptr @cx23885_risc_decode.bits, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @cx23885_pci_tbl, ptr @cx23885_initdev._key, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.272, ptr @cx23885_v4l2_dev_notify_init.__key, ptr @.str.274, ptr @cx23885_v4l2_dev_notify_init.__key.275, ptr @.str.276, ptr @cx23885_v4l2_dev_notify_init.__key.277, ptr @.str.278, ptr @cx23885_dev_setup.__key, ptr @.str.279, ptr @cx23885_dev_setup.__key.280, ptr @.str.281, ptr @cx23885_dev_setup.__key.282, ptr @.str.283, ptr @cx23885_dev_setup.__key.284, ptr @.str.285, ptr @cx23885_devcount, ptr @.str.286, ptr @cx23887_sram_channels, ptr @cx23885_sram_channels, ptr @.str.287, ptr @.str.288, ptr @.str.290, ptr @.str.293, ptr @.str.295, ptr @.str.296, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @cx23885_init_tsport.__key, ptr @.str.330, ptr @cx23885_init_tsport.__key.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.340, ptr @.str.343, ptr @.str.345, ptr @.str.346, ptr @.str.350, ptr @.str.353, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.365, ptr @.str.368, ptr @.str.371, ptr @.str.374, ptr @.str.377, ptr @.str.380, ptr @.str.383, ptr @.str.386, ptr @.str.389, ptr @.str.392, ptr @.str.395, ptr @.str.398, ptr @.str.401, ptr @.str.403, ptr @.str.404, ptr @.str.406, ptr @.str.409, ptr @.str.412, ptr @.str.415, ptr @.str.418, ptr @.str.420, ptr @.str.421], section "llvm.metadata"
@0 = internal global [368 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_reset_workaround to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump.name to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channel_dump._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_dma._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_dma._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_buf_queue._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_cancel_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_417._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_set._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_clear._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_get._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_gpio_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode.instr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode.incr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode.bits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_decode._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_clear_bridge_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_disasm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_disasm._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_risc_disasm._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tsport_reg_dump._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_stop_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cancel_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_wakeup._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initdev._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initdev._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initdev._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_v4l2_dev_notify_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_v4l2_dev_notify_init.__key.275 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_v4l2_dev_notify_init.__key.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup.__key.280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup.__key.282 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup.__key.284 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_devcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23887_sram_channels to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_sram_channels to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_setup._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_init_tsport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_init_tsport.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_init_tsport.__key.331 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_pci_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_checkrevision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_checkrevision._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dev_checkrevision._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_irq_ts._entry.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_irq_add_enable(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_irqmask_lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock) #9
  %pci_irqmask = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_irqmask, align 4
  %or = or i32 %1, %mask
  store i32 %or, ptr %pci_irqmask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !742
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 65540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !744
  %or12 = or i32 %5, %mask
  %6 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %8, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %6) #9, !srcloc !745
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_irq_enable(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_irqmask_lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock) #9
  %pci_irqmask = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_irqmask, align 4
  %and = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !746
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 65540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !747
  %or = or i32 %5, %and
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %8, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %6) #9, !srcloc !745
  br label %if.end

if.end:                                           ; preds = %do.body5, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_irq_disable(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_irqmask_lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !748
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 65540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !749
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr13 = getelementptr i32, ptr %6, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %4) #9, !srcloc !745
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_irq_remove(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_irqmask_lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock) #9
  %neg = xor i32 %mask, -1
  %pci_irqmask = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_irqmask, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %pci_irqmask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !750
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 65540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !751
  %and12 = and i32 %5, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr15 = getelementptr i32, ptr %8, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #9, !srcloc !745
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_sram_channel_setup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ch, i32 noundef %bpl, i32 noundef %risc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmds_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmds_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body, label %do.body27

do.body:                                          ; preds = %entry
  br i1 %cmp1.not, label %do.body.do.body6_crit_edge, label %do.end

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef %4) #12
  br label %do.body6

do.body6:                                         ; preds = %do.end, %do.body.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !752
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %ptr1_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 6
  %7 = ptrtoint ptr %ptr1_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr1_reg, align 4
  %shr = lshr i32 %8, 2
  %add.ptr = getelementptr i32, ptr %6, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !753
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %ptr2_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 7
  %11 = ptrtoint ptr %ptr2_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr2_reg, align 4
  %shr13 = lshr i32 %12, 2
  %add.ptr14 = getelementptr i32, ptr %10, i32 %shr13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !754
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %cnt2_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 9
  %15 = ptrtoint ptr %cnt2_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt2_reg, align 4
  %shr19 = lshr i32 %16, 2
  %add.ptr20 = getelementptr i32, ptr %14, i32 %shr19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !755
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %cnt1_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 8
  %19 = ptrtoint ptr %cnt1_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cnt1_reg, align 4
  %shr25 = lshr i32 %20, 2
  %add.ptr26 = getelementptr i32, ptr %18, i32 %shr25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #9, !srcloc !745
  br label %cleanup

do.body27:                                        ; preds = %entry
  br i1 %cmp1.not, label %do.body27.if.end39_crit_edge, label %do.end32

do.body27.if.end39_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ch, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef %22) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end32, %do.body27.if.end39_crit_edge
  %add = add i32 %bpl, 7
  %and = and i32 %add, -8
  %cdt40 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 3
  %23 = ptrtoint ptr %cdt40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cdt40, align 4
  %fifo_size = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 5
  %25 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifo_size, align 4
  %div = udiv i32 %26, %and
  %27 = tail call i32 @llvm.umin.i32(i32 %div, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp45 = icmp ult i32 %27, 2
  br i1 %cmp45, label %do.body48, label %do.body73.lr.ph, !prof !756

do.body48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #9, !srcloc !757
  unreachable

do.body73.lr.ph:                                  ; preds = %if.end39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !758
  tail call void @arm_heavy_mb() #9
  %lmmio60 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio60, align 4
  %add.ptr61 = getelementptr i32, ptr %29, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 880) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !759
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio60, align 4
  %add.ptr66 = getelementptr i32, ptr %31, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 201326592) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !760
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio60, align 4
  %add.ptr71 = getelementptr i32, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #9, !srcloc !745
  %fifo_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 4
  br label %do.body73

do.body73:                                        ; preds = %do.body87.do.body73_crit_edge, %do.body73.lr.ph
  %i.0340 = phi i32 [ 0, %do.body73.lr.ph ], [ %inc, %do.body87.do.body73_crit_edge ]
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp74 = icmp ugt i32 %34, 1
  br i1 %cmp74, label %do.end78, label %do.body73.do.body87_crit_edge

do.body73.do.body87_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = mul i32 %i.0340, %and
  %.pre343 = shl i32 %i.0340, 4
  %.pre344 = add i32 %.pre343, %24
  br label %do.body87

do.end78:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %i.0340, 4
  %add80 = add i32 %mul, %24
  %35 = ptrtoint ptr %fifo_start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fifo_start, align 4
  %mul81 = mul i32 %i.0340, %and
  %add82 = add i32 %36, %mul81
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %add80, i32 noundef %add82) #12
  br label %do.body87

do.body87:                                        ; preds = %do.end78, %do.body73.do.body87_crit_edge
  %add95.pre-phi = phi i32 [ %.pre344, %do.body73.do.body87_crit_edge ], [ %add80, %do.end78 ]
  %mul91.pre-phi = phi i32 [ %.pre, %do.body73.do.body87_crit_edge ], [ %mul81, %do.end78 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !761
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %fifo_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fifo_start, align 4
  %add92 = add i32 %38, %mul91.pre-phi
  %39 = tail call i32 @llvm.bswap.i32(i32 %add92)
  %40 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio60, align 4
  %shr96 = lshr i32 %add95.pre-phi, 2
  %add.ptr97 = getelementptr i32, ptr %41, i32 %shr96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %39) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !762
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio60, align 4
  %add104 = add i32 %add95.pre-phi, 4
  %shr105 = lshr i32 %add104, 2
  %add.ptr106 = getelementptr i32, ptr %43, i32 %shr105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !763
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio60, align 4
  %add113 = add i32 %add95.pre-phi, 8
  %shr114 = lshr i32 %add113, 2
  %add.ptr115 = getelementptr i32, ptr %45, i32 %shr114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !764
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio60, align 4
  %add122 = add i32 %add95.pre-phi, 12
  %shr123 = lshr i32 %add122, 2
  %add.ptr124 = getelementptr i32, ptr %47, i32 %shr123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #9, !srcloc !745
  %inc = add nuw nsw i32 %i.0340, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.end, label %do.body87.do.body73_crit_edge

do.body87.do.body73_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

for.end:                                          ; preds = %do.body87
  %jumponly = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 10
  %48 = ptrtoint ptr %jumponly to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jumponly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool125.not = icmp eq i32 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool125.not, label %do.body136, label %do.body127

do.body127:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio60, align 4
  %52 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmds_start, align 4
  %shr133 = lshr i32 %53, 2
  %add.ptr134 = getelementptr i32, ptr %51, i32 %shr133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 134217728) #9, !srcloc !745
  br label %do.body145

do.body136:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %54 = tail call i32 @llvm.bswap.i32(i32 %risc)
  %55 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio60, align 4
  %57 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmds_start, align 4
  %shr142 = lshr i32 %58, 2
  %add.ptr143 = getelementptr i32, ptr %56, i32 %shr142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %54) #9, !srcloc !745
  br label %do.body145

do.body145:                                       ; preds = %do.body136, %do.body127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !765
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lmmio60, align 4
  %61 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmds_start, align 4
  %add150 = add i32 %62, 4
  %shr151 = lshr i32 %add150, 2
  %add.ptr152 = getelementptr i32, ptr %60, i32 %shr151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !766
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %24)
  %64 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio60, align 4
  %66 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cmds_start, align 4
  %add158 = add i32 %67, 8
  %shr159 = lshr i32 %add158, 2
  %add.ptr160 = getelementptr i32, ptr %65, i32 %shr159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %63) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !767
  tail call void @arm_heavy_mb() #9
  %mul164 = shl nuw nsw i32 %27, 25
  %68 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lmmio60, align 4
  %70 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmds_start, align 4
  %add168 = add i32 %71, 12
  %shr169 = lshr i32 %add168, 2
  %add.ptr170 = getelementptr i32, ptr %69, i32 %shr169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %mul164) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !768
  tail call void @arm_heavy_mb() #9
  %ctrl_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 2
  %72 = ptrtoint ptr %ctrl_start to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ctrl_start, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio60, align 4
  %77 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmds_start, align 4
  %add176 = add i32 %78, 16
  %shr177 = lshr i32 %add176, 2
  %add.ptr178 = getelementptr i32, ptr %76, i32 %shr177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %74) #9, !srcloc !745
  %79 = ptrtoint ptr %jumponly to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %jumponly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool180.not = icmp eq i32 %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio60, align 4
  %83 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cmds_start, align 4
  %add196 = add i32 %84, 20
  %shr197 = lshr i32 %add196, 2
  %add.ptr198 = getelementptr i32, ptr %82, i32 %shr197
  br i1 %tobool180.not, label %do.body191, label %do.body182

do.body182:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 268435584) #9, !srcloc !745
  br label %do.body203.preheader

do.body191:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 268435456) #9, !srcloc !745
  br label %do.body203.preheader

do.body203.preheader:                             ; preds = %do.body191, %do.body182
  br label %do.body203

do.body203:                                       ; preds = %do.body203.do.body203_crit_edge, %do.body203.preheader
  %i.1342 = phi i32 [ %add212, %do.body203.do.body203_crit_edge ], [ 24, %do.body203.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !769
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio60, align 4
  %87 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmds_start, align 4
  %add208 = add i32 %88, %i.1342
  %shr209 = lshr i32 %add208, 2
  %add.ptr210 = getelementptr i32, ptr %86, i32 %shr209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 0) #9, !srcloc !745
  %add212 = add nuw nsw i32 %i.1342, 4
  %cmp201 = icmp ult i32 %i.1342, 76
  br i1 %cmp201, label %do.body203.do.body203_crit_edge, label %do.body214

do.body203.do.body203_crit_edge:                  ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body203

do.body214:                                       ; preds = %do.body203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !770
  tail call void @arm_heavy_mb() #9
  %fifo_start217 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 4
  %89 = ptrtoint ptr %fifo_start217 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fifo_start217, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lmmio60, align 4
  %ptr1_reg219 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 6
  %94 = ptrtoint ptr %ptr1_reg219 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ptr1_reg219, align 4
  %shr220 = lshr i32 %95, 2
  %add.ptr221 = getelementptr i32, ptr %93, i32 %shr220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 %91) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !771
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio60, align 4
  %ptr2_reg226 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 7
  %98 = ptrtoint ptr %ptr2_reg226 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr2_reg226, align 4
  %shr227 = lshr i32 %99, 2
  %add.ptr228 = getelementptr i32, ptr %97, i32 %shr227
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 %63) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !772
  tail call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio60, align 4
  %cnt2_reg235 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 9
  %102 = ptrtoint ptr %cnt2_reg235 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cnt2_reg235, align 4
  %shr236 = lshr i32 %103, 2
  %add.ptr237 = getelementptr i32, ptr %101, i32 %shr236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %mul164) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !773
  tail call void @arm_heavy_mb() #9
  %shr241 = lshr i32 %add, 3
  %sub = add nsw i32 %shr241, -1
  %104 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %105 = ptrtoint ptr %lmmio60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lmmio60, align 4
  %cnt1_reg243 = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 8
  %107 = ptrtoint ptr %cnt1_reg243 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cnt1_reg243, align 4
  %shr244 = lshr i32 %108, 2
  %add.ptr245 = getelementptr i32, ptr %106, i32 %shr244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 %104) #9, !srcloc !745
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp247 = icmp ugt i32 %109, 1
  br i1 %cmp247, label %do.end251, label %do.body214.cleanup_crit_edge

do.body214.cleanup_crit_edge:                     ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end251:                                        ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #11
  %bridge = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 23
  %110 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bridge, align 4
  %112 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ch, align 4
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef %111, ptr noundef %113, i32 noundef %and, i32 noundef %27) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end251, %do.body214.cleanup_crit_edge, %do.body6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_sram_channel_dump(ptr noundef %dev, ptr nocapture noundef readonly %ch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %1) #12
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %cmds_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 1
  br label %do.end4

do.end4:                                          ; preds = %do.end4.do.end4_crit_edge, %entry
  %i.0249 = phi i32 [ 0, %entry ], [ %inc, %do.end4.do.end4_crit_edge ]
  %arrayidx = getelementptr [14 x ptr], ptr @cx23885_sram_channel_dump.name, i32 0, i32 %i.0249
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %6 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmds_start, align 4
  %8 = lshr i32 %7, 2
  %9 = add nuw nsw i32 %8, %i.0249
  %shr = and i32 %9, 1073741823
  %add.ptr = getelementptr i32, ptr %5, i32 %shr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !774
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef %3, i32 noundef %11) #12
  %inc = add nuw nsw i32 %i.0249, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %do.end4.for.body14_crit_edge, label %do.end4.do.end4_crit_edge

do.end4.do.end4_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end4.for.body14_crit_edge:                     ; preds = %do.end4
  br label %for.body14

for.cond38.preheader:                             ; preds = %do.end12.i
  %ctrl_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 2
  br label %for.body40

for.body14:                                       ; preds = %do.end12.i.for.body14_crit_edge, %do.end4.for.body14_crit_edge
  %i.1250 = phi i32 [ %inc36, %do.end12.i.for.body14_crit_edge ], [ 0, %do.end4.for.body14_crit_edge ]
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %14 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmds_start, align 4
  %add19 = shl nuw nsw i32 %i.1250, 2
  %mul20 = add nuw nsw i32 %add19, 56
  %add21 = add i32 %mul20, %15
  %shr22 = lshr i32 %add21, 2
  %add.ptr23 = getelementptr i32, ptr %13, i32 %shr22
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !743
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !775
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %i.1250) #12
  %shr.i = lshr i32 %17, 28
  %18 = lshr i32 49241, %shr.i
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.not.i, label %cond.true.i, label %for.body14.cond.end.i_crit_edge

for.body14.cond.end.i_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [16 x ptr], ptr @cx23885_risc_decode.instr, i32 0, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body14.cond.end.i_crit_edge
  %cond.i = phi ptr [ %21, %cond.true.i ], [ @.str.151, %for.body14.cond.end.i_crit_edge ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %17, ptr noundef %cond.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i
  %i.035.i = phi i32 [ 15, %cond.end.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl i32 4096, %i.035.i
  %and.i = and i32 %shl.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end6.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i = getelementptr [16 x ptr], ptr @cx23885_risc_decode.bits, i32 0, i32 %i.035.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %23) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end6.i, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %i.035.i, -1
  %cmp.not.i = icmp eq i32 %i.035.i, 0
  br i1 %cmp.not.i, label %do.end12.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end12.i:                                       ; preds = %for.inc.i
  %and14.i = and i32 %17, 4095
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %and14.i) #12
  %inc36 = add nuw nsw i32 %i.1250, 1
  %exitcond255.not = icmp eq i32 %inc36, 4
  br i1 %exitcond255.not, label %for.cond38.preheader, label %do.end12.i.for.body14_crit_edge

do.end12.i.for.body14_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.body40:                                       ; preds = %for.inc88.for.body40_crit_edge, %for.cond38.preheader
  %i.2253 = phi i32 [ 0, %for.cond38.preheader ], [ %add89, %for.inc88.for.body40_crit_edge ]
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %26 = ptrtoint ptr %ctrl_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_start, align 4
  %mul44 = shl nuw nsw i32 %i.2253, 2
  %add45 = add i32 %27, %mul44
  %shr46 = lshr i32 %add45, 2
  %add.ptr47 = getelementptr i32, ptr %25, i32 %shr46
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !743
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !776
  %30 = ptrtoint ptr %ctrl_start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrl_start, align 4
  %add59 = add i32 %31, %mul44
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %add59, i32 noundef %i.2253) #12
  %shr.i223 = lshr i32 %29, 28
  %32 = lshr i32 49241, %shr.i223
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.not.i224 = icmp eq i32 %33, 0
  br i1 %tobool.not.not.i224, label %cond.true.i226, label %for.body40.cond.end.i229_crit_edge

for.body40.cond.end.i229_crit_edge:               ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i229

cond.true.i226:                                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i225 = getelementptr [16 x ptr], ptr @cx23885_risc_decode.instr, i32 0, i32 %shr.i223
  %34 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i225, align 4
  br label %cond.end.i229

cond.end.i229:                                    ; preds = %cond.true.i226, %for.body40.cond.end.i229_crit_edge
  %cond.i227 = phi ptr [ %35, %cond.true.i226 ], [ @.str.151, %for.body40.cond.end.i229_crit_edge ]
  %call.i228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %29, ptr noundef %cond.i227) #12
  br label %for.body.i234

for.body.i234:                                    ; preds = %for.inc.i240.for.body.i234_crit_edge, %cond.end.i229
  %i.035.i230 = phi i32 [ 15, %cond.end.i229 ], [ %dec.i238, %for.inc.i240.for.body.i234_crit_edge ]
  %shl.i231 = shl i32 4096, %i.035.i230
  %and.i232 = and i32 %shl.i231, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool3.not.i233 = icmp eq i32 %and.i232, 0
  br i1 %tobool3.not.i233, label %for.body.i234.for.inc.i240_crit_edge, label %do.end6.i237

for.body.i234.for.inc.i240_crit_edge:             ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i240

do.end6.i237:                                     ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i235 = getelementptr [16 x ptr], ptr @cx23885_risc_decode.bits, i32 0, i32 %i.035.i230
  %36 = ptrtoint ptr %arrayidx8.i235 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx8.i235, align 4
  %call9.i236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %37) #12
  br label %for.inc.i240

for.inc.i240:                                     ; preds = %do.end6.i237, %for.body.i234.for.inc.i240_crit_edge
  %dec.i238 = add nsw i32 %i.035.i230, -1
  %cmp.not.i239 = icmp eq i32 %i.035.i230, 0
  br i1 %cmp.not.i239, label %do.end12.i244, label %for.inc.i240.for.body.i234_crit_edge

for.inc.i240.for.body.i234_crit_edge:             ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i234

do.end12.i244:                                    ; preds = %for.inc.i240
  %and14.i241 = and i32 %29, 4095
  %call15.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %and14.i241) #12
  %38 = lshr i32 50809, %shr.i223
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool18.not.not.i243 = icmp eq i32 %39, 0
  br i1 %tobool18.not.not.i243, label %cx23885_risc_decode.exit248, label %do.end12.i244.for.inc88_crit_edge

do.end12.i244.for.inc88_crit_edge:                ; preds = %do.end12.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88

cx23885_risc_decode.exit248:                      ; preds = %do.end12.i244
  %arrayidx17.i245 = getelementptr [16 x i32], ptr @cx23885_risc_decode.incr, i32 0, i32 %shr.i223
  %40 = ptrtoint ptr %arrayidx17.i245 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.i245, align 4
  %42 = lshr i32 14466, %shr.i223
  %43 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp63251.not = icmp eq i32 %43, 0
  br i1 %cmp63251.not, label %cx23885_risc_decode.exit248.for.inc88_crit_edge, label %cx23885_risc_decode.exit248.for.body64_crit_edge

cx23885_risc_decode.exit248.for.body64_crit_edge: ; preds = %cx23885_risc_decode.exit248
  br label %for.body64

cx23885_risc_decode.exit248.for.inc88_crit_edge:  ; preds = %cx23885_risc_decode.exit248
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %cx23885_risc_decode.exit248.for.body64_crit_edge
  %j.0252 = phi i32 [ %inc86, %for.body64.for.body64_crit_edge ], [ 1, %cx23885_risc_decode.exit248.for.body64_crit_edge ]
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %46 = ptrtoint ptr %ctrl_start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrl_start, align 4
  %add69 = add i32 %j.0252, %i.2253
  %48 = lshr i32 %47, 2
  %49 = add i32 %48, %add69
  %shr72 = and i32 %49, 1073741823
  %add.ptr73 = getelementptr i32, ptr %45, i32 %shr72
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !743
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !777
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %add69, i32 noundef %51, i32 noundef %j.0252) #12
  %inc86 = add nuw i32 %j.0252, 1
  %exitcond256.not = icmp eq i32 %inc86, %41
  br i1 %exitcond256.not, label %for.body64.for.inc88_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

for.body64.for.inc88_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88

for.inc88:                                        ; preds = %for.body64.for.inc88_crit_edge, %cx23885_risc_decode.exit248.for.inc88_crit_edge, %do.end12.i244.for.inc88_crit_edge
  %cond24.i247259 = phi i32 [ %41, %cx23885_risc_decode.exit248.for.inc88_crit_edge ], [ 1, %do.end12.i244.for.inc88_crit_edge ], [ %41, %for.body64.for.inc88_crit_edge ]
  %add89 = add i32 %cond24.i247259, %i.2253
  %cmp39 = icmp ult i32 %add89, 16
  br i1 %cmp39, label %for.inc88.for.body40_crit_edge, label %do.end93

for.inc88.for.body40_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

do.end93:                                         ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  %fifo_start = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 4
  %52 = ptrtoint ptr %fifo_start to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fifo_start, align 4
  %fifo_size = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 5
  %54 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fifo_size, align 4
  %add98 = add i32 %55, %53
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %53, i32 noundef %add98) #12
  %56 = ptrtoint ptr %ctrl_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctrl_start, align 4
  %add108 = add i32 %57, 96
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %57, i32 noundef %add108) #12
  %58 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio, align 4
  %ptr1_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 6
  %60 = ptrtoint ptr %ptr1_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ptr1_reg, align 4
  %shr119 = lshr i32 %61, 2
  %add.ptr120 = getelementptr i32, ptr %59, i32 %shr119
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #9, !srcloc !743
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !778
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, i32 noundef %63) #12
  %64 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio, align 4
  %ptr2_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 7
  %66 = ptrtoint ptr %ptr2_reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ptr2_reg, align 4
  %shr134 = lshr i32 %67, 2
  %add.ptr135 = getelementptr i32, ptr %65, i32 %shr134
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #9, !srcloc !743
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !779
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name, i32 noundef %69) #12
  %70 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio, align 4
  %cnt1_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 8
  %72 = ptrtoint ptr %cnt1_reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cnt1_reg, align 4
  %shr149 = lshr i32 %73, 2
  %add.ptr150 = getelementptr i32, ptr %71, i32 %shr149
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #9, !srcloc !743
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !780
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name, i32 noundef %75) #12
  %76 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lmmio, align 4
  %cnt2_reg = getelementptr inbounds %struct.sram_channel, ptr %ch, i32 0, i32 9
  %78 = ptrtoint ptr %cnt2_reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cnt2_reg, align 4
  %shr164 = lshr i32 %79, 2
  %add.ptr165 = getelementptr i32, ptr %77, i32 %shr164
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #9, !srcloc !743
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !781
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %81) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx23885_find_hw(ptr noundef %dev, i32 noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 1, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %subdevs, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %grp_id = getelementptr i8, ptr %.pn, i32 68
  %1 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %grp_id, align 4
  %cmp4 = icmp eq i32 %2, %hw
  br i1 %cmp4, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sd.0.le = getelementptr i8, ptr %.pn, i32 -80
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %result.0 = phi ptr [ %sd.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret ptr %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_risc_buffer(ptr noundef %pci, ptr noundef %risc, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef %bottom_offset, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %top_offset)
  %cmp.not = icmp eq i32 %top_offset, -1
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = zext i1 %not.cmp.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bottom_offset)
  %cmp1.not = icmp eq i32 %bottom_offset, -1
  %inc3 = select i1 %cmp.not, i32 1, i32 2
  %fields.1 = select i1 %cmp1.not, i32 %spec.select, i32 %inc3
  %add = add i32 %padding, %bpl
  %mul = mul i32 %add, %lines
  %div69 = lshr i32 %mul, 12
  %add5 = add i32 %lines, 1
  %add6 = add i32 %add5, %div69
  %mul7 = mul nuw nsw i32 %fields.1, 12
  %0 = mul i32 %mul7, %add6
  %mul9 = add i32 %0, 60
  %1 = ptrtoint ptr %risc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul9, ptr %risc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %dma = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul9, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %cpu = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cpu, align 4
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  br i1 %cmp.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call fastcc ptr @cx23885_risc_field(ptr noundef nonnull %call.i, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef 0, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i32 noundef 0, i1 noundef zeroext true)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %rp.0 = phi ptr [ %call18, %if.then17 ], [ %call.i, %if.end14.if.end19_crit_edge ]
  br i1 %cmp1.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call fastcc ptr @cx23885_risc_field(ptr noundef %rp.0, ptr noundef %sglist, i32 noundef %bottom_offset, i32 noundef 512, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i32 noundef 0, i1 noundef zeroext %cmp.not)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %rp.1 = phi ptr [ %call23, %if.then21 ], [ %rp.0, %if.end19.if.end24_crit_edge ]
  %jmp = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 2
  %3 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rp.1, ptr %jmp, align 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rp.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul28 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %6 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul28, i32 %7)
  %cmp30 = icmp ugt i32 %mul28, %7
  br i1 %cmp30, label %do.body33, label %if.end24.cleanup_crit_edge, !prof !756

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1237, 0\0A.popsection", ""() #9, !srcloc !782
  unreachable

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cx23885_risc_field(ptr noundef writeonly %rp, ptr noundef %sglist, i32 noundef %offset, i32 noundef %sync_line, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i32 noundef %lpi, i1 noundef zeroext %jump) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %jump, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr i32, ptr %rp, i32 1
  %0 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 112, ptr %rp, align 4
  %incdec.ptr1 = getelementptr i32, ptr %rp, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %incdec.ptr, align 4
  %incdec.ptr2 = getelementptr i32, ptr %rp, i32 3
  %2 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %incdec.ptr1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rp.addr.0 = phi ptr [ %incdec.ptr2, %if.then ], [ %rp, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sync_line)
  %cmp.not = icmp eq i32 %sync_line, -1
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %sync_line, -2147450880
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %incdec.ptr4 = getelementptr i32, ptr %rp.addr.0, i32 1
  %4 = ptrtoint ptr %rp.addr.0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rp.addr.0, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %rp.addr.1 = phi ptr [ %incdec.ptr4, %if.then3 ], [ %rp.addr.0, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines)
  %cmp6135.not = icmp eq i32 %lines, 0
  br i1 %cmp6135.not, label %if.end5.for.end_crit_edge, label %while.cond.preheader.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lpi)
  %tobool10.not = icmp eq i32 %lpi, 0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end61.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %line.0139 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %if.end61.while.cond.preheader_crit_edge ]
  %sg.0138 = phi ptr [ %sglist, %while.cond.preheader.lr.ph ], [ %sg.3, %if.end61.while.cond.preheader_crit_edge ]
  %rp.addr.2137 = phi ptr [ %rp.addr.1, %while.cond.preheader.lr.ph ], [ %rp.addr.4, %if.end61.while.cond.preheader_crit_edge ]
  %offset.addr.0136 = phi i32 [ %offset, %while.cond.preheader.lr.ph ], [ %add62, %if.end61.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.addr.0136)
  %tobool7.not117 = icmp eq i32 %offset.addr.0136, 0
  br i1 %tobool7.not117, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %sg.1119 = phi ptr [ %call, %while.body.land.rhs_crit_edge ], [ %sg.0138, %while.cond.preheader.land.rhs_crit_edge ]
  %offset.addr.1118 = phi i32 [ %sub, %while.body.land.rhs_crit_edge ], [ %offset.addr.0136, %while.cond.preheader.land.rhs_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1119, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.1118, i32 %6)
  %cmp8.not = icmp ult i32 %offset.addr.1118, %6
  br i1 %cmp8.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub = sub i32 %offset.addr.1118, %6
  %call = tail call ptr @sg_next(ptr noundef %sg.1119) #9
  %tobool7.not = icmp eq i32 %sub, 0
  br i1 %tobool7.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %offset.addr.1.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %offset.addr.1118, %land.rhs.while.end_crit_edge ]
  %sg.1.lcssa = phi ptr [ %sg.0138, %while.cond.preheader.while.end_crit_edge ], [ %call, %while.body.while.end_crit_edge ], [ %sg.1119, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %line.0139)
  %cmp11.not = icmp eq i32 %line.0139, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %while.end.if.else_crit_edge, label %land.lhs.true12

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true12:                                  ; preds = %while.end
  %rem = urem i32 %line.0139, %lpi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool13.not = icmp eq i32 %rem, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end15_crit_edge, label %land.lhs.true12.if.else_crit_edge

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true12.if.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %while.end.if.else_crit_edge
  br label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true12.if.end15_crit_edge
  %sol.0 = phi i32 [ 134217728, %if.else ], [ 151060480, %land.lhs.true12.if.end15_crit_edge ]
  %dma_length16 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length16, align 4
  %sub17 = sub i32 %8, %offset.addr.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %bpl)
  %cmp18.not = icmp ult i32 %sub17, %bpl
  br i1 %cmp18.not, label %if.else27, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %or21 = or i32 %sol.0, %bpl
  %or22 = or i32 %or21, 335544320
  %9 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %incdec.ptr23 = getelementptr i32, ptr %rp.addr.2137, i32 1
  %10 = ptrtoint ptr %rp.addr.2137 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rp.addr.2137, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %add = add i32 %12, %offset.addr.1.lcssa
  %13 = tail call i32 @llvm.bswap.i32(i32 %add)
  %incdec.ptr24 = getelementptr i32, ptr %rp.addr.2137, i32 2
  %14 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr23, align 4
  %incdec.ptr25 = getelementptr i32, ptr %rp.addr.2137, i32 3
  %15 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr24, align 4
  %add26 = add i32 %offset.addr.1.lcssa, %bpl
  br label %if.end61

if.else27:                                        ; preds = %if.end15
  %or28 = or i32 %sol.0, %sub17
  %or31 = or i32 %or28, 268435456
  %16 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %incdec.ptr32 = getelementptr i32, ptr %rp.addr.2137, i32 1
  %17 = ptrtoint ptr %rp.addr.2137 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rp.addr.2137, align 4
  %dma_address33 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address33, align 4
  %add34 = add i32 %19, %offset.addr.1.lcssa
  %20 = tail call i32 @llvm.bswap.i32(i32 %add34)
  %incdec.ptr35 = getelementptr i32, ptr %rp.addr.2137, i32 2
  %21 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr32, align 4
  %22 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %incdec.ptr35, align 4
  %23 = ptrtoint ptr %dma_length16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_length16, align 4
  %sub38.neg = add i32 %offset.addr.1.lcssa, %bpl
  %sub39 = sub i32 %sub38.neg, %24
  %call40 = tail call ptr @sg_next(ptr noundef %sg.1.lcssa) #9
  %rp.addr.3123 = getelementptr i32, ptr %rp.addr.2137, i32 3
  %dma_length42124 = getelementptr inbounds %struct.scatterlist, ptr %call40, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length42124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length42124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %26)
  %cmp43125 = icmp ugt i32 %sub39, %26
  br i1 %cmp43125, label %if.else27.while.body44_crit_edge, label %if.else27.while.end54_crit_edge

if.else27.while.end54_crit_edge:                  ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end54

if.else27.while.body44_crit_edge:                 ; preds = %if.else27
  br label %while.body44

while.body44:                                     ; preds = %while.body44.while.body44_crit_edge, %if.else27.while.body44_crit_edge
  %27 = phi i32 [ %38, %while.body44.while.body44_crit_edge ], [ %26, %if.else27.while.body44_crit_edge ]
  %dma_length42130 = phi ptr [ %dma_length42, %while.body44.while.body44_crit_edge ], [ %dma_length42124, %if.else27.while.body44_crit_edge ]
  %rp.addr.3129 = phi ptr [ %rp.addr.3, %while.body44.while.body44_crit_edge ], [ %rp.addr.3123, %if.else27.while.body44_crit_edge ]
  %todo.0128 = phi i32 [ %sub52, %while.body44.while.body44_crit_edge ], [ %sub39, %if.else27.while.body44_crit_edge ]
  %sg.2127 = phi ptr [ %call53, %while.body44.while.body44_crit_edge ], [ %call40, %if.else27.while.body44_crit_edge ]
  %rp.addr.2.pn126 = phi ptr [ %rp.addr.3129, %while.body44.while.body44_crit_edge ], [ %rp.addr.2137, %if.else27.while.body44_crit_edge ]
  %or46 = or i32 %27, 268435456
  %28 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %incdec.ptr47 = getelementptr i32, ptr %rp.addr.2.pn126, i32 4
  %29 = ptrtoint ptr %rp.addr.3129 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rp.addr.3129, align 4
  %dma_address48 = getelementptr inbounds %struct.scatterlist, ptr %sg.2127, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address48, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %incdec.ptr49 = getelementptr i32, ptr %rp.addr.2.pn126, i32 5
  %33 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr47, align 4
  %34 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr49, align 4
  %35 = ptrtoint ptr %dma_length42130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_length42130, align 4
  %sub52 = sub i32 %todo.0128, %36
  %call53 = tail call ptr @sg_next(ptr noundef %sg.2127) #9
  %rp.addr.3 = getelementptr i32, ptr %rp.addr.3129, i32 3
  %dma_length42 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length42, align 4
  %cmp43 = icmp ugt i32 %sub52, %38
  br i1 %cmp43, label %while.body44.while.body44_crit_edge, label %while.body44.while.end54_crit_edge

while.body44.while.end54_crit_edge:               ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end54

while.body44.while.body44_crit_edge:              ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body44

while.end54:                                      ; preds = %while.body44.while.end54_crit_edge, %if.else27.while.end54_crit_edge
  %rp.addr.2.pn.lcssa = phi ptr [ %rp.addr.2137, %if.else27.while.end54_crit_edge ], [ %rp.addr.3129, %while.body44.while.end54_crit_edge ]
  %sg.2.lcssa = phi ptr [ %call40, %if.else27.while.end54_crit_edge ], [ %call53, %while.body44.while.end54_crit_edge ]
  %todo.0.lcssa = phi i32 [ %sub39, %if.else27.while.end54_crit_edge ], [ %sub52, %while.body44.while.end54_crit_edge ]
  %rp.addr.3.lcssa = phi ptr [ %rp.addr.3123, %if.else27.while.end54_crit_edge ], [ %rp.addr.3, %while.body44.while.end54_crit_edge ]
  %or55 = or i32 %todo.0.lcssa, 335544320
  %39 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %incdec.ptr56 = getelementptr i32, ptr %rp.addr.2.pn.lcssa, i32 4
  %40 = ptrtoint ptr %rp.addr.3.lcssa to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rp.addr.3.lcssa, align 4
  %dma_address57 = getelementptr inbounds %struct.scatterlist, ptr %sg.2.lcssa, i32 0, i32 3
  %41 = ptrtoint ptr %dma_address57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_address57, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %incdec.ptr58 = getelementptr i32, ptr %rp.addr.2.pn.lcssa, i32 5
  %44 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr56, align 4
  %incdec.ptr59 = getelementptr i32, ptr %rp.addr.2.pn.lcssa, i32 6
  %45 = ptrtoint ptr %incdec.ptr58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %incdec.ptr58, align 4
  br label %if.end61

if.end61:                                         ; preds = %while.end54, %if.then19
  %offset.addr.2 = phi i32 [ %add26, %if.then19 ], [ %todo.0.lcssa, %while.end54 ]
  %rp.addr.4 = phi ptr [ %incdec.ptr25, %if.then19 ], [ %incdec.ptr59, %while.end54 ]
  %sg.3 = phi ptr [ %sg.1.lcssa, %if.then19 ], [ %sg.2.lcssa, %while.end54 ]
  %add62 = add i32 %offset.addr.2, %padding
  %inc = add nuw i32 %line.0139, 1
  %exitcond.not = icmp eq i32 %inc, %lines
  br i1 %exitcond.not, label %if.end61.for.end_crit_edge, label %if.end61.while.cond.preheader_crit_edge

if.end61.while.cond.preheader_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %if.end5.for.end_crit_edge
  %rp.addr.2.lcssa = phi ptr [ %rp.addr.1, %if.end5.for.end_crit_edge ], [ %rp.addr.4, %if.end61.for.end_crit_edge ]
  ret ptr %rp.addr.2.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_risc_databuffer(ptr noundef %pci, ptr noundef %risc, ptr noundef %sglist, i32 noundef %bpl, i32 noundef %lines, i32 noundef %lpi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %lines, %bpl
  %div40 = lshr i32 %mul, 12
  %add = add i32 %lines, 1
  %add1 = add i32 %add, %div40
  %0 = mul i32 %add1, 12
  %mul3 = add i32 %0, 48
  %1 = ptrtoint ptr %risc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul3, ptr %risc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %dma = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul3, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %cpu = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cpu, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lpi)
  %cmp7 = icmp eq i32 %lpi, 0
  %call8 = tail call fastcc ptr @cx23885_risc_field(ptr noundef nonnull %call.i, ptr noundef %sglist, i32 noundef 0, i32 noundef -1, i32 noundef %bpl, i32 noundef 0, i32 noundef %lines, i32 noundef %lpi, i1 noundef zeroext %cmp7)
  %jmp = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 2
  %3 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %jmp, align 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul12 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %6 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12, i32 %7)
  %cmp14 = icmp ugt i32 %mul12, %7
  br i1 %cmp14, label %do.body17, label %if.end.cleanup_crit_edge, !prof !756

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1271, 0\0A.popsection", ""() #9, !srcloc !783
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_risc_vbibuffer(ptr noundef %pci, ptr noundef %risc, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef %bottom_offset, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %top_offset)
  %cmp.not = icmp eq i32 %top_offset, -1
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = zext i1 %not.cmp.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bottom_offset)
  %cmp1.not = icmp eq i32 %bottom_offset, -1
  %inc3 = select i1 %cmp.not, i32 1, i32 2
  %fields.1 = select i1 %cmp1.not, i32 %spec.select, i32 %inc3
  %add = add i32 %padding, %bpl
  %mul = mul i32 %add, %lines
  %div69 = lshr i32 %mul, 12
  %add5 = add i32 %lines, 1
  %add6 = add i32 %add5, %div69
  %mul7 = mul nuw nsw i32 %fields.1, 12
  %0 = mul i32 %mul7, %add6
  %mul9 = add i32 %0, 60
  %1 = ptrtoint ptr %risc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul9, ptr %risc, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %dma = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul9, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %cpu = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cpu, align 4
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  br i1 %cmp.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call fastcc ptr @cx23885_risc_field(ptr noundef nonnull %call.i, ptr noundef %sglist, i32 noundef %top_offset, i32 noundef 0, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i32 noundef 0, i1 noundef zeroext true)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %rp.0 = phi ptr [ %call18, %if.then17 ], [ %call.i, %if.end14.if.end19_crit_edge ]
  br i1 %cmp1.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call fastcc ptr @cx23885_risc_field(ptr noundef %rp.0, ptr noundef %sglist, i32 noundef %bottom_offset, i32 noundef 512, i32 noundef %bpl, i32 noundef %padding, i32 noundef %lines, i32 noundef 0, i1 noundef zeroext %cmp.not)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %rp.1 = phi ptr [ %call23, %if.then21 ], [ %rp.0, %if.end19.if.end24_crit_edge ]
  %jmp = getelementptr inbounds %struct.cx23885_riscmem, ptr %risc, i32 0, i32 2
  %3 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rp.1, ptr %jmp, align 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rp.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul28 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %6 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul28, i32 %7)
  %cmp30 = icmp ugt i32 %mul28, %7
  br i1 %cmp30, label %do.body33, label %if.end24.cleanup_crit_edge, !prof !756

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1319, 0\0A.popsection", ""() #9, !srcloc !784
  unreachable

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_free_buffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %risc1 = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %risc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %risc1, align 4
  %cpu = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_start_dma(ptr noundef readonly %port, ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62, i32 noundef %4, i32 noundef %6, i32 noundef %8) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !785
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %reg_dma_ctl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 12
  %11 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_dma_ctl, align 4
  %shr = lshr i32 %12, 2
  %add.ptr = getelementptr i32, ptr %10, i32 %shr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !786
  %dma_ctl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 25
  %15 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_ctl_val, align 4
  %neg = xor i32 %16, -1
  %and = and i32 %14, %neg
  %17 = tail call i32 @llvm.bswap.i32(i32 %and)
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %20 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_dma_ctl, align 4
  %shr15 = lshr i32 %21, 2
  %add.ptr16 = getelementptr i32, ptr %19, i32 %shr15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %17) #9, !srcloc !745
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sram_channels, align 8
  %sram_chno = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %sram_chno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sram_chno, align 4
  %arrayidx = getelementptr %struct.sram_channel, ptr %23, i32 %25
  %ts_packet_size = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 5
  %26 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ts_packet_size, align 4
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma, align 4
  %call17 = tail call i32 @cx23885_sram_channel_setup(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %27, i32 noundef %29)
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp18 = icmp ugt i32 %30, 5
  br i1 %cmp18, label %if.then19, label %do.end4.do.body25_crit_edge

do.end4.do.body25_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

if.then19:                                        ; preds = %do.end4
  %risc = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3
  %31 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sram_channels, align 8
  %33 = ptrtoint ptr %sram_chno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sram_chno, align 4
  %arrayidx22 = getelementptr %struct.sram_channel, ptr %32, i32 %34
  tail call void @cx23885_sram_channel_dump(ptr noundef %1, ptr noundef %arrayidx22)
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 4
  %name.i = getelementptr inbounds %struct.cx23885_dev, ptr %36, i32 0, i32 19
  %cpu.i = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpu.i, align 4
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name.i, ptr noundef %38, i32 noundef %40) #12
  %41 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp51.not.i = icmp ult i32 %42, 4
  br i1 %cmp51.not.i, label %if.then19.do.body25_crit_edge, label %if.then19.do.end4.i_crit_edge

if.then19.do.end4.i_crit_edge:                    ; preds = %if.then19
  br label %do.end4.i

if.then19.do.body25_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.cond.i:                                       ; preds = %for.end.i
  %add28.i = add i32 %cond24.i56.i, %i.052.i
  %43 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %risc, align 4
  %shr.i = lshr i32 %44, 2
  %cmp.i = icmp ult i32 %add28.i, %shr.i
  br i1 %cmp.i, label %for.cond.i.do.end4.i_crit_edge, label %for.cond.i.do.body25_crit_edge

for.cond.i.do.body25_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

for.cond.i.do.end4.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %for.cond.i.do.end4.i_crit_edge, %if.then19.do.end4.i_crit_edge
  %i.052.i = phi i32 [ %add28.i, %for.cond.i.do.end4.i_crit_edge ], [ 0, %if.then19.do.end4.i_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name.i, i32 noundef %i.052.i) #12
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr i32, ptr %46, i32 %i.052.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %shr.i.i = lshr i32 %49, 28
  %50 = lshr i32 49241, %shr.i.i
  %51 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.not.i.i, label %cond.true.i.i, label %do.end4.i.cond.end.i.i_crit_edge

do.end4.i.cond.end.i.i_crit_edge:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @cx23885_risc_decode.instr, i32 0, i32 %shr.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %do.end4.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %53, %cond.true.i.i ], [ @.str.151, %do.end4.i.cond.end.i.i_crit_edge ]
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %49, ptr noundef %cond.i.i) #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %cond.end.i.i
  %i.035.i.i = phi i32 [ 15, %cond.end.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 4096, %i.035.i.i
  %and.i.i = and i32 %shl.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end6.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end6.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i.i = getelementptr [16 x ptr], ptr @cx23885_risc_decode.bits, i32 0, i32 %i.035.i.i
  %54 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8.i.i, align 4
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %55) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end6.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.035.i.i, -1
  %cmp.not.i.i = icmp eq i32 %i.035.i.i, 0
  br i1 %cmp.not.i.i, label %do.end12.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end12.i.i:                                     ; preds = %for.inc.i.i
  %and14.i.i = and i32 %49, 4095
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %and14.i.i) #12
  %56 = lshr i32 50809, %shr.i.i
  %57 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool18.not.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool18.not.not.i.i, label %cx23885_risc_decode.exit.i, label %do.end12.i.i.for.end.i_crit_edge

do.end12.i.i.for.end.i_crit_edge:                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cx23885_risc_decode.exit.i:                       ; preds = %do.end12.i.i
  %arrayidx17.i.i = getelementptr [16 x i32], ptr @cx23885_risc_decode.incr, i32 0, i32 %shr.i.i
  %58 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx17.i.i, align 4
  %60 = lshr i32 14466, %shr.i.i
  %61 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1248.not.i = icmp eq i32 %61, 0
  br i1 %cmp1248.not.i, label %cx23885_risc_decode.exit.i.for.end.i_crit_edge, label %cx23885_risc_decode.exit.i.do.end16.i_crit_edge

cx23885_risc_decode.exit.i.do.end16.i_crit_edge:  ; preds = %cx23885_risc_decode.exit.i
  br label %do.end16.i

cx23885_risc_decode.exit.i.for.end.i_crit_edge:   ; preds = %cx23885_risc_decode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end16.i:                                       ; preds = %do.end16.i.do.end16.i_crit_edge, %cx23885_risc_decode.exit.i.do.end16.i_crit_edge
  %j.049.i = phi i32 [ %inc.i, %do.end16.i.do.end16.i_crit_edge ], [ 1, %cx23885_risc_decode.exit.i.do.end16.i_crit_edge ]
  %add.i = add i32 %j.049.i, %i.052.i
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cpu.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %63, i32 %add.i
  %64 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx22.i, align 4
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %name.i, i32 noundef %add.i, i32 noundef %65, i32 noundef %j.049.i) #12
  %inc.i = add nuw i32 %j.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %59
  br i1 %exitcond.not.i, label %do.end16.i.for.end.i_crit_edge, label %do.end16.i.do.end16.i_crit_edge

do.end16.i.do.end16.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

do.end16.i.for.end.i_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %do.end16.i.for.end.i_crit_edge, %cx23885_risc_decode.exit.i.for.end.i_crit_edge, %do.end12.i.i.for.end.i_crit_edge
  %cond24.i56.i = phi i32 [ %59, %cx23885_risc_decode.exit.i.for.end.i_crit_edge ], [ 1, %do.end12.i.i.for.end.i_crit_edge ], [ %59, %do.end16.i.for.end.i_crit_edge ]
  %66 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cpu.i, align 4
  %arrayidx25.i = getelementptr i32, ptr %67, i32 %i.052.i
  %68 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %69)
  %cmp26.i = icmp eq i32 %69, 112
  br i1 %cmp26.i, label %for.end.i.do.body25_crit_edge, label %for.cond.i

for.end.i.do.body25_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25:                                        ; preds = %for.end.i.do.body25_crit_edge, %for.cond.i.do.body25_crit_edge, %if.then19.do.body25_crit_edge, %do.end4.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !787
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ts_packet_size, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio, align 4
  %reg_lngth = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 13
  %75 = ptrtoint ptr %reg_lngth to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg_lngth, align 4
  %shr30 = lshr i32 %76, 2
  %add.ptr31 = getelementptr i32, ptr %74, i32 %shr30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %72) #9, !srcloc !745
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %77 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %board, align 4
  %portb = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %78, i32 2
  %79 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %portb, align 4
  %and33 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body25.if.end50_crit_edge

do.body25.if.end50_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %do.body25
  %portc = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %78, i32 3
  %81 = ptrtoint ptr %portc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %portc, align 4
  %and36 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef %80, i32 noundef %82) #12
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %do.body25.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp54 = icmp eq i32 %80, 3
  br i1 %cmp54, label %if.then55, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_av_clk(ptr noundef %1, i32 noundef 0) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50.if.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 21474800) #9
  %reg_src_sel = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 23
  %84 = ptrtoint ptr %reg_src_sel to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg_src_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool57.not = icmp eq i32 %85, 0
  br i1 %tobool57.not, label %if.end56.do.body67_crit_edge, label %do.body59

if.end56.do.body67_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.body59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !788
  tail call void @arm_heavy_mb() #9
  %src_sel_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 29
  %86 = ptrtoint ptr %src_sel_val to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %src_sel_val, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lmmio, align 4
  %91 = ptrtoint ptr %reg_src_sel to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg_src_sel, align 4
  %shr64 = lshr i32 %92, 2
  %add.ptr65 = getelementptr i32, ptr %90, i32 %shr64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %88) #9, !srcloc !745
  br label %do.body67

do.body67:                                        ; preds = %do.body59, %if.end56.do.body67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !789
  tail call void @arm_heavy_mb() #9
  %hw_sop_ctrl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 31
  %93 = ptrtoint ptr %hw_sop_ctrl_val to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw_sop_ctrl_val, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %96 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio, align 4
  %reg_hw_sop_ctrl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 14
  %98 = ptrtoint ptr %reg_hw_sop_ctrl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reg_hw_sop_ctrl, align 4
  %shr71 = lshr i32 %99, 2
  %add.ptr72 = getelementptr i32, ptr %97, i32 %shr71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %95) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !790
  tail call void @arm_heavy_mb() #9
  %ts_clk_en_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 28
  %100 = ptrtoint ptr %ts_clk_en_val to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ts_clk_en_val, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lmmio, align 4
  %reg_ts_clk_en = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 20
  %105 = ptrtoint ptr %reg_ts_clk_en to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reg_ts_clk_en, align 4
  %shr77 = lshr i32 %106, 2
  %add.ptr78 = getelementptr i32, ptr %104, i32 %shr77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %102) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !791
  tail call void @arm_heavy_mb() #9
  %vld_misc_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 30
  %107 = ptrtoint ptr %vld_misc_val to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vld_misc_val, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %110 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio, align 4
  %reg_vld_misc = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 19
  %112 = ptrtoint ptr %reg_vld_misc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg_vld_misc, align 4
  %shr83 = lshr i32 %113, 2
  %add.ptr84 = getelementptr i32, ptr %111, i32 %shr83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %109) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !792
  tail call void @arm_heavy_mb() #9
  %gen_ctrl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 27
  %114 = ptrtoint ptr %gen_ctrl_val to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %gen_ctrl_val, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lmmio, align 4
  %reg_gen_ctrl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 15
  %119 = ptrtoint ptr %reg_gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reg_gen_ctrl, align 4
  %shr89 = lshr i32 %120, 2
  %add.ptr90 = getelementptr i32, ptr %118, i32 %shr89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %116) #9, !srcloc !745
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 21474800) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !793
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lmmio, align 4
  %reg_gpcnt_ctl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 11
  %124 = ptrtoint ptr %reg_gpcnt_ctl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reg_gpcnt_ctl, align 4
  %shr95 = lshr i32 %125, 2
  %add.ptr96 = getelementptr i32, ptr %123, i32 %shr95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 50331648) #9, !srcloc !745
  %count = getelementptr inbounds %struct.cx23885_dmaqueue, ptr %q, i32 0, i32 1
  %126 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %count, align 4
  %127 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %board, align 4
  %portb99 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %128, i32 2
  %129 = ptrtoint ptr %portb99 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %portb99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp100 = icmp eq i32 %130, 1
  br i1 %cmp100, label %if.then101, label %do.body67.if.end115_crit_edge

do.body67.if.end115_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then101:                                       ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lmmio, align 4
  %add.ptr105 = getelementptr i32, ptr %132, i32 278547
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !794
  %134 = and i32 %133, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !795
  tail call void @arm_heavy_mb() #9
  %135 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lmmio, align 4
  %add.ptr114 = getelementptr i32, ptr %136, i32 278547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %134) #9, !srcloc !745
  br label %if.end115

if.end115:                                        ; preds = %if.then101, %do.body67.if.end115_crit_edge
  %137 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %board, align 4
  %portc118 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %138, i32 3
  %139 = ptrtoint ptr %portc118 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %portc118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp119 = icmp eq i32 %140, 1
  br i1 %cmp119, label %if.then120, label %if.end115.if.end134_crit_edge

if.end115.if.end134_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lmmio, align 4
  %add.ptr124 = getelementptr i32, ptr %142, i32 278547
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !796
  %144 = and i32 %143, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !797
  tail call void @arm_heavy_mb() #9
  %145 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lmmio, align 4
  %add.ptr133 = getelementptr i32, ptr %146, i32 278547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %144) #9, !srcloc !745
  br label %if.end134

if.end134:                                        ; preds = %if.then120, %if.end115.if.end134_crit_edge
  %147 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %board, align 4
  %portb137 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %148, i32 2
  %149 = ptrtoint ptr %portb137 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %portb137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %150)
  %cmp138 = icmp eq i32 %150, 3
  br i1 %cmp138, label %if.then139, label %if.end134.if.end172_crit_edge

if.end134.if.end172_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lmmio, align 4
  %add.ptr143 = getelementptr i32, ptr %152, i32 278547
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !798
  %154 = and i32 %153, -184549377
  %155 = or i32 %154, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !799
  tail call void @arm_heavy_mb() #9
  %156 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %lmmio, align 4
  %add.ptr153 = getelementptr i32, ptr %157, i32 278547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %155) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !800
  tail call void @arm_heavy_mb() #9
  %158 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lmmio, align 4
  %add.ptr160 = getelementptr i32, ptr %159, i32 278546
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !801
  %161 = or i32 %160, 285212800
  %162 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lmmio, align 4
  %add.ptr166 = getelementptr i32, ptr %163, i32 278546
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %161) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !802
  tail call void @arm_heavy_mb() #9
  %164 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %lmmio, align 4
  %add.ptr171 = getelementptr i32, ptr %165, i32 278539
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 1157632016) #9, !srcloc !745
  br label %if.end172

if.end172:                                        ; preds = %if.then139, %if.end134.if.end172_crit_edge
  %bridge = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 23
  %166 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bridge, align 4
  %168 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values)
  switch i32 %167, label %do.body228 [
    i32 885, label %if.end172.do.body173_crit_edge
    i32 887, label %if.end172.do.body173_crit_edge360
    i32 888, label %if.end172.do.body173_crit_edge361
  ]

if.end172.do.body173_crit_edge361:                ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body173

if.end172.do.body173_crit_edge360:                ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body173

if.end172.do.body173_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body173

do.body173:                                       ; preds = %if.end172.do.body173_crit_edge, %if.end172.do.body173_crit_edge360, %if.end172.do.body173_crit_edge361
  %169 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp174.not = icmp eq i32 %169, 0
  br i1 %cmp174.not, label %do.body173.do.end183_crit_edge, label %do.end178

do.body173.do.end183_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end183

do.end178:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #11
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62) #12
  br label %do.end183

do.end183:                                        ; preds = %do.end178, %do.body173.do.end183_crit_edge
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !803
  tail call void @arm_heavy_mb() #9
  %170 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %lmmio, align 4
  %reg_ts_int_msk = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 21
  %172 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %reg_ts_int_msk, align 4
  %shr190 = lshr i32 %173, 2
  %add.ptr191 = getelementptr i32, ptr %171, i32 %shr190
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191) #9, !srcloc !743
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !804
  %ts_int_msk_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 26
  %176 = ptrtoint ptr %ts_int_msk_val to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ts_int_msk_val, align 4
  %or200 = or i32 %177, %175
  %178 = tail call i32 @llvm.bswap.i32(i32 %or200)
  %179 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lmmio, align 4
  %181 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %reg_ts_int_msk, align 4
  %shr203 = lshr i32 %182, 2
  %add.ptr204 = getelementptr i32, ptr %180, i32 %shr203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %178) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !805
  tail call void @arm_heavy_mb() #9
  %183 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lmmio, align 4
  %185 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %reg_dma_ctl, align 4
  %shr212 = lshr i32 %186, 2
  %add.ptr213 = getelementptr i32, ptr %184, i32 %shr212
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #9, !srcloc !743
  %188 = tail call i32 @llvm.bswap.i32(i32 %187)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !806
  %189 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dma_ctl_val, align 4
  %or223 = or i32 %190, %188
  %191 = tail call i32 @llvm.bswap.i32(i32 %or223)
  %192 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lmmio, align 4
  %194 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %reg_dma_ctl, align 4
  %shr226 = lshr i32 %195, 2
  %add.ptr227 = getelementptr i32, ptr %193, i32 %shr226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 %191) #9, !srcloc !745
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  %pci_irqmask = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 24
  %196 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pci_irqmask, align 4
  %pci_irqmask_lock.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %pci_irqmask.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 10
  %198 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %pci_irqmask.i, align 4
  %or.i = or i32 %199, %197
  store i32 %or.i, ptr %pci_irqmask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i) #9
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %200 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pci_irqmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i.i, label %do.end183.cx23885_irq_enable_all.exit_crit_edge, label %do.body5.i.i

do.end183.cx23885_irq_enable_all.exit_crit_edge:  ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_irq_enable_all.exit

do.body5.i.i:                                     ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !746
  tail call void @arm_heavy_mb() #9
  %202 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %lmmio, align 4
  %add.ptr.i.i = getelementptr i32, ptr %203, i32 65540
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !743
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !747
  %or.i.i = or i32 %205, %201
  %206 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %207 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %lmmio, align 4
  %add.ptr14.i.i = getelementptr i32, ptr %208, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %206) #9, !srcloc !745
  br label %cx23885_irq_enable_all.exit

cx23885_irq_enable_all.exit:                      ; preds = %do.body5.i.i, %do.end183.cx23885_irq_enable_all.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i.i) #9
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !807
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %lmmio, align 4
  %add.ptr240 = getelementptr i32, ptr %210, i32 65536
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr240) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !808
  %212 = or i32 %211, 536870912
  %213 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %lmmio, align 4
  %add.ptr247 = getelementptr i32, ptr %214, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 %212) #9, !srcloc !745
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  %215 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %board, align 4
  %portb250 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %216, i32 2
  %217 = ptrtoint ptr %portb250 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %portb250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %218)
  %cmp251 = icmp eq i32 %218, 3
  br i1 %cmp251, label %if.then252, label %cx23885_irq_enable_all.exit.if.end253_crit_edge

cx23885_irq_enable_all.exit.if.end253_crit_edge:  ; preds = %cx23885_irq_enable_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253

do.body228:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #9, !srcloc !809
  unreachable

if.then252:                                       ; preds = %cx23885_irq_enable_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_av_clk(ptr noundef %1, i32 noundef 1) #9
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %cx23885_irq_enable_all.exit.if.end253_crit_edge
  %219 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %219)
  %cmp254 = icmp ugt i32 %219, 4
  br i1 %cmp254, label %do.body5.i, label %if.end253.if.end256_crit_edge

if.end253.if.end256_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body5.i:                                       ; preds = %if.end253
  %220 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %port, align 4
  %call.i351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171) #12
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp6.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp6.not.i, label %do.body5.i.do.end215.i_crit_edge, label %do.body19.i

do.body5.i.do.end215.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body19.i:                                      ; preds = %do.body5.i
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %221, i32 0, i32 8
  %222 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %223, i32 65536
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !743
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !810
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %225) #12
  %.pr586.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr586.i)
  %cmp20.not.i = icmp eq i32 %.pr586.i, 0
  br i1 %cmp20.not.i, label %do.body19.i.do.end215.i_crit_edge, label %do.body31.i

do.body19.i.do.end215.i_crit_edge:                ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body31.i:                                      ; preds = %do.body19.i
  %pci_irqmask_lock.i.i352 = getelementptr inbounds %struct.cx23885_dev, ptr %221, i32 0, i32 11
  %call2.i.i353 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i.i352) #9
  %226 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i.i354 = getelementptr i32, ptr %227, i32 65540
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i354) #9, !srcloc !743
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !811
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i.i352, i32 noundef %call2.i.i353) #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %229) #12
  %.pr588.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr588.pr.i)
  %cmp32.not.i = icmp eq i32 %.pr588.pr.i, 0
  br i1 %cmp32.not.i, label %do.body31.i.do.end215.i_crit_edge, label %do.body49.i

do.body31.i.do.end215.i_crit_edge:                ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body49.i:                                      ; preds = %do.body31.i
  %230 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %lmmio.i, align 4
  %add.ptr41.i = getelementptr i32, ptr %231, i32 65556
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #9, !srcloc !743
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !812
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %233) #12
  %.pr590.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr590.i)
  %cmp50.not.i = icmp eq i32 %.pr590.i, 0
  br i1 %cmp50.not.i, label %do.body49.i.do.end215.i_crit_edge, label %do.body67.i

do.body49.i.do.end215.i_crit_edge:                ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body67.i:                                      ; preds = %do.body49.i
  %234 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %lmmio.i, align 4
  %add.ptr59.i = getelementptr i32, ptr %235, i32 327696
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !743
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !813
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %237) #12
  %.pr592.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr592.pr.pr.i)
  %cmp68.not.i = icmp eq i32 %.pr592.pr.pr.i, 0
  br i1 %cmp68.not.i, label %do.body67.i.do.end215.i_crit_edge, label %do.body85.i

do.body67.i.do.end215.i_crit_edge:                ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body85.i:                                      ; preds = %do.body67.i
  %238 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %lmmio.i, align 4
  %add.ptr77.i = getelementptr i32, ptr %239, i32 65560
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #9, !srcloc !743
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !814
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %241) #12
  %.pr594.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr594.i)
  %cmp86.not.i = icmp eq i32 %.pr594.i, 0
  br i1 %cmp86.not.i, label %do.body85.i.do.end215.i_crit_edge, label %do.body103.i

do.body85.i.do.end215.i_crit_edge:                ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body103.i:                                     ; preds = %do.body85.i
  %242 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %lmmio.i, align 4
  %add.ptr95.i = getelementptr i32, ptr %243, i32 327760
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95.i) #9, !srcloc !743
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !815
  %call99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %245) #12
  %.pr596.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr596.pr.pr.i)
  %cmp104.not.i = icmp eq i32 %.pr596.pr.pr.i, 0
  br i1 %cmp104.not.i, label %do.body103.i.do.end215.i_crit_edge, label %do.body121.i

do.body103.i.do.end215.i_crit_edge:               ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body121.i:                                     ; preds = %do.body103.i
  %246 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %lmmio.i, align 4
  %add.ptr113.i = getelementptr i32, ptr %247, i32 278547
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113.i) #9, !srcloc !743
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !816
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %249) #12
  %.pr598.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr598.i)
  %cmp122.not.i = icmp eq i32 %.pr598.i, 0
  br i1 %cmp122.not.i, label %do.body121.i.do.end215.i_crit_edge, label %do.body139.i

do.body121.i.do.end215.i_crit_edge:               ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body139.i:                                     ; preds = %do.body121.i
  %250 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %lmmio.i, align 4
  %add.ptr131.i = getelementptr i32, ptr %251, i32 278539
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131.i) #9, !srcloc !743
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !817
  %call135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %253) #12
  %.pr600.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr600.pr.pr.pr.i)
  %cmp140.not.i = icmp eq i32 %.pr600.pr.pr.pr.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.do.end215.i_crit_edge, label %do.body157.i

do.body139.i.do.end215.i_crit_edge:               ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body157.i:                                     ; preds = %do.body139.i
  %254 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %lmmio.i, align 4
  %add.ptr149.i = getelementptr i32, ptr %255, i32 89
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149.i) #9, !srcloc !743
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !818
  %call153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %257) #12
  %.pr602.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr602.i)
  %cmp158.not.i = icmp eq i32 %.pr602.i, 0
  br i1 %cmp158.not.i, label %do.body157.i.do.end215.i_crit_edge, label %do.body176.i

do.body157.i.do.end215.i_crit_edge:               ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body176.i:                                     ; preds = %do.body157.i
  %reg_gpcnt.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 10
  %258 = ptrtoint ptr %reg_gpcnt.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %reg_gpcnt.i, align 4
  %260 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %lmmio.i, align 4
  %shr.i355 = lshr i32 %259, 2
  %add.ptr168.i = getelementptr i32, ptr %261, i32 %shr.i355
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168.i) #9, !srcloc !743
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !819
  %call172.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %259, i32 noundef %263) #12
  %.pr604.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr604.pr.pr.pr.i)
  %cmp177.not.i = icmp eq i32 %.pr604.pr.pr.pr.i, 0
  br i1 %cmp177.not.i, label %do.body176.i.do.end215.i_crit_edge, label %do.body196.i

do.body176.i.do.end215.i_crit_edge:               ; preds = %do.body176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.body196.i:                                     ; preds = %do.body176.i
  %264 = ptrtoint ptr %reg_gpcnt_ctl to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %reg_gpcnt_ctl, align 4
  %266 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %lmmio.i, align 4
  %shr187.i = lshr i32 %265, 2
  %add.ptr188.i = getelementptr i32, ptr %267, i32 %shr187.i
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188.i) #9, !srcloc !743
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !820
  %call192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %265, i32 noundef %269) #12
  %.pr606.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr606.i)
  %cmp197.not.i = icmp eq i32 %.pr606.i, 0
  br i1 %cmp197.not.i, label %do.body196.i.do.end215.i_crit_edge, label %do.end201.i

do.body196.i.do.end215.i_crit_edge:               ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end215.i

do.end201.i:                                      ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #11
  %270 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %reg_dma_ctl, align 4
  %272 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %lmmio.i, align 4
  %shr207.i = lshr i32 %271, 2
  %add.ptr208.i = getelementptr i32, ptr %273, i32 %shr207.i
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr208.i) #9, !srcloc !743
  %275 = tail call i32 @llvm.bswap.i32(i32 %274) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !821
  %call212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %271, i32 noundef %275) #12
  br label %do.end215.i

do.end215.i:                                      ; preds = %do.end201.i, %do.body196.i.do.end215.i_crit_edge, %do.body176.i.do.end215.i_crit_edge, %do.body157.i.do.end215.i_crit_edge, %do.body139.i.do.end215.i_crit_edge, %do.body121.i.do.end215.i_crit_edge, %do.body103.i.do.end215.i_crit_edge, %do.body85.i.do.end215.i_crit_edge, %do.body67.i.do.end215.i_crit_edge, %do.body49.i.do.end215.i_crit_edge, %do.body31.i.do.end215.i_crit_edge, %do.body19.i.do.end215.i_crit_edge, %do.body5.i.do.end215.i_crit_edge
  %276 = ptrtoint ptr %reg_src_sel to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %reg_src_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i = icmp eq i32 %277, 0
  br i1 %tobool.not.i, label %do.end215.i.do.body239.i_crit_edge, label %do.body217.i

do.end215.i.do.body239.i_crit_edge:               ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body239.i

do.body217.i:                                     ; preds = %do.end215.i
  %278 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp218.not.i = icmp eq i32 %278, 0
  br i1 %cmp218.not.i, label %do.body217.i.if.end256_crit_edge, label %do.end222.i

do.body217.i.if.end256_crit_edge:                 ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.end222.i:                                      ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #11
  %lmmio227.i = getelementptr inbounds %struct.cx23885_dev, ptr %221, i32 0, i32 8
  %279 = ptrtoint ptr %lmmio227.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %lmmio227.i, align 4
  %shr229.i = lshr i32 %277, 2
  %add.ptr230.i = getelementptr i32, ptr %280, i32 %shr229.i
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230.i) #9, !srcloc !743
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !822
  %call234.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %277, i32 noundef %282) #12
  br label %do.body239.i

do.body239.i:                                     ; preds = %do.end222.i, %do.end215.i.do.body239.i_crit_edge
  %.pr608.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr608.i)
  %cmp240.not.i = icmp eq i32 %.pr608.i, 0
  br i1 %cmp240.not.i, label %do.body239.i.if.end256_crit_edge, label %do.body259.i

do.body239.i.if.end256_crit_edge:                 ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body259.i:                                     ; preds = %do.body239.i
  %283 = ptrtoint ptr %reg_lngth to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %reg_lngth, align 4
  %lmmio248.i = getelementptr inbounds %struct.cx23885_dev, ptr %221, i32 0, i32 8
  %285 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %lmmio248.i, align 4
  %shr250.i = lshr i32 %284, 2
  %add.ptr251.i = getelementptr i32, ptr %286, i32 %shr250.i
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251.i) #9, !srcloc !743
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !823
  %call255.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %284, i32 noundef %288) #12
  %.pr610.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr610.i)
  %cmp260.not.i = icmp eq i32 %.pr610.i, 0
  br i1 %cmp260.not.i, label %do.body259.i.if.end256_crit_edge, label %do.body279.i

do.body259.i.if.end256_crit_edge:                 ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body279.i:                                     ; preds = %do.body259.i
  %289 = ptrtoint ptr %reg_hw_sop_ctrl to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %reg_hw_sop_ctrl, align 4
  %291 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %lmmio248.i, align 4
  %shr270.i = lshr i32 %290, 2
  %add.ptr271.i = getelementptr i32, ptr %292, i32 %shr270.i
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr271.i) #9, !srcloc !743
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !824
  %call275.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %290, i32 noundef %294) #12
  %.pr612.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr612.pr.i)
  %cmp280.not.i = icmp eq i32 %.pr612.pr.i, 0
  br i1 %cmp280.not.i, label %do.body279.i.if.end256_crit_edge, label %do.body299.i

do.body279.i.if.end256_crit_edge:                 ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body299.i:                                     ; preds = %do.body279.i
  %295 = ptrtoint ptr %reg_gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %reg_gen_ctrl, align 4
  %297 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %lmmio248.i, align 4
  %shr290.i = lshr i32 %296, 2
  %add.ptr291.i = getelementptr i32, ptr %298, i32 %shr290.i
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291.i) #9, !srcloc !743
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !825
  %call295.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %296, i32 noundef %300) #12
  %.pr614.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr614.i)
  %cmp300.not.i = icmp eq i32 %.pr614.i, 0
  br i1 %cmp300.not.i, label %do.body299.i.if.end256_crit_edge, label %do.body319.i

do.body299.i.if.end256_crit_edge:                 ; preds = %do.body299.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body319.i:                                     ; preds = %do.body299.i
  %reg_bd_pkt_status.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 16
  %301 = ptrtoint ptr %reg_bd_pkt_status.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %reg_bd_pkt_status.i, align 4
  %303 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %lmmio248.i, align 4
  %shr310.i = lshr i32 %302, 2
  %add.ptr311.i = getelementptr i32, ptr %304, i32 %shr310.i
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr311.i) #9, !srcloc !743
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !826
  %call315.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %302, i32 noundef %306) #12
  %.pr616.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr616.pr.pr.i)
  %cmp320.not.i = icmp eq i32 %.pr616.pr.pr.i, 0
  br i1 %cmp320.not.i, label %do.body319.i.if.end256_crit_edge, label %do.body339.i

do.body319.i.if.end256_crit_edge:                 ; preds = %do.body319.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body339.i:                                     ; preds = %do.body319.i
  %reg_sop_status.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 17
  %307 = ptrtoint ptr %reg_sop_status.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %reg_sop_status.i, align 4
  %309 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %lmmio248.i, align 4
  %shr330.i = lshr i32 %308, 2
  %add.ptr331.i = getelementptr i32, ptr %310, i32 %shr330.i
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331.i) #9, !srcloc !743
  %312 = tail call i32 @llvm.bswap.i32(i32 %311) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !827
  %call335.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %308, i32 noundef %312) #12
  %.pr618.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr618.i)
  %cmp340.not.i = icmp eq i32 %.pr618.i, 0
  br i1 %cmp340.not.i, label %do.body339.i.if.end256_crit_edge, label %do.body359.i

do.body339.i.if.end256_crit_edge:                 ; preds = %do.body339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body359.i:                                     ; preds = %do.body339.i
  %reg_fifo_ovfl_stat.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 18
  %313 = ptrtoint ptr %reg_fifo_ovfl_stat.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %reg_fifo_ovfl_stat.i, align 4
  %315 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %lmmio248.i, align 4
  %shr350.i = lshr i32 %314, 2
  %add.ptr351.i = getelementptr i32, ptr %316, i32 %shr350.i
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr351.i) #9, !srcloc !743
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !828
  %call355.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %314, i32 noundef %318) #12
  %.pr620.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr620.pr.pr.i)
  %cmp360.not.i = icmp eq i32 %.pr620.pr.pr.i, 0
  br i1 %cmp360.not.i, label %do.body359.i.if.end256_crit_edge, label %do.body379.i

do.body359.i.if.end256_crit_edge:                 ; preds = %do.body359.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body379.i:                                     ; preds = %do.body359.i
  %319 = ptrtoint ptr %reg_vld_misc to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %reg_vld_misc, align 4
  %321 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %lmmio248.i, align 4
  %shr370.i = lshr i32 %320, 2
  %add.ptr371.i = getelementptr i32, ptr %322, i32 %shr370.i
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr371.i) #9, !srcloc !743
  %324 = tail call i32 @llvm.bswap.i32(i32 %323) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !829
  %call375.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %320, i32 noundef %324) #12
  %.pr622.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr622.i)
  %cmp380.not.i = icmp eq i32 %.pr622.i, 0
  br i1 %cmp380.not.i, label %do.body379.i.if.end256_crit_edge, label %do.body399.i

do.body379.i.if.end256_crit_edge:                 ; preds = %do.body379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body399.i:                                     ; preds = %do.body379.i
  %325 = ptrtoint ptr %reg_ts_clk_en to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %reg_ts_clk_en, align 4
  %327 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %lmmio248.i, align 4
  %shr390.i = lshr i32 %326, 2
  %add.ptr391.i = getelementptr i32, ptr %328, i32 %shr390.i
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr391.i) #9, !srcloc !743
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !830
  %call395.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %326, i32 noundef %330) #12
  %.pr624.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr624.pr.pr.pr.i)
  %cmp400.not.i = icmp eq i32 %.pr624.pr.pr.pr.i, 0
  br i1 %cmp400.not.i, label %do.body399.i.if.end256_crit_edge, label %do.body419.i

do.body399.i.if.end256_crit_edge:                 ; preds = %do.body399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body419.i:                                     ; preds = %do.body399.i
  %331 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %reg_ts_int_msk, align 4
  %333 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %lmmio248.i, align 4
  %shr410.i = lshr i32 %332, 2
  %add.ptr411.i = getelementptr i32, ptr %334, i32 %shr410.i
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr411.i) #9, !srcloc !743
  %336 = tail call i32 @llvm.bswap.i32(i32 %335) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !831
  %call415.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %332, i32 noundef %336) #12
  %.pr626.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr626.i)
  %cmp420.not.i = icmp eq i32 %.pr626.i, 0
  br i1 %cmp420.not.i, label %do.body419.i.if.end256_crit_edge, label %do.body439.i

do.body419.i.if.end256_crit_edge:                 ; preds = %do.body419.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body439.i:                                     ; preds = %do.body419.i
  %reg_ts_int_stat.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 22
  %337 = ptrtoint ptr %reg_ts_int_stat.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %reg_ts_int_stat.i, align 4
  %339 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %lmmio248.i, align 4
  %shr430.i = lshr i32 %338, 2
  %add.ptr431.i = getelementptr i32, ptr %340, i32 %shr430.i
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr431.i) #9, !srcloc !743
  %342 = tail call i32 @llvm.bswap.i32(i32 %341) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !832
  %call435.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %338, i32 noundef %342) #12
  %.pr628.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr628.pr.pr.pr.i)
  %cmp440.not.i = icmp eq i32 %.pr628.pr.pr.pr.i, 0
  br i1 %cmp440.not.i, label %do.body439.i.if.end256_crit_edge, label %do.body457.i

do.body439.i.if.end256_crit_edge:                 ; preds = %do.body439.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body457.i:                                     ; preds = %do.body439.i
  %343 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %lmmio248.i, align 4
  %add.ptr449.i = getelementptr i32, ptr %344, i32 65541
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr449.i) #9, !srcloc !743
  %346 = tail call i32 @llvm.bswap.i32(i32 %345) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !833
  %call453.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %346) #12
  %.pr630.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr630.i)
  %cmp458.not.i = icmp eq i32 %.pr630.i, 0
  br i1 %cmp458.not.i, label %do.body457.i.if.end256_crit_edge, label %do.body475.i

do.body457.i.if.end256_crit_edge:                 ; preds = %do.body457.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body475.i:                                     ; preds = %do.body457.i
  %347 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %lmmio248.i, align 4
  %add.ptr467.i = getelementptr i32, ptr %348, i32 65550
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr467.i) #9, !srcloc !743
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !834
  %call471.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %350) #12
  %.pr632.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr632.pr.pr.pr.i)
  %cmp476.not.i = icmp eq i32 %.pr632.pr.pr.pr.i, 0
  br i1 %cmp476.not.i, label %do.body475.i.if.end256_crit_edge, label %do.body493.i

do.body475.i.if.end256_crit_edge:                 ; preds = %do.body475.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body493.i:                                     ; preds = %do.body475.i
  %351 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %lmmio248.i, align 4
  %add.ptr485.i = getelementptr i32, ptr %352, i32 65551
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr485.i) #9, !srcloc !743
  %354 = tail call i32 @llvm.bswap.i32(i32 %353) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !835
  %call489.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %354) #12
  %.pr634.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr634.i)
  %cmp494.not.i = icmp eq i32 %.pr634.i, 0
  br i1 %cmp494.not.i, label %do.body493.i.if.end256_crit_edge, label %do.body511.i

do.body493.i.if.end256_crit_edge:                 ; preds = %do.body493.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.body511.i:                                     ; preds = %do.body493.i
  %355 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %lmmio248.i, align 4
  %add.ptr503.i = getelementptr i32, ptr %356, i32 65554
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr503.i) #9, !srcloc !743
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !836
  %call507.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %358) #12
  %.pr636.pr.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr636.pr.pr.pr.i)
  %cmp512.not.i = icmp eq i32 %.pr636.pr.pr.pr.i, 0
  br i1 %cmp512.not.i, label %do.body511.i.if.end256_crit_edge, label %do.end516.i

do.body511.i.if.end256_crit_edge:                 ; preds = %do.body511.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

do.end516.i:                                      ; preds = %do.body511.i
  call void @__sanitizer_cov_trace_pc() #11
  %359 = ptrtoint ptr %lmmio248.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %lmmio248.i, align 4
  %add.ptr521.i = getelementptr i32, ptr %360, i32 65555
  %361 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr521.i) #9, !srcloc !743
  %362 = tail call i32 @llvm.bswap.i32(i32 %361) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !837
  %call525.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.171, i32 noundef %362) #12
  br label %if.end256

if.end256:                                        ; preds = %do.end516.i, %do.body511.i.if.end256_crit_edge, %do.body493.i.if.end256_crit_edge, %do.body475.i.if.end256_crit_edge, %do.body457.i.if.end256_crit_edge, %do.body439.i.if.end256_crit_edge, %do.body419.i.if.end256_crit_edge, %do.body399.i.if.end256_crit_edge, %do.body379.i.if.end256_crit_edge, %do.body359.i.if.end256_crit_edge, %do.body339.i.if.end256_crit_edge, %do.body319.i.if.end256_crit_edge, %do.body299.i.if.end256_crit_edge, %do.body279.i.if.end256_crit_edge, %do.body259.i.if.end256_crit_edge, %do.body239.i.if.end256_crit_edge, %do.body217.i.if.end256_crit_edge, %if.end253.if.end256_crit_edge
  %call2.i357 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %363 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %lmmio, align 4
  %add.ptr.i359 = getelementptr i32, ptr %364, i32 65540
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i359) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !811
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i357) #9
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end256, %do.end41
  %retval.0 = phi i32 [ 0, %if.end256 ], [ -22, %do.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_clear_bridge_error(ptr nocapture noundef readonly %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %need_dma_reset = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 60
  %0 = ptrtoint ptr %need_dma_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %need_dma_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 65572
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !838
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %5, i32 65573
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !839
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !840
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr13 = getelementptr i32, ptr %10, i32 65572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %3) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !841
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %12, i32 65573
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %6) #9, !srcloc !745
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr22 = getelementptr i32, ptr %14, i32 311360
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !842
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr29 = getelementptr i32, ptr %17, i32 311362
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !843
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %20, i32 311424
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !844
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr43 = getelementptr i32, ptr %23, i32 311426
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !845
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.158, i32 noundef %8, i32 noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_av_clk(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_buf_prepare(ptr noundef %buf, ptr nocapture noundef readonly %port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 5
  %2 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_packet_count, align 4
  %mul = mul i32 %5, %3
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf, i32 noundef 0) #9
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.70, ptr noundef %buf) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.not = icmp eq i32 %mul, 0
  br i1 %cmp9.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %do.end5
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul)
  %cmp934 = icmp ult i32 %10, %mul
  br i1 %cmp934, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i31

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i31:                                      ; preds = %vb2_plane_size.exit.thread
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp1.i = icmp ult i32 %12, %mul
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i31.if.end42.i_crit_edge

if.then.i31.if.end42.i_crit_edge:                 ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i31
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !846

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.256, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i31.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %14, %if.then38.i ], [ %mul, %if.then.i31.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %risc = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %20 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ts_packet_size, align 4
  %22 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ts_packet_count, align 4
  %mul.i = mul i32 %23, %21
  %div40.i = lshr i32 %mul.i, 12
  %add.i = add i32 %23, 1
  %add1.i = add i32 %add.i, %div40.i
  %24 = mul i32 %add1.i, 12
  %mul3.i = add i32 %24, 48
  %25 = ptrtoint ptr %risc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul3.i, ptr %risc, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dma.i = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul3.i, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #9
  %cpu.i = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %cpu.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %vb2_set_plane_payload.exit.cleanup_crit_edge, label %if.end.i

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %vb2_set_plane_payload.exit
  %call8.i = tail call fastcc ptr @cx23885_risc_field(ptr noundef nonnull %call.i.i, ptr noundef %19, i32 noundef 0, i32 noundef -1, i32 noundef %21, i32 noundef 0, i32 noundef %23, i32 noundef 0, i1 noundef zeroext true) #9
  %jmp.i = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %jmp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i, ptr %jmp.i, align 4
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpu.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call8.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 8
  %mul12.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %30 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12.i, i32 %31)
  %cmp14.i = icmp ugt i32 %mul12.i, %31
  br i1 %cmp14.i, label %do.body17.i, label %if.end.i.cleanup_crit_edge, !prof !756

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1271, 0\0A.popsection", ""() #9, !srcloc !783
  unreachable

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_buf_queue(ptr noundef %port, ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %mpegq = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %add = add i32 %3, 12
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %arrayidx, align 4
  %jmp = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jmp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 368, ptr %9, align 4
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %add7 = add i32 %12, 12
  %13 = tail call i32 @llvm.bswap.i32(i32 %add7)
  %14 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jmp, align 4
  %arrayidx10 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx10, align 4
  %17 = load ptr, ptr %jmp, align 4
  %arrayidx13 = getelementptr i32, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx13, align 4
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 53
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %19 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not = icmp eq ptr %20, %mpegq
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %22, ptr noundef %mpegq) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %queue, ptr %prev.i, align 4
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mpegq, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %queue, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp21.not = icmp eq i32 %27, 0
  br i1 %cmp21.not, label %list_add_tail.exit.if.end59_crit_edge, label %list_add_tail.exit.if.end59.sink.split_crit_edge

list_add_tail.exit.if.end59.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.sink.split

list_add_tail.exit.if.end59_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.else:                                          ; preds = %entry
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpu, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %29, align 4
  %prev35 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %prev35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev35, align 4
  %queue37 = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 1
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue37, ptr noundef %33, ptr noundef %mpegq) #9
  br i1 %call.i.i80, label %if.end.i.i82, label %if.else.list_add_tail.exit83_crit_edge

if.else.list_add_tail.exit83_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit83

if.end.i.i82:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue37, ptr %prev35, align 4
  %35 = ptrtoint ptr %queue37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mpegq, ptr %queue37, align 4
  %prev3.i.i81 = getelementptr inbounds %struct.cx23885_buffer, ptr %buf, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i81 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i81, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue37, ptr %33, align 4
  br label %list_add_tail.exit83

list_add_tail.exit83:                             ; preds = %if.end.i.i82, %if.else.list_add_tail.exit83_crit_edge
  %38 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %jmp42 = getelementptr i8, ptr %33, i32 20
  %41 = ptrtoint ptr %jmp42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %jmp42, align 4
  %arrayidx43 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx43, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp45.not = icmp eq i32 %44, 0
  br i1 %cmp45.not, label %list_add_tail.exit83.if.end59_crit_edge, label %list_add_tail.exit83.if.end59.sink.split_crit_edge

list_add_tail.exit83.if.end59.sink.split_crit_edge: ; preds = %list_add_tail.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.sink.split

list_add_tail.exit83.if.end59_crit_edge:          ; preds = %list_add_tail.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59.sink.split:                              ; preds = %list_add_tail.exit83.if.end59.sink.split_crit_edge, %list_add_tail.exit.if.end59.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.71, %list_add_tail.exit.if.end59.sink.split_crit_edge ], [ @.str.74, %list_add_tail.exit83.if.end59.sink.split_crit_edge ]
  %index54 = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 1
  %45 = ptrtoint ptr %index54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink, ptr noundef nonnull @.str.72, ptr noundef %buf, i32 noundef %46, ptr noundef nonnull @.str.72) #12
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %list_add_tail.exit83.if.end59_crit_edge, %list_add_tail.exit.if.end59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call15) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_cancel_buffers(ptr noundef %port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.77) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call fastcc void @cx23885_stop_dma(ptr noundef %port)
  %mpegq.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4
  %slock.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #9
  %1 = ptrtoint ptr %mpegq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %mpegq.i, align 4
  %cmp.i.not1.i = icmp eq ptr %2, %mpegq.i
  br i1 %cmp.i.not1.i, label %do.end2.do_cancel_buffers.exit_crit_edge, label %do.end2.while.body.i_crit_edge

do.end2.while.body.i_crit_edge:                   ; preds = %do.end2
  br label %while.body.i

do.end2.do_cancel_buffers.exit_crit_edge:         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_cancel_buffers.exit

while.body.i:                                     ; preds = %do.end19.i.while.body.i_crit_edge, %do.end2.while.body.i_crit_edge
  %3 = phi ptr [ %18, %do.end19.i.while.body.i_crit_edge ], [ %2, %do.end2.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %3, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #9
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not.i = icmp eq i32 %12, 0
  br i1 %cmp9.not.i, label %list_del.exit.i.do.end19.i_crit_edge, label %do.end13.i

list_del.exit.i.do.end19.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end13.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %index.i = getelementptr i8, ptr %3, i32 -732
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %dma.i = getelementptr i8, ptr %3, i32 24
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef %add.ptr.i, i32 noundef %14, ptr noundef nonnull @.str.78, i32 noundef %16) #12
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end13.i, %list_del.exit.i.do.end19.i_crit_edge
  %17 = ptrtoint ptr %mpegq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mpegq.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %mpegq.i
  br i1 %cmp.i.not.i, label %do.end19.i.do_cancel_buffers.exit_crit_edge, label %do.end19.i.while.body.i_crit_edge

do.end19.i.while.body.i_crit_edge:                ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end19.i.do_cancel_buffers.exit_crit_edge:      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_cancel_buffers.exit

do_cancel_buffers.exit:                           ; preds = %do.end19.i.do_cancel_buffers.exit_crit_edge, %do.end2.do_cancel_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_stop_dma(ptr nocapture noundef readonly %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.257) #12
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !847
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %reg_ts_int_msk = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 21
  %5 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ts_int_msk, align 4
  %shr = lshr i32 %6, 2
  %add.ptr = getelementptr i32, ptr %4, i32 %shr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !848
  %ts_int_msk_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 26
  %9 = ptrtoint ptr %ts_int_msk_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ts_int_msk_val, align 4
  %neg = xor i32 %10, -1
  %and = and i32 %8, %neg
  %11 = tail call i32 @llvm.bswap.i32(i32 %and)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %14 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_ts_int_msk, align 4
  %shr15 = lshr i32 %15, 2
  %add.ptr16 = getelementptr i32, ptr %13, i32 %shr15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %11) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !849
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %reg_dma_ctl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 12
  %18 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_dma_ctl, align 4
  %shr23 = lshr i32 %19, 2
  %add.ptr24 = getelementptr i32, ptr %17, i32 %shr23
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !743
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !850
  %dma_ctl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 25
  %22 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_ctl_val, align 4
  %neg28 = xor i32 %23, -1
  %and29 = and i32 %21, %neg28
  %24 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %27 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_dma_ctl, align 4
  %shr35 = lshr i32 %28, 2
  %add.ptr36 = getelementptr i32, ptr %26, i32 %shr35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %24) #9, !srcloc !745
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  br label %for.body

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %do.body5
  %delay.03 = phi i32 [ %inc, %if.end55.for.body_crit_edge ], [ 0, %do.body5 ]
  %49 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio, align 4
  %add.ptr41 = getelementptr i32, ptr %50, i32 65572
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !851
  %52 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %53, i32 65573
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !852
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp52 = icmp eq i32 %51, 0
  br i1 %cmp52, label %do.body56.split.loop.exit8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp53 = icmp eq i32 %54, 0
  br i1 %cmp53, label %do.body56.split.loop.exit4, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  %inc = add nuw nsw i32 %delay.03, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body56.split.loop.exit, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body56.split.loop.exit:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %56 = tail call i32 @llvm.bswap.i32(i32 %51)
  %57 = tail call i32 @llvm.bswap.i32(i32 %54)
  br label %do.body56

do.body56.split.loop.exit4:                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %58 = tail call i32 @llvm.bswap.i32(i32 %51)
  br label %do.body56

do.body56.split.loop.exit8:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %54)
  br label %do.body56

do.body56:                                        ; preds = %do.body56.split.loop.exit8, %do.body56.split.loop.exit4, %do.body56.split.loop.exit
  %delay.0.lcssa = phi i32 [ 100, %do.body56.split.loop.exit ], [ %delay.03, %do.body56.split.loop.exit4 ], [ %delay.03, %do.body56.split.loop.exit8 ]
  %reg2_val.1 = phi i32 [ %57, %do.body56.split.loop.exit ], [ 0, %do.body56.split.loop.exit4 ], [ %59, %do.body56.split.loop.exit8 ]
  %reg1_val.1 = phi i32 [ %56, %do.body56.split.loop.exit ], [ %58, %do.body56.split.loop.exit4 ], [ 0, %do.body56.split.loop.exit8 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx23885_stop_dma.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx23885_stop_dma, %if.then62)) #9
          to label %do.end66 [label %if.then62], !srcloc !853

if.then62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx23885_stop_dma.__UNIQUE_ID_ddebug396, ptr noundef %dev63, ptr noundef nonnull @.str.258, i32 noundef %delay.0.lcssa, i32 noundef %reg1_val.1, i32 noundef %reg2_val.1) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body56
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 18
  %62 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %board, align 4
  %portb = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %63, i32 2
  %64 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %portb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp67 = icmp eq i32 %65, 3
  br i1 %cmp67, label %if.then68, label %do.end66.if.end95_crit_edge

do.end66.if.end95_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then68:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lmmio, align 4
  %add.ptr72 = getelementptr i32, ptr %67, i32 278547
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !854
  %69 = and i32 %68, -184549377
  %70 = or i32 %69, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !855
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio, align 4
  %add.ptr82 = getelementptr i32, ptr %72, i32 278547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %70) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !856
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio, align 4
  %reg_src_sel = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 23
  %75 = ptrtoint ptr %reg_src_sel to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg_src_sel, align 4
  %shr87 = lshr i32 %76, 2
  %add.ptr88 = getelementptr i32, ptr %74, i32 %shr87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !857
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lmmio, align 4
  %reg_gen_ctrl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 15
  %79 = ptrtoint ptr %reg_gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_gen_ctrl, align 4
  %shr93 = lshr i32 %80, 2
  %add.ptr94 = getelementptr i32, ptr %78, i32 %shr93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 134217728) #9, !srcloc !745
  br label %if.end95

if.end95:                                         ; preds = %if.then68, %do.end66.if.end95_crit_edge
  %81 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %board, align 4
  %portb98 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %82, i32 2
  %83 = ptrtoint ptr %portb98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %portb98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp99 = icmp eq i32 %84, 3
  br i1 %cmp99, label %if.then100, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_av_clk(ptr noundef %1, i32 noundef 0) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end95.if.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_irq_417(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %reg_gpcnt = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 10
  %2 = ptrtoint ptr %reg_gpcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_gpcnt, align 4
  %shr = lshr i32 %3, 2
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !858
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp2 = icmp ugt i32 %6, 6
  br i1 %cmp2, label %do.end, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %reg_ts_int_msk = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 21
  %9 = ptrtoint ptr %reg_ts_int_msk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_ts_int_msk, align 4
  %shr9 = lshr i32 %10, 2
  %add.ptr10 = getelementptr i32, ptr %8, i32 %shr9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !743
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !859
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %status, i32 noundef %12, i32 noundef %5) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.end.do.end17_crit_edge
  %and18 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %and21 = and i32 %status, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and27 = and i32 %status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and33 = and i32 %status, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %13 = and i32 %status, 1258240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.else, label %do.end38

do.end38:                                         ; preds = %do.end17
  %and = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %status) #12
  br i1 %tobool.not, label %do.end38.if.end55_crit_edge, label %do.body44

do.end38.if.end55_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body44:                                        ; preds = %do.end38
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp45.not = icmp eq i32 %15, 0
  br i1 %cmp45.not, label %do.body44.if.end55_crit_edge, label %do.end49

do.body44.if.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %do.body44.if.end55_crit_edge, %do.end38.if.end55_crit_edge
  br i1 %tobool19.not, label %if.end55.if.end70_crit_edge, label %do.body59

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.body59:                                        ; preds = %if.end55
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp60.not = icmp eq i32 %16, 0
  br i1 %cmp60.not, label %do.body59.if.end70_crit_edge, label %do.end64

do.body59.if.end70_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end64:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.80) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %do.body59.if.end70_crit_edge, %if.end55.if.end70_crit_edge
  br i1 %tobool22.not, label %if.end70.if.end85_crit_edge, label %do.body74

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.body74:                                        ; preds = %if.end70
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp75.not = icmp eq i32 %17, 0
  br i1 %cmp75.not, label %do.body74.if.end85_crit_edge, label %do.end79

do.body74.if.end85_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.end79:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.80) #12
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %do.body74.if.end85_crit_edge, %if.end70.if.end85_crit_edge
  br i1 %tobool25.not, label %if.end85.if.end100_crit_edge, label %do.body89

if.end85.if.end100_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.body89:                                        ; preds = %if.end85
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp90.not = icmp eq i32 %18, 0
  br i1 %cmp90.not, label %do.body89.if.end100_crit_edge, label %do.end94

do.body89.if.end100_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.end94:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.80) #12
  br label %if.end100

if.end100:                                        ; preds = %do.end94, %do.body89.if.end100_crit_edge, %if.end85.if.end100_crit_edge
  br i1 %tobool28.not, label %if.end100.if.end115_crit_edge, label %do.body104

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

do.body104:                                       ; preds = %if.end100
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp105.not = icmp eq i32 %19, 0
  br i1 %cmp105.not, label %do.body104.if.end115_crit_edge, label %do.end109

do.body104.if.end115_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

do.end109:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.80) #12
  br label %if.end115

if.end115:                                        ; preds = %do.end109, %do.body104.if.end115_crit_edge, %if.end100.if.end115_crit_edge
  br i1 %tobool31.not, label %if.end115.if.end130_crit_edge, label %do.body119

if.end115.if.end130_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

do.body119:                                       ; preds = %if.end115
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp120.not = icmp eq i32 %20, 0
  br i1 %cmp120.not, label %do.body119.if.end130_crit_edge, label %do.end124

do.body119.if.end130_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

do.end124:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.80) #12
  br label %if.end130

if.end130:                                        ; preds = %do.end124, %do.body119.if.end130_crit_edge, %if.end115.if.end130_crit_edge
  br i1 %tobool34.not, label %if.end130.do.body146_crit_edge, label %do.body134

if.end130.do.body146_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146

do.body134:                                       ; preds = %if.end130
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp135.not = icmp eq i32 %21, 0
  br i1 %cmp135.not, label %do.body134.do.body146_crit_edge, label %do.end139

do.body134.do.body146_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146

do.end139:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.80) #12
  br label %do.body146

do.body146:                                       ; preds = %do.end139, %do.body134.do.body146_crit_edge, %if.end130.do.body146_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !860
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %reg_dma_ctl = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 12
  %24 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_dma_ctl, align 4
  %shr152 = lshr i32 %25, 2
  %add.ptr153 = getelementptr i32, ptr %23, i32 %shr152
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #9, !srcloc !743
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !861
  %dma_ctl_val = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 25
  %28 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_ctl_val, align 4
  %neg = xor i32 %29, -1
  %and157 = and i32 %27, %neg
  %30 = tail call i32 @llvm.bswap.i32(i32 %and157)
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %33 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_dma_ctl, align 4
  %shr162 = lshr i32 %34, 2
  %add.ptr163 = getelementptr i32, ptr %32, i32 %shr162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %30) #9, !srcloc !745
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 22
  %35 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sram_channels, align 8
  %sram_chno = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 2
  %37 = ptrtoint ptr %sram_chno to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sram_chno, align 4
  %arrayidx = getelementptr %struct.sram_channel, ptr %36, i32 %38
  tail call void @cx23885_sram_channel_dump(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @cx23885_417_check_encoder(ptr noundef %dev) #9
  br label %do.body183

if.else:                                          ; preds = %do.end17
  %and164 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.else.do.body183_crit_edge, label %do.body167

if.else.do.body183_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body183

do.body167:                                       ; preds = %if.else
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp168 = icmp ugt i32 %39, 6
  br i1 %cmp168, label %do.end172, label %do.body167.do.end177_crit_edge

do.body167.do.end177_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end177

do.end172:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.80) #12
  br label %do.end177

do.end177:                                        ; preds = %do.end172, %do.body167.do.end177_crit_edge
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 9
  tail call void @_raw_spin_lock(ptr noundef %slock) #9
  %mpegq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 4
  tail call fastcc void @cx23885_wakeup(ptr noundef %mpegq, i32 noundef %5)
  tail call void @_raw_spin_unlock(ptr noundef %slock) #9
  br label %do.body183

do.body183:                                       ; preds = %do.end177, %if.else.do.body183_crit_edge, %do.body146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !862
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %status)
  %41 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio, align 4
  %reg_ts_int_stat = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 22
  %43 = ptrtoint ptr %reg_ts_int_stat to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_ts_int_stat, align 4
  %shr187 = lshr i32 %44, 2
  %add.ptr188 = getelementptr i32, ptr %42, i32 %shr187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %40) #9, !srcloc !745
  br label %cleanup

cleanup:                                          ; preds = %do.body183, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body183 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_417_check_encoder(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_wakeup(ptr noundef %q, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count3 = getelementptr inbounds %struct.cx23885_dmaqueue, ptr %q, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %entry
  %max_buf_done.0 = phi i32 [ 5, %entry ], [ %dec, %list_del.exit.do.body_crit_edge ]
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %1, %q
  br i1 %cmp.i.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %1, i32 -712
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i, ptr %timestamp, align 8
  %3 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count3, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %count3, align 4
  %sequence = getelementptr i8, ptr %1, i32 -272
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sequence, align 8
  %6 = load i32, ptr %count3, align 4
  %rem = and i32 %6, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %count)
  %cmp.not = icmp eq i32 %rem, %count
  %7 = load i32, ptr @debug, align 4
  br i1 %cmp.not, label %do.body19, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not = icmp eq i32 %7, 0
  br i1 %cmp8.not, label %do.body7.if.end34_crit_edge, label %do.body7.if.end34.sink.split_crit_edge

do.body7.if.end34.sink.split_crit_edge:           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

do.body7.if.end34_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp20 = icmp ugt i32 %7, 6
  br i1 %cmp20, label %do.body19.if.end34.sink.split_crit_edge, label %do.body19.if.end34_crit_edge

do.body19.if.end34_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body19.if.end34.sink.split_crit_edge:          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %do.body19.if.end34.sink.split_crit_edge, %do.body7.if.end34.sink.split_crit_edge
  %index28 = getelementptr i8, ptr %1, i32 -732
  %8 = ptrtoint ptr %index28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index28, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262, ptr noundef %add.ptr, i32 noundef %9, i32 noundef %count, i32 noundef %6) #12
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %do.body19.if.end34_crit_edge, %do.body7.if.end34_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_del.exit_crit_edge

if.end34.list_del.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end34.list_del.exit_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #9
  %18 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count3, align 4
  %rem38 = and i32 %19, 65535
  %sub = sub i32 %count, %rem38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp40 = icmp sgt i32 %sub, 0
  %dec = add nsw i32 %max_buf_done.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp41 = icmp ne i32 %dec, 0
  %or.cond = select i1 %cmp40, i1 %cmp41, i1 false
  br i1 %or.cond, label %list_del.exit.do.body_crit_edge, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_gpio_set(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !863
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !864
  %or = or i32 %3, %and
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr8 = getelementptr i32, ptr %6, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %4) #9, !srcloc !745
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and9 = and i32 %mask, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end42_crit_edge, label %if.then11

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then11:                                        ; preds = %if.end
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board.i, align 4
  %portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8, i32 2
  %9 = ptrtoint ptr %portb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 3
  br i1 %cmp.i.not, label %if.then11.do.end18_crit_edge, label %lor.lhs.false

if.then11.do.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.then11
  %portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8, i32 3
  %11 = ptrtoint ptr %portc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i69.not = icmp eq i32 %12, 3
  br i1 %cmp.i69.not, label %lor.lhs.false.do.end18_crit_edge, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.then11.do.end18_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name) #12
  br label %do.body22

do.body22:                                        ; preds = %do.end18, %lor.lhs.false.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !865
  tail call void @arm_heavy_mb() #9
  %lmmio26 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %lmmio26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio26, align 4
  %add.ptr27 = getelementptr i32, ptr %14, i32 278536
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !743
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !866
  %shr = lshr exact i32 %and9, 3
  %or39 = or i32 %16, %shr
  %17 = tail call i32 @llvm.bswap.i32(i32 %or39)
  %18 = ptrtoint ptr %lmmio26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio26, align 4
  %add.ptr41 = getelementptr i32, ptr %19, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %17) #9, !srcloc !745
  br label %if.end42

if.end42:                                         ; preds = %do.body22, %if.end.if.end42_crit_edge
  %and43 = and i32 %mask, 16252928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end52_crit_edge, label %do.end47

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %name49 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name49) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %if.end42.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_gpio_clear(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !867
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !868
  %neg = xor i32 %and, -1
  %and3 = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %6, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #9, !srcloc !745
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and8 = and i32 %mask, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end39_crit_edge, label %if.then10

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then10:                                        ; preds = %if.end
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board.i, align 4
  %portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8, i32 2
  %9 = ptrtoint ptr %portb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 3
  br i1 %cmp.i.not, label %if.then10.do.end17_crit_edge, label %lor.lhs.false

if.then10.do.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

lor.lhs.false:                                    ; preds = %if.then10
  %portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8, i32 3
  %11 = ptrtoint ptr %portc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i64.not = icmp eq i32 %12, 3
  br i1 %cmp.i64.not, label %lor.lhs.false.do.end17_crit_edge, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false.do.end17_crit_edge, %if.then10.do.end17_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name) #12
  br label %do.body21

do.body21:                                        ; preds = %do.end17, %lor.lhs.false.do.body21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !869
  tail call void @arm_heavy_mb() #9
  %lmmio25 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %lmmio25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio25, align 4
  %add.ptr26 = getelementptr i32, ptr %14, i32 278536
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !743
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !870
  %shr = lshr exact i32 %and8, 3
  %neg31 = xor i32 %shr, -1
  %and32 = and i32 %16, %neg31
  %17 = tail call i32 @llvm.bswap.i32(i32 %and32)
  %18 = ptrtoint ptr %lmmio25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio25, align 4
  %add.ptr38 = getelementptr i32, ptr %19, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #9, !srcloc !745
  br label %if.end39

if.end39:                                         ; preds = %do.body21, %if.end.if.end39_crit_edge
  %and40 = and i32 %mask, 16252928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %do.end44

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name46) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.end39.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_gpio_get(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !871
  %and3 = and i32 %and, %3
  br label %return

if.end:                                           ; preds = %entry
  %and4 = and i32 %mask, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end25, label %if.then6

if.then6:                                         ; preds = %if.end
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board.i, align 4
  %portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %5, i32 2
  %6 = ptrtoint ptr %portb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 3
  br i1 %cmp.i.not, label %if.then6.do.end_crit_edge, label %lor.lhs.false

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then6
  %portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %5, i32 3
  %8 = ptrtoint ptr %portc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i48.not = icmp eq i32 %9, 3
  br i1 %cmp.i48.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then6.do.end_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end, %lor.lhs.false.if.end14_crit_edge
  %lmmio17 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %lmmio17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio17, align 4
  %add.ptr18 = getelementptr i32, ptr %11, i32 278536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !743
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !872
  %and2445 = shl i32 %13, 3
  %shr2346 = and i32 %and2445, %and4
  br label %return

if.end25:                                         ; preds = %if.end
  %and26 = and i32 %mask, 16252928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.return_crit_edge, label %do.end30

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %name32 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name32) #12
  br label %return

return:                                           ; preds = %do.end30, %if.end25.return_crit_edge, %if.end14, %if.then
  %retval.0 = phi i32 [ %and3, %if.then ], [ %shr2346, %if.end14 ], [ 0, %do.end30 ], [ 0, %if.end25.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_gpio_enable(ptr noundef %dev, i32 noundef %mask, i32 noundef %asoutput) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asoutput)
  %tobool1.not = icmp eq i32 %asoutput, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !873
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !874
  %shl = shl nuw nsw i32 %and, 16
  %or = or i32 %3, %shl
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %6, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #9, !srcloc !745
  br label %if.end36

if.else:                                          ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %or.cond130 = and i1 %tobool1.not, %tobool.not.not
  br i1 %or.cond130, label %do.body17, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !875
  tail call void @arm_heavy_mb() #9
  %lmmio21 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %lmmio21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio21, align 4
  %add.ptr22 = getelementptr i32, ptr %8, i32 278532
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !743
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !876
  %shl27 = shl nuw nsw i32 %and, 16
  %neg28 = xor i32 %shl27, -1
  %and29 = and i32 %10, %neg28
  %11 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %12 = ptrtoint ptr %lmmio21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio21, align 4
  %add.ptr35 = getelementptr i32, ptr %13, i32 278532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %11) #9, !srcloc !745
  br label %if.end36

if.end36:                                         ; preds = %do.body17, %if.else.if.end36_crit_edge, %do.body
  %and37 = and i32 %mask, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end102_crit_edge, label %if.then39

if.end36.if.end102_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then39:                                        ; preds = %if.end36
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board.i, align 4
  %portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %portb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 3
  br i1 %cmp.i.not, label %if.then39.do.end46_crit_edge, label %lor.lhs.false

if.then39.do.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

lor.lhs.false:                                    ; preds = %if.then39
  %portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %15, i32 3
  %18 = ptrtoint ptr %portc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %portc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i134.not = icmp eq i32 %19, 3
  br i1 %cmp.i134.not, label %lor.lhs.false.do.end46_crit_edge, label %lor.lhs.false.land.lhs.true53_crit_edge

lor.lhs.false.land.lhs.true53_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true53

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %if.then39.do.end46_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name) #12
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %do.end46, %lor.lhs.false.land.lhs.true53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %lmmio84 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %lmmio84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio84, align 4
  %add.ptr85 = getelementptr i32, ptr %21, i32 278537
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %shr90 = lshr exact i32 %and37, 3
  br i1 %tobool1.not, label %do.body80, label %do.body56

do.body56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  %neg66 = xor i32 %shr90, -1
  %and67 = and i32 %23, %neg66
  %24 = tail call i32 @llvm.bswap.i32(i32 %and67)
  %25 = ptrtoint ptr %lmmio84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio84, align 4
  %add.ptr73 = getelementptr i32, ptr %26, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %24) #9, !srcloc !745
  br label %if.end102

do.body80:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  %or98 = or i32 %23, %shr90
  %27 = tail call i32 @llvm.bswap.i32(i32 %or98)
  %28 = ptrtoint ptr %lmmio84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio84, align 4
  %add.ptr100 = getelementptr i32, ptr %29, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %27) #9, !srcloc !745
  br label %if.end102

if.end102:                                        ; preds = %do.body80, %do.body56, %if.end36.if.end102_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @cx23885_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, ptr noundef nonnull @.str.2) #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @cx23885_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_initdev(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 13200, i32 noundef 3520, i32 noundef 2) #13
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dma_reset_workaround, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.422)
  switch i32 %0, label %for.body.preheader.i [
    i32 0, label %if.end.cx23885_does_need_dma_reset.exit_crit_edge
    i32 2, label %if.end.if.then2.i_crit_edge
  ]

if.end.if.then2.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.cx23885_does_need_dma_reset.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_does_need_dma_reset.exit

for.body.preheader.i:                             ; preds = %if.end
  %call.i = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5201, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.preheader.i.if.then6.i_crit_edge

for.body.preheader.i.if.then6.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call.1.i = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5155, ptr noundef null) #9
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then6.i_crit_edge

for.cond.i.if.then6.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5249, ptr noundef null) #9
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then6.i_crit_edge

for.cond.1.i.if.then6.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5145, ptr noundef null) #9
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.then6.i_crit_edge

for.cond.2.i.if.then6.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call ptr @pci_get_device(i32 noundef 4098, i32 noundef 23075, ptr noundef null) #9
  %tobool.not.4.i = icmp eq ptr %call.4.i, null
  br i1 %tobool.not.4.i, label %for.cond.3.i.cx23885_does_need_dma_reset.exit_crit_edge, label %for.cond.3.i.if.then6.i_crit_edge

for.cond.3.i.if.then6.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

for.cond.3.i.cx23885_does_need_dma_reset.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_does_need_dma_reset.exit

if.then6.i:                                       ; preds = %for.cond.3.i.if.then6.i_crit_edge, %for.cond.2.i.if.then6.i_crit_edge, %for.cond.1.i.if.then6.i_crit_edge, %for.cond.i.if.then6.i_crit_edge, %for.body.preheader.i.if.then6.i_crit_edge
  %call.lcssa.i = phi ptr [ %call.i, %for.body.preheader.i.if.then6.i_crit_edge ], [ %call.1.i, %for.cond.i.if.then6.i_crit_edge ], [ %call.2.i, %for.cond.1.i.if.then6.i_crit_edge ], [ %call.3.i, %for.cond.2.i.if.then6.i_crit_edge ], [ %call.4.i, %for.cond.3.i.if.then6.i_crit_edge ]
  tail call void @pci_dev_put(ptr noundef nonnull %call.lcssa.i) #9
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.then6.i, %if.end.if.then2.i_crit_edge
  br label %cx23885_does_need_dma_reset.exit

cx23885_does_need_dma_reset.exit:                 ; preds = %if.then2.i, %for.cond.3.i.cx23885_does_need_dma_reset.exit_crit_edge, %if.end.cx23885_does_need_dma_reset.exit_crit_edge
  %2 = phi i8 [ -128, %if.then2.i ], [ 0, %if.end.cx23885_does_need_dma_reset.exit_crit_edge ], [ 0, %for.cond.3.i.cx23885_does_need_dma_reset.exit_crit_edge ]
  %need_dma_reset114 = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 60
  %3 = ptrtoint ptr %need_dma_reset114 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load116 = load i8, ptr %need_dma_reset114, align 4
  %bf.clear = and i8 %bf.load116, 127
  %bf.set = or i8 %bf.clear, %2
  store i8 %bf.set, ptr %need_dma_reset114, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 1
  %call3 = tail call i32 @v4l2_device_register(ptr noundef %dev2, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %cx23885_does_need_dma_reset.exit.fail_free_crit_edge, label %if.end7

cx23885_does_need_dma_reset.exit.fail_free_crit_edge: ; preds = %cx23885_does_need_dma_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_free

if.end7:                                          ; preds = %cx23885_does_need_dma_reset.exit
  %ctrl_handler = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 2
  %call8 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @cx23885_initdev._key, ptr noundef nonnull @.str.265) #9
  %error = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end11, label %if.end7.fail_ctrl_crit_edge

if.end7.fail_ctrl_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_ctrl

if.end11:                                         ; preds = %if.end7
  %ctrl_handler13 = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %ctrl_handler13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrl_handler, ptr %ctrl_handler13, align 8
  %cx25840_work.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 34
  tail call void @__init_work(ptr noundef %cx25840_work.i, i32 noundef 0) #9
  %7 = ptrtoint ptr %cx25840_work.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %cx25840_work.i, align 32
  %lockdep_map.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.274, ptr noundef nonnull @cx23885_v4l2_dev_notify_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 34, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 34, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cx23885_av_work_handler, ptr %func.i, align 4
  %ir_rx_work.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 36
  tail call void @__init_work(ptr noundef %ir_rx_work.i, i32 noundef 0) #9
  %11 = ptrtoint ptr %ir_rx_work.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ir_rx_work.i, align 16
  %lockdep_map12.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 36, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12.i, ptr noundef nonnull @.str.276, ptr noundef nonnull @cx23885_v4l2_dev_notify_init.__key.275, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry14.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 36, i32 1
  %12 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 36, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry14.i, ptr %prev.i45.i, align 8
  %func16.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 36, i32 2
  %14 = ptrtoint ptr %func16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cx23885_ir_rx_work_handler, ptr %func16.i, align 4
  %ir_tx_work.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 38
  tail call void @__init_work(ptr noundef %ir_tx_work.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %ir_tx_work.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %ir_tx_work.i, align 128
  %lockdep_map24.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 38, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24.i, ptr noundef nonnull @.str.278, ptr noundef nonnull @cx23885_v4l2_dev_notify_init.__key.277, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry26.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 38, i32 1
  %16 = ptrtoint ptr %entry26.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry26.i, ptr %entry26.i, align 4
  %prev.i46.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 38, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i46.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry26.i, ptr %prev.i46.i, align 8
  %func28.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 38, i32 2
  %18 = ptrtoint ptr %func28.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cx23885_ir_tx_work_handler, ptr %func28.i, align 4
  %notify.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %notify.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cx23885_v4l2_dev_notify, ptr %notify.i, align 4
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pci_dev, ptr %pci, align 4
  %call14 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.fail_ctrl_crit_edge

if.end11.fail_ctrl_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_ctrl

if.end17:                                         ; preds = %if.end11
  %pci_irqmask_lock.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %pci_irqmask_lock.i, ptr noundef nonnull @.str.279, ptr noundef nonnull @cx23885_dev_setup.__key, i16 noundef signext 3) #9
  %slock.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 53
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.281, ptr noundef nonnull @cx23885_dev_setup.__key.280, i16 noundef signext 3) #9
  %lock.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.283, ptr noundef nonnull @cx23885_dev_setup.__key.282) #9
  %gpio_lock.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %gpio_lock.i, ptr noundef nonnull @.str.285, ptr noundef nonnull @cx23885_dev_setup.__key.284) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %call1.i.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i.i.i, ptr nonnull %call1.i.i.i, i32 1, ptr nonnull elementtype(i32) %call1.i.i.i) #9, !srcloc !877
  %22 = load i32, ptr @cx23885_devcount, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr @cx23885_devcount, align 4
  %nr.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nr.i, align 128
  %name.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 19
  %call12.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.286, i32 noundef %22) #9
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.423)
  switch i16 %27, label %do.body24.i [
    i16 -30592, label %if.end17.do.body31.i_crit_edge
    i16 -30638, label %if.then19.i
  ]

if.end17.do.body31.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31.i

if.then19.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31.i

do.body24.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 901, 0\0A.popsection", ""() #9, !srcloc !878
  unreachable

do.body31.i:                                      ; preds = %if.then19.i, %if.end17.do.body31.i_crit_edge
  %.sink715.i = phi i32 [ 885, %if.then19.i ], [ 888, %if.end17.do.body31.i_crit_edge ]
  %.sink.i = phi i32 [ 28000000, %if.then19.i ], [ 50000000, %if.end17.do.body31.i_crit_edge ]
  %cx23887_sram_channels.sink.i = phi ptr [ @cx23885_sram_channels, %if.then19.i ], [ @cx23887_sram_channels, %if.end17.do.body31.i_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 23
  %29 = ptrtoint ptr %bridge.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink715.i, ptr %bridge.i, align 4
  %clk_freq.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 13
  %30 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %clk_freq.i, align 8
  %sram_channels.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 22
  %31 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cx23887_sram_channels.sink.i, ptr %sram_channels.i, align 8
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32.not.i = icmp eq i32 %32, 0
  br i1 %cmp32.not.i, label %do.body31.i.do.end42.i_crit_edge, label %do.end37.i

do.body31.i.do.end42.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.288, i32 noundef %.sink715.i) #12
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end37.i, %do.body31.i.do.end42.i_crit_edge
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 18
  %33 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i, align 128
  %arrayidx.i = getelementptr [8 x i32], ptr @card, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx23885_bcount to i32))
  %37 = load i32, ptr @cx23885_bcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %37)
  %cmp44.i = icmp ult i32 %36, %37
  %spec.store.select.i = select i1 %cmp44.i, i32 %36, i32 -1
  %38 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select.i, ptr %board.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select.i)
  %cmp52707.i = icmp eq i32 %spec.store.select.i, -1
  br i1 %cmp52707.i, label %land.rhs.lr.ph.i, label %do.end42.i.if.end78.i_crit_edge

do.end42.i.if.end78.i_crit_edge:                  ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

land.rhs.lr.ph.i:                                 ; preds = %do.end42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx23885_idcount to i32))
  %39 = load i32, ptr @cx23885_idcount, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.0708.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc72.i, %for.inc.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0708.i, i32 %39)
  %exitcond.not.i = icmp eq i32 %i.0708.i, %39
  br i1 %exitcond.not.i, label %if.then76.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %40 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %subsystem_vendor.i, align 4
  %arrayidx58.i = getelementptr [0 x %struct.cx23885_subid], ptr @cx23885_subids, i32 0, i32 %i.0708.i
  %44 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp60.i = icmp eq i16 %43, %45
  br i1 %cmp60.i, label %land.lhs.true.i, label %for.body.i.for.incthread-pre-split.i_crit_edge

for.body.i.for.incthread-pre-split.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.incthread-pre-split.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 10
  %46 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %subsystem_device.i, align 2
  %subdevice.i = getelementptr [0 x %struct.cx23885_subid], ptr @cx23885_subids, i32 0, i32 %i.0708.i, i32 1
  %48 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %subdevice.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp66.i = icmp eq i16 %47, %49
  br i1 %cmp66.i, label %if.then68.i, label %land.lhs.true.i.for.incthread-pre-split.i_crit_edge

land.lhs.true.i.for.incthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.incthread-pre-split.i

if.then68.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr [0 x %struct.cx23885_subid], ptr @cx23885_subids, i32 0, i32 %i.0708.i, i32 2
  %50 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %card.i, align 4
  %52 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %board.i, align 4
  br label %for.inc.i

for.incthread-pre-split.i:                        ; preds = %land.lhs.true.i.for.incthread-pre-split.i_crit_edge, %for.body.i.for.incthread-pre-split.i_crit_edge
  %53 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.pr.i = load i32, ptr %board.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.incthread-pre-split.i, %if.then68.i
  %.pr.i = phi i32 [ %.pr.pr.i, %for.incthread-pre-split.i ], [ %51, %if.then68.i ]
  %inc72.i = add i32 %i.0708.i, 1
  %cmp52.i = icmp eq i32 %.pr.i, -1
  br i1 %cmp52.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.if.end78.ithread-pre-split_crit_edge

for.inc.i.if.end78.ithread-pre-split_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.ithread-pre-split

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.then76.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %board.i, align 4
  tail call void @cx23885_card_list(ptr noundef %call1.i.i.i) #9
  br label %if.end78.ithread-pre-split

if.end78.ithread-pre-split:                       ; preds = %if.then76.i, %for.inc.i.if.end78.ithread-pre-split_crit_edge
  %55 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %board.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end78.ithread-pre-split, %do.end42.i.if.end78.i_crit_edge
  %56 = phi i32 [ %.pr, %if.end78.ithread-pre-split ], [ %36, %do.end42.i.if.end78.i_crit_edge ]
  %57 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci, align 4
  %device80.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %device80.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %device80.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30638, i16 %60)
  %cmp82.i = icmp eq i16 %60, -30638
  br i1 %cmp82.i, label %if.then84.i, label %if.end78.i.if.end98.i_crit_edge

if.end78.i.if.end98.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then84.i:                                      ; preds = %if.end78.i
  %61 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.424)
  switch i32 %56, label %if.then84.i.if.end98.i_crit_edge [
    i32 57, label %if.then84.i.if.end98.sink.split.i_crit_edge
    i32 56, label %if.then94.i
  ]

if.then84.i.if.end98.sink.split.i_crit_edge:      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.sink.split.i

if.then84.i.if.end98.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then94.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.sink.split.i

if.end98.sink.split.i:                            ; preds = %if.then94.i, %if.then84.i.if.end98.sink.split.i_crit_edge
  %.sink716.i = phi i32 [ 60, %if.then94.i ], [ 61, %if.then84.i.if.end98.sink.split.i_crit_edge ]
  %62 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink716.i, ptr %board.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end98.sink.split.i, %if.then84.i.if.end98.i_crit_edge, %if.end78.i.if.end98.i_crit_edge
  %63 = phi i32 [ %56, %if.then84.i.if.end98.i_crit_edge ], [ %56, %if.end78.i.if.end98.i_crit_edge ], [ %.sink716.i, %if.end98.sink.split.i ]
  %clk_freq101.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %63, i32 11
  %64 = ptrtoint ptr %clk_freq101.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clk_freq101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp102.not.i = icmp eq i32 %65, 0
  br i1 %cmp102.not.i, label %if.end98.i.if.end109.i_crit_edge, label %if.then104.i

if.end98.i.if.end109.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

if.then104.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %clk_freq.i, align 8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then104.i, %if.end98.i.if.end109.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %63)
  %cmp111.i = icmp eq i32 %63, 43
  br i1 %cmp111.i, label %land.lhs.true113.i, label %if.end109.i.if.end121.i_crit_edge

if.end109.i.if.end121.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

land.lhs.true113.i:                               ; preds = %if.end109.i
  %subsystem_device115.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 10
  %67 = ptrtoint ptr %subsystem_device115.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %subsystem_device115.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28983, i16 %68)
  %cmp117.i = icmp eq i16 %68, 28983
  br i1 %cmp117.i, label %if.then119.i, label %land.lhs.true113.i.if.end121.i_crit_edge

land.lhs.true113.i.if.end121.i_crit_edge:         ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.then119.i:                                     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 25000000, ptr %clk_freq.i, align 8
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then119.i, %land.lhs.true113.i.if.end121.i_crit_edge, %if.end109.i.if.end121.i_crit_edge
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 1
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %number.i, align 4
  %conv123.i = zext i8 %73 to i32
  %pci_bus.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %pci_bus.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv123.i, ptr %pci_bus.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 6
  %75 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %76, 3
  %and.i = and i32 %shr.i, 31
  %pci_slot.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 7
  %77 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and.i, ptr %pci_slot.i, align 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %pci_irqmask.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 10
  %78 = ptrtoint ptr %pci_irqmask.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pci_irqmask.i.i, align 4
  %or.i.i = or i32 %79, 7936
  store i32 %or.i.i, ptr %pci_irqmask.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i.i) #9
  %i2c_bus.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14
  %nr126.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 1
  %80 = ptrtoint ptr %nr126.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %nr126.i, align 4
  %81 = ptrtoint ptr %i2c_bus.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call1.i.i.i, ptr %i2c_bus.i, align 16
  %reg_stat.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 7
  %82 = ptrtoint ptr %reg_stat.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1572880, ptr %reg_stat.i, align 4
  %reg_ctrl.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 6
  %83 = ptrtoint ptr %reg_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1572872, ptr %reg_ctrl.i, align 8
  %reg_addr.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 8
  %84 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1572864, ptr %reg_addr.i, align 16
  %reg_rdata.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 9
  %85 = ptrtoint ptr %reg_rdata.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1572876, ptr %reg_rdata.i, align 4
  %reg_wdata.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 10
  %86 = ptrtoint ptr %reg_wdata.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1572868, ptr %reg_wdata.i, align 8
  %i2c_period.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 0, i32 5
  %87 = ptrtoint ptr %i2c_period.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1660944384, ptr %i2c_period.i, align 4
  %arrayidx143.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1
  %nr144.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 1
  %88 = ptrtoint ptr %nr144.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %nr144.i, align 4
  %89 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call1.i.i.i, ptr %arrayidx143.i, align 32
  %reg_stat150.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 7
  %90 = ptrtoint ptr %reg_stat150.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1638416, ptr %reg_stat150.i, align 4
  %reg_ctrl153.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 6
  %91 = ptrtoint ptr %reg_ctrl153.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1638408, ptr %reg_ctrl153.i, align 8
  %reg_addr156.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 8
  %92 = ptrtoint ptr %reg_addr156.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1638400, ptr %reg_addr156.i, align 32
  %reg_rdata159.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 9
  %93 = ptrtoint ptr %reg_rdata159.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1638412, ptr %reg_rdata159.i, align 4
  %reg_wdata162.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 10
  %94 = ptrtoint ptr %reg_wdata162.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1638404, ptr %reg_wdata162.i, align 8
  %i2c_period165.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 5
  %95 = ptrtoint ptr %i2c_period165.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1660944384, ptr %i2c_period165.i, align 4
  %arrayidx167.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2
  %nr168.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 1
  %96 = ptrtoint ptr %nr168.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %nr168.i, align 4
  %97 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call1.i.i.i, ptr %arrayidx167.i, align 16
  %reg_stat174.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 7
  %98 = ptrtoint ptr %reg_stat174.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1703952, ptr %reg_stat174.i, align 4
  %reg_ctrl177.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 6
  %99 = ptrtoint ptr %reg_ctrl177.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1703944, ptr %reg_ctrl177.i, align 8
  %reg_addr180.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 8
  %100 = ptrtoint ptr %reg_addr180.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1703936, ptr %reg_addr180.i, align 16
  %reg_rdata183.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 9
  %101 = ptrtoint ptr %reg_rdata183.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1703948, ptr %reg_rdata183.i, align 4
  %reg_wdata186.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 10
  %102 = ptrtoint ptr %reg_wdata186.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1703940, ptr %reg_wdata186.i, align 8
  %i2c_period189.i = getelementptr %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 14, i32 2, i32 5
  %103 = ptrtoint ptr %i2c_period189.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 117440512, ptr %i2c_period189.i, align 4
  %104 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %board.i, align 4
  %portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %105, i32 2
  %106 = ptrtoint ptr %portb.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %portb.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.425)
  switch i32 %107, label %if.end121.i.if.end201.i_crit_edge [
    i32 1, label %if.end121.i.if.then199.i_crit_edge
    i32 3, label %if.end121.i.if.then199.i_crit_edge121
  ]

if.end121.i.if.then199.i_crit_edge121:            ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then199.i

if.end121.i.if.then199.i_crit_edge:               ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then199.i

if.end121.i.if.end201.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201.i

if.then199.i:                                     ; preds = %if.end121.i.if.then199.i_crit_edge, %if.end121.i.if.then199.i_crit_edge121
  %ts1.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 20
  tail call fastcc void @cx23885_init_tsport(ptr noundef %call1.i.i.i, ptr noundef %ts1.i, i32 noundef 1) #9
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.then199.i, %if.end121.i.if.end201.i_crit_edge
  %109 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %board.i, align 4
  %portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %110, i32 3
  %111 = ptrtoint ptr %portc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %portc.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.426)
  switch i32 %112, label %if.end201.i.if.end214.i_crit_edge [
    i32 1, label %if.end201.i.if.then212.i_crit_edge
    i32 3, label %if.end201.i.if.then212.i_crit_edge122
  ]

if.end201.i.if.then212.i_crit_edge122:            ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then212.i

if.end201.i.if.then212.i_crit_edge:               ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then212.i

if.end201.i.if.end214.i_crit_edge:                ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214.i

if.then212.i:                                     ; preds = %if.end201.i.if.then212.i_crit_edge, %if.end201.i.if.then212.i_crit_edge122
  %ts2.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 21
  tail call fastcc void @cx23885_init_tsport(ptr noundef %call1.i.i.i, ptr noundef %ts2.i, i32 noundef 2) #9
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then212.i, %if.end201.i.if.end214.i_crit_edge
  %114 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pci, align 4
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 47
  %116 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %resource.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 47, i32 0, i32 1
  %118 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.i.i = icmp eq i32 %119, 0
  %sub.i.i = sub i32 1, %117
  %add.i.i = add i32 %sub.i.i, %119
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %call.i.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %117, i32 noundef %cond.i.i, ptr noundef %name.i, i32 noundef 0) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %120 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci, align 4
  %resource15.i.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 47
  %122 = ptrtoint ptr %resource15.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %resource15.i.i, align 8
  br i1 %tobool.not.i.i, label %cx23885_dev_setup.exit, label %if.end232.i

if.end232.i:                                      ; preds = %if.end214.i
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 47, i32 0, i32 1
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp238.i = icmp eq i32 %125, 0
  %sub.i = sub i32 1, %123
  %add.i = add i32 %sub.i, %125
  %cond.i = select i1 %cmp238.i, i32 0, i32 %add.i
  %call248.i = tail call ptr @ioremap(i32 noundef %123, i32 noundef %cond.i) #9
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 8
  %126 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call248.i, ptr %lmmio.i, align 4
  %bmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 9
  %127 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call248.i, ptr %bmmio.i, align 16
  %128 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci, align 4
  %subsystem_vendor257.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 9
  %130 = ptrtoint ptr %subsystem_vendor257.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %subsystem_vendor257.i, align 4
  %conv258.i = zext i16 %131 to i32
  %subsystem_device260.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 10
  %132 = ptrtoint ptr %subsystem_device260.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %subsystem_device260.i, align 2
  %conv261.i = zext i16 %133 to i32
  %134 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %board.i, align 4
  %arrayidx263.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx263.i, align 4
  %138 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nr.i, align 128
  %arrayidx267.i = getelementptr [8 x i32], ptr @card, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx267.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %135)
  %cmp269.i = icmp eq i32 %141, %135
  %cond271.i = select i1 %cmp269.i, ptr @.str.295, ptr @.str.296
  %call272.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef %name.i, i32 noundef %conv258.i, i32 noundef %conv261.i, ptr noundef %137, i32 noundef %135, ptr noundef nonnull %cond271.i) #12
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.not.i.i = icmp eq i32 %142, 0
  br i1 %cmp.not.i.i, label %if.end232.i.do.end2.i.i_crit_edge, label %do.end.i686.i

if.end232.i.do.end2.i.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i.i

do.end.i686.i:                                    ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i685.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.335) #12
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i686.i, %if.end232.i.do.end2.i.i_crit_edge
  %143 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bridge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 885, i32 %144)
  %cmp3.i.i = icmp eq i32 %144, 885
  br i1 %cmp3.i.i, label %do.body5.i.i, label %do.end2.i.i.cx23885_pci_quirks.exit.i_crit_edge

do.end2.i.i.cx23885_pci_quirks.exit.i_crit_edge:  ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_pci_quirks.exit.i

do.body5.i.i:                                     ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !879
  tail call void @arm_heavy_mb() #9
  %145 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %146, i32 82118
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !880
  %148 = and i32 %147, -268435457
  %149 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i.i = getelementptr i32, ptr %150, i32 82118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %148) #9, !srcloc !745
  br label %cx23885_pci_quirks.exit.i

cx23885_pci_quirks.exit.i:                        ; preds = %do.body5.i.i, %do.end2.i.i.cx23885_pci_quirks.exit.i_crit_edge
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %call1.i.i.i) #9
  %151 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %board.i, align 4
  %tuner_type.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %152, i32 6
  %153 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tuner_type.i, align 4
  %tuner_type276.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 28
  %155 = ptrtoint ptr %tuner_type276.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %tuner_type276.i, align 8
  %tuner_addr.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %152, i32 8
  %156 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tuner_addr.i, align 4
  %tuner_addr279.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 29
  %158 = ptrtoint ptr %tuner_addr279.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %tuner_addr279.i, align 4
  %tuner_bus.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %152, i32 10
  %159 = ptrtoint ptr %tuner_bus.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tuner_bus.i, align 4
  %tuner_bus282.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 30
  %161 = ptrtoint ptr %tuner_bus282.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %tuner_bus282.i, align 16
  %radio_type.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %152, i32 7
  %162 = ptrtoint ptr %radio_type.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %radio_type.i, align 4
  %radio_type285.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 31
  %164 = ptrtoint ptr %radio_type285.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %radio_type285.i, align 4
  %radio_addr.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %152, i32 9
  %165 = ptrtoint ptr %radio_addr.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %radio_addr.i, align 1
  %radio_addr288.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 32
  %167 = ptrtoint ptr %radio_addr288.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %radio_addr288.i, align 8
  %168 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp290.not.i = icmp eq i32 %168, 0
  br i1 %cmp290.not.i, label %cx23885_pci_quirks.exit.i.do.end319.i_crit_edge, label %do.body305.i

cx23885_pci_quirks.exit.i.do.end319.i_crit_edge:  ; preds = %cx23885_pci_quirks.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end319.i

do.body305.i:                                     ; preds = %cx23885_pci_quirks.exit.i
  %conv299.i = zext i8 %157 to i32
  %call301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.288, i32 noundef %154, i32 noundef %conv299.i, i32 noundef %160) #12
  %.pr703.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr703.i)
  %cmp306.not.i = icmp eq i32 %.pr703.i, 0
  br i1 %cmp306.not.i, label %do.body305.i.do.end319.i_crit_edge, label %do.end311.i

do.body305.i.do.end319.i_crit_edge:               ; preds = %do.body305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end319.i

do.end311.i:                                      ; preds = %do.body305.i
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %radio_type285.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %radio_type285.i, align 4
  %171 = ptrtoint ptr %radio_addr288.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %radio_addr288.i, align 8
  %conv315.i = zext i8 %172 to i32
  %call316.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.288, i32 noundef %170, i32 noundef %conv315.i) #12
  br label %do.end319.i

do.end319.i:                                      ; preds = %do.end311.i, %do.body305.i.do.end319.i_crit_edge, %cx23885_pci_quirks.exit.i.do.end319.i_crit_edge
  %173 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %board.i, align 4
  %portb322.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %174, i32 2
  %175 = ptrtoint ptr %portb322.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %portb322.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %176)
  %cmp323.i = icmp eq i32 %176, 3
  br i1 %cmp323.i, label %do.end319.i.if.then331.i_crit_edge, label %lor.lhs.false325.i

do.end319.i.if.then331.i_crit_edge:               ; preds = %do.end319.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then331.i

lor.lhs.false325.i:                               ; preds = %do.end319.i
  %portc328.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %174, i32 3
  %177 = ptrtoint ptr %portc328.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %portc328.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %178)
  %cmp329.i = icmp eq i32 %178, 3
  br i1 %cmp329.i, label %lor.lhs.false325.i.if.then331.i_crit_edge, label %lor.lhs.false325.i.if.end332.i_crit_edge

lor.lhs.false325.i.if.end332.i_crit_edge:         ; preds = %lor.lhs.false325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end332.i

lor.lhs.false325.i.if.then331.i_crit_edge:        ; preds = %lor.lhs.false325.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then331.i

if.then331.i:                                     ; preds = %lor.lhs.false325.i.if.then331.i_crit_edge, %do.end319.i.if.then331.i_crit_edge
  tail call void @cx23885_mc417_init(ptr noundef %call1.i.i.i) #9
  br label %if.end332.i

if.end332.i:                                      ; preds = %if.then331.i, %lor.lhs.false325.i.if.end332.i_crit_edge
  %179 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp.not.i687.i = icmp eq i32 %179, 0
  br i1 %cmp.not.i687.i, label %if.end332.i.cx23885_reset.exit.i_crit_edge, label %do.end.i689.i

if.end332.i.cx23885_reset.exit.i_crit_edge:       ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_reset.exit.i

do.end.i689.i:                                    ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i688.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.336) #12
  br label %cx23885_reset.exit.i

cx23885_reset.exit.i:                             ; preds = %do.end.i689.i, %if.end332.i.cx23885_reset.exit.i_crit_edge
  tail call fastcc void @cx23885_shutdown(ptr noundef %call1.i.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !881
  tail call void @arm_heavy_mb() #9
  %180 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i691.i = getelementptr i32, ptr %181, i32 65541
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i691.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !882
  tail call void @arm_heavy_mb() #9
  %182 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lmmio.i, align 4
  %add.ptr8.i.i = getelementptr i32, ptr %183, i32 65545
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !883
  tail call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i.i = getelementptr i32, ptr %185, i32 65549
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !884
  tail call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lmmio.i, align 4
  %add.ptr16.i.i = getelementptr i32, ptr %187, i32 65553
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !885
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %lmmio.i, align 4
  %add.ptr20.i.i = getelementptr i32, ptr %189, i32 65557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !886
  tail call void @arm_heavy_mb() #9
  %190 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lmmio.i, align 4
  %add.ptr24.i.i = getelementptr i32, ptr %191, i32 65561
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 -1) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !887
  tail call void @arm_heavy_mb() #9
  %192 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lmmio.i, align 4
  %add.ptr28.i.i = getelementptr i32, ptr %193, i32 278546
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !888
  %and.i.i = and i32 %194, 128
  %195 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %lmmio.i, align 4
  %add.ptr33.i.i = getelementptr i32, ptr %196, i32 278546
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %and.i.i) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !889
  tail call void @arm_heavy_mb() #9
  %197 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %lmmio.i, align 4
  %add.ptr37.i.i = getelementptr i32, ptr %198, i32 278547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 217088) #9, !srcloc !745
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %call1.i.i.i) #9
  tail call void @msleep(i32 noundef 100) #9
  %199 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sram_channels.i, align 8
  %call38.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %200, i32 noundef 2880, i32 noundef 0) #9
  %201 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx40.i.i = getelementptr %struct.sram_channel, ptr %202, i32 1
  %call41.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx40.i.i, i32 noundef 128, i32 noundef 0) #9
  %203 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx43.i.i = getelementptr %struct.sram_channel, ptr %204, i32 2
  %call44.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx43.i.i, i32 noundef 752, i32 noundef 0) #9
  %205 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx46.i.i = getelementptr %struct.sram_channel, ptr %206, i32 3
  %call47.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx46.i.i, i32 noundef 128, i32 noundef 0) #9
  %207 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx49.i.i = getelementptr %struct.sram_channel, ptr %208, i32 4
  %call50.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx49.i.i, i32 noundef 128, i32 noundef 0) #9
  %209 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx52.i.i = getelementptr %struct.sram_channel, ptr %210, i32 5
  %call53.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx52.i.i, i32 noundef 752, i32 noundef 0) #9
  %211 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx55.i.i = getelementptr %struct.sram_channel, ptr %212, i32 6
  %call56.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx55.i.i, i32 noundef 128, i32 noundef 0) #9
  %213 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx58.i.i = getelementptr %struct.sram_channel, ptr %214, i32 7
  %call59.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx58.i.i, i32 noundef 128, i32 noundef 0) #9
  %215 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx61.i.i = getelementptr %struct.sram_channel, ptr %216, i32 8
  %call62.i.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %call1.i.i.i, ptr noundef %arrayidx61.i.i, i32 noundef 128, i32 noundef 0) #9
  tail call void @cx23885_gpio_setup(ptr noundef %call1.i.i.i) #9
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %217 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %218, i32 65540
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !811
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i.i.i) #9
  tail call fastcc void @cx23885_clear_bridge_error(ptr noundef %call1.i.i.i) #9
  %call335.i = tail call i32 @cx23885_i2c_register(ptr noundef %i2c_bus.i) #9
  %call338.i = tail call i32 @cx23885_i2c_register(ptr noundef %arrayidx143.i) #9
  %call341.i = tail call i32 @cx23885_i2c_register(ptr noundef %arrayidx167.i) #9
  tail call void @cx23885_card_setup(ptr noundef %call1.i.i.i) #9
  %subdevs.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %220 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %.pn710.i = load ptr, ptr %subdevs.i, align 4
  %cmp348.not712.i = icmp eq ptr %.pn710.i, %subdevs.i
  br i1 %cmp348.not712.i, label %cx23885_reset.exit.i.do.end369.i_crit_edge, label %cx23885_reset.exit.i.for.body350.i_crit_edge

cx23885_reset.exit.i.for.body350.i_crit_edge:     ; preds = %cx23885_reset.exit.i
  br label %for.body350.i

cx23885_reset.exit.i.do.end369.i_crit_edge:       ; preds = %cx23885_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end369.i

for.body350.i:                                    ; preds = %for.inc361.i.for.body350.i_crit_edge, %cx23885_reset.exit.i.for.body350.i_crit_edge
  %.pn713.i = phi ptr [ %.pn.i, %for.inc361.i.for.body350.i_crit_edge ], [ %.pn710.i, %cx23885_reset.exit.i.for.body350.i_crit_edge ]
  %__sd.0714.i = getelementptr i8, ptr %.pn713.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn713.i, i32 24
  %221 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %tuner.i, align 4
  %tobool.not.i107 = icmp eq ptr %224, null
  br i1 %tobool.not.i107, label %for.body350.i.for.inc361.i_crit_edge, label %land.lhs.true351.i

for.body350.i.for.inc361.i_crit_edge:             ; preds = %for.body350.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc361.i

land.lhs.true351.i:                               ; preds = %for.body350.i
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %tobool354.not.i = icmp eq ptr %226, null
  br i1 %tobool354.not.i, label %land.lhs.true351.i.for.inc361.i_crit_edge, label %if.then355.i

land.lhs.true351.i.for.inc361.i_crit_edge:        ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc361.i

if.then355.i:                                     ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #11
  %call359.i = tail call i32 %226(ptr noundef %__sd.0714.i) #9
  br label %for.inc361.i

for.inc361.i:                                     ; preds = %if.then355.i, %land.lhs.true351.i.for.inc361.i_crit_edge, %for.body350.i.for.inc361.i_crit_edge
  %227 = ptrtoint ptr %.pn713.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %.pn.i = load ptr, ptr %.pn713.i, align 4
  %cmp348.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp348.not.i, label %for.inc361.i.do.end369.i_crit_edge, label %for.inc361.i.for.body350.i_crit_edge

for.inc361.i.for.body350.i_crit_edge:             ; preds = %for.inc361.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body350.i

for.inc361.i.do.end369.i_crit_edge:               ; preds = %for.inc361.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end369.i

do.end369.i:                                      ; preds = %for.inc361.i.do.end369.i_crit_edge, %cx23885_reset.exit.i.do.end369.i_crit_edge
  %call372.i = tail call i32 @cx23885_ir_init(ptr noundef %call1.i.i.i) #9
  %228 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %board.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %229)
  %cmp374.i = icmp eq i32 %229, 55
  br i1 %cmp374.i, label %if.then376.i, label %do.end369.i.if.end377.i_crit_edge

do.end369.i.if.end377.i_crit_edge:                ; preds = %do.end369.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end377.i

if.then376.i:                                     ; preds = %do.end369.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 55, i32 2) to i32))
  %230 = load i32, ptr getelementptr inbounds ([0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 55, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %230)
  %cmp.i.not.i.i = icmp eq i32 %230, 3
  br i1 %cmp.i.not.i.i, label %if.then376.i.do.end46.i.i_crit_edge, label %lor.lhs.false.i.i

if.then376.i.do.end46.i.i_crit_edge:              ; preds = %if.then376.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i.i

lor.lhs.false.i.i:                                ; preds = %if.then376.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 55, i32 3) to i32))
  %231 = load i32, ptr getelementptr inbounds ([0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 55, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %231)
  %cmp.i134.not.i.i = icmp eq i32 %231, 3
  br i1 %cmp.i134.not.i.i, label %lor.lhs.false.i.i.do.end46.i.i_crit_edge, label %lor.lhs.false.i.i.cx23885_gpio_enable.exit.i_crit_edge

lor.lhs.false.i.i.cx23885_gpio_enable.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_gpio_enable.exit.i

lor.lhs.false.i.i.do.end46.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i.i

do.end46.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end46.i.i_crit_edge, %if.then376.i.do.end46.i.i_crit_edge
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name.i) #12
  br label %cx23885_gpio_enable.exit.i

cx23885_gpio_enable.exit.i:                       ; preds = %do.end46.i.i, %lor.lhs.false.i.i.cx23885_gpio_enable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %232 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %lmmio.i, align 4
  %add.ptr85.i.i = getelementptr i32, ptr %233, i32 278537
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %235 = or i32 %234, 1610612736
  %236 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %lmmio.i, align 4
  %add.ptr100.i.i = getelementptr i32, ptr %237, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i.i, i32 %235) #9, !srcloc !745
  br label %if.end377.i

if.end377.i:                                      ; preds = %cx23885_gpio_enable.exit.i, %do.end369.i.if.end377.i_crit_edge
  %238 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %board.i, align 4
  %porta.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %239, i32 1
  %240 = ptrtoint ptr %porta.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %porta.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %241)
  %cmp380.i = icmp eq i32 %241, 2
  br i1 %cmp380.i, label %if.then382.i, label %if.end377.i.if.end393.i_crit_edge

if.end377.i.if.end393.i_crit_edge:                ; preds = %if.end377.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end393.i

if.then382.i:                                     ; preds = %if.end377.i
  %call383.i = tail call i32 @cx23885_video_register(ptr noundef %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383.i)
  %cmp384.i = icmp slt i32 %call383.i, 0
  br i1 %cmp384.i, label %do.end389.i, label %if.then382.i.if.end393.i_crit_edge

if.then382.i.if.end393.i_crit_edge:               ; preds = %if.then382.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end393.i

do.end389.i:                                      ; preds = %if.then382.i
  call void @__sanitizer_cov_trace_pc() #11
  %call391.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.288) #12
  br label %if.end393.i

if.end393.i:                                      ; preds = %do.end389.i, %if.then382.i.if.end393.i_crit_edge, %if.end377.i.if.end393.i_crit_edge
  %242 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %board.i, align 4
  %portb396.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %243, i32 2
  %244 = ptrtoint ptr %portb396.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %portb396.i, align 4
  %246 = zext i32 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.427)
  switch i32 %245, label %if.end393.i.if.end438.i_crit_edge [
    i32 1, label %if.then399.i
    i32 3, label %if.then426.i
  ]

if.end393.i.if.end438.i_crit_edge:                ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end438.i

if.then399.i:                                     ; preds = %if.end393.i
  %num_fds_portb.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %243, i32 4
  %247 = ptrtoint ptr %num_fds_portb.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %num_fds_portb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool402.not.i = icmp eq i32 %248, 0
  br i1 %tobool402.not.i, label %if.then399.i.if.end408.i_crit_edge, label %if.then403.i

if.then399.i.if.end408.i_crit_edge:               ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end408.i

if.then403.i:                                     ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_frontends.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 20, i32 32
  %249 = ptrtoint ptr %num_frontends.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %num_frontends.i, align 16
  br label %if.end408.i

if.end408.i:                                      ; preds = %if.then403.i, %if.then399.i.if.end408.i_crit_edge
  %ts1409.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 20
  %call410.i = tail call i32 @cx23885_dvb_register(ptr noundef %ts1409.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410.i)
  %cmp411.i = icmp slt i32 %call410.i, 0
  br i1 %cmp411.i, label %if.end408.i.if.end438.sink.split.i_crit_edge, label %if.end408.i.if.end438.i_crit_edge

if.end408.i.if.end438.i_crit_edge:                ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end438.i

if.end408.i.if.end438.sink.split.i_crit_edge:     ; preds = %if.end408.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end438.sink.split.i

if.then426.i:                                     ; preds = %if.end393.i
  %call427.i = tail call i32 @cx23885_417_register(ptr noundef %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427.i)
  %cmp428.i = icmp slt i32 %call427.i, 0
  br i1 %cmp428.i, label %if.then426.i.if.end438.sink.split.i_crit_edge, label %if.then426.i.if.end438.i_crit_edge

if.then426.i.if.end438.i_crit_edge:               ; preds = %if.then426.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end438.i

if.then426.i.if.end438.sink.split.i_crit_edge:    ; preds = %if.then426.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end438.sink.split.i

if.end438.sink.split.i:                           ; preds = %if.then426.i.if.end438.sink.split.i_crit_edge, %if.end408.i.if.end438.sink.split.i_crit_edge
  %.str.310.sink.i = phi ptr [ @.str.307, %if.end408.i.if.end438.sink.split.i_crit_edge ], [ @.str.310, %if.then426.i.if.end438.sink.split.i_crit_edge ]
  %call435.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.310.sink.i, ptr noundef nonnull @.str.288) #12
  br label %if.end438.i

if.end438.i:                                      ; preds = %if.end438.sink.split.i, %if.then426.i.if.end438.i_crit_edge, %if.end408.i.if.end438.i_crit_edge, %if.end393.i.if.end438.i_crit_edge
  %250 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %board.i, align 4
  %portc441.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %251, i32 3
  %252 = ptrtoint ptr %portc441.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %portc441.i, align 4
  %254 = zext i32 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.428)
  switch i32 %253, label %if.end438.i.if.end484.i_crit_edge [
    i32 1, label %if.then444.i
    i32 3, label %if.then472.i
  ]

if.end438.i.if.end484.i_crit_edge:                ; preds = %if.end438.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484.i

if.then444.i:                                     ; preds = %if.end438.i
  %num_fds_portc.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %251, i32 5
  %255 = ptrtoint ptr %num_fds_portc.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %num_fds_portc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool447.not.i = icmp eq i32 %256, 0
  br i1 %tobool447.not.i, label %if.then444.i.if.end454.i_crit_edge, label %if.then448.i

if.then444.i.if.end454.i_crit_edge:               ; preds = %if.then444.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end454.i

if.then448.i:                                     ; preds = %if.then444.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_frontends453.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 21, i32 32
  %257 = ptrtoint ptr %num_frontends453.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %num_frontends453.i, align 4
  br label %if.end454.i

if.end454.i:                                      ; preds = %if.then448.i, %if.then444.i.if.end454.i_crit_edge
  %ts2455.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 21
  %call456.i = tail call i32 @cx23885_dvb_register(ptr noundef %ts2455.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call456.i)
  %cmp457.i = icmp slt i32 %call456.i, 0
  br i1 %cmp457.i, label %if.end454.i.if.end484.sink.split.i_crit_edge, label %if.end454.i.if.end484.i_crit_edge

if.end454.i.if.end484.i_crit_edge:                ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484.i

if.end454.i.if.end484.sink.split.i_crit_edge:     ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484.sink.split.i

if.then472.i:                                     ; preds = %if.end438.i
  %call473.i = tail call i32 @cx23885_417_register(ptr noundef %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call473.i)
  %cmp474.i = icmp slt i32 %call473.i, 0
  br i1 %cmp474.i, label %if.then472.i.if.end484.sink.split.i_crit_edge, label %if.then472.i.if.end484.i_crit_edge

if.then472.i.if.end484.i_crit_edge:               ; preds = %if.then472.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484.i

if.then472.i.if.end484.sink.split.i_crit_edge:    ; preds = %if.then472.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end484.sink.split.i

if.end484.sink.split.i:                           ; preds = %if.then472.i.if.end484.sink.split.i_crit_edge, %if.end454.i.if.end484.sink.split.i_crit_edge
  %.str.316.sink.i = phi ptr [ @.str.313, %if.end454.i.if.end484.sink.split.i_crit_edge ], [ @.str.316, %if.then472.i.if.end484.sink.split.i_crit_edge ]
  %call481.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.316.sink.i, ptr noundef nonnull @.str.288) #12
  br label %if.end484.i

if.end484.i:                                      ; preds = %if.end484.sink.split.i, %if.then472.i.if.end484.i_crit_edge, %if.end454.i.if.end484.i_crit_edge, %if.end438.i.if.end484.i_crit_edge
  %258 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i695.i = getelementptr i32, ptr %259, i32 81922
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i695.i) #9, !srcloc !743
  %261 = lshr i32 %260, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !890
  %trunc.i.i = trunc i32 %261 to i8
  %262 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.429)
  switch i8 %trunc.i.i, label %do.end.i698.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb2.i.i
    i8 2, label %sw.bb4.i.i
    i8 3, label %sw.bb6.i.i
    i8 4, label %sw.bb10.i.i
    i8 14, label %sw.bb21.i.i
    i8 15, label %sw.bb23.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %263 = ptrtoint ptr %hwrevision.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 160, ptr %hwrevision.i.i, align 4
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision3.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %264 = ptrtoint ptr %hwrevision3.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 161, ptr %hwrevision3.i.i, align 4
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision5.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %265 = ptrtoint ptr %hwrevision5.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 176, ptr %hwrevision5.i.i, align 4
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end484.i
  %266 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pci, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %267, i32 0, i32 8
  %268 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30592, i16 %269)
  %cmp.i697.i = icmp eq i16 %269, -30592
  %hwrevision8.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  br i1 %cmp.i697.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %270 = ptrtoint ptr %hwrevision8.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 192, ptr %hwrevision8.i.i, align 4
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %271 = ptrtoint ptr %hwrevision8.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 164, ptr %hwrevision8.i.i, align 4
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end484.i
  %272 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %pci, align 4
  %device12.i.i = getelementptr inbounds %struct.pci_dev, ptr %273, i32 0, i32 8
  %274 = ptrtoint ptr %device12.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %device12.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30592, i16 %275)
  %cmp14.i.i = icmp eq i16 %275, -30592
  %hwrevision17.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else18.i.i

if.then16.i.i:                                    ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %276 = ptrtoint ptr %hwrevision17.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 208, ptr %hwrevision17.i.i, align 4
  br label %sw.epilog.i.i

if.else18.i.i:                                    ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %277 = ptrtoint ptr %hwrevision17.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 165, ptr %hwrevision17.i.i, align 4
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision22.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %278 = ptrtoint ptr %hwrevision22.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 192, ptr %hwrevision22.i.i, align 4
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision24.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %279 = ptrtoint ptr %hwrevision24.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 177, ptr %hwrevision24.i.i, align 4
  br label %sw.epilog.i.i

do.end.i698.i:                                    ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwrevision26.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %280 = ptrtoint ptr %hwrevision26.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %hwrevision26.i.i, align 4
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.338, i32 noundef %281) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end.i698.i, %sw.bb23.i.i, %sw.bb21.i.i, %if.else18.i.i, %if.then16.i.i, %if.else.i.i, %if.then.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %hwrevision28.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 12
  %282 = ptrtoint ptr %hwrevision28.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %hwrevision28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool.not.i699.i = icmp eq i32 %283, 0
  br i1 %tobool.not.i699.i, label %do.end37.i.i, label %do.end31.i.i

do.end31.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.338, i32 noundef %283) #12
  br label %cx23885_dev_checkrevision.exit.i

do.end37.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.338, i32 noundef 0) #12
  br label %cx23885_dev_checkrevision.exit.i

cx23885_dev_checkrevision.exit.i:                 ; preds = %do.end37.i.i, %do.end31.i.i
  %284 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %board.i, align 4
  %ci_type.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %285, i32 13
  %286 = ptrtoint ptr %ci_type.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %ci_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp487.i = icmp sgt i32 %287, 0
  br i1 %cmp487.i, label %do.body490.i, label %cx23885_dev_checkrevision.exit.i.if.end501.i_crit_edge

cx23885_dev_checkrevision.exit.i.if.end501.i_crit_edge: ; preds = %cx23885_dev_checkrevision.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end501.i

do.body490.i:                                     ; preds = %cx23885_dev_checkrevision.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !891
  tail call void @arm_heavy_mb() #9
  %288 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %lmmio.i, align 4
  %add.ptr494.i = getelementptr i32, ptr %289, i32 82115
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr494.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !892
  %291 = and i32 %290, -65537
  %292 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %lmmio.i, align 4
  %add.ptr500.i = getelementptr i32, ptr %293, i32 82115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr500.i, i32 %291) #9, !srcloc !745
  %294 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %.pr705.i = load i32, ptr %board.i, align 4
  br label %if.end501.i

if.end501.i:                                      ; preds = %do.body490.i, %cx23885_dev_checkrevision.exit.i.if.end501.i_crit_edge
  %295 = phi i32 [ %.pr705.i, %do.body490.i ], [ %285, %cx23885_dev_checkrevision.exit.i.if.end501.i_crit_edge ]
  %296 = zext i32 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.430)
  switch i32 %295, label %if.end501.i.if.end22_crit_edge [
    i32 15, label %if.end501.i.do.body503.i_crit_edge
    i32 35, label %if.end501.i.do.body503.i_crit_edge123
  ]

if.end501.i.do.body503.i_crit_edge123:            ; preds = %if.end501.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body503.i

if.end501.i.do.body503.i_crit_edge:               ; preds = %if.end501.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body503.i

if.end501.i.if.end22_crit_edge:                   ; preds = %if.end501.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body503.i:                                     ; preds = %if.end501.i.do.body503.i_crit_edge, %if.end501.i.do.body503.i_crit_edge123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !893
  tail call void @arm_heavy_mb() #9
  %297 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %lmmio.i, align 4
  %add.ptr509.i = getelementptr i32, ptr %298, i32 82115
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr509.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !894
  %300 = and i32 %299, -65537
  %301 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %lmmio.i, align 4
  %add.ptr516.i = getelementptr i32, ptr %302, i32 82115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr516.i, i32 %300) #9, !srcloc !745
  br label %if.end22

cx23885_dev_setup.exit:                           ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i32 %123 to i64
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333, ptr noundef %name.i, i64 noundef %conv.i.i) #12
  %303 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pci, align 4
  %subsystem_vendor226.i = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 9
  %305 = ptrtoint ptr %subsystem_vendor226.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %subsystem_vendor226.i, align 4
  %conv227.i = zext i16 %306 to i32
  %subsystem_device229.i = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 10
  %307 = ptrtoint ptr %subsystem_device229.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %subsystem_device229.i, align 2
  %conv230.i = zext i16 %308 to i32
  %call231.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, ptr noundef %name.i, i32 noundef %conv227.i, i32 noundef %conv230.i) #12
  %309 = load i32, ptr @cx23885_devcount, align 4
  %dec.i = add i32 %309, -1
  store i32 %dec.i, ptr @cx23885_devcount, align 4
  br label %fail_ctrl

if.end22:                                         ; preds = %do.body503.i, %if.end501.i.if.end22_crit_edge
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %310 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %revision, align 4
  %pci_rev = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 4
  %312 = ptrtoint ptr %pci_rev to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %pci_rev, align 64
  %pci_lat = getelementptr inbounds %struct.cx23885_dev, ptr %call1.i.i.i, i32 0, i32 5
  %call23 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef %pci_lat) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %313 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i109 = icmp eq ptr %314, null
  br i1 %tobool.not.i.i109, label %if.end.i.i, label %if.end22.pci_name.exit_crit_edge

if.end22.pci_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev2, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end22.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %316, %if.end.i.i ], [ %314, %if.end22.pci_name.exit_crit_edge ]
  %317 = ptrtoint ptr %pci_rev to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %pci_rev, align 64
  %conv27 = zext i8 %318 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %319 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %irq, align 4
  %321 = ptrtoint ptr %pci_lat to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %pci_lat, align 1
  %conv29 = zext i8 %322 to i32
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %323 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %resource, align 8
  %conv30 = zext i32 %324 to i64
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef %name.i, ptr noundef %retval.0.i.i, i32 noundef %conv27, i32 noundef %320, i32 noundef %conv29, i64 noundef %conv30) #12
  tail call void @pci_set_master(ptr noundef %pci_dev) #9
  %call33 = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end43, label %do.end38

do.end38:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name.i) #12
  br label %fail_ctrl

if.end43:                                         ; preds = %pci_name.exit
  %325 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %irq, align 4
  %call.i110 = tail call i32 @request_threaded_irq(i32 noundef %326, ptr noundef nonnull @cx23885_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp48 = icmp slt i32 %call.i110, 0
  br i1 %cmp48, label %do.end53, label %if.end59

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %327 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %irq, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %name.i, i32 noundef %328) #12
  tail call fastcc void @cx23885_dev_unregister(ptr noundef nonnull %call1.i.i.i)
  br label %fail_ctrl

if.end59:                                         ; preds = %if.end43
  %329 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %board.i, align 4
  %331 = zext i32 %330 to i64
  call void @__sanitizer_cov_trace_switch(i64 %331, ptr @__sancov_gen_cov_switch_values.431)
  switch i32 %330, label %if.end59.sw.epilog_crit_edge [
    i32 17, label %if.end59.sw.epilog.sink.split_crit_edge
    i32 30, label %sw.bb60
  ]

if.end59.sw.epilog.sink.split_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb60, %if.end59.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8388608, %sw.bb60 ], [ 25165824, %if.end59.sw.epilog.sink.split_crit_edge ]
  tail call void @cx23885_irq_add_enable(ptr noundef nonnull %call1.i.i.i, i32 noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end59.sw.epilog_crit_edge
  tail call void @cx23885_ir_pci_int_enable(ptr noundef nonnull %call1.i.i.i) #9
  %call61 = tail call i32 @cx23885_input_init(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

fail_ctrl:                                        ; preds = %do.end53, %do.end38, %cx23885_dev_setup.exit, %if.end11.fail_ctrl_crit_edge, %if.end7.fail_ctrl_crit_edge
  %err.0 = phi i32 [ %call33, %do.end38 ], [ %call.i110, %do.end53 ], [ %5, %if.end7.fail_ctrl_crit_edge ], [ -5, %if.end11.fail_ctrl_crit_edge ], [ -22, %cx23885_dev_setup.exit ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %fail_free

fail_free:                                        ; preds = %fail_ctrl, %cx23885_does_need_dma_reset.exit.fail_free_crit_edge
  %err.1 = phi i32 [ %call3, %cx23885_does_need_dma_reset.exit.fail_free_crit_edge ], [ %err.0, %fail_ctrl ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail_free ], [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_finidev(ptr noundef %pci_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  tail call void @cx23885_input_fini(ptr noundef %add.ptr.i) #9
  tail call void @cx23885_ir_fini(ptr noundef %add.ptr.i) #9
  tail call fastcc void @cx23885_shutdown(ptr noundef %add.ptr.i)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %add.ptr.i) #9
  tail call void @pci_disable_device(ptr noundef %pci_dev) #9
  tail call fastcc void @cx23885_dev_unregister(ptr noundef %add.ptr.i)
  %ctrl_handler = getelementptr i8, ptr %1, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  tail call void @v4l2_device_unregister(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  %subdev_handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ts11 = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 20
  %ts22 = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %subdev_handled) #9
  %0 = ptrtoint ptr %subdev_handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %subdev_handled, align 1, !annotation !895
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 8
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 65541
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !896
  %pci_irqmask_lock.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %6, i32 65540
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !743
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !811
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i) #9
  %and = and i32 %8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp5 = icmp ugt i32 %9, 6
  br i1 %cmp5, label %do.end, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.346, i32 noundef %4, i32 noundef %8) #12
  br label %out

if.end12:                                         ; preds = %entry
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %11, i32 65545
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !743
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !897
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr23 = getelementptr i32, ptr %15, i32 65544
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !743
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !898
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr30 = getelementptr i32, ptr %19, i32 65557
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #9, !srcloc !743
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !899
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %23, i32 65556
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !743
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !900
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr44 = getelementptr i32, ptr %27, i32 65549
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !743
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !901
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr51 = getelementptr i32, ptr %31, i32 65548
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #9, !srcloc !743
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !902
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr58 = getelementptr i32, ptr %35, i32 65553
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !743
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !903
  %38 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio, align 4
  %add.ptr65 = getelementptr i32, ptr %39, i32 65552
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #9, !srcloc !743
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !904
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr81 = getelementptr i32, ptr %43, i32 311304
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #9, !srcloc !743
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !905
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr88 = getelementptr i32, ptr %47, i32 327688
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #9, !srcloc !743
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !906
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %reg_gpcnt = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 20, i32 10
  %52 = ptrtoint ptr %reg_gpcnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_gpcnt, align 4
  %shr = lshr i32 %53, 2
  %add.ptr95 = getelementptr i32, ptr %51, i32 %shr
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #9, !srcloc !743
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !907
  %56 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio, align 4
  %reg_gpcnt102 = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 21, i32 10
  %58 = ptrtoint ptr %reg_gpcnt102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_gpcnt102, align 4
  %shr103 = lshr i32 %59, 2
  %add.ptr104 = getelementptr i32, ptr %57, i32 %shr103
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #9, !srcloc !743
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !908
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp109 = icmp ugt i32 %62, 6
  br i1 %cmp109, label %do.body119, label %if.end12.do.end162_crit_edge

if.end12.do.end162_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

do.body119:                                       ; preds = %if.end12
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.346, i32 noundef %4, i32 noundef %8) #12
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr)
  %cmp120 = icmp ugt i32 %.pr, 6
  br i1 %cmp120, label %do.body130, label %do.body119.do.end162_crit_edge

do.body119.do.end162_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

do.body130:                                       ; preds = %do.body119
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.346, i32 noundef %13, i32 noundef %17, i32 noundef %45) #12
  %.pr601 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr601)
  %cmp131 = icmp ugt i32 %.pr601, 6
  br i1 %cmp131, label %do.body141, label %do.body130.do.end162_crit_edge

do.body130.do.end162_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

do.body141:                                       ; preds = %do.body130
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.346, i32 noundef %21, i32 noundef %25, i32 noundef %49) #12
  %.pr603.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr603.pr)
  %cmp142 = icmp ugt i32 %.pr603.pr, 6
  br i1 %cmp142, label %do.body152, label %do.body141.do.end162_crit_edge

do.body141.do.end162_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

do.body152:                                       ; preds = %do.body141
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.346, i32 noundef %29, i32 noundef %33, i32 noundef %55) #12
  %.pr605 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr605)
  %cmp153 = icmp ugt i32 %.pr605, 6
  br i1 %cmp153, label %do.end157, label %do.body152.do.end162_crit_edge

do.body152.do.end162_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end162

do.end157:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.346, i32 noundef %37, i32 noundef %41, i32 noundef %61) #12
  br label %do.end162

do.end162:                                        ; preds = %do.end157, %do.body152.do.end162_crit_edge, %do.body141.do.end162_crit_edge, %do.body130.do.end162_crit_edge, %do.body119.do.end162_crit_edge, %if.end12.do.end162_crit_edge
  %and163 = and i32 %4, 427826975
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool.not = icmp eq i32 %and163, 0
  br i1 %tobool.not, label %do.end162.if.end375_crit_edge, label %if.then164

do.end162.if.end375_crit_edge:                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end375

if.then164:                                       ; preds = %do.end162
  %and165 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.then164.if.end179_crit_edge, label %do.body168

if.then164.if.end179_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

do.body168:                                       ; preds = %if.then164
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %63)
  %cmp169 = icmp ugt i32 %63, 6
  br i1 %cmp169, label %do.end173, label %do.body168.if.end179_crit_edge

do.body168.if.end179_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

do.end173:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.346, i32 noundef 256) #12
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %do.body168.if.end179_crit_edge, %if.then164.if.end179_crit_edge
  %and180 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end179.if.end194_crit_edge, label %do.body183

if.end179.if.end194_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

do.body183:                                       ; preds = %if.end179
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %64)
  %cmp184 = icmp ugt i32 %64, 6
  br i1 %cmp184, label %do.end188, label %do.body183.if.end194_crit_edge

do.body183.if.end194_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

do.end188:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.346, i32 noundef 512) #12
  br label %if.end194

if.end194:                                        ; preds = %do.end188, %do.body183.if.end194_crit_edge, %if.end179.if.end194_crit_edge
  %and195 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end194.if.end209_crit_edge, label %do.body198

if.end194.if.end209_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

do.body198:                                       ; preds = %if.end194
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %65)
  %cmp199 = icmp ugt i32 %65, 6
  br i1 %cmp199, label %do.end203, label %do.body198.if.end209_crit_edge

do.body198.if.end209_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

do.end203:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.368, ptr noundef nonnull @.str.346, i32 noundef 1024) #12
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %do.body198.if.end209_crit_edge, %if.end194.if.end209_crit_edge
  %and210 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end209.if.end224_crit_edge, label %do.body213

if.end209.if.end224_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

do.body213:                                       ; preds = %if.end209
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %66)
  %cmp214 = icmp ugt i32 %66, 6
  br i1 %cmp214, label %do.end218, label %do.body213.if.end224_crit_edge

do.body213.if.end224_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

do.end218:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.346, i32 noundef 2048) #12
  br label %if.end224

if.end224:                                        ; preds = %do.end218, %do.body213.if.end224_crit_edge, %if.end209.if.end224_crit_edge
  %and225 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end239_crit_edge, label %do.body228

if.end224.if.end239_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

do.body228:                                       ; preds = %if.end224
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp229 = icmp ugt i32 %67, 6
  br i1 %cmp229, label %do.end233, label %do.body228.if.end239_crit_edge

do.body228.if.end239_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

do.end233:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #11
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.346, i32 noundef 4096) #12
  br label %if.end239

if.end239:                                        ; preds = %do.end233, %do.body228.if.end239_crit_edge, %if.end224.if.end239_crit_edge
  %and240 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %if.end239.if.end254_crit_edge, label %do.body243

if.end239.if.end254_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

do.body243:                                       ; preds = %if.end239
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %68)
  %cmp244 = icmp ugt i32 %68, 6
  br i1 %cmp244, label %do.end248, label %do.body243.if.end254_crit_edge

do.body243.if.end254_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

do.end248:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #11
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, ptr noundef nonnull @.str.346, i32 noundef 4) #12
  br label %if.end254

if.end254:                                        ; preds = %do.end248, %do.body243.if.end254_crit_edge, %if.end239.if.end254_crit_edge
  %and255 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end254.if.end269_crit_edge, label %do.body258

if.end254.if.end269_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269

do.body258:                                       ; preds = %if.end254
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %69)
  %cmp259 = icmp ugt i32 %69, 6
  br i1 %cmp259, label %do.end263, label %do.body258.if.end269_crit_edge

do.body258.if.end269_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269

do.end263:                                        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #11
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.346, i32 noundef 2) #12
  br label %if.end269

if.end269:                                        ; preds = %do.end263, %do.body258.if.end269_crit_edge, %if.end254.if.end269_crit_edge
  %and270 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %if.end269.if.end284_crit_edge, label %do.body273

if.end269.if.end284_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

do.body273:                                       ; preds = %if.end269
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %70)
  %cmp274 = icmp ugt i32 %70, 6
  br i1 %cmp274, label %do.end278, label %do.body273.if.end284_crit_edge

do.body273.if.end284_crit_edge:                   ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

do.end278:                                        ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, ptr noundef nonnull @.str.346, i32 noundef 1) #12
  br label %if.end284

if.end284:                                        ; preds = %do.end278, %do.body273.if.end284_crit_edge, %if.end269.if.end284_crit_edge
  %and285 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %if.end284.if.end299_crit_edge, label %do.body288

if.end284.if.end299_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

do.body288:                                       ; preds = %if.end284
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %71)
  %cmp289 = icmp ugt i32 %71, 6
  br i1 %cmp289, label %do.end293, label %do.body288.if.end299_crit_edge

do.body288.if.end299_crit_edge:                   ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

do.end293:                                        ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #11
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, ptr noundef nonnull @.str.346, i32 noundef 8) #12
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %do.body288.if.end299_crit_edge, %if.end284.if.end299_crit_edge
  %and300 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end299.if.end314_crit_edge, label %do.body303

if.end299.if.end314_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end314

do.body303:                                       ; preds = %if.end299
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %72)
  %cmp304 = icmp ugt i32 %72, 6
  br i1 %cmp304, label %do.end308, label %do.body303.if.end314_crit_edge

do.body303.if.end314_crit_edge:                   ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end314

do.end308:                                        ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #11
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.346, i32 noundef 16) #12
  br label %if.end314

if.end314:                                        ; preds = %do.end308, %do.body303.if.end314_crit_edge, %if.end299.if.end314_crit_edge
  %and315 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.end314.if.end329_crit_edge, label %do.body318

if.end314.if.end329_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329

do.body318:                                       ; preds = %if.end314
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %cmp319 = icmp ugt i32 %73, 6
  br i1 %cmp319, label %do.end323, label %do.body318.if.end329_crit_edge

do.body318.if.end329_crit_edge:                   ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329

do.end323:                                        ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #11
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, ptr noundef nonnull @.str.346, i32 noundef 8388608) #12
  br label %if.end329

if.end329:                                        ; preds = %do.end323, %do.body318.if.end329_crit_edge, %if.end314.if.end329_crit_edge
  %and330 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %if.end329.if.end344_crit_edge, label %do.body333

if.end329.if.end344_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end344

do.body333:                                       ; preds = %if.end329
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %74)
  %cmp334 = icmp ugt i32 %74, 6
  br i1 %cmp334, label %do.end338, label %do.body333.if.end344_crit_edge

do.body333.if.end344_crit_edge:                   ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end344

do.end338:                                        ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #11
  %call340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.346, i32 noundef 16777216) #12
  br label %if.end344

if.end344:                                        ; preds = %do.end338, %do.body333.if.end344_crit_edge, %if.end329.if.end344_crit_edge
  %and345 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345)
  %tobool346.not = icmp eq i32 %and345, 0
  br i1 %tobool346.not, label %if.end344.if.end359_crit_edge, label %do.body348

if.end344.if.end359_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end359

do.body348:                                       ; preds = %if.end344
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp349 = icmp ugt i32 %75, 6
  br i1 %cmp349, label %do.end353, label %do.body348.if.end359_crit_edge

do.body348.if.end359_crit_edge:                   ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end359

do.end353:                                        ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #11
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.346, i32 noundef 134217728) #12
  br label %if.end359

if.end359:                                        ; preds = %do.end353, %do.body348.if.end359_crit_edge, %if.end344.if.end359_crit_edge
  %and360 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  br i1 %tobool361.not, label %if.end359.if.end375_crit_edge, label %do.body363

if.end359.if.end375_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end375

do.body363:                                       ; preds = %if.end359
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %76)
  %cmp364 = icmp ugt i32 %76, 6
  br i1 %cmp364, label %do.end368, label %do.body363.if.end375_crit_edge

do.body363.if.end375_crit_edge:                   ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end375

do.end368:                                        ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #11
  %call370 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.346, i32 noundef 268435456) #12
  br label %if.end375

if.end375:                                        ; preds = %do.end368, %do.body363.if.end375_crit_edge, %if.end359.if.end375_crit_edge, %do.end162.if.end375_crit_edge
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 18
  %77 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %board, align 4
  %ci_type = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %78, i32 13
  %79 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ci_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp376 = icmp ne i32 %80, 1
  %and378 = and i32 %4, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  %or.cond = select i1 %cmp376, i1 true, i1 %tobool379.not
  br i1 %or.cond, label %if.end375.if.end382_crit_edge, label %if.then380

if.end375.if.end382_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end382

if.then380:                                       ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #11
  %call381 = tail call i32 @netup_ci_slot_status(ptr noundef %dev_id, i32 noundef %4) #9
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %if.end375.if.end382_crit_edge
  %handled.0 = phi i32 [ %call381, %if.then380 ], [ 0, %if.end375.if.end382_crit_edge ]
  %81 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %board, align 4
  %ci_type385 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %82, i32 13
  %83 = ptrtoint ptr %ci_type385 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ci_type385, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp386 = icmp ne i32 %84, 2
  %and388 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  %or.cond595 = select i1 %cmp386, i1 true, i1 %tobool389.not
  br i1 %or.cond595, label %if.end382.if.end393_crit_edge, label %if.then390

if.end382.if.end393_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end393

if.then390:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #11
  %call391 = tail call i32 @altera_ci_irq(ptr noundef %dev_id) #9
  %add392 = add i32 %call391, %handled.0
  br label %if.end393

if.end393:                                        ; preds = %if.then390, %if.end382.if.end393_crit_edge
  %handled.1 = phi i32 [ %add392, %if.then390 ], [ %handled.0, %if.end382.if.end393_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool394.not = icmp eq i32 %28, 0
  br i1 %tobool394.not, label %if.end393.if.end411_crit_edge, label %if.then395

if.end393.if.end411_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end411

if.then395:                                       ; preds = %if.end393
  %85 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %board, align 4
  %portb = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %86, i32 2
  %87 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %portb, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.432)
  switch i32 %88, label %if.then395.if.end411_crit_edge [
    i32 1, label %if.then399
    i32 3, label %if.then406
  ]

if.then395.if.end411_crit_edge:                   ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end411

if.then399:                                       ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cx23885_irq_ts(ptr noundef %ts11, i32 noundef %29)
  %add401 = add i32 %handled.1, 1
  br label %if.end411

if.then406:                                       ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #11
  %call407 = tail call i32 @cx23885_irq_417(ptr noundef %dev_id, i32 noundef %29)
  %add408 = add i32 %call407, %handled.1
  br label %if.end411

if.end411:                                        ; preds = %if.then406, %if.then399, %if.then395.if.end411_crit_edge, %if.end393.if.end411_crit_edge
  %handled.2 = phi i32 [ %add401, %if.then399 ], [ %add408, %if.then406 ], [ %handled.1, %if.end393.if.end411_crit_edge ], [ %handled.1, %if.then395.if.end411_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool412.not = icmp eq i32 %36, 0
  br i1 %tobool412.not, label %if.end411.if.end430_crit_edge, label %if.then413

if.end411.if.end430_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end430

if.then413:                                       ; preds = %if.end411
  %90 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %board, align 4
  %portc = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %91, i32 3
  %92 = ptrtoint ptr %portc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %portc, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.433)
  switch i32 %93, label %if.then413.if.end430_crit_edge [
    i32 1, label %if.then417
    i32 3, label %if.then425
  ]

if.then413.if.end430_crit_edge:                   ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end430

if.then417:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cx23885_irq_ts(ptr noundef %ts22, i32 noundef %37)
  %add419 = add i32 %handled.2, 1
  br label %if.end430

if.then425:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #11
  %call426 = tail call i32 @cx23885_irq_417(ptr noundef %dev_id, i32 noundef %37)
  %add427 = add i32 %call426, %handled.2
  br label %if.end430

if.end430:                                        ; preds = %if.then425, %if.then417, %if.then413.if.end430_crit_edge, %if.end411.if.end430_crit_edge
  %handled.3 = phi i32 [ %add419, %if.then417 ], [ %add427, %if.then425 ], [ %handled.2, %if.end411.if.end430_crit_edge ], [ %handled.2, %if.then413.if.end430_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool431.not = icmp eq i32 %12, 0
  br i1 %tobool431.not, label %if.end430.if.end435_crit_edge, label %if.then432

if.end430.if.end435_crit_edge:                    ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

if.then432:                                       ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #11
  %call433 = tail call i32 @cx23885_video_irq(ptr noundef %dev_id, i32 noundef %13) #9
  %add434 = add i32 %call433, %handled.3
  br label %if.end435

if.end435:                                        ; preds = %if.then432, %if.end430.if.end435_crit_edge
  %handled.4 = phi i32 [ %add434, %if.then432 ], [ %handled.3, %if.end430.if.end435_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool436.not = icmp eq i32 %20, 0
  br i1 %tobool436.not, label %if.end435.if.end440_crit_edge, label %if.then437

if.end435.if.end440_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end440

if.then437:                                       ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #11
  %call438 = tail call i32 @cx23885_audio_irq(ptr noundef %dev_id, i32 noundef %21, i32 noundef %25) #9
  %add439 = add i32 %call438, %handled.4
  br label %if.end440

if.end440:                                        ; preds = %if.then437, %if.end435.if.end440_crit_edge
  %handled.5 = phi i32 [ %add439, %if.then437 ], [ %handled.4, %if.end435.if.end440_crit_edge ]
  %and441 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and441)
  %tobool442.not = icmp eq i32 %and441, 0
  br i1 %tobool442.not, label %if.end440.if.end473_crit_edge, label %if.then443

if.end440.if.end473_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end473

if.then443:                                       ; preds = %if.end440
  %95 = ptrtoint ptr %subdev_handled to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %subdev_handled, align 1
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 35
  %96 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd_ir, align 4
  %tobool444.not = icmp eq ptr %97, null
  br i1 %tobool444.not, label %if.then443.if.end468_crit_edge, label %if.else446

if.then443.if.end468_crit_edge:                   ; preds = %if.then443
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end468

if.else446:                                       ; preds = %if.then443
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %tobool447.not = icmp eq ptr %101, null
  br i1 %tobool447.not, label %if.else446.if.end468_crit_edge, label %land.lhs.true448

if.else446.if.end468_crit_edge:                   ; preds = %if.else446
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end468

land.lhs.true448:                                 ; preds = %if.else446
  %interrupt_service_routine = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %interrupt_service_routine, align 4
  %tobool451.not = icmp eq ptr %103, null
  br i1 %tobool451.not, label %land.lhs.true448.if.end468_crit_edge, label %if.else453

land.lhs.true448.if.end468_crit_edge:             ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end468

if.else453:                                       ; preds = %land.lhs.true448
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %104 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool454.not = icmp eq ptr %104, null
  br i1 %tobool454.not, label %if.else453.if.else461_crit_edge, label %land.lhs.true455

if.else453.if.else461_crit_edge:                  ; preds = %if.else453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else461

land.lhs.true455:                                 ; preds = %if.else453
  %interrupt_service_routine456 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %interrupt_service_routine456 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %interrupt_service_routine456, align 4
  %tobool457.not = icmp eq ptr %106, null
  br i1 %tobool457.not, label %land.lhs.true455.if.else461_crit_edge, label %land.lhs.true455.if.end468.sink.split_crit_edge

land.lhs.true455.if.end468.sink.split_crit_edge:  ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end468.sink.split

land.lhs.true455.if.else461_crit_edge:            ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else461

if.else461:                                       ; preds = %land.lhs.true455.if.else461_crit_edge, %if.else453.if.else461_crit_edge
  br label %if.end468.sink.split

if.end468.sink.split:                             ; preds = %if.else461, %land.lhs.true455.if.end468.sink.split_crit_edge
  %.sink = phi ptr [ %103, %if.else461 ], [ %106, %land.lhs.true455.if.end468.sink.split_crit_edge ]
  %call465 = call i32 %.sink(ptr noundef nonnull %97, i32 noundef %4, ptr noundef nonnull %subdev_handled) #9
  br label %if.end468

if.end468:                                        ; preds = %if.end468.sink.split, %land.lhs.true448.if.end468_crit_edge, %if.else446.if.end468_crit_edge, %if.then443.if.end468_crit_edge
  %107 = ptrtoint ptr %subdev_handled to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %subdev_handled, align 1, !range !909
  %109 = zext i8 %108 to i32
  %spec.select = add i32 %handled.5, %109
  br label %if.end473

if.end473:                                        ; preds = %if.end468, %if.end440.if.end473_crit_edge
  %handled.6 = phi i32 [ %handled.5, %if.end440.if.end473_crit_edge ], [ %spec.select, %if.end468 ]
  %and475 = and i32 %and, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and475)
  %tobool476.not = icmp eq i32 %and475, 0
  br i1 %tobool476.not, label %if.end473.if.end480_crit_edge, label %if.then477

if.end473.if.end480_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end480

if.then477:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i597 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !748
  call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio, align 4
  %add.ptr.i599 = getelementptr i32, ptr %111, i32 65540
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i599) #9, !srcloc !743
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !749
  %113 = and i32 %112, -9
  %114 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %lmmio, align 4
  %add.ptr13.i = getelementptr i32, ptr %115, i32 65540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %113) #9, !srcloc !745
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i, i32 noundef %call2.i597) #9
  %cx25840_work = getelementptr inbounds %struct.cx23885_dev, ptr %dev_id, i32 0, i32 34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %116 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %cx25840_work) #9
  %inc479 = add i32 %handled.6, 1
  br label %if.end480

if.end480:                                        ; preds = %if.then477, %if.end473.if.end480_crit_edge
  %handled.7 = phi i32 [ %inc479, %if.then477 ], [ %handled.6, %if.end473.if.end480_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.7)
  %tobool481.not = icmp eq i32 %handled.7, 0
  br i1 %tobool481.not, label %if.end480.out_crit_edge, label %do.body483

if.end480.out_crit_edge:                          ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body483:                                       ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !910
  call void @arm_heavy_mb() #9
  %117 = call i32 @llvm.bswap.i32(i32 %and)
  %118 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lmmio, align 4
  %add.ptr488 = getelementptr i32, ptr %119, i32 65541
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr488, i32 %117) #9, !srcloc !745
  br label %out

out:                                              ; preds = %do.body483, %if.end480.out_crit_edge, %do.end, %do.body.out_crit_edge
  %tobool490.not = phi i32 [ 0, %if.end480.out_crit_edge ], [ 1, %do.body483 ], [ 0, %do.body.out_crit_edge ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %subdev_handled) #9
  ret i32 %tobool490.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_pci_int_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_input_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_dev_unregister(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !911
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #9, !srcloc !912
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board, align 4
  %porta = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %porta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %porta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then14, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_video_unregister(ptr noundef %dev) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %11 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %board, align 4
  %portb = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %12, i32 2
  %13 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20
  %call20 = tail call i32 @cx23885_dvb_unregister(ptr noundef %ts1) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %board, align 4
  %portb24 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %16, i32 2
  %17 = ptrtoint ptr %portb24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portb24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp25 = icmp eq i32 %18, 3
  br i1 %cmp25, label %if.then26, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_417_unregister(ptr noundef %dev) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %19 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %board, align 4
  %portc = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %20, i32 3
  %21 = ptrtoint ptr %portc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %portc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp30 = icmp eq i32 %22, 1
  br i1 %cmp30, label %if.then31, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %ts2 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 21
  %call32 = tail call i32 @cx23885_dvb_unregister(ptr noundef %ts2) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %23 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %board, align 4
  %portc36 = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %24, i32 3
  %25 = ptrtoint ptr %portc36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portc36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp37 = icmp eq i32 %26, 3
  br i1 %cmp37, label %if.then38, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx23885_417_unregister(ptr noundef %dev) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33.if.end39_crit_edge
  %i2c_bus = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 14
  %arrayidx40 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2
  %call41 = tail call i32 @cx23885_i2c_unregister(ptr noundef %arrayidx40) #9
  %arrayidx43 = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 1
  %call44 = tail call i32 @cx23885_i2c_unregister(ptr noundef %arrayidx43) #9
  %call47 = tail call i32 @cx23885_i2c_unregister(ptr noundef %i2c_bus) #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %28) #9
  br label %return

return:                                           ; preds = %if.end39, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_av_work_handler(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_rx_work_handler(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_tx_work_handler(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_v4l2_dev_notify(ptr noundef %sd, i32 noundef %notification, ptr nocapture noundef readonly %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sd, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %2 = zext i32 %notification to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.434)
  switch i32 %notification, label %if.end.cleanup_crit_edge [
    i32 1074034176, label %sw.bb
    i32 1074034177, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %sd_ir = getelementptr i8, ptr %1, i32 11080
  %3 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_ir, align 4
  %cmp1 = icmp eq ptr %4, %sd
  br i1 %cmp1, label %if.then2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 4
  tail call void @cx23885_ir_rx_v4l2_dev_notify(ptr noundef nonnull %sd, i32 noundef %6) #9
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %sd_ir5 = getelementptr i8, ptr %1, i32 11080
  %7 = ptrtoint ptr %sd_ir5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_ir5, align 4
  %cmp6 = icmp eq ptr %8, %sd
  br i1 %cmp6, label %if.then7, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  tail call void @cx23885_ir_tx_v4l2_dev_notify(ptr noundef nonnull %sd, i32 noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.bb4.cleanup_crit_edge, %if.then2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_rx_v4l2_dev_notify(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_tx_v4l2_dev_notify(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_card_list(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_init_tsport(ptr noundef %dev, ptr noundef %port, i32 noundef %portno) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.329, i32 noundef %portno) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %dma_ctl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 25
  %1 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %dma_ctl_val, align 4
  %ts_int_msk_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %ts_int_msk_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4369, ptr %ts_int_msk_val, align 4
  %vld_misc_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 30
  %3 = ptrtoint ptr %vld_misc_val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vld_misc_val, align 4
  %hw_sop_ctrl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 31
  %4 = ptrtoint ptr %hw_sop_ctrl_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4656064, ptr %hw_sop_ctrl_val, align 4
  %slock = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.330, ptr noundef nonnull @cx23885_init_tsport.__key, i16 noundef signext 3) #9
  %5 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %port, align 4
  %nr = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %portno, ptr %nr, align 4
  %mpegq = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4
  %7 = ptrtoint ptr %mpegq to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %mpegq, ptr %mpegq, align 4
  %prev.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mpegq, ptr %prev.i, align 4
  %frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3
  %lock = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.332, ptr noundef nonnull @cx23885_init_tsport.__key.331) #9
  %9 = ptrtoint ptr %frontends to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %frontends, ptr %frontends, align 4
  %prev.i1 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %frontends, ptr %prev.i1, align 4
  %active_fe_id = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %active_fe_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active_fe_id, align 4
  %num_frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 32
  %12 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then11, label %do.end2.if.end13_crit_edge

do.end2.if.end13_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %num_frontends to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_frontends, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end2.if.end13_crit_edge
  %15 = zext i32 %portno to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.435)
  switch i32 %portno, label %do.body31 [
    i32 1, label %if.end13.sw.epilog_crit_edge
    i32 2, label %sw.bb14
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body31:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #9, !srcloc !914
  unreachable

sw.epilog:                                        ; preds = %sw.bb14, %if.end13.sw.epilog_crit_edge
  %.sink16 = phi i32 [ 1245728, %sw.bb14 ], [ 1245472, %if.end13.sw.epilog_crit_edge ]
  %.sink15 = phi i32 [ 1245744, %sw.bb14 ], [ 1245492, %if.end13.sw.epilog_crit_edge ]
  %.sink14 = phi i32 [ 1245760, %sw.bb14 ], [ 1245504, %if.end13.sw.epilog_crit_edge ]
  %.sink13 = phi i32 [ 1245776, %sw.bb14 ], [ 1245520, %if.end13.sw.epilog_crit_edge ]
  %.sink12 = phi i32 [ 1245780, %sw.bb14 ], [ 1245524, %if.end13.sw.epilog_crit_edge ]
  %.sink11 = phi i32 [ 1245784, %sw.bb14 ], [ 1245528, %if.end13.sw.epilog_crit_edge ]
  %.sink10 = phi i32 [ 1245788, %sw.bb14 ], [ 1245532, %if.end13.sw.epilog_crit_edge ]
  %.sink9 = phi i32 [ 1245792, %sw.bb14 ], [ 1245536, %if.end13.sw.epilog_crit_edge ]
  %.sink8 = phi i32 [ 1245796, %sw.bb14 ], [ 1245540, %if.end13.sw.epilog_crit_edge ]
  %.sink7 = phi i32 [ 1245800, %sw.bb14 ], [ 1245544, %if.end13.sw.epilog_crit_edge ]
  %.sink6 = phi i32 [ 1245804, %sw.bb14 ], [ 1245548, %if.end13.sw.epilog_crit_edge ]
  %.sink5 = phi i32 [ 0, %sw.bb14 ], [ 1245508, %if.end13.sw.epilog_crit_edge ]
  %.sink4 = phi i32 [ 262208, %sw.bb14 ], [ 262192, %if.end13.sw.epilog_crit_edge ]
  %.sink3 = phi i32 [ 262212, %sw.bb14 ], [ 262196, %if.end13.sw.epilog_crit_edge ]
  %.sink2 = phi i32 [ 5, %sw.bb14 ], [ 2, %if.end13.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 4, %sw.bb14 ], [ 2, %if.end13.sw.epilog_crit_edge ]
  %reg_gpcnt15 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 10
  %16 = ptrtoint ptr %reg_gpcnt15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink16, ptr %reg_gpcnt15, align 4
  %reg_gpcnt_ctl16 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 11
  %17 = ptrtoint ptr %reg_gpcnt_ctl16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink15, ptr %reg_gpcnt_ctl16, align 4
  %reg_dma_ctl17 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 12
  %18 = ptrtoint ptr %reg_dma_ctl17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink14, ptr %reg_dma_ctl17, align 4
  %reg_lngth18 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 13
  %19 = ptrtoint ptr %reg_lngth18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink13, ptr %reg_lngth18, align 4
  %reg_hw_sop_ctrl19 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 14
  %20 = ptrtoint ptr %reg_hw_sop_ctrl19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink12, ptr %reg_hw_sop_ctrl19, align 4
  %reg_gen_ctrl20 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 15
  %21 = ptrtoint ptr %reg_gen_ctrl20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink11, ptr %reg_gen_ctrl20, align 4
  %reg_bd_pkt_status21 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 16
  %22 = ptrtoint ptr %reg_bd_pkt_status21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink10, ptr %reg_bd_pkt_status21, align 4
  %reg_sop_status22 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 17
  %23 = ptrtoint ptr %reg_sop_status22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink9, ptr %reg_sop_status22, align 4
  %reg_fifo_ovfl_stat23 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 18
  %24 = ptrtoint ptr %reg_fifo_ovfl_stat23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink8, ptr %reg_fifo_ovfl_stat23, align 4
  %reg_vld_misc24 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 19
  %25 = ptrtoint ptr %reg_vld_misc24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink7, ptr %reg_vld_misc24, align 4
  %reg_ts_clk_en25 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 20
  %26 = ptrtoint ptr %reg_ts_clk_en25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink6, ptr %reg_ts_clk_en25, align 4
  %reg_src_sel26 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 23
  %27 = ptrtoint ptr %reg_src_sel26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink5, ptr %reg_src_sel26, align 4
  %reg_ts_int_msk27 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 21
  %28 = ptrtoint ptr %reg_ts_int_msk27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink4, ptr %reg_ts_int_msk27, align 4
  %reg_ts_int_stat28 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 22
  %29 = ptrtoint ptr %reg_ts_int_stat28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink3, ptr %reg_ts_int_stat28, align 4
  %sram_chno29 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %sram_chno29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink2, ptr %sram_chno29, align 4
  %pci_irqmask30 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 24
  %31 = ptrtoint ptr %pci_irqmask30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %pci_irqmask30, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_mc417_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_i2c_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_card_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_ir_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_video_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_dvb_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_417_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_shutdown(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !915
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !916
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !917
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr8 = getelementptr i32, ptr %5, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !918
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %7, i32 311376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !919
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %9, i32 311440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !920
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %11, i32 327696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !921
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %13, i32 327760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !922
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %15, i32 442368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #9, !srcloc !745
  %pci_irqmask_lock.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pci_irqmask_lock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !748
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr.i.i = getelementptr i32, ptr %17, i32 65540
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !749
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr13.i.i = getelementptr i32, ptr %20, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #9, !srcloc !745
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pci_irqmask_lock.i.i, i32 noundef %call2.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !923
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %22, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !924
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %24, i32 65548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !925
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr40 = getelementptr i32, ptr %26, i32 65552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !926
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr44 = getelementptr i32, ptr %28, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #9, !srcloc !745
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !927
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %30, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #9, !srcloc !745
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_ci_slot_status(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_ci_irq(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_irq_ts(ptr noundef %port, i32 noundef %status) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %and2 = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %2 = and i32 %status, 1118464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %do.body

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %if.then
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp = icmp ugt i32 %4, 6
  br i1 %cmp, label %do.end, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.403, ptr noundef nonnull @.str.404, i32 noundef 65536) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %do.body.if.end17_crit_edge, %if.then.if.end17_crit_edge
  br i1 %tobool3.not, label %if.end17.if.end32_crit_edge, label %do.body21

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.body21:                                        ; preds = %if.end17
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp22 = icmp ugt i32 %5, 6
  br i1 %cmp22, label %do.end26, label %do.body21.if.end32_crit_edge

do.body21.if.end32_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.404, i32 noundef 1048576) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.body21.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  br i1 %tobool6.not, label %if.end32.if.end47_crit_edge, label %do.body36

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.body36:                                        ; preds = %if.end32
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp37 = icmp ugt i32 %6, 6
  br i1 %cmp37, label %do.end41, label %do.body36.if.end47_crit_edge

do.body36.if.end47_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.404, i32 noundef 4096) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %do.body36.if.end47_crit_edge, %if.end32.if.end47_crit_edge
  br i1 %tobool9.not, label %if.end47.do.end65_crit_edge, label %do.body51

if.end47.do.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.body51:                                        ; preds = %if.end47
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp52 = icmp ugt i32 %7, 6
  br i1 %cmp52, label %do.end56, label %do.body51.do.end65_crit_edge

do.body51.do.end65_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end56:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.412, ptr noundef nonnull @.str.404, i32 noundef 256) #12
  br label %do.end65

do.end65:                                         ; preds = %do.end56, %do.body51.do.end65_crit_edge, %if.end47.do.end65_crit_edge
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415, ptr noundef %name) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !928
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %reg_dma_ctl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 12
  %10 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_dma_ctl, align 4
  %shr = lshr i32 %11, 2
  %add.ptr = getelementptr i32, ptr %9, i32 %shr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !743
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !929
  %dma_ctl_val = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 25
  %14 = ptrtoint ptr %dma_ctl_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_ctl_val, align 4
  %neg = xor i32 %15, -1
  %and74 = and i32 %13, %neg
  %16 = tail call i32 @llvm.bswap.i32(i32 %and74)
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %19 = ptrtoint ptr %reg_dma_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_dma_ctl, align 4
  %shr79 = lshr i32 %20, 2
  %add.ptr80 = getelementptr i32, ptr %18, i32 %shr79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %16) #9, !srcloc !745
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 22
  %21 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sram_channels, align 8
  %sram_chno = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %sram_chno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sram_chno, align 4
  %arrayidx = getelementptr %struct.sram_channel, ptr %22, i32 %24
  tail call void @cx23885_sram_channel_dump(ptr noundef %1, ptr noundef %arrayidx)
  br label %do.body108

if.else:                                          ; preds = %entry
  %and81 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else.do.body108_crit_edge, label %do.body84

if.else.do.body108_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

do.body84:                                        ; preds = %if.else
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp85 = icmp ugt i32 %25, 6
  br i1 %cmp85, label %do.end89, label %do.body84.do.end94_crit_edge

do.body84.do.end94_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

do.end89:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.418, ptr noundef nonnull @.str.404, i32 noundef 1) #12
  br label %do.end94

do.end94:                                         ; preds = %do.end89, %do.body84.do.end94_crit_edge
  %slock = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %slock) #9
  %lmmio97 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %lmmio97 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio97, align 4
  %reg_gpcnt = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 10
  %28 = ptrtoint ptr %reg_gpcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_gpcnt, align 4
  %shr98 = lshr i32 %29, 2
  %add.ptr99 = getelementptr i32, ptr %27, i32 %shr98
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #9, !srcloc !743
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !930
  %mpegq = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 4
  tail call fastcc void @cx23885_wakeup(ptr noundef %mpegq, i32 noundef %31)
  tail call void @_raw_spin_unlock(ptr noundef %slock) #9
  br label %do.body108

do.body108:                                       ; preds = %do.end94, %if.else.do.body108_crit_edge, %do.end65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !931
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %status)
  %lmmio111 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %lmmio111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio111, align 4
  %reg_ts_int_stat = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 22
  %35 = ptrtoint ptr %reg_ts_int_stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_ts_int_stat, align 4
  %shr112 = lshr i32 %36, 2
  %add.ptr113 = getelementptr i32, ptr %34, i32 %shr112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %32) #9, !srcloc !745
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_video_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_audio_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_video_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_dvb_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_417_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_i2c_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_input_fini(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_ir_fini(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !215, !216, !217, !218, !220, !221, !223, !224, !225, !226, !228, !230, !232, !233, !235, !236, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !454, !455, !456, !458, !459, !461, !462, !463, !464, !466, !467, !468, !469, !471, !472, !474, !476, !478, !479, !481, !482, !483, !484, !486, !487, !488, !490, !491, !492, !494, !496, !497, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !517, !519, !520, !521, !522, !524, !525, !526, !528, !529, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !589, !590, !591, !593, !594, !596, !597, !599, !600, !601, !602, !604, !605, !606, !608, !609, !610, !612, !613, !614, !615, !617, !618, !619, !621, !622, !623, !625, !626, !627, !628, !630, !631, !633, !634, !635, !637, !638, !639, !641, !642, !643, !645, !646, !647, !649, !650, !651, !653, !654, !655, !657, !658, !659, !661, !662, !663, !665, !666, !667, !669, !670, !671, !673, !674, !675, !677, !678, !679, !681, !682, !683, !685, !686, !687, !689, !690, !691, !693, !694, !695, !697, !698, !699, !701, !702, !703, !705, !706, !707, !708, !710, !711, !712, !714, !715, !716, !718, !719, !720, !722, !723, !724, !726, !727, !728, !730, !731, !732}
!llvm.module.flags = !{!733, !734, !735, !736, !737, !738, !739, !740}
!llvm.ident = !{!741}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version389, !8, !"__UNIQUE_ID_version389", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 33, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_dma_reset_workaround, !14, !"__param_dma_reset_workaround", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 44, i32 1}
!15 = !{ptr @__UNIQUE_ID_dma_reset_workaroundtype390, !14, !"__UNIQUE_ID_dma_reset_workaroundtype390", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_dma_reset_workaround391, !17, !"__UNIQUE_ID_dma_reset_workaround391", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 45, i32 1}
!18 = !{ptr @__param_debug, !19, !"__param_debug", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 48, i32 1}
!20 = !{ptr @__UNIQUE_ID_debugtype392, !19, !"__UNIQUE_ID_debugtype392", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_debug393, !22, !"__UNIQUE_ID_debug393", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 49, i32 1}
!23 = !{ptr @__param_card, !24, !"__param_card", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 52, i32 1}
!25 = !{ptr @__UNIQUE_ID_cardtype394, !24, !"__UNIQUE_ID_cardtype394", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_card395, !27, !"__UNIQUE_ID_card395", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 53, i32 1}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 462, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cx23885_sram_channel_setup._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @cx23885_sram_channel_setup._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 470, i32 3}
!36 = !{ptr @cx23885_sram_channel_setup._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cx23885_sram_channel_setup._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 487, i32 3}
!40 = !{ptr @cx23885_sram_channel_setup._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cx23885_sram_channel_setup._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 517, i32 2}
!44 = !{ptr @cx23885_sram_channel_setup._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cx23885_sram_channel_setup._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 530, i32 3}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 531, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 532, i32 3}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 533, i32 3}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 534, i32 3}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 535, i32 3}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 536, i32 3}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 537, i32 3}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 538, i32 3}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 539, i32 3}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 540, i32 3}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 541, i32 3}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 542, i32 3}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 543, i32 3}
!74 = !{ptr @cx23885_sram_channel_dump.name, !75, !"name", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 529, i32 15}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 548, i32 2}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cx23885_sram_channel_dump._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @cx23885_sram_channel_dump._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 551, i32 3}
!83 = !{ptr @cx23885_sram_channel_dump._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx23885_sram_channel_dump._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 557, i32 3}
!87 = !{ptr @cx23885_sram_channel_dump._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx23885_sram_channel_dump._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 564, i32 3}
!91 = !{ptr @cx23885_sram_channel_dump._entry.37, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx23885_sram_channel_dump._entry_ptr.39, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 569, i32 4}
!95 = !{ptr @cx23885_sram_channel_dump._entry.40, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx23885_sram_channel_dump._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 574, i32 2}
!99 = !{ptr @cx23885_sram_channel_dump._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx23885_sram_channel_dump._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 576, i32 2}
!103 = !{ptr @cx23885_sram_channel_dump._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cx23885_sram_channel_dump._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 578, i32 2}
!107 = !{ptr @cx23885_sram_channel_dump._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cx23885_sram_channel_dump._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 580, i32 2}
!111 = !{ptr @cx23885_sram_channel_dump._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cx23885_sram_channel_dump._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 582, i32 2}
!115 = !{ptr @cx23885_sram_channel_dump._entry.55, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cx23885_sram_channel_dump._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 584, i32 2}
!119 = !{ptr @cx23885_sram_channel_dump._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cx23885_sram_channel_dump._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1402, i32 2}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cx23885_start_dma._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @cx23885_start_dma._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1426, i32 3}
!128 = !{ptr @cx23885_start_dma._entry.63, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cx23885_start_dma._entry_ptr.65, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1494, i32 3}
!132 = !{ptr @cx23885_start_dma._entry.66, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cx23885_start_dma._entry_ptr.68, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1582, i32 2}
!136 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cx23885_buf_prepare._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cx23885_buf_prepare._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1629, i32 3}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cx23885_buf_queue._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cx23885_buf_queue._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1637, i32 3}
!146 = !{ptr @cx23885_buf_queue._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cx23885_buf_queue._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1666, i32 2}
!150 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cx23885_cancel_buffers._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cx23885_cancel_buffers._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1668, i32 26}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1682, i32 2}
!157 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cx23885_irq_417._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @cx23885_irq_417._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1692, i32 3}
!162 = !{ptr @cx23885_irq_417._entry.81, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @cx23885_irq_417._entry_ptr.83, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1695, i32 4}
!166 = !{ptr @cx23885_irq_417._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cx23885_irq_417._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1697, i32 4}
!170 = !{ptr @cx23885_irq_417._entry.87, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @cx23885_irq_417._entry_ptr.89, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1699, i32 4}
!174 = !{ptr @cx23885_irq_417._entry.90, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cx23885_irq_417._entry_ptr.92, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.94, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1701, i32 4}
!178 = !{ptr @cx23885_irq_417._entry.93, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cx23885_irq_417._entry_ptr.95, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1703, i32 4}
!182 = !{ptr @cx23885_irq_417._entry.96, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @cx23885_irq_417._entry_ptr.98, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1705, i32 4}
!186 = !{ptr @cx23885_irq_417._entry.99, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @cx23885_irq_417._entry_ptr.101, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1707, i32 4}
!190 = !{ptr @cx23885_irq_417._entry.102, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @cx23885_irq_417._entry_ptr.104, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1714, i32 3}
!194 = !{ptr @cx23885_irq_417._entry.105, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @cx23885_irq_417._entry_ptr.107, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2002, i32 4}
!198 = !{ptr @.str.109, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @cx23885_gpio_set._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @cx23885_gpio_set._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2009, i32 3}
!203 = !{ptr @cx23885_gpio_set._entry.110, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cx23885_gpio_set._entry_ptr.112, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.113, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2019, i32 4}
!207 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @cx23885_gpio_clear._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @cx23885_gpio_clear._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @cx23885_gpio_clear._entry.115, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2026, i32 3}
!212 = !{ptr @cx23885_gpio_clear._entry_ptr.116, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.117, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2036, i32 4}
!215 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @cx23885_gpio_get._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @cx23885_gpio_get._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @cx23885_gpio_get._entry.119, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2043, i32 3}
!220 = !{ptr @cx23885_gpio_get._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.121, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2057, i32 4}
!223 = !{ptr @.str.122, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @cx23885_gpio_enable._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @cx23885_gpio_enable._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @__initcall__kmod_cx23885__397_2267_cx23885_init6, !227, !"__initcall__kmod_cx23885__397_2267_cx23885_init6", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2267, i32 1}
!228 = !{ptr @__exitcall_cx23885_fini, !229, !"__exitcall_cx23885_fini", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2268, i32 1}
!230 = !{ptr @debug, !231, !"debug", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 47, i32 21}
!232 = !{ptr @__param_str_dma_reset_workaround, !14, !"__param_str_dma_reset_workaround", i1 false, i1 false}
!233 = !{ptr @dma_reset_workaround, !234, !"dma_reset_workaround", i1 false, i1 false}
!234 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 43, i32 21}
!235 = !{ptr @__param_str_debug, !19, !"__param_str_debug", i1 false, i1 false}
!236 = !{ptr @__param_str_card, !24, !"__param_str_card", i1 false, i1 false}
!237 = !{ptr @__param_arr_card, !24, !"__param_arr_card", i1 false, i1 false}
!238 = !{ptr @card, !239, !"card", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 51, i32 21}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 388, i32 26}
!242 = !{ptr @.str.124, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 393, i32 26}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 389, i32 26}
!246 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 392, i32 26}
!248 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 387, i32 26}
!250 = !{ptr @.str.128, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 390, i32 26}
!252 = !{ptr @.str.129, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 391, i32 26}
!254 = !{ptr @.str.130, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 394, i32 26}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 395, i32 26}
!258 = !{ptr @.str.132, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 396, i32 26}
!260 = !{ptr @cx23885_risc_decode.instr, !261, !"instr", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 386, i32 15}
!262 = !{ptr @cx23885_risc_decode.incr, !263, !"incr", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 398, i32 13}
!264 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 408, i32 3}
!266 = !{ptr @.str.134, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 408, i32 11}
!268 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 408, i32 19}
!270 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 408, i32 27}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 409, i32 3}
!274 = !{ptr @.str.138, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 409, i32 11}
!276 = !{ptr @.str.139, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 409, i32 19}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 409, i32 27}
!280 = !{ptr @.str.141, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 410, i32 3}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 410, i32 11}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 410, i32 19}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 410, i32 27}
!288 = !{ptr @.str.145, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 411, i32 3}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 411, i32 11}
!292 = !{ptr @.str.147, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 411, i32 19}
!294 = !{ptr @.str.148, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 411, i32 27}
!296 = !{ptr @cx23885_risc_decode.bits, !297, !"bits", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 407, i32 15}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 415, i32 2}
!300 = !{ptr @.str.150, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @cx23885_risc_decode._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @cx23885_risc_decode._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.153, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 419, i32 4}
!306 = !{ptr @cx23885_risc_decode._entry.152, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @cx23885_risc_decode._entry_ptr.154, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 420, i32 2}
!310 = !{ptr @cx23885_risc_decode._entry.155, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @cx23885_risc_decode._entry_ptr.157, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 625, i32 3}
!314 = !{ptr @.str.159, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.160, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.161, !313, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @cx23885_clear_bridge_error._entry, !313, !"_entry", i1 false, i1 false}
!318 = !{ptr @cx23885_clear_bridge_error._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.162, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 594, i32 2}
!321 = !{ptr @.str.163, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @cx23885_risc_disasm._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @cx23885_risc_disasm._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.165, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 597, i32 3}
!326 = !{ptr @cx23885_risc_disasm._entry.164, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @cx23885_risc_disasm._entry_ptr.166, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.168, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 600, i32 4}
!330 = !{ptr @cx23885_risc_disasm._entry.167, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @cx23885_risc_disasm._entry_ptr.169, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1335, i32 2}
!334 = !{ptr @.str.171, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @cx23885_tsport_reg_dump._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @cx23885_tsport_reg_dump._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.173, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1336, i32 2}
!339 = !{ptr @cx23885_tsport_reg_dump._entry.172, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.174, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.176, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1338, i32 2}
!343 = !{ptr @cx23885_tsport_reg_dump._entry.175, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.177, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.179, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1340, i32 2}
!347 = !{ptr @cx23885_tsport_reg_dump._entry.178, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.180, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.182, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1342, i32 2}
!351 = !{ptr @cx23885_tsport_reg_dump._entry.181, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.183, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.185, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1344, i32 2}
!355 = !{ptr @cx23885_tsport_reg_dump._entry.184, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.186, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.188, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1346, i32 2}
!359 = !{ptr @cx23885_tsport_reg_dump._entry.187, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.189, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.191, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1348, i32 2}
!363 = !{ptr @cx23885_tsport_reg_dump._entry.190, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.192, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.194, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1350, i32 2}
!367 = !{ptr @cx23885_tsport_reg_dump._entry.193, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.195, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.197, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1352, i32 2}
!371 = !{ptr @cx23885_tsport_reg_dump._entry.196, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.198, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.200, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1354, i32 2}
!375 = !{ptr @cx23885_tsport_reg_dump._entry.199, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.201, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.203, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1356, i32 2}
!379 = !{ptr @cx23885_tsport_reg_dump._entry.202, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.204, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.206, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1358, i32 2}
!383 = !{ptr @cx23885_tsport_reg_dump._entry.205, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.207, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.209, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1361, i32 3}
!387 = !{ptr @cx23885_tsport_reg_dump._entry.208, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.210, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.212, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1363, i32 2}
!391 = !{ptr @cx23885_tsport_reg_dump._entry.211, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.213, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.215, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1365, i32 2}
!395 = !{ptr @cx23885_tsport_reg_dump._entry.214, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.216, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.218, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1367, i32 2}
!399 = !{ptr @cx23885_tsport_reg_dump._entry.217, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.219, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.221, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1369, i32 2}
!403 = !{ptr @cx23885_tsport_reg_dump._entry.220, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.222, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.224, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1371, i32 2}
!407 = !{ptr @cx23885_tsport_reg_dump._entry.223, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.225, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.227, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1373, i32 2}
!411 = !{ptr @cx23885_tsport_reg_dump._entry.226, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.228, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.230, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1375, i32 2}
!415 = !{ptr @cx23885_tsport_reg_dump._entry.229, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.231, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.233, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1377, i32 2}
!419 = !{ptr @cx23885_tsport_reg_dump._entry.232, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.234, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.236, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1379, i32 2}
!423 = !{ptr @cx23885_tsport_reg_dump._entry.235, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.237, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.239, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1381, i32 2}
!427 = !{ptr @cx23885_tsport_reg_dump._entry.238, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.240, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.242, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1383, i32 2}
!431 = !{ptr @cx23885_tsport_reg_dump._entry.241, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.243, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.245, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1385, i32 2}
!435 = !{ptr @cx23885_tsport_reg_dump._entry.244, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.246, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.248, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1387, i32 2}
!439 = !{ptr @cx23885_tsport_reg_dump._entry.247, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.249, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.251, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1389, i32 2}
!443 = !{ptr @cx23885_tsport_reg_dump._entry.250, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.252, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.254, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1391, i32 2}
!447 = !{ptr @cx23885_tsport_reg_dump._entry.253, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @cx23885_tsport_reg_dump._entry_ptr.255, !446, !"_entry_ptr", i1 false, i1 false}
!449 = distinct !{null, !450, !"__already_done", i1 false, i1 false}
!450 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!451 = !{ptr @.str.256, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.257, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1538, i32 2}
!454 = !{ptr @cx23885_stop_dma._entry, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @cx23885_stop_dma._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.258, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1552, i32 2}
!458 = !{ptr @cx23885_stop_dma.__UNIQUE_ID_ddebug396, !457, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!459 = !{ptr @.str.259, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1657, i32 3}
!461 = !{ptr @.str.260, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @do_cancel_buffers._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @do_cancel_buffers._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.261, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 440, i32 4}
!466 = !{ptr @.str.262, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @cx23885_wakeup._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @cx23885_wakeup._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @cx23885_wakeup._entry.263, !470, !"_entry", i1 false, i1 false}
!470 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 443, i32 4}
!471 = !{ptr @cx23885_wakeup._entry_ptr.264, !470, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @cx23885_pci_driver, !473, !"cx23885_pci_driver", i1 false, i1 false}
!473 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2248, i32 26}
!474 = !{ptr @cx23885_pci_tbl, !475, !"cx23885_pci_tbl", i1 false, i1 false}
!475 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2229, i32 35}
!476 = !{ptr @cx23885_initdev._key, !477, !"_key", i1 false, i1 false}
!477 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2133, i32 2}
!478 = !{ptr @.str.265, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.266, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2158, i32 2}
!481 = !{ptr @.str.267, !480, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @cx23885_initdev._entry, !480, !"_entry", i1 false, i1 false}
!483 = !{ptr @cx23885_initdev._entry_ptr, !480, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.269, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2167, i32 3}
!486 = !{ptr @cx23885_initdev._entry.268, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @cx23885_initdev._entry_ptr.270, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.272, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2174, i32 3}
!490 = !{ptr @cx23885_initdev._entry.271, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @cx23885_initdev._entry_ptr.273, !489, !"_entry_ptr", i1 false, i1 false}
!492 = distinct !{null, !493, !"broken_dev_id", i1 false, i1 false}
!493 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2073, i32 9}
!494 = !{ptr @cx23885_v4l2_dev_notify_init.__key, !495, !"__key", i1 false, i1 false}
!495 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1967, i32 2}
!496 = !{ptr @.str.274, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @cx23885_v4l2_dev_notify_init.__key.275, !498, !"__key", i1 false, i1 false}
!498 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1968, i32 2}
!499 = !{ptr @.str.276, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @cx23885_v4l2_dev_notify_init.__key.277, !501, !"__key", i1 false, i1 false}
!501 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1969, i32 2}
!502 = !{ptr @.str.278, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @cx23885_dev_setup.__key, !504, !"__key", i1 false, i1 false}
!504 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 876, i32 2}
!505 = !{ptr @.str.279, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @cx23885_dev_setup.__key.280, !507, !"__key", i1 false, i1 false}
!507 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 877, i32 2}
!508 = !{ptr @.str.281, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @cx23885_dev_setup.__key.282, !510, !"__key", i1 false, i1 false}
!510 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 879, i32 2}
!511 = !{ptr @.str.283, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @cx23885_dev_setup.__key.284, !513, !"__key", i1 false, i1 false}
!513 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 880, i32 2}
!514 = !{ptr @.str.285, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @.str.286, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 885, i32 21}
!517 = !{ptr @.str.287, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 903, i32 2}
!519 = !{ptr @.str.288, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @cx23885_dev_setup._entry, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @cx23885_dev_setup._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.290, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 984, i32 3}
!524 = !{ptr @cx23885_dev_setup._entry.289, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @cx23885_dev_setup._entry_ptr.291, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.293, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 998, i32 2}
!528 = !{ptr @cx23885_dev_setup._entry.292, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @cx23885_dev_setup._entry_ptr.294, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.295, !527, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @.str.296, !527, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @.str.298, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1013, i32 2}
!534 = !{ptr @cx23885_dev_setup._entry.297, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @cx23885_dev_setup._entry_ptr.299, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.301, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1015, i32 2}
!538 = !{ptr @cx23885_dev_setup._entry.300, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @cx23885_dev_setup._entry_ptr.302, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.304, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1048, i32 4}
!542 = !{ptr @cx23885_dev_setup._entry.303, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @cx23885_dev_setup._entry_ptr.305, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.307, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1058, i32 4}
!546 = !{ptr @cx23885_dev_setup._entry.306, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @cx23885_dev_setup._entry_ptr.308, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.310, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1064, i32 4}
!550 = !{ptr @cx23885_dev_setup._entry.309, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @cx23885_dev_setup._entry_ptr.311, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.313, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1074, i32 4}
!554 = !{ptr @cx23885_dev_setup._entry.312, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @cx23885_dev_setup._entry_ptr.314, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.316, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1080, i32 4}
!558 = !{ptr @cx23885_dev_setup._entry.315, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @cx23885_dev_setup._entry_ptr.317, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @cx23885_devcount, !561, !"cx23885_devcount", i1 false, i1 false}
!561 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 61, i32 21}
!562 = !{ptr @.str.318, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 198, i32 12}
!564 = !{ptr @.str.319, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 210, i32 12}
!566 = !{ptr @.str.320, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 222, i32 12}
!568 = !{ptr @.str.321, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 234, i32 12}
!570 = !{ptr @.str.322, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 246, i32 12}
!572 = !{ptr @.str.323, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 258, i32 12}
!574 = !{ptr @.str.324, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 270, i32 12}
!576 = !{ptr @.str.325, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 282, i32 12}
!578 = !{ptr @.str.326, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 294, i32 12}
!580 = !{ptr @cx23887_sram_channels, !581, !"cx23887_sram_channels", i1 false, i1 false}
!581 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 196, i32 28}
!582 = !{ptr @.str.327, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 99, i32 12}
!584 = !{ptr @cx23885_sram_channels, !585, !"cx23885_sram_channels", i1 false, i1 false}
!585 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 85, i32 28}
!586 = !{ptr @.str.328, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 734, i32 2}
!588 = !{ptr @.str.329, !587, !"<string literal>", i1 false, i1 false}
!589 = !{ptr @cx23885_init_tsport._entry, !587, !"_entry", i1 false, i1 false}
!590 = !{ptr @cx23885_init_tsport._entry_ptr, !587, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @cx23885_init_tsport.__key, !592, !"__key", i1 false, i1 false}
!592 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 742, i32 2}
!593 = !{ptr @.str.330, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @cx23885_init_tsport.__key.331, !595, !"__key", i1 false, i1 false}
!595 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 747, i32 2}
!596 = !{ptr @.str.332, !595, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @.str.333, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 725, i32 2}
!599 = !{ptr @.str.334, !598, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @get_resources._entry, !598, !"_entry", i1 false, i1 false}
!601 = !{ptr @get_resources._entry_ptr, !598, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.335, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 704, i32 2}
!604 = !{ptr @cx23885_pci_quirks._entry, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @cx23885_pci_quirks._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.336, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 663, i32 2}
!608 = !{ptr @cx23885_reset._entry, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @cx23885_reset._entry_ptr, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.337, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 844, i32 3}
!612 = !{ptr @.str.338, !611, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @cx23885_dev_checkrevision._entry, !611, !"_entry", i1 false, i1 false}
!614 = !{ptr @cx23885_dev_checkrevision._entry_ptr, !611, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.340, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 848, i32 3}
!617 = !{ptr @cx23885_dev_checkrevision._entry.339, !616, !"_entry", i1 false, i1 false}
!618 = !{ptr @cx23885_dev_checkrevision._entry_ptr.341, !616, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.343, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 851, i32 3}
!621 = !{ptr @cx23885_dev_checkrevision._entry.342, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @cx23885_dev_checkrevision._entry_ptr.344, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.345, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1795, i32 3}
!625 = !{ptr @.str.346, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @cx23885_irq._entry, !624, !"_entry", i1 false, i1 false}
!627 = !{ptr @cx23885_irq._entry_ptr, !624, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @cx23885_irq._entry.347, !629, !"_entry", i1 false, i1 false}
!629 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1818, i32 2}
!630 = !{ptr @cx23885_irq._entry_ptr.348, !629, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.350, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1820, i32 2}
!633 = !{ptr @cx23885_irq._entry.349, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @cx23885_irq._entry_ptr.351, !632, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.353, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1822, i32 2}
!637 = !{ptr @cx23885_irq._entry.352, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @cx23885_irq._entry_ptr.354, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.356, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1824, i32 2}
!641 = !{ptr @cx23885_irq._entry.355, !640, !"_entry", i1 false, i1 false}
!642 = !{ptr @cx23885_irq._entry_ptr.357, !640, !"_entry_ptr", i1 false, i1 false}
!643 = !{ptr @.str.359, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1826, i32 2}
!645 = !{ptr @cx23885_irq._entry.358, !644, !"_entry", i1 false, i1 false}
!646 = !{ptr @cx23885_irq._entry_ptr.360, !644, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.362, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1837, i32 4}
!649 = !{ptr @cx23885_irq._entry.361, !648, !"_entry", i1 false, i1 false}
!650 = !{ptr @cx23885_irq._entry_ptr.363, !648, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.365, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1841, i32 4}
!653 = !{ptr @cx23885_irq._entry.364, !652, !"_entry", i1 false, i1 false}
!654 = !{ptr @cx23885_irq._entry_ptr.366, !652, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @.str.368, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1845, i32 4}
!657 = !{ptr @cx23885_irq._entry.367, !656, !"_entry", i1 false, i1 false}
!658 = !{ptr @cx23885_irq._entry_ptr.369, !656, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.371, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1849, i32 4}
!661 = !{ptr @cx23885_irq._entry.370, !660, !"_entry", i1 false, i1 false}
!662 = !{ptr @cx23885_irq._entry_ptr.372, !660, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.374, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1853, i32 4}
!665 = !{ptr @cx23885_irq._entry.373, !664, !"_entry", i1 false, i1 false}
!666 = !{ptr @cx23885_irq._entry_ptr.375, !664, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.377, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1857, i32 4}
!669 = !{ptr @cx23885_irq._entry.376, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @cx23885_irq._entry_ptr.378, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.380, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1861, i32 4}
!673 = !{ptr @cx23885_irq._entry.379, !672, !"_entry", i1 false, i1 false}
!674 = !{ptr @cx23885_irq._entry_ptr.381, !672, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @.str.383, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1865, i32 4}
!677 = !{ptr @cx23885_irq._entry.382, !676, !"_entry", i1 false, i1 false}
!678 = !{ptr @cx23885_irq._entry_ptr.384, !676, !"_entry_ptr", i1 false, i1 false}
!679 = !{ptr @.str.386, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1869, i32 4}
!681 = !{ptr @cx23885_irq._entry.385, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @cx23885_irq._entry_ptr.387, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @.str.389, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1873, i32 4}
!685 = !{ptr @cx23885_irq._entry.388, !684, !"_entry", i1 false, i1 false}
!686 = !{ptr @cx23885_irq._entry_ptr.390, !684, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @.str.392, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1877, i32 4}
!689 = !{ptr @cx23885_irq._entry.391, !688, !"_entry", i1 false, i1 false}
!690 = !{ptr @cx23885_irq._entry_ptr.393, !688, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.395, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1881, i32 4}
!693 = !{ptr @cx23885_irq._entry.394, !692, !"_entry", i1 false, i1 false}
!694 = !{ptr @cx23885_irq._entry_ptr.396, !692, !"_entry_ptr", i1 false, i1 false}
!695 = !{ptr @.str.398, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1885, i32 4}
!697 = !{ptr @cx23885_irq._entry.397, !696, !"_entry", i1 false, i1 false}
!698 = !{ptr @cx23885_irq._entry_ptr.399, !696, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @.str.401, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1889, i32 4}
!701 = !{ptr @cx23885_irq._entry.400, !700, !"_entry", i1 false, i1 false}
!702 = !{ptr @cx23885_irq._entry_ptr.402, !700, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.403, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1739, i32 4}
!705 = !{ptr @.str.404, !704, !"<string literal>", i1 false, i1 false}
!706 = !{ptr @cx23885_irq_ts._entry, !704, !"_entry", i1 false, i1 false}
!707 = !{ptr @cx23885_irq_ts._entry_ptr, !704, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @.str.406, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1743, i32 4}
!710 = !{ptr @cx23885_irq_ts._entry.405, !709, !"_entry", i1 false, i1 false}
!711 = !{ptr @cx23885_irq_ts._entry_ptr.407, !709, !"_entry_ptr", i1 false, i1 false}
!712 = !{ptr @.str.409, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1747, i32 4}
!714 = !{ptr @cx23885_irq_ts._entry.408, !713, !"_entry", i1 false, i1 false}
!715 = !{ptr @cx23885_irq_ts._entry_ptr.410, !713, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @.str.412, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1751, i32 4}
!718 = !{ptr @cx23885_irq_ts._entry.411, !717, !"_entry", i1 false, i1 false}
!719 = !{ptr @cx23885_irq_ts._entry_ptr.413, !717, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @.str.415, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1754, i32 3}
!722 = !{ptr @cx23885_irq_ts._entry.414, !721, !"_entry", i1 false, i1 false}
!723 = !{ptr @cx23885_irq_ts._entry_ptr.416, !721, !"_entry_ptr", i1 false, i1 false}
!724 = !{ptr @.str.418, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 1762, i32 3}
!726 = !{ptr @cx23885_irq_ts._entry.417, !725, !"_entry", i1 false, i1 false}
!727 = !{ptr @cx23885_irq_ts._entry_ptr.419, !725, !"_entry_ptr", i1 false, i1 false}
!728 = !{ptr @.str.420, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/media/pci/cx23885/cx23885-core.c", i32 2257, i32 2}
!730 = !{ptr @.str.421, !729, !"<string literal>", i1 false, i1 false}
!731 = !{ptr @cx23885_init._entry, !729, !"_entry", i1 false, i1 false}
!732 = !{ptr @cx23885_init._entry_ptr, !729, !"_entry_ptr", i1 false, i1 false}
!733 = !{i32 1, !"wchar_size", i32 2}
!734 = !{i32 1, !"min_enum_size", i32 4}
!735 = !{i32 8, !"branch-target-enforcement", i32 0}
!736 = !{i32 8, !"sign-return-address", i32 0}
!737 = !{i32 8, !"sign-return-address-all", i32 0}
!738 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!739 = !{i32 7, !"uwtable", i32 1}
!740 = !{i32 7, !"frame-pointer", i32 2}
!741 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!742 = !{i64 2158671474}
!743 = !{i64 5062425}
!744 = !{i64 2158672547}
!745 = !{i64 5062007}
!746 = !{i64 2158674278}
!747 = !{i64 2158675333}
!748 = !{i64 2158677225}
!749 = !{i64 2158678284}
!750 = !{i64 2158680178}
!751 = !{i64 2158681237}
!752 = !{i64 2158694563}
!753 = !{i64 2158695050}
!754 = !{i64 2158695537}
!755 = !{i64 2158696024}
!756 = !{!"branch_weights", i32 1, i32 2000}
!757 = !{i64 2158698500, i64 2158699005, i64 2158698537, i64 2158698593, i64 2158698627, i64 2158698651, i64 2158698692, i64 2158698713, i64 2158698741, i64 2158698775}
!758 = !{i64 2158700106}
!759 = !{i64 2158700640}
!760 = !{i64 2158701109}
!761 = !{i64 2158703547}
!762 = !{i64 2158704101}
!763 = !{i64 2158704597}
!764 = !{i64 2158705093}
!765 = !{i64 2158706622}
!766 = !{i64 2158707134}
!767 = !{i64 2158707676}
!768 = !{i64 2158708252}
!769 = !{i64 2158709948}
!770 = !{i64 2158710467}
!771 = !{i64 2158710997}
!772 = !{i64 2158711518}
!773 = !{i64 2158712073}
!774 = !{i64 2158718951}
!775 = !{i64 2158719634}
!776 = !{i64 2158721892}
!777 = !{i64 2158724325}
!778 = !{i64 2158732117}
!779 = !{i64 2158734465}
!780 = !{i64 2158736813}
!781 = !{i64 2158739161}
!782 = !{i64 2158825698, i64 2158826204, i64 2158825735, i64 2158825791, i64 2158825825, i64 2158825849, i64 2158825890, i64 2158825911, i64 2158825939, i64 2158825973}
!783 = !{i64 2158827704, i64 2158828210, i64 2158827741, i64 2158827797, i64 2158827831, i64 2158827855, i64 2158827896, i64 2158827917, i64 2158827945, i64 2158827979}
!784 = !{i64 2158829734, i64 2158830240, i64 2158829771, i64 2158829827, i64 2158829861, i64 2158829885, i64 2158829926, i64 2158829947, i64 2158829975, i64 2158830009}
!785 = !{i64 2158909707}
!786 = !{i64 2158910846}
!787 = !{i64 2158911262}
!788 = !{i64 2158914467}
!789 = !{i64 2158915065}
!790 = !{i64 2158915671}
!791 = !{i64 2158916265}
!792 = !{i64 2158916855}
!793 = !{i64 2158917961}
!794 = !{i64 2158918765}
!795 = !{i64 2158919065}
!796 = !{i64 2158919866}
!797 = !{i64 2158920166}
!798 = !{i64 2158920967}
!799 = !{i64 2158921267}
!800 = !{i64 2158922912}
!801 = !{i64 2158923903}
!802 = !{i64 2158924244}
!803 = !{i64 2158927865}
!804 = !{i64 2158929074}
!805 = !{i64 2158930657}
!806 = !{i64 2158931836}
!807 = !{i64 2158934814}
!808 = !{i64 2158935899}
!809 = !{i64 2158932217, i64 2158932723, i64 2158932254, i64 2158932310, i64 2158932344, i64 2158932368, i64 2158932409, i64 2158932430, i64 2158932458, i64 2158932492}
!810 = !{i64 2158835372}
!811 = !{i64 2158682269}
!812 = !{i64 2158839996}
!813 = !{i64 2158842603}
!814 = !{i64 2158845216}
!815 = !{i64 2158847823}
!816 = !{i64 2158850409}
!817 = !{i64 2158853016}
!818 = !{i64 2158855593}
!819 = !{i64 2158858249}
!820 = !{i64 2158860949}
!821 = !{i64 2158863627}
!822 = !{i64 2158866308}
!823 = !{i64 2158868964}
!824 = !{i64 2158871686}
!825 = !{i64 2158874375}
!826 = !{i64 2158877119}
!827 = !{i64 2158879830}
!828 = !{i64 2158882585}
!829 = !{i64 2158885274}
!830 = !{i64 2158887974}
!831 = !{i64 2158890685}
!832 = !{i64 2158893407}
!833 = !{i64 2158895989}
!834 = !{i64 2158898580}
!835 = !{i64 2158901171}
!836 = !{i64 2158903762}
!837 = !{i64 2158906353}
!838 = !{i64 2158745315}
!839 = !{i64 2158745914}
!840 = !{i64 2158746224}
!841 = !{i64 2158746751}
!842 = !{i64 2158747567}
!843 = !{i64 2158748166}
!844 = !{i64 2158748765}
!845 = !{i64 2158749364}
!846 = !{!"branch_weights", i32 2000, i32 1}
!847 = !{i64 2158939088}
!848 = !{i64 2158940251}
!849 = !{i64 2158941749}
!850 = !{i64 2158942888}
!851 = !{i64 2158944868}
!852 = !{i64 2158945467}
!853 = !{i64 2148567290, i64 2148567295, i64 2148567308, i64 2148567352, i64 2148567386, i64 2148567407}
!854 = !{i64 2158949836}
!855 = !{i64 2158950136}
!856 = !{i64 2158950637}
!857 = !{i64 2158951141}
!858 = !{i64 2158965468}
!859 = !{i64 2158968170}
!860 = !{i64 2158984230}
!861 = !{i64 2158985369}
!862 = !{i64 2158987570}
!863 = !{i64 2159060198}
!864 = !{i64 2159061307}
!865 = !{i64 2159064630}
!866 = !{i64 2159065823}
!867 = !{i64 2159068892}
!868 = !{i64 2159069975}
!869 = !{i64 2159073251}
!870 = !{i64 2159074378}
!871 = !{i64 2159076691}
!872 = !{i64 2159079112}
!873 = !{i64 2159082162}
!874 = !{i64 2159083319}
!875 = !{i64 2159084787}
!876 = !{i64 2159085902}
!877 = !{i64 2148743475, i64 2148743501, i64 2148743530, i64 2148743564, i64 2148743595, i64 2148743618}
!878 = !{i64 2158786792, i64 2158787297, i64 2158786829, i64 2158786885, i64 2158786919, i64 2158786943, i64 2158786984, i64 2158787005, i64 2158787033, i64 2158787067}
!879 = !{i64 2158768525}
!880 = !{i64 2158769592}
!881 = !{i64 2158759632}
!882 = !{i64 2158760169}
!883 = !{i64 2158760706}
!884 = !{i64 2158761243}
!885 = !{i64 2158761780}
!886 = !{i64 2158762317}
!887 = !{i64 2158763983}
!888 = !{i64 2158764974}
!889 = !{i64 2158765315}
!890 = !{i64 2158776840}
!891 = !{i64 2158818338}
!892 = !{i64 2158819405}
!893 = !{i64 2158820774}
!894 = !{i64 2158821841}
!895 = !{!"auto-init"}
!896 = !{i64 2159007492}
!897 = !{i64 2159010051}
!898 = !{i64 2159010650}
!899 = !{i64 2159011249}
!900 = !{i64 2159011848}
!901 = !{i64 2159012447}
!902 = !{i64 2159013046}
!903 = !{i64 2159013645}
!904 = !{i64 2159014244}
!905 = !{i64 2159014843}
!906 = !{i64 2159015442}
!907 = !{i64 2159016050}
!908 = !{i64 2159016658}
!909 = !{i8 0, i8 2}
!910 = !{i64 2159054669}
!911 = !{i64 2148831951}
!912 = !{i64 2148746660, i64 2148746692, i64 2148746721, i64 2148746755, i64 2148746786, i64 2148746809}
!913 = !{i64 2148832180}
!914 = !{i64 2158774976, i64 2158775481, i64 2158775013, i64 2158775069, i64 2158775103, i64 2158775127, i64 2158775168, i64 2158775189, i64 2158775217, i64 2158775251}
!915 = !{i64 2158751551}
!916 = !{i64 2158752043}
!917 = !{i64 2158752535}
!918 = !{i64 2158753027}
!919 = !{i64 2158753519}
!920 = !{i64 2158754011}
!921 = !{i64 2158754503}
!922 = !{i64 2158754995}
!923 = !{i64 2158755487}
!924 = !{i64 2158755979}
!925 = !{i64 2158756471}
!926 = !{i64 2158756963}
!927 = !{i64 2158757455}
!928 = !{i64 2159002636}
!929 = !{i64 2159003775}
!930 = !{i64 2159006354}
!931 = !{i64 2159006671}
