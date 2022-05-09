; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ttpci/budget-av.c_pt.bc'
source_filename = "../drivers/media/pci/ttpci/budget-av.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.budget_info = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tda8261_config = type { i8, i32 }
%struct.tda1002x_config = type { i8, i8 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.budget_av = type { %struct.budget, %struct.video_device, i32, i32, %struct.tasklet_struct, i32, %struct.dvb_ca_en50221, i8 }
%struct.budget = type { %struct.dvb_device, %struct.dvb_net, ptr, %struct.i2c_adapter, ptr, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, %struct.tasklet_struct, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.dvb_adapter, ptr, ptr, i32, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.125], %struct.media_entity_enum, i32 }
%struct.anon.125 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.167], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.167 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.168 }>
%union.anon.168 = type { i64 }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }

@__param_str_adapter_nr = internal constant [21 x i8] c"budget_av.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype387 = internal constant [45 x i8] c"budget_av.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr388 = internal constant [46 x i8] c"budget_av.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@budget_extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"budget_av\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @budget_av_attach, ptr @budget_av_detach, i32 1024, ptr @budget_av_irq }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_budget_av__389_1617_budget_av_init6 = internal global ptr @budget_av_init, section ".initcall6.init", align 4
@__exitcall_budget_av_exit = internal global ptr @budget_av_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file390 = internal constant [49 x i8] c"budget_av.file=drivers/media/pci/ttpci/budget-av\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [22 x i8] c"budget_av.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [71 x i8] c"budget_av.author=Ralph Metzler, Marcus Metzler, Michael Hunold, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description393 = internal constant [127 x i8] c"budget_av.description=driver for the SAA7146 based so-called budget PCI DVB w/ analog input and CI-module (e.g. the KNC cards)\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@pci_tbl = internal constant { [30 x %struct.pci_device_id], [224 x i8] } { [30 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 20310, i32 0, i32 0, i32 ptrtoint (ptr @knc1s to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @knc1s to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @knc1s to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 4401, i32 17, i32 0, i32 0, i32 ptrtoint (ptr @knc1sp to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 17, i32 0, i32 0, i32 ptrtoint (ptr @knc1sp to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 20, i32 0, i32 0, i32 ptrtoint (ptr @kncxs to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 21, i32 0, i32 0, i32 ptrtoint (ptr @knc1spx4 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 22, i32 0, i32 0, i32 ptrtoint (ptr @kncxs to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 24, i32 0, i32 0, i32 ptrtoint (ptr @knc1s2 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 25, i32 0, i32 0, i32 ptrtoint (ptr @knc1s2 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 29, i32 0, i32 0, i32 ptrtoint (ptr @sates2 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 30, i32 0, i32 0, i32 ptrtoint (ptr @satewpls to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 26, i32 0, i32 0, i32 ptrtoint (ptr @satewpls1 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 27, i32 0, i32 0, i32 ptrtoint (ptr @satewps to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 42, i32 0, i32 0, i32 ptrtoint (ptr @satewplc to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 44, i32 0, i32 0, i32 ptrtoint (ptr @satewcmk3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 58, i32 0, i32 0, i32 ptrtoint (ptr @satewt to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 32, i32 0, i32 0, i32 ptrtoint (ptr @knc1c to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 33, i32 0, i32 0, i32 ptrtoint (ptr @knc1cp to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 34, i32 0, i32 0, i32 ptrtoint (ptr @knc1cmk3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 40, i32 0, i32 0, i32 ptrtoint (ptr @knc1ctda10024 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 35, i32 0, i32 0, i32 ptrtoint (ptr @knc1cpmk3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 48, i32 0, i32 0, i32 ptrtoint (ptr @knc1t to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 6292, i32 49, i32 0, i32 0, i32 ptrtoint (ptr @knc1tp to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5435, i32 4436, i32 0, i32 0, i32 ptrtoint (ptr @cin1200s to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5435, i32 4437, i32 0, i32 0, i32 ptrtoint (ptr @cin1200sn to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5435, i32 4438, i32 0, i32 0, i32 ptrtoint (ptr @cin1200c to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5435, i32 4470, i32 0, i32 0, i32 ptrtoint (ptr @cin1200cmk3 to i32), i32 0 }, %struct.pci_device_id { i32 4401, i32 28998, i32 5435, i32 4439, i32 0, i32 0, i32 ptrtoint (ptr @cin1200t to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@knc1s = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1s_info }, [24 x i8] zeroinitializer }, align 32
@knc1sp = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1sp_info }, [24 x i8] zeroinitializer }, align 32
@kncxs = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @kncxs_info }, [24 x i8] zeroinitializer }, align 32
@knc1spx4 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1spx4_info }, [24 x i8] zeroinitializer }, align 32
@knc1s2 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1s2_info }, [24 x i8] zeroinitializer }, align 32
@sates2 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @sates2_info }, [24 x i8] zeroinitializer }, align 32
@satewpls = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewpls_info }, [24 x i8] zeroinitializer }, align 32
@satewpls1 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewpls1_info }, [24 x i8] zeroinitializer }, align 32
@satewps = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewps_info }, [24 x i8] zeroinitializer }, align 32
@satewplc = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewplc_info }, [24 x i8] zeroinitializer }, align 32
@satewcmk3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewcmk3_info }, [24 x i8] zeroinitializer }, align 32
@satewt = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @satewt_info }, [24 x i8] zeroinitializer }, align 32
@knc1c = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1c_info }, [24 x i8] zeroinitializer }, align 32
@knc1cp = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1cp_info }, [24 x i8] zeroinitializer }, align 32
@knc1cmk3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1cmk3_info }, [24 x i8] zeroinitializer }, align 32
@knc1ctda10024 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1ctda10024_info }, [24 x i8] zeroinitializer }, align 32
@knc1cpmk3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1cpmk3_info }, [24 x i8] zeroinitializer }, align 32
@knc1t = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1t_info }, [24 x i8] zeroinitializer }, align 32
@knc1tp = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @knc1tp_info }, [24 x i8] zeroinitializer }, align 32
@cin1200s = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @cin1200s_info }, [24 x i8] zeroinitializer }, align 32
@cin1200sn = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @cin1200sn_info }, [24 x i8] zeroinitializer }, align 32
@cin1200c = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @cin1200c_info }, [24 x i8] zeroinitializer }, align 32
@cin1200cmk3 = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @cin1200cmk3_info }, [24 x i8] zeroinitializer }, align 32
@cin1200t = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @cin1200t_info }, [24 x i8] zeroinitializer }, align 32
@knc1s_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str, i32 8 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KNC1 DVB-S\00", [21 x i8] zeroinitializer }, align 32
@knc1sp_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.1, i32 11 }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"KNC1 DVB-S Plus\00", [16 x i8] zeroinitializer }, align 32
@kncxs_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.2, i32 14 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"KNC TV STAR DVB-S\00", [46 x i8] zeroinitializer }, align 32
@knc1spx4_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.3, i32 11 }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"KNC1 DVB-S Plus X4\00", [45 x i8] zeroinitializer }, align 32
@knc1s2_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.4, i32 18 }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"KNC1 DVB-S2\00", [20 x i8] zeroinitializer }, align 32
@sates2_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.5, i32 18 }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Satelco EasyWatch DVB-S2\00", [39 x i8] zeroinitializer }, align 32
@satewpls_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.6, i32 14 }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Satelco EasyWatch DVB-S light\00", [34 x i8] zeroinitializer }, align 32
@satewpls1_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.6, i32 8 }, [24 x i8] zeroinitializer }, align 32
@satewps_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.7, i32 8 }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Satelco EasyWatch DVB-S\00", [40 x i8] zeroinitializer }, align 32
@satewplc_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.8, i32 12 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Satelco EasyWatch DVB-C\00", [40 x i8] zeroinitializer }, align 32
@satewcmk3_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.9, i32 16 }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Satelco EasyWatch DVB-C MK3\00", [36 x i8] zeroinitializer }, align 32
@satewt_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.10, i32 10 }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Satelco EasyWatch DVB-T\00", [40 x i8] zeroinitializer }, align 32
@knc1c_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.11, i32 9 }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KNC1 DVB-C\00", [21 x i8] zeroinitializer }, align 32
@knc1cp_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.12, i32 12 }, [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"KNC1 DVB-C Plus\00", [16 x i8] zeroinitializer }, align 32
@knc1cmk3_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.13, i32 16 }, [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"KNC1 DVB-C MK3\00", [17 x i8] zeroinitializer }, align 32
@knc1ctda10024_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.14, i32 19 }, [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"KNC1 DVB-C TDA10024\00", [44 x i8] zeroinitializer }, align 32
@knc1cpmk3_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.15, i32 17 }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"KNC1 DVB-C Plus MK3\00", [44 x i8] zeroinitializer }, align 32
@knc1t_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.16, i32 10 }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KNC1 DVB-T\00", [21 x i8] zeroinitializer }, align 32
@knc1tp_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.17, i32 13 }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"KNC1 DVB-T Plus\00", [16 x i8] zeroinitializer }, align 32
@cin1200s_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.18, i32 5 }, [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TerraTec Cinergy 1200 DVB-S\00", [36 x i8] zeroinitializer }, align 32
@cin1200sn_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.18, i32 5 }, [24 x i8] zeroinitializer }, align 32
@cin1200c_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.19, i32 6 }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy 1200 DVB-C\00", [36 x i8] zeroinitializer }, align 32
@cin1200cmk3_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.20, i32 15 }, [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Terratec Cinergy 1200 DVB-C MK3\00", [32 x i8] zeroinitializer }, align 32
@cin1200t_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str.21, i32 7 }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy 1200 DVB-T\00", [36 x i8] zeroinitializer }, align 32
@budget_debug = external dso_local local_unnamed_addr global i32, align 4
@budget_av_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017budget_av: %s(): dev: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"budget_av_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/ttpci/budget-av.c\00", [60 x i8] zeroinitializer }, align 32
@budget_av_attach._entry_ptr = internal global ptr @budget_av_attach._entry, section ".printk_index", align 4
@vv_data = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 2, i32 0, i32 0, i32 0, ptr @standard, i32 2, ptr null, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations zeroinitializer }, [268 x i8] zeroinitializer }, align 32
@budget_av_attach._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.24, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013budget_av: %s: cannot init vv subsystem\0A\00", [53 x i8] zeroinitializer }, align 32
@budget_av_attach._entry_ptr.27 = internal global ptr @budget_av_attach._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"knc1\00", [27 x i8] zeroinitializer }, align 32
@budget_av_attach._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.24, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013budget_av: %s: cannot register capture v4l2 device\0A\00", [42 x i8] zeroinitializer }, align 32
@budget_av_attach._entry_ptr.31 = internal global ptr @budget_av_attach._entry.29, section ".printk_index", align 4
@budget_av_attach._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.24, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013budget_av: KNC1-%d: Could not read MAC from KNC1 card\0A\00", [39 x i8] zeroinitializer }, align 32
@budget_av_attach._entry_ptr.34 = internal global ptr @budget_av_attach._entry.32, section ".printk_index", align 4
@budget_av_attach._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.24, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016budget_av: KNC1-%d: MAC addr = %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@budget_av_attach._entry_ptr.37 = internal global ptr @budget_av_attach._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saa7113_tab = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\01\08\02\C0\033\04\00\05\00\06\EB\07\E0\08(\09\00\0A\80\0BG\0C@\0D\00\0E\01\0FD\10\08\11\0C\12{\13\00\15\00\16\00\17\00W\FF@\82X\00YTZ\07[\83^\00\FF", [37 x i8] zeroinitializer }, align 32
@saa7113_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.24, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017budget_av: %s(): saa7113 not found on KNC card\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7113_init\00", [19 x i8] zeroinitializer }, align 32
@saa7113_init._entry_ptr = internal global ptr @saa7113_init._entry, section ".printk_index", align 4
@saa7113_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.24, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017budget_av: %s(): saa7113 detected and initializing\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7113_init._entry_ptr.42 = internal global ptr @saa7113_init._entry.40, section ".printk_index", align 4
@saa7113_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.24, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017budget_av: %s(): saa7113  status=%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7113_init._entry_ptr.45 = internal global ptr @saa7113_init._entry.43, section ".printk_index", align 4
@standard = internal global { [2 x %struct.saa7146_standard], [48 x i8] } { [2 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.46, i64 255, i32 23, i32 288, i32 20, i32 680, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.47, i64 45056, i32 22, i32 240, i32 6, i32 708, i32 480, i32 640 }], [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.24, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017budget_av: %s(): VIDIOC_ENUMINPUT %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@knc1_inputs = internal constant { [2 x %struct.v4l2_input], [32 x i8] } { [2 x %struct.v4l2_input] [%struct.v4l2_input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 1, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 1, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 2, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@vidioc_g_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.24, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017budget_av: %s(): VIDIOC_G_INPUT %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_input._entry_ptr = internal global ptr @vidioc_g_input._entry, section ".printk_index", align 4
@vidioc_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.24, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017budget_av: %s(): VIDIOC_S_INPUT %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_input._entry_ptr = internal global ptr @vidioc_s_input._entry, section ".printk_index", align 4
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@cinergy_1200s_1894_0010_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @typhoon_cinergy1200s_inittab, i32 88000000, i8 -112, i32 100, ptr @philips_su1278_ty_ci_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tua6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tua6100_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.24, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tua6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.62 = internal global ptr @frontend_init._entry.60, section ".printk_index", align 4
@typhoon_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @typhoon_cinergy1200s_inittab, i32 88000000, i8 16, i32 100, ptr @philips_su1278_ty_ci_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.64 = internal global ptr @frontend_init._entry.63, section ".printk_index", align 4
@philips_sd1878_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @philips_sd1878_inittab, i32 88000000, i8 16, i32 100, ptr @philips_sd1878_ci_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.66 = internal global ptr @frontend_init._entry.65, section ".printk_index", align 4
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.24, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.71 = internal global ptr @frontend_init._entry.69, section ".printk_index", align 4
@frontend_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.73 = internal global ptr @frontend_init._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb0899_attach\00", [42 x i8] zeroinitializer }, align 32
@knc1_dvbs2_config = internal global { %struct.stb0899_config, [36 x i8] } { %struct.stb0899_config { ptr @knc1_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @knc1_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr null, i32 1, i32 27000000, i8 104, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76500000, i32 90000000, i32 3, i32 32, i32 10, i32 20, i32 6, i32 1125, i32 758, i32 1350, i32 1664100, i32 28, i32 15, i32 30, i32 70, ptr @tda8261_set_frequency, ptr @tda8261_get_frequency, ptr null, ptr @tda8261_get_bandwidth, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.57, ptr @.str.24, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb0899_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.78 = internal global ptr @frontend_init._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8261_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda8261_attach\00", [42 x i8] zeroinitializer }, align 32
@sd1878c_config = internal constant { %struct.tda8261_config, [24 x i8] } { %struct.tda8261_config { i8 96, i32 1 }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.57, ptr @.str.24, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda8261_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.83 = internal global ptr @frontend_init._entry.81, section ".printk_index", align 4
@cinergy_1200s_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @typhoon_cinergy1200s_inittab, i32 88000000, i8 0, i32 100, ptr @philips_su1278_ty_ci_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.85 = internal global ptr @frontend_init._entry.84, section ".printk_index", align 4
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10021_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10021_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_cu1216_config = internal global { %struct.tda1002x_config, [30 x i8] } { %struct.tda1002x_config { i8 12, i8 1 }, [30 x i8] zeroinitializer }, align 32
@frontend_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.57, ptr @.str.24, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10021_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.90 = internal global ptr @frontend_init._entry.88, section ".printk_index", align 4
@philips_cu1216_config_altaddress = internal global { %struct.tda1002x_config, [30 x i8] } { %struct.tda1002x_config { i8 13, i8 0 }, [30 x i8] zeroinitializer }, align 32
@frontend_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.57, ptr @.str.24, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.92 = internal global ptr @frontend_init._entry.91, section ".printk_index", align 4
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_cu1216_tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 1, i32 0, i8 0, i8 0, i8 0, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@frontend_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.57, ptr @.str.24, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.97 = internal global ptr @frontend_init._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10046_attach\00", [41 x i8] zeroinitializer }, align 32
@philips_tu1216_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @philips_tu1216_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.57, ptr @.str.24, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10046_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.102 = internal global ptr @frontend_init._entry.100, section ".printk_index", align 4
@frontend_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.57, ptr @.str.24, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013budget_av: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [37 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.105 = internal global ptr @frontend_init._entry.103, section ".printk_index", align 4
@frontend_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.57, ptr @.str.24, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013budget_av: Frontend registration failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.108 = internal global ptr @frontend_init._entry.106, section ".printk_index", align 4
@typhoon_cinergy1200s_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0F\92\FF\FF", [50 x i8] zeroinitializer }, align 32
@philips_sd1878_inittab = internal global { [80 x i8], [48 x i8] } { [80 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08C\09\02\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\19\17\8C\18Y\19\F8\1A\FE\1C\7F\1D\00\1E\00\1FP \00!\00\22\00#\00(\00)(*\14+\0F,\09-\091\1F2\193\FC4\93\FF\FF", [48 x i8] zeroinitializer }, align 32
@knc1_stb0899_s1_init_1 = internal constant { [83 x %struct.stb0899_s1_reg], [84 x i8] } { [83 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -3936, i8 50 }, %struct.stb0899_s1_reg { i16 -3935, i8 -128 }, %struct.stb0899_s1_reg { i16 -3932, i8 4 }, %struct.stb0899_s1_reg { i16 -3931, i8 0 }, %struct.stb0899_s1_reg { i16 -3930, i8 0 }, %struct.stb0899_s1_reg { i16 -3928, i8 32 }, %struct.stb0899_s1_reg { i16 -3927, i8 -116 }, %struct.stb0899_s1_reg { i16 -3926, i8 -102 }, %struct.stb0899_s1_reg { i16 -3839, i8 11 }, %struct.stb0899_s1_reg { i16 -3824, i8 17 }, %struct.stb0899_s1_reg { i16 -3823, i8 10 }, %struct.stb0899_s1_reg { i16 -3822, i8 5 }, %struct.stb0899_s1_reg { i16 -3821, i8 0 }, %struct.stb0899_s1_reg { i16 -3820, i8 0 }, %struct.stb0899_s1_reg { i16 -3812, i8 0 }, %struct.stb0899_s1_reg { i16 -3811, i8 0 }, %struct.stb0899_s1_reg { i16 -3808, i8 48 }, %struct.stb0899_s1_reg { i16 -3807, i8 0 }, %struct.stb0899_s1_reg { i16 -3806, i8 0 }, %struct.stb0899_s1_reg { i16 -3805, i8 0 }, %struct.stb0899_s1_reg { i16 -3804, i8 -13 }, %struct.stb0899_s1_reg { i16 -3803, i8 -4 }, %struct.stb0899_s1_reg { i16 -3802, i8 -1 }, %struct.stb0899_s1_reg { i16 -3801, i8 -1 }, %struct.stb0899_s1_reg { i16 -3800, i8 0 }, %struct.stb0899_s1_reg { i16 -3799, i8 -120 }, %struct.stb0899_s1_reg { i16 -3798, i8 88 }, %struct.stb0899_s1_reg { i16 -3783, i8 0 }, %struct.stb0899_s1_reg { i16 -3782, i8 32 }, %struct.stb0899_s1_reg { i16 -3781, i8 -55 }, %struct.stb0899_s1_reg { i16 -3780, i8 -112 }, %struct.stb0899_s1_reg { i16 -3779, i8 64 }, %struct.stb0899_s1_reg { i16 -3778, i8 0 }, %struct.stb0899_s1_reg { i16 -3776, i8 -126 }, %struct.stb0899_s1_reg { i16 -3775, i8 -126 }, %struct.stb0899_s1_reg { i16 -3774, i8 -126 }, %struct.stb0899_s1_reg { i16 -3773, i8 -126 }, %struct.stb0899_s1_reg { i16 -3772, i8 -126 }, %struct.stb0899_s1_reg { i16 -3771, i8 -126 }, %struct.stb0899_s1_reg { i16 -3770, i8 -126 }, %struct.stb0899_s1_reg { i16 -3769, i8 -126 }, %struct.stb0899_s1_reg { i16 -3768, i8 -126 }, %struct.stb0899_s1_reg { i16 -3767, i8 -126 }, %struct.stb0899_s1_reg { i16 -3766, i8 -126 }, %struct.stb0899_s1_reg { i16 -3765, i8 -126 }, %struct.stb0899_s1_reg { i16 -3764, i8 -126 }, %struct.stb0899_s1_reg { i16 -3763, i8 -126 }, %struct.stb0899_s1_reg { i16 -3762, i8 -126 }, %struct.stb0899_s1_reg { i16 -3761, i8 -126 }, %struct.stb0899_s1_reg { i16 -3760, i8 -126 }, %struct.stb0899_s1_reg { i16 -3759, i8 -126 }, %struct.stb0899_s1_reg { i16 -3758, i8 -126 }, %struct.stb0899_s1_reg { i16 -3757, i8 -126 }, %struct.stb0899_s1_reg { i16 -3756, i8 -126 }, %struct.stb0899_s1_reg { i16 -3755, i8 -72 }, %struct.stb0899_s1_reg { i16 -3754, i8 -70 }, %struct.stb0899_s1_reg { i16 -3753, i8 8 }, %struct.stb0899_s1_reg { i16 -3752, i8 -126 }, %struct.stb0899_s1_reg { i16 -3751, i8 -111 }, %struct.stb0899_s1_reg { i16 -3750, i8 -126 }, %struct.stb0899_s1_reg { i16 -3749, i8 126 }, %struct.stb0899_s1_reg { i16 -3748, i8 -126 }, %struct.stb0899_s1_reg { i16 -3747, i8 -126 }, %struct.stb0899_s1_reg { i16 -3746, i8 -126 }, %struct.stb0899_s1_reg { i16 -3745, i8 32 }, %struct.stb0899_s1_reg { i16 -3744, i8 -126 }, %struct.stb0899_s1_reg { i16 -3743, i8 -126 }, %struct.stb0899_s1_reg { i16 -3742, i8 -126 }, %struct.stb0899_s1_reg { i16 -3741, i8 -126 }, %struct.stb0899_s1_reg { i16 -3740, i8 -126 }, %struct.stb0899_s1_reg { i16 -3739, i8 -126 }, %struct.stb0899_s1_reg { i16 -3738, i8 -126 }, %struct.stb0899_s1_reg { i16 -3737, i8 -126 }, %struct.stb0899_s1_reg { i16 -3661, i8 21 }, %struct.stb0899_s1_reg { i16 -3658, i8 2 }, %struct.stb0899_s1_reg { i16 -3657, i8 0 }, %struct.stb0899_s1_reg { i16 -3656, i8 0 }, %struct.stb0899_s1_reg { i16 -3646, i8 32 }, %struct.stb0899_s1_reg { i16 -3645, i8 0 }, %struct.stb0899_s1_reg { i16 -3584, i8 0 }, %struct.stb0899_s1_reg { i16 -3583, i8 10 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [84 x i8] zeroinitializer }, align 32
@stb0899_s2_init_2 = internal constant { [177 x %struct.stb0899_s2_reg], [532 x i8] } { [177 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -3328, i32 0, i32 259 }, %struct.stb0899_s2_reg { i16 -3324, i32 0, i32 1053940310 }, %struct.stb0899_s2_reg { i16 -3320, i32 0, i32 16384 }, %struct.stb0899_s2_reg { i16 -3316, i32 0, i32 10974 }, %struct.stb0899_s2_reg { i16 -3312, i32 0, i32 444 }, %struct.stb0899_s2_reg { i16 -3308, i32 0, i32 512 }, %struct.stb0899_s2_reg { i16 -3300, i32 0, i32 15 }, %struct.stb0899_s2_reg { i16 -3296, i32 0, i32 66800160 }, %struct.stb0899_s2_reg { i16 -3292, i32 0, i32 2100375 }, %struct.stb0899_s2_reg { i16 -3288, i32 0, i32 22 }, %struct.stb0899_s2_reg { i16 -3284, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 0, i32 1053857718 }, %struct.stb0899_s2_reg { i16 -3268, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 0, i32 258792449 }, %struct.stb0899_s2_reg { i16 -3256, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 0, i32 14739 }, %struct.stb0899_s2_reg { i16 -3248, i32 0, i32 867439 }, %struct.stb0899_s2_reg { i16 -3244, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 0, i32 37282702 }, %struct.stb0899_s2_reg { i16 -3232, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3204, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 32, i32 1074200576 }, %struct.stb0899_s2_reg { i16 -3240, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3236, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3232, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 32, i32 65025 }, %struct.stb0899_s2_reg { i16 -3224, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 32, i32 20487 }, %struct.stb0899_s2_reg { i16 -3208, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3328, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 64, i32 65280 }, %struct.stb0899_s2_reg { i16 -3260, i32 64, i32 256 }, %struct.stb0899_s2_reg { i16 -3256, i32 64, i32 65025 }, %struct.stb0899_s2_reg { i16 -3252, i32 64, i32 1278 }, %struct.stb0899_s2_reg { i16 -3248, i32 64, i32 53223 }, %struct.stb0899_s2_reg { i16 -3244, i32 64, i32 48838 }, %struct.stb0899_s2_reg { i16 -3240, i32 64, i32 49855 }, %struct.stb0899_s2_reg { i16 -3236, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 64, i32 49600 }, %struct.stb0899_s2_reg { i16 -3216, i32 64, i32 49344 }, %struct.stb0899_s2_reg { i16 -3212, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 64, i32 49345 }, %struct.stb0899_s2_reg { i16 -3328, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3324, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3320, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3316, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3312, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3308, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3304, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3300, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3296, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3292, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3288, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3284, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3280, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3276, i32 96, i32 49598 }, %struct.stb0899_s2_reg { i16 -3272, i32 96, i32 49609 }, %struct.stb0899_s2_reg { i16 -3268, i32 96, i32 49370 }, %struct.stb0899_s2_reg { i16 -3264, i32 96, i32 49338 }, %struct.stb0899_s2_reg { i16 -3260, i32 96, i32 49604 }, %struct.stb0899_s2_reg { i16 -3256, i32 96, i32 49599 }, %struct.stb0899_s2_reg { i16 -3252, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3248, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3244, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3240, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3236, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3216, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3212, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3328, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3324, i32 1024, i32 22100 }, %struct.stb0899_s2_reg { i16 -3316, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1024, i32 131097 }, %struct.stb0899_s2_reg { i16 -3308, i32 1024, i32 4928055 }, %struct.stb0899_s2_reg { i16 -3304, i32 1024, i32 253207 }, %struct.stb0899_s2_reg { i16 -3300, i32 1024, i32 32776 }, %struct.stb0899_s2_reg { i16 -3296, i32 1024, i32 2765062 }, %struct.stb0899_s2_reg { i16 -3292, i32 1024, i32 398346 }, %struct.stb0899_s2_reg { i16 -3288, i32 1024, i32 32768 }, %struct.stb0899_s2_reg { i16 -3284, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1024, i32 1137 }, %struct.stb0899_s2_reg { i16 -3252, i32 1024, i32 24839269 }, %struct.stb0899_s2_reg { i16 -3248, i32 1024, i32 2 }, %struct.stb0899_s2_reg { i16 -3244, i32 1024, i32 1664100 }, %struct.stb0899_s2_reg { i16 -3240, i32 1024, i32 1539 }, %struct.stb0899_s2_reg { i16 -3236, i32 1024, i32 33842790 }, %struct.stb0899_s2_reg { i16 -3232, i32 1024, i32 268723587 }, %struct.stb0899_s2_reg { i16 -3228, i32 1024, i32 66564 }, %struct.stb0899_s2_reg { i16 -3224, i32 1024, i32 174730 }, %struct.stb0899_s2_reg { i16 -3220, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 1024, i32 1280 }, %struct.stb0899_s2_reg { i16 -3208, i32 1024, i32 2662560 }, %struct.stb0899_s2_reg { i16 -3204, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1088, i32 8391703 }, %struct.stb0899_s2_reg { i16 -3316, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1088, i32 346114 }, %struct.stb0899_s2_reg { i16 -3296, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1088, i32 1024 }, %struct.stb0899_s2_reg { i16 -3272, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3232, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3212, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3208, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3328, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [532 x i8] zeroinitializer }, align 32
@knc1_stb0899_s1_init_3 = internal constant { [130 x %struct.stb0899_s1_reg], [152 x i8] } { [130 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3058, i8 0 }, %struct.stb0899_s1_reg { i16 -3056, i8 -55 }, %struct.stb0899_s1_reg { i16 -3054, i8 65 }, %struct.stb0899_s1_reg { i16 -3053, i8 8 }, %struct.stb0899_s1_reg { i16 -3049, i8 122 }, %struct.stb0899_s1_reg { i16 -3048, i8 78 }, %struct.stb0899_s1_reg { i16 -3047, i8 51 }, %struct.stb0899_s1_reg { i16 -3046, i8 -124 }, %struct.stb0899_s1_reg { i16 -3045, i8 -18 }, %struct.stb0899_s1_reg { i16 -3044, i8 -121 }, %struct.stb0899_s1_reg { i16 -3043, i8 -108 }, %struct.stb0899_s1_reg { i16 -3042, i8 65 }, %struct.stb0899_s1_reg { i16 -3041, i8 -35 }, %struct.stb0899_s1_reg { i16 -3040, i8 -55 }, %struct.stb0899_s1_reg { i16 -3035, i8 -76 }, %struct.stb0899_s1_reg { i16 -3034, i8 16 }, %struct.stb0899_s1_reg { i16 -3033, i8 48 }, %struct.stb0899_s1_reg { i16 -3032, i8 -5 }, %struct.stb0899_s1_reg { i16 -3031, i8 3 }, %struct.stb0899_s1_reg { i16 -3030, i8 59 }, %struct.stb0899_s1_reg { i16 -3029, i8 61 }, %struct.stb0899_s1_reg { i16 -3028, i8 -127 }, %struct.stb0899_s1_reg { i16 -3026, i8 -128 }, %struct.stb0899_s1_reg { i16 -3018, i8 4 }, %struct.stb0899_s1_reg { i16 -3017, i8 -11 }, %struct.stb0899_s1_reg { i16 -3016, i8 37 }, %struct.stb0899_s1_reg { i16 -3015, i8 -128 }, %struct.stb0899_s1_reg { i16 -3014, i8 0 }, %struct.stb0899_s1_reg { i16 -3013, i8 -54 }, %struct.stb0899_s1_reg { i16 -3010, i8 -15 }, %struct.stb0899_s1_reg { i16 -3009, i8 -13 }, %struct.stb0899_s1_reg { i16 -3008, i8 42 }, %struct.stb0899_s1_reg { i16 -3007, i8 5 }, %struct.stb0899_s1_reg { i16 -3004, i8 23 }, %struct.stb0899_s1_reg { i16 -3003, i8 -6 }, %struct.stb0899_s1_reg { i16 -3002, i8 47 }, %struct.stb0899_s1_reg { i16 -3001, i8 104 }, %struct.stb0899_s1_reg { i16 -3000, i8 64 }, %struct.stb0899_s1_reg { i16 -2996, i8 47 }, %struct.stb0899_s1_reg { i16 -2995, i8 104 }, %struct.stb0899_s1_reg { i16 -2994, i8 64 }, %struct.stb0899_s1_reg { i16 -2848, i8 -3 }, %struct.stb0899_s1_reg { i16 -2847, i8 4 }, %struct.stb0899_s1_reg { i16 -2846, i8 15 }, %struct.stb0899_s1_reg { i16 -2845, i8 -1 }, %struct.stb0899_s1_reg { i16 -2844, i8 -33 }, %struct.stb0899_s1_reg { i16 -2843, i8 -6 }, %struct.stb0899_s1_reg { i16 -2842, i8 55 }, %struct.stb0899_s1_reg { i16 -2841, i8 13 }, %struct.stb0899_s1_reg { i16 -2840, i8 -67 }, %struct.stb0899_s1_reg { i16 -2839, i8 -9 }, %struct.stb0899_s1_reg { i16 -2804, i8 0 }, %struct.stb0899_s1_reg { i16 -2803, i8 0 }, %struct.stb0899_s1_reg { i16 -2801, i8 -1 }, %struct.stb0899_s1_reg { i16 -2781, i8 42 }, %struct.stb0899_s1_reg { i16 -2780, i8 0 }, %struct.stb0899_s1_reg { i16 -2779, i8 0 }, %struct.stb0899_s1_reg { i16 -2778, i8 0 }, %struct.stb0899_s1_reg { i16 -2777, i8 0 }, %struct.stb0899_s1_reg { i16 -2776, i8 0 }, %struct.stb0899_s1_reg { i16 -2775, i8 0 }, %struct.stb0899_s1_reg { i16 -2768, i8 6 }, %struct.stb0899_s1_reg { i16 -2765, i8 1 }, %struct.stb0899_s1_reg { i16 -2764, i8 -16 }, %struct.stb0899_s1_reg { i16 -2763, i8 -96 }, %struct.stb0899_s1_reg { i16 -2762, i8 120 }, %struct.stb0899_s1_reg { i16 -2761, i8 78 }, %struct.stb0899_s1_reg { i16 -2760, i8 72 }, %struct.stb0899_s1_reg { i16 -2759, i8 56 }, %struct.stb0899_s1_reg { i16 -2756, i8 -1 }, %struct.stb0899_s1_reg { i16 -2755, i8 25 }, %struct.stb0899_s1_reg { i16 -2744, i8 -79 }, %struct.stb0899_s1_reg { i16 -2743, i8 66 }, %struct.stb0899_s1_reg { i16 -2742, i8 64 }, %struct.stb0899_s1_reg { i16 -2741, i8 18 }, %struct.stb0899_s1_reg { i16 -2740, i8 12 }, %struct.stb0899_s1_reg { i16 -2739, i8 0 }, %struct.stb0899_s1_reg { i16 -2738, i8 12 }, %struct.stb0899_s1_reg { i16 -2737, i8 77 }, %struct.stb0899_s1_reg { i16 -2736, i8 0 }, %struct.stb0899_s1_reg { i16 -2735, i8 2 }, %struct.stb0899_s1_reg { i16 -2734, i8 0 }, %struct.stb0899_s1_reg { i16 -2733, i8 0 }, %struct.stb0899_s1_reg { i16 -2726, i8 0 }, %struct.stb0899_s1_reg { i16 -2725, i8 0 }, %struct.stb0899_s1_reg { i16 -2724, i8 0 }, %struct.stb0899_s1_reg { i16 -2723, i8 -85 }, %struct.stb0899_s1_reg { i16 -2722, i8 0 }, %struct.stb0899_s1_reg { i16 -2721, i8 -52 }, %struct.stb0899_s1_reg { i16 -2720, i8 -52 }, %struct.stb0899_s1_reg { i16 -2719, i8 -128 }, %struct.stb0899_s1_reg { i16 -2700, i8 -74 }, %struct.stb0899_s1_reg { i16 -2699, i8 -106 }, %struct.stb0899_s1_reg { i16 -2698, i8 -119 }, %struct.stb0899_s1_reg { i16 -2693, i8 39 }, %struct.stb0899_s1_reg { i16 -2692, i8 3 }, %struct.stb0899_s1_reg { i16 -2685, i8 92 }, %struct.stb0899_s1_reg { i16 -2676, i8 31 }, %struct.stb0899_s1_reg { i16 -2560, i8 72 }, %struct.stb0899_s1_reg { i16 -2559, i8 0 }, %struct.stb0899_s1_reg { i16 -2558, i8 0 }, %struct.stb0899_s1_reg { i16 -2557, i8 0 }, %struct.stb0899_s1_reg { i16 -2556, i8 119 }, %struct.stb0899_s1_reg { i16 -2555, i8 0 }, %struct.stb0899_s1_reg { i16 -2554, i8 0 }, %struct.stb0899_s1_reg { i16 -2553, i8 0 }, %struct.stb0899_s1_reg { i16 -2552, i8 0 }, %struct.stb0899_s1_reg { i16 -2551, i8 0 }, %struct.stb0899_s1_reg { i16 -2550, i8 0 }, %struct.stb0899_s1_reg { i16 -2549, i8 0 }, %struct.stb0899_s1_reg { i16 -2548, i8 0 }, %struct.stb0899_s1_reg { i16 -2547, i8 0 }, %struct.stb0899_s1_reg { i16 -2546, i8 0 }, %struct.stb0899_s1_reg { i16 -2545, i8 0 }, %struct.stb0899_s1_reg { i16 -2544, i8 0 }, %struct.stb0899_s1_reg { i16 -2543, i8 0 }, %struct.stb0899_s1_reg { i16 -2542, i8 0 }, %struct.stb0899_s1_reg { i16 -2541, i8 0 }, %struct.stb0899_s1_reg { i16 -2540, i8 0 }, %struct.stb0899_s1_reg { i16 -2539, i8 0 }, %struct.stb0899_s1_reg { i16 -2538, i8 0 }, %struct.stb0899_s1_reg { i16 -2537, i8 0 }, %struct.stb0899_s1_reg { i16 -2536, i8 0 }, %struct.stb0899_s1_reg { i16 -2535, i8 16 }, %struct.stb0899_s1_reg { i16 -2534, i8 0 }, %struct.stb0899_s1_reg { i16 -2533, i8 0 }, %struct.stb0899_s1_reg { i16 -2532, i8 0 }, %struct.stb0899_s1_reg { i16 -2531, i8 0 }, %struct.stb0899_s1_reg { i16 -2530, i8 0 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@stb0899_s2_init_4 = internal constant { [21 x %struct.stb0899_s2_reg], [36 x i8] } { [21 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -1532, i32 0, i32 8 }, %struct.stb0899_s2_reg { i16 -1528, i32 0, i32 180 }, %struct.stb0899_s2_reg { i16 -1520, i32 0, i32 1205 }, %struct.stb0899_s2_reg { i16 -1516, i32 0, i32 2891 }, %struct.stb0899_s2_reg { i16 -1508, i32 0, i32 120 }, %struct.stb0899_s2_reg { i16 -1504, i32 0, i32 480 }, %struct.stb0899_s2_reg { i16 -1500, i32 0, i32 43200 }, %struct.stb0899_s2_reg { i16 -1496, i32 0, i32 12 }, %struct.stb0899_s2_reg { i16 -1536, i32 2048, i32 1 }, %struct.stb0899_s2_reg { i16 -1532, i32 2048, i32 13 }, %struct.stb0899_s2_reg { i16 -1528, i32 2048, i32 64 }, %struct.stb0899_s2_reg { i16 -1524, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1520, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1516, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1512, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1508, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1504, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1500, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1496, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1480, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@stb0899_s1_init_5 = internal constant { [38 x %struct.stb0899_s1_reg], [40 x i8] } { [38 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -240, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 0 }, %struct.stb0899_s1_reg { i16 -238, i8 0 }, %struct.stb0899_s1_reg { i16 -237, i8 0 }, %struct.stb0899_s1_reg { i16 -236, i8 0 }, %struct.stb0899_s1_reg { i16 -235, i8 0 }, %struct.stb0899_s1_reg { i16 -234, i8 0 }, %struct.stb0899_s1_reg { i16 -233, i8 0 }, %struct.stb0899_s1_reg { i16 -228, i8 0 }, %struct.stb0899_s1_reg { i16 -227, i8 0 }, %struct.stb0899_s1_reg { i16 -226, i8 0 }, %struct.stb0899_s1_reg { i16 -220, i8 0 }, %struct.stb0899_s1_reg { i16 -219, i8 0 }, %struct.stb0899_s1_reg { i16 -216, i8 0 }, %struct.stb0899_s1_reg { i16 -192, i8 0 }, %struct.stb0899_s1_reg { i16 -191, i8 0 }, %struct.stb0899_s1_reg { i16 -190, i8 0 }, %struct.stb0899_s1_reg { i16 -184, i8 0 }, %struct.stb0899_s1_reg { i16 -183, i8 0 }, %struct.stb0899_s1_reg { i16 -182, i8 0 }, %struct.stb0899_s1_reg { i16 -181, i8 0 }, %struct.stb0899_s1_reg { i16 -180, i8 0 }, %struct.stb0899_s1_reg { i16 -179, i8 0 }, %struct.stb0899_s1_reg { i16 -176, i8 0 }, %struct.stb0899_s1_reg { i16 -175, i8 0 }, %struct.stb0899_s1_reg { i16 -174, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -172, i8 0 }, %struct.stb0899_s1_reg { i16 -171, i8 0 }, %struct.stb0899_s1_reg { i16 -170, i8 0 }, %struct.stb0899_s1_reg { i16 -168, i8 0 }, %struct.stb0899_s1_reg { i16 -167, i8 0 }, %struct.stb0899_s1_reg { i16 -166, i8 0 }, %struct.stb0899_s1_reg { i16 -164, i8 0 }, %struct.stb0899_s1_reg { i16 -163, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@tda8261_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.111, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013budget_av: %s: Invalid parameter\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda8261_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/tda8261_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@tda8261_set_frequency._entry_ptr = internal global ptr @tda8261_set_frequency._entry, section ".printk_index", align 4
@tda8261_set_frequency.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.112, ptr @.str.110, ptr @.str.111, ptr @.str.113, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"budget_av\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Frequency=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"budget_av: %s: Frequency=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@tda8261_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.115, ptr @.str.111, i32 17, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda8261_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@tda8261_get_frequency._entry_ptr = internal global ptr @tda8261_get_frequency._entry, section ".printk_index", align 4
@tda8261_get_frequency.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.112, ptr @.str.115, ptr @.str.111, ptr @.str.113, i8 0, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@philips_tu1216_tuner_init.tu1216_init = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\F5\85\AB", [28 x i8] zeroinitializer }, align 32
@__const.philips_tu1216_tuner_init.tuner_msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 96, i16 0, i16 4, [2 x i8] zeroinitializer, ptr @philips_tu1216_tuner_init.tu1216_init }, align 4
@ciintf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.24, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013budget_av: ci initialisation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ciintf_init\00", [20 x i8] zeroinitializer }, align 32
@ciintf_init._entry_ptr = internal global ptr @ciintf_init._entry, section ".printk_index", align 4
@ciintf_init._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.24, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016budget_av: ci interface initialised\0A\00", [57 x i8] zeroinitializer }, align 32
@ciintf_init._entry_ptr.120 = internal global ptr @ciintf_init._entry.118, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ciintf_read_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.24, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016budget_av: cam ejected 1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ciintf_read_attribute_mem\00", [38 x i8] zeroinitializer }, align 32
@ciintf_read_attribute_mem._entry_ptr = internal global ptr @ciintf_read_attribute_mem._entry, section ".printk_index", align 4
@ciintf_write_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.24, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016budget_av: cam ejected 2\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ciintf_write_attribute_mem\00", [37 x i8] zeroinitializer }, align 32
@ciintf_write_attribute_mem._entry_ptr = internal global ptr @ciintf_write_attribute_mem._entry, section ".printk_index", align 4
@ciintf_read_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.24, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016budget_av: cam ejected 3\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ciintf_read_cam_control\00", [40 x i8] zeroinitializer }, align 32
@ciintf_read_cam_control._entry_ptr = internal global ptr @ciintf_read_cam_control._entry, section ".printk_index", align 4
@ciintf_write_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.24, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016budget_av: cam ejected 5\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ciintf_write_cam_control\00", [39 x i8] zeroinitializer }, align 32
@ciintf_write_cam_control._entry_ptr = internal global ptr @ciintf_write_cam_control._entry, section ".printk_index", align 4
@ciintf_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.24, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017budget_av: %s(): ciintf_slot_reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ciintf_slot_reset\00", [46 x i8] zeroinitializer }, align 32
@ciintf_slot_reset._entry_ptr = internal global ptr @ciintf_slot_reset._entry, section ".printk_index", align 4
@ciintf_slot_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.24, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017budget_av: %s(): ciintf_slot_shutdown\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ciintf_slot_shutdown\00", [43 x i8] zeroinitializer }, align 32
@ciintf_slot_shutdown._entry_ptr = internal global ptr @ciintf_slot_shutdown._entry, section ".printk_index", align 4
@ciintf_slot_ts_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.24, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017budget_av: %s(): ciintf_slot_ts_enable: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ciintf_slot_ts_enable\00", [42 x i8] zeroinitializer }, align 32
@ciintf_slot_ts_enable._entry_ptr = internal global ptr @ciintf_slot_ts_enable._entry, section ".printk_index", align 4
@ciintf_poll_slot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.24, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016budget_av: cam inserted A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ciintf_poll_slot_status\00", [40 x i8] zeroinitializer }, align 32
@ciintf_poll_slot_status._entry_ptr = internal global ptr @ciintf_poll_slot_status._entry, section ".printk_index", align 4
@ciintf_poll_slot_status._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.24, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016budget_av: cam inserted B\0A\00", [35 x i8] zeroinitializer }, align 32
@ciintf_poll_slot_status._entry_ptr.139 = internal global ptr @ciintf_poll_slot_status._entry.137, section ".printk_index", align 4
@ciintf_poll_slot_status._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.136, ptr @.str.24, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ciintf_poll_slot_status._entry_ptr.141 = internal global ptr @ciintf_poll_slot_status._entry.140, section ".printk_index", align 4
@budget_av_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.142, ptr @.str.24, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"budget_av_detach\00", [47 x i8] zeroinitializer }, align 32
@budget_av_detach._entry_ptr = internal global ptr @budget_av_detach._entry, section ".printk_index", align 4
@budget_av_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.24, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017budget_av: %s(): dev: %p, budget_av: %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"budget_av_irq\00", [18 x i8] zeroinitializer }, align 32
@budget_av_irq._entry_ptr = internal global ptr @budget_av_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 17, i64 24, i64 25, i64 29, i64 33, i64 35, i64 42, i64 49]
@__sancov_gen_cov_switch_values.145 = internal global [29 x i64] [i64 27, i64 16, i64 16, i64 17, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 40, i64 42, i64 44, i64 48, i64 49, i64 58, i64 4436, i64 4437, i64 4438, i64 4439, i64 4470, i64 20310]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"budget_extension\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1593, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 50, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1556, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"knc1s\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"knc1sp\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"kncxs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"knc1spx4\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"knc1s2\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"sates2\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [9 x i8] c"satewpls\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [10 x i8] c"satewpls1\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"satewps\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"satewplc\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"satewcmk3\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"satewt\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"knc1c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"knc1cp\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [9 x i8] c"knc1cmk3\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"knc1ctda10024\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"knc1cpmk3\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [6 x i8] c"knc1t\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"knc1tp\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"cin1200s\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"cin1200sn\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"cin1200c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"cin1200cmk3\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [9 x i8] c"cin1200t\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [11 x i8] c"knc1s_info\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1531, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant [12 x i8] c"knc1sp_info\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1543, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [11 x i8] c"kncxs_info\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1536, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"knc1spx4_info\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1544, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"knc1s2_info\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1532, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"sates2_info\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1533, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [14 x i8] c"satewpls_info\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1537, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"satewpls1_info\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1538, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant [13 x i8] c"satewps_info\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1539, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant [14 x i8] c"satewplc_info\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1540, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [15 x i8] c"satewcmk3_info\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1541, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"satewt_info\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1542, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [11 x i8] c"knc1c_info\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1534, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"knc1cp_info\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1545, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"knc1cmk3_info\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1546, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"knc1ctda10024_info\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1547, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"knc1cpmk3_info\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1548, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant [11 x i8] c"knc1t_info\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1535, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant [12 x i8] c"knc1tp_info\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1549, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [14 x i8] c"cin1200s_info\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1550, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [15 x i8] c"cin1200sn_info\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1551, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [14 x i8] c"cin1200c_info\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1552, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"cin1200cmk3_info\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1553, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [14 x i8] c"cin1200t_info\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1554, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1439, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [8 x i8] c"vv_data\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1521, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1466, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1473, i32 59 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1475, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1492, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1496, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [12 x i8] c"saa7113_tab\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 382, i32 17 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 421, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 425, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 432, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1509, i32 32 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1510, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1515, i32 11 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1404, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [12 x i8] c"knc1_inputs\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1395, i32 26 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1418, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1427, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [31 x i8] c"cinergy_1200s_1894_0010_config\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 591, i32 36 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1233, i32 9 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1236, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant [15 x i8] c"typhoon_config\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 566, i32 36 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1239, i32 9 }
@___asan_gen_.508 = private unnamed_addr constant [22 x i8] c"philips_sd1878_config\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 865, i32 36 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1253, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1256, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1263, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant [18 x i8] c"knc1_dvbs2_config\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1099, i32 30 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1273, i32 13 }
@___asan_gen_.550 = private unnamed_addr constant [15 x i8] c"sd1878c_config\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1145, i32 36 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1274, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant [21 x i8] c"cinergy_1200s_config\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 579, i32 36 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1278, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"philips_cu1216_config\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 653, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1291, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant [33 x i8] c"philips_cu1216_config_altaddress\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 658, i32 31 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1295, i32 9 }
@___asan_gen_.592 = private unnamed_addr constant [31 x i8] c"philips_cu1216_tda10023_config\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 663, i32 31 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1310, i32 8 }
@___asan_gen_.607 = private unnamed_addr constant [22 x i8] c"philips_tu1216_config\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 776, i32 31 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1324, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1334, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1346, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant [29 x i8] c"typhoon_cinergy1200s_inittab\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 524, i32 11 }
@___asan_gen_.631 = private unnamed_addr constant [23 x i8] c"philips_sd1878_inittab\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 787, i32 11 }
@___asan_gen_.634 = private unnamed_addr constant [23 x i8] c"knc1_stb0899_s1_init_1\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 878, i32 36 }
@___asan_gen_.637 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_2\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 13, i32 37 }
@___asan_gen_.640 = private unnamed_addr constant [23 x i8] c"knc1_stb0899_s1_init_3\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 965, i32 36 }
@___asan_gen_.643 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_4\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 195, i32 36 }
@___asan_gen_.646 = private unnamed_addr constant [18 x i8] c"stb0899_s1_init_5\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_cfg.h\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 219, i32 36 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 35, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 39, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/tda8261_cfg.h\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 17, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant [12 x i8] c"tu1216_init\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 671, i32 12 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 353, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 357, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 137, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 156, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 175, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 195, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 208, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 237, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 253, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 277, i32 5 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 294, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 298, i32 5 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1368, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.788 = private constant [39 x i8] c"../drivers/media/pci/ttpci/budget-av.c\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1357, i32 2 }
@llvm.compiler.used = appending global [266 x ptr] [ptr @__UNIQUE_ID_adapter_nr388, ptr @__UNIQUE_ID_adapter_nrtype387, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_description393, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_budget_av_exit, ptr @__initcall__kmod_budget_av__389_1617_budget_av_init6, ptr @__param_adapter_nr, ptr @budget_av_attach._entry, ptr @budget_av_attach._entry.25, ptr @budget_av_attach._entry.29, ptr @budget_av_attach._entry.32, ptr @budget_av_attach._entry.35, ptr @budget_av_attach._entry_ptr, ptr @budget_av_attach._entry_ptr.27, ptr @budget_av_attach._entry_ptr.31, ptr @budget_av_attach._entry_ptr.34, ptr @budget_av_attach._entry_ptr.37, ptr @budget_av_detach._entry, ptr @budget_av_detach._entry_ptr, ptr @budget_av_exit, ptr @budget_av_irq._entry, ptr @budget_av_irq._entry_ptr, ptr @ciintf_init._entry, ptr @ciintf_init._entry.118, ptr @ciintf_init._entry_ptr, ptr @ciintf_init._entry_ptr.120, ptr @ciintf_poll_slot_status._entry, ptr @ciintf_poll_slot_status._entry.137, ptr @ciintf_poll_slot_status._entry.140, ptr @ciintf_poll_slot_status._entry_ptr, ptr @ciintf_poll_slot_status._entry_ptr.139, ptr @ciintf_poll_slot_status._entry_ptr.141, ptr @ciintf_read_attribute_mem._entry, ptr @ciintf_read_attribute_mem._entry_ptr, ptr @ciintf_read_cam_control._entry, ptr @ciintf_read_cam_control._entry_ptr, ptr @ciintf_slot_reset._entry, ptr @ciintf_slot_reset._entry_ptr, ptr @ciintf_slot_shutdown._entry, ptr @ciintf_slot_shutdown._entry_ptr, ptr @ciintf_slot_ts_enable._entry, ptr @ciintf_slot_ts_enable._entry_ptr, ptr @ciintf_write_attribute_mem._entry, ptr @ciintf_write_attribute_mem._entry_ptr, ptr @ciintf_write_cam_control._entry, ptr @ciintf_write_cam_control._entry_ptr, ptr @frontend_init._entry, ptr @frontend_init._entry.100, ptr @frontend_init._entry.103, ptr @frontend_init._entry.106, ptr @frontend_init._entry.60, ptr @frontend_init._entry.63, ptr @frontend_init._entry.65, ptr @frontend_init._entry.69, ptr @frontend_init._entry.72, ptr @frontend_init._entry.76, ptr @frontend_init._entry.81, ptr @frontend_init._entry.84, ptr @frontend_init._entry.88, ptr @frontend_init._entry.91, ptr @frontend_init._entry.95, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.102, ptr @frontend_init._entry_ptr.105, ptr @frontend_init._entry_ptr.108, ptr @frontend_init._entry_ptr.62, ptr @frontend_init._entry_ptr.64, ptr @frontend_init._entry_ptr.66, ptr @frontend_init._entry_ptr.71, ptr @frontend_init._entry_ptr.73, ptr @frontend_init._entry_ptr.78, ptr @frontend_init._entry_ptr.83, ptr @frontend_init._entry_ptr.85, ptr @frontend_init._entry_ptr.90, ptr @frontend_init._entry_ptr.92, ptr @frontend_init._entry_ptr.97, ptr @saa7113_init._entry, ptr @saa7113_init._entry.40, ptr @saa7113_init._entry.43, ptr @saa7113_init._entry_ptr, ptr @saa7113_init._entry_ptr.42, ptr @saa7113_init._entry_ptr.45, ptr @tda8261_get_frequency._entry, ptr @tda8261_get_frequency._entry_ptr, ptr @tda8261_set_frequency._entry, ptr @tda8261_set_frequency._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_g_input._entry, ptr @vidioc_g_input._entry_ptr, ptr @vidioc_s_input._entry, ptr @vidioc_s_input._entry_ptr, ptr @budget_extension, ptr @adapter_nr, ptr @pci_tbl, ptr @knc1s, ptr @knc1sp, ptr @kncxs, ptr @knc1spx4, ptr @knc1s2, ptr @sates2, ptr @satewpls, ptr @satewpls1, ptr @satewps, ptr @satewplc, ptr @satewcmk3, ptr @satewt, ptr @knc1c, ptr @knc1cp, ptr @knc1cmk3, ptr @knc1ctda10024, ptr @knc1cpmk3, ptr @knc1t, ptr @knc1tp, ptr @cin1200s, ptr @cin1200sn, ptr @cin1200c, ptr @cin1200cmk3, ptr @cin1200t, ptr @knc1s_info, ptr @.str, ptr @knc1sp_info, ptr @.str.1, ptr @kncxs_info, ptr @.str.2, ptr @knc1spx4_info, ptr @.str.3, ptr @knc1s2_info, ptr @.str.4, ptr @sates2_info, ptr @.str.5, ptr @satewpls_info, ptr @.str.6, ptr @satewpls1_info, ptr @satewps_info, ptr @.str.7, ptr @satewplc_info, ptr @.str.8, ptr @satewcmk3_info, ptr @.str.9, ptr @satewt_info, ptr @.str.10, ptr @knc1c_info, ptr @.str.11, ptr @knc1cp_info, ptr @.str.12, ptr @knc1cmk3_info, ptr @.str.13, ptr @knc1ctda10024_info, ptr @.str.14, ptr @knc1cpmk3_info, ptr @.str.15, ptr @knc1t_info, ptr @.str.16, ptr @knc1tp_info, ptr @.str.17, ptr @cin1200s_info, ptr @.str.18, ptr @cin1200sn_info, ptr @cin1200c_info, ptr @.str.19, ptr @cin1200cmk3_info, ptr @.str.20, ptr @cin1200t_info, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @vv_data, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @saa7113_tab, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @standard, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @knc1_inputs, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @cinergy_1200s_1894_0010_config, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @typhoon_config, ptr @philips_sd1878_config, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.74, ptr @.str.75, ptr @knc1_dvbs2_config, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @sd1878c_config, ptr @.str.82, ptr @cinergy_1200s_config, ptr @.str.86, ptr @.str.87, ptr @philips_cu1216_config, ptr @.str.89, ptr @philips_cu1216_config_altaddress, ptr @.str.93, ptr @.str.94, ptr @philips_cu1216_tda10023_config, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @philips_tu1216_config, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @typhoon_cinergy1200s_inittab, ptr @philips_sd1878_inittab, ptr @knc1_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @knc1_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @philips_tu1216_tuner_init.tu1216_init, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.142, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [214 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1s to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1sp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kncxs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1spx4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1s2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sates2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewpls to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewpls1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewplc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewcmk3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cmk3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1ctda10024 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cpmk3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1t to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1tp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200s to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200sn to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200cmk3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200t to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1s_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1sp_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kncxs_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1spx4_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1s2_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sates2_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewpls_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewpls1_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewps_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewplc_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewcmk3_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satewt_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1c_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cp_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cmk3_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1ctda10024_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1cpmk3_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1t_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1tp_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200s_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200sn_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200c_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200cmk3_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cin1200t_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv_data to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_attach._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_attach._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_attach._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_attach._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_tab to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1_inputs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergy_1200s_1894_0010_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_sd1878_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1_dvbs2_config to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1878c_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergy_1200s_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_cu1216_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_cu1216_config_altaddress to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_cu1216_tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tu1216_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_cinergy1200s_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_sd1878_inittab to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1_stb0899_s1_init_1 to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_2 to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knc1_stb0899_s1_init_3 to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_4 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s1_init_5 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @philips_tu1216_tuner_init.tu1216_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_init._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_read_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_write_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_read_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_write_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_slot_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_slot_ts_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_poll_slot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_poll_slot_status._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ciintf_poll_slot_status._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @budget_av_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @budget_extension) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_av_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @budget_extension) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_av_attach(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  %b.i563.i = alloca i8, align 1
  %pwm.i564.i = alloca i8, align 1
  %msg.i565.i = alloca [2 x %struct.i2c_msg], align 4
  %b.i546.i = alloca i8, align 1
  %pwm.i547.i = alloca i8, align 1
  %msg.i548.i = alloca [2 x %struct.i2c_msg], align 4
  %b.i.i = alloca i8, align 1
  %pwm.i.i = alloca i8, align 1
  %msg.i.i116 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i = alloca [1 x i8], align 1
  %mm2.i.i = alloca [1 x i8], align 1
  %msgs.i54.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i48.i = alloca [2 x i8], align 1
  %msgs.i49.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef %dev) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 5248) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %has_saa7113 = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %has_saa7113 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %has_saa7113, align 4
  %ci_present = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %ci_present to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci_present, align 8
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %ext_priv, align 4
  %call9 = tail call i32 @ttpci_budget_init(ptr noundef nonnull %call7.i.i, ptr noundef %dev, ptr noundef %info, ptr noundef null, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body13:                                        ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4) #7, !srcloc !380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr20 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 393223) #7, !srcloc !380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 393222) #7, !srcloc !380
  %dev.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %12, i32 noundef 0, i32 noundef 80) #7
  tail call void @msleep(i32 noundef 200) #7
  %i2c_adap.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #7
  %13 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %msg.i.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 37, ptr %msgs.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %21 = load i32, ptr @budget_debug, align 4
  %and9.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %do.body13
  br i1 %tobool10.not.i, label %do.body.i.do.body50_crit_edge, label %do.end.i

do.body.i.do.body50_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #10
  br label %do.body50

do.body8.i:                                       ; preds = %do.body13
  br i1 %tobool10.not.i, label %do.body8.i.do.end19.i_crit_edge, label %do.end14.i

do.body8.i.do.end19.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end14.i, %do.body8.i.do.end19.i_crit_edge
  %22 = getelementptr inbounds [2 x i8], ptr %msg.i48.i, i32 0, i32 1
  %23 = getelementptr inbounds i8, ptr %msgs.i49.i, i32 4
  %flags.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i49.i, i32 0, i32 1
  %buf.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i49.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end19.i
  %24 = phi i8 [ 1, %do.end19.i ], [ %34, %while.body.i.while.body.i_crit_edge ]
  %data.059.i = phi ptr [ @saa7113_tab, %do.end19.i ], [ %add.ptr24.i, %while.body.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %data.059.i, i32 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i48.i) #7
  %27 = ptrtoint ptr %msg.i48.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %msg.i48.i, align 1
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i49.i) #7
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %23, align 4
  %30 = ptrtoint ptr %flags.i50.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i50.i, align 2
  %31 = ptrtoint ptr %msgs.i49.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 37, ptr %msgs.i49.i, align 4
  %32 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i48.i, ptr %buf.i52.i, align 4
  %call.i53.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i49.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i49.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i48.i) #7
  %add.ptr24.i = getelementptr i8, ptr %data.059.i, i32 2
  %33 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr24.i, align 1
  %cmp20.not.i = icmp eq i8 %34, -1
  br i1 %cmp20.not.i, label %do.body25.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.body25.i:                                      ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %35 = load i32, ptr @budget_debug, align 4
  %and26.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.if.then27_crit_edge, label %do.end31.i

do.body25.i.if.then27_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm2.i.i) #7
  %36 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %mm2.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i54.i) #7
  %37 = getelementptr inbounds i8, ptr %msgs.i54.i, i32 4
  %38 = call ptr @memset(ptr %37, i32 255, i32 16)
  %flags.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i54.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i55.i, align 2
  %arrayidx1.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i54.i, i32 0, i32 1
  %flags2.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i54.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags2.i.i, align 2
  %41 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 37, ptr %arrayidx1.i.i, align 4
  %42 = ptrtoint ptr %msgs.i54.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 37, ptr %msgs.i54.i, align 4
  %43 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 31, ptr %mm1.i.i, align 1
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %37, align 4
  %len10.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i54.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %len10.i.i, align 4
  %buf.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i54.i, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i57.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mm1.i.i, ptr %buf.i57.i, align 4
  %buf14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i54.i, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %mm2.i.i, ptr %buf14.i.i, align 4
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i54.i, i32 noundef 2) #7
  %48 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mm2.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i54.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1.i.i) #7
  %conv35.i = zext i8 %49 to i32
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %conv35.i) #10
  br label %if.then27

if.then27:                                        ; preds = %do.end31.i, %do.body25.i.if.then27_crit_edge
  %50 = ptrtoint ptr %has_saa7113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %has_saa7113, align 4
  %call29 = call i32 @saa7146_vv_init(ptr noundef %dev, ptr noundef nonnull @vv_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end37:                                         ; preds = %if.then27
  store ptr @vidioc_enum_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 65), align 4
  store ptr @vidioc_g_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 66), align 4
  store ptr @vidioc_s_input, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @vv_data, i32 0, i32 7, i32 67), align 4
  %vd = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 1
  %call38 = call i32 @saa7146_register_device(ptr noundef %vd, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23) #10
  %call46 = call i32 @saa7146_vv_release(ptr noundef %dev) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @saa7146_set_hps_source_and_sync(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #7
  %call48 = call fastcc i32 @saa7113_setinput(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  br label %do.body50

do.body50:                                        ; preds = %if.end47, %do.end.i, %do.body.i.do.body50_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !383
  call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 4
  %add.ptr54 = getelementptr i8, ptr %52, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 521142300) #7, !srcloc !380
  %dvb_adapter = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25
  %proposed_mac = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1.i) #7
  %53 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 48, ptr %mm1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %54 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 80, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i, align 2
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %54, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %mm1.i, ptr %buf4.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %60 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %61 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %flags9.i, align 2
  %len10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %62 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 6, ptr %len10.i, align 4
  %buf12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %63 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %proposed_mac, ptr %buf12.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i115 = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1.i) #7
  %64 = ptrtoint ptr %dvb_adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dvb_adapter, align 8
  br i1 %cmp.not.i115, label %do.end69, label %do.end62

do.end62:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %65) #10
  %66 = call ptr @memset(ptr %proposed_mac, i32 0, i32 6)
  br label %if.end75

do.end69:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %65, ptr noundef %proposed_mac) #10
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %do.end62
  %priv = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 25, i32 5
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %priv, align 8
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  call void @saa7146_setgpio(ptr noundef %69, i32 noundef 0, i32 noundef 64) #7
  call void @msleep(i32 noundef 100) #7
  %pci.i = getelementptr inbounds %struct.saa7146_dev, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %subsystem_device.i, align 2
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i16 %73, label %if.end75.sw.epilog.i_crit_edge [
    i16 17, label %if.end75.sw.bb.i_crit_edge
    i16 33, label %if.end75.sw.bb.i_crit_edge132
    i16 49, label %if.end75.sw.bb.i_crit_edge133
    i16 42, label %if.end75.sw.bb.i_crit_edge134
    i16 35, label %if.end75.sw.bb.i_crit_edge135
    i16 24, label %if.end75.sw.bb.i_crit_edge136
    i16 25, label %if.end75.sw.bb.i_crit_edge137
    i16 29, label %if.end75.sw.bb.i_crit_edge138
  ]

if.end75.sw.bb.i_crit_edge138:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge137:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge136:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge135:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge134:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge133:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge132:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.bb.i_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end75.sw.epilog.i_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end75.sw.bb.i_crit_edge, %if.end75.sw.bb.i_crit_edge132, %if.end75.sw.bb.i_crit_edge133, %if.end75.sw.bb.i_crit_edge134, %if.end75.sw.bb.i_crit_edge135, %if.end75.sw.bb.i_crit_edge136, %if.end75.sw.bb.i_crit_edge137, %if.end75.sw.bb.i_crit_edge138
  call void @saa7146_setgpio(ptr noundef %69, i32 noundef 3, i32 noundef 80) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end75.sw.epilog.i_crit_edge
  %75 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci.i, align 4
  %subsystem_device2.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %subsystem_device2.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %subsystem_device2.i, align 2
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.145)
  switch i16 %78, label %sw.epilog.i.do.end432.i_crit_edge [
    i16 16, label %sw.bb4.i
    i16 17, label %sw.epilog.i.sw.bb5.i_crit_edge
    i16 26, label %sw.epilog.i.sw.bb5.i_crit_edge139
    i16 20, label %sw.epilog.i.sw.bb83.i_crit_edge
    i16 21, label %sw.epilog.i.sw.bb83.i_crit_edge140
    i16 22, label %sw.epilog.i.sw.bb83.i_crit_edge141
    i16 4437, label %sw.epilog.i.sw.bb83.i_crit_edge142
    i16 30, label %sw.epilog.i.sw.bb83.i_crit_edge143
    i16 27, label %sw.epilog.i.sw.bb83.i_crit_edge144
    i16 20310, label %sw.bb141.i
    i16 24, label %sw.epilog.i.sw.bb175.i_crit_edge
    i16 25, label %sw.epilog.i.sw.bb175.i_crit_edge145
    i16 29, label %sw.epilog.i.sw.bb175.i_crit_edge146
    i16 4436, label %sw.bb237.i
    i16 32, label %sw.epilog.i.sw.bb271.i_crit_edge
    i16 33, label %sw.epilog.i.sw.bb271.i_crit_edge147
    i16 4438, label %sw.epilog.i.sw.bb271.i_crit_edge148
    i16 42, label %sw.epilog.i.sw.bb271.i_crit_edge149
    i16 44, label %sw.epilog.i.sw.bb344.i_crit_edge
    i16 4470, label %sw.epilog.i.sw.bb344.i_crit_edge150
    i16 34, label %sw.epilog.i.sw.bb344.i_crit_edge151
    i16 40, label %sw.epilog.i.sw.bb344.i_crit_edge152
    i16 35, label %sw.epilog.i.sw.bb344.i_crit_edge153
    i16 58, label %sw.epilog.i.sw.bb386.i_crit_edge
    i16 48, label %sw.epilog.i.sw.bb386.i_crit_edge154
    i16 49, label %sw.epilog.i.sw.bb386.i_crit_edge155
    i16 4439, label %sw.epilog.i.sw.bb386.i_crit_edge156
  ]

sw.epilog.i.sw.bb386.i_crit_edge156:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb386.i

sw.epilog.i.sw.bb386.i_crit_edge155:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb386.i

sw.epilog.i.sw.bb386.i_crit_edge154:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb386.i

sw.epilog.i.sw.bb386.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb386.i

sw.epilog.i.sw.bb344.i_crit_edge153:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb344.i

sw.epilog.i.sw.bb344.i_crit_edge152:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb344.i

sw.epilog.i.sw.bb344.i_crit_edge151:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb344.i

sw.epilog.i.sw.bb344.i_crit_edge150:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb344.i

sw.epilog.i.sw.bb344.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb344.i

sw.epilog.i.sw.bb271.i_crit_edge149:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb271.i

sw.epilog.i.sw.bb271.i_crit_edge148:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb271.i

sw.epilog.i.sw.bb271.i_crit_edge147:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb271.i

sw.epilog.i.sw.bb271.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb271.i

sw.epilog.i.sw.bb175.i_crit_edge146:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb175.i

sw.epilog.i.sw.bb175.i_crit_edge145:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb175.i

sw.epilog.i.sw.bb175.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb175.i

sw.epilog.i.sw.bb83.i_crit_edge144:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb83.i_crit_edge143:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb83.i_crit_edge142:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb83.i_crit_edge141:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb83.i_crit_edge140:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb83.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb83.i

sw.epilog.i.sw.bb5.i_crit_edge139:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

sw.epilog.i.sw.bb5.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

sw.epilog.i.do.end432.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end432.i

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %reinitialise_demod.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %reinitialise_demod.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %reinitialise_demod.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %reinitialise_demod.i, align 8
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb4.i, %sw.epilog.i.sw.bb5.i_crit_edge, %sw.epilog.i.sw.bb5.i_crit_edge139
  %81 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6292, i16 %84)
  %cmp.i = icmp eq i16 %84, 6292
  %call.i118 = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool.not.i = icmp eq ptr %call.i118, null
  br i1 %cmp.i, label %if.then.i, label %if.else51.i

if.then.i:                                        ; preds = %sw.bb5.i
  br i1 %tobool.not.i, label %cond.end.i, label %if.then.i.if.then12.i_crit_edge

if.then.i.if.then12.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

cond.end.i:                                       ; preds = %if.then.i
  %call9.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #7
  %call10.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end.i120, label %cond.end.i.if.then12.i_crit_edge

cond.end.i.if.then12.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.i:                                      ; preds = %cond.end.i.if.then12.i_crit_edge, %if.then.i.if.then12.i_crit_edge
  %cond582.i = phi ptr [ %call10.i, %cond.end.i.if.then12.i_crit_edge ], [ %call.i118, %if.then.i.if.then12.i_crit_edge ]
  %call14.i = call ptr %cond582.i(ptr noundef nonnull @cinergy_1200s_1894_0010_config, ptr noundef %i2c_adap.i) #7
  %cmp15.i = icmp eq ptr %call14.i, null
  br i1 %cmp15.i, label %if.then17.i, label %if.then22.i

if.then17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.54) #7
  br label %do.end432.i

do.end.i120:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end432.i

if.then22.i:                                      ; preds = %if.then12.i
  %call25.i = call ptr @__symbol_get(ptr noundef nonnull @.str.58) #7
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %cond.end31.i, label %if.then22.i.if.then34.i_crit_edge

if.then22.i.if.then34.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

cond.end31.i:                                     ; preds = %if.then22.i
  %call29.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.59) #7
  %call30.i = call ptr @__symbol_get(ptr noundef nonnull @.str.58) #7
  %tobool33.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool33.not.i, label %do.end45.i, label %cond.end31.i.if.then34.i_crit_edge

cond.end31.i.if.then34.i_crit_edge:               ; preds = %cond.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

if.then34.i:                                      ; preds = %cond.end31.i.if.then34.i_crit_edge, %if.then22.i.if.then34.i_crit_edge
  %cond32587.i = phi ptr [ %call30.i, %cond.end31.i.if.then34.i_crit_edge ], [ %call25.i, %if.then22.i.if.then34.i_crit_edge ]
  %call37.i = call ptr %cond32587.i(ptr noundef nonnull %call14.i, i32 noundef 96, ptr noundef %i2c_adap.i) #7
  %cmp38.i = icmp eq ptr %call37.i, null
  br i1 %cmp38.i, label %if.then40.i, label %if.then34.i.if.end445.i_crit_edge

if.then34.i.if.end445.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end445.i

if.then40.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.58) #7
  br label %if.end445.i

do.end45.i:                                       ; preds = %cond.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #10
  br label %if.end445.i

if.else51.i:                                      ; preds = %sw.bb5.i
  br i1 %tobool.not.i, label %cond.end60.i, label %if.else51.i.if.then63.i_crit_edge

if.else51.i.if.then63.i_crit_edge:                ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63.i

cond.end60.i:                                     ; preds = %if.else51.i
  %call58.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #7
  %call59.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool62.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool62.not.i, label %do.end74.i, label %cond.end60.i.if.then63.i_crit_edge

cond.end60.i.if.then63.i_crit_edge:               ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63.i

if.then63.i:                                      ; preds = %cond.end60.i.if.then63.i_crit_edge, %if.else51.i.if.then63.i_crit_edge
  %cond61590.i = phi ptr [ %call59.i, %cond.end60.i.if.then63.i_crit_edge ], [ %call.i118, %if.else51.i.if.then63.i_crit_edge ]
  %call66.i = call ptr %cond61590.i(ptr noundef nonnull @typhoon_config, ptr noundef %i2c_adap.i) #7
  %cmp67.i = icmp eq ptr %call66.i, null
  br i1 %cmp67.i, label %if.then69.i, label %if.then80.i

if.then69.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.54) #7
  br label %do.end432.i

do.end74.i:                                       ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end432.i

if.then80.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %call66.i, i32 0, i32 1, i32 32, i32 6
  %85 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @philips_su1278_ty_ci_tuner_set_params, ptr %set_params.i, align 4
  br label %if.end445.i

sw.bb83.i:                                        ; preds = %sw.epilog.i.sw.bb83.i_crit_edge, %sw.epilog.i.sw.bb83.i_crit_edge140, %sw.epilog.i.sw.bb83.i_crit_edge141, %sw.epilog.i.sw.bb83.i_crit_edge142, %sw.epilog.i.sw.bb83.i_crit_edge143, %sw.epilog.i.sw.bb83.i_crit_edge144
  %call86.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool87.not.i = icmp eq ptr %call86.i, null
  br i1 %tobool87.not.i, label %cond.end92.i, label %sw.bb83.i.if.then95.i_crit_edge

sw.bb83.i.if.then95.i_crit_edge:                  ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95.i

cond.end92.i:                                     ; preds = %sw.bb83.i
  %call90.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #7
  %call91.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool94.not.i = icmp eq ptr %call91.i, null
  br i1 %tobool94.not.i, label %do.end106.i, label %cond.end92.i.if.then95.i_crit_edge

cond.end92.i.if.then95.i_crit_edge:               ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95.i

if.then95.i:                                      ; preds = %cond.end92.i.if.then95.i_crit_edge, %sw.bb83.i.if.then95.i_crit_edge
  %cond93595.i = phi ptr [ %call91.i, %cond.end92.i.if.then95.i_crit_edge ], [ %call86.i, %sw.bb83.i.if.then95.i_crit_edge ]
  %call98.i = call ptr %cond93595.i(ptr noundef nonnull @philips_sd1878_config, ptr noundef %i2c_adap.i) #7
  %cmp99.i = icmp eq ptr %call98.i, null
  br i1 %cmp99.i, label %if.then101.i, label %if.then112.i

if.then101.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.54) #7
  br label %do.end432.i

do.end106.i:                                      ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end432.i

if.then112.i:                                     ; preds = %if.then95.i
  %call115.i = call ptr @__symbol_get(ptr noundef nonnull @.str.67) #7
  %tobool116.not.i = icmp eq ptr %call115.i, null
  br i1 %tobool116.not.i, label %cond.end121.i, label %if.then112.i.if.then124.i_crit_edge

if.then112.i.if.then124.i_crit_edge:              ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124.i

cond.end121.i:                                    ; preds = %if.then112.i
  %call119.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.68) #7
  %call120.i = call ptr @__symbol_get(ptr noundef nonnull @.str.67) #7
  %tobool123.not.i = icmp eq ptr %call120.i, null
  br i1 %tobool123.not.i, label %do.end135.i, label %cond.end121.i.if.then124.i_crit_edge

cond.end121.i.if.then124.i_crit_edge:             ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124.i

if.then124.i:                                     ; preds = %cond.end121.i.if.then124.i_crit_edge, %if.then112.i.if.then124.i_crit_edge
  %cond122600.i = phi ptr [ %call120.i, %cond.end121.i.if.then124.i_crit_edge ], [ %call115.i, %if.then112.i.if.then124.i_crit_edge ]
  %call127.i = call ptr %cond122600.i(ptr noundef nonnull %call98.i, i32 noundef 96, ptr noundef %i2c_adap.i, i32 noundef 12) #7
  %cmp128.i = icmp eq ptr %call127.i, null
  br i1 %cmp128.i, label %if.then130.i, label %if.then124.i.if.end445.i_crit_edge

if.then124.i.if.end445.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end445.i

if.then130.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.67) #7
  br label %if.end445.i

do.end135.i:                                      ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #10
  br label %if.end445.i

sw.bb141.i:                                       ; preds = %sw.epilog.i
  %call144.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool145.not.i = icmp eq ptr %call144.i, null
  br i1 %tobool145.not.i, label %cond.end150.i, label %sw.bb141.i.if.then153.i_crit_edge

sw.bb141.i.if.then153.i_crit_edge:                ; preds = %sw.bb141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153.i

cond.end150.i:                                    ; preds = %sw.bb141.i
  %call148.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #7
  %call149.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool152.not.i = icmp eq ptr %call149.i, null
  br i1 %tobool152.not.i, label %do.end164.i, label %cond.end150.i.if.then153.i_crit_edge

cond.end150.i.if.then153.i_crit_edge:             ; preds = %cond.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153.i

if.then153.i:                                     ; preds = %cond.end150.i.if.then153.i_crit_edge, %sw.bb141.i.if.then153.i_crit_edge
  %cond151603.i = phi ptr [ %call149.i, %cond.end150.i.if.then153.i_crit_edge ], [ %call144.i, %sw.bb141.i.if.then153.i_crit_edge ]
  %call156.i = call ptr %cond151603.i(ptr noundef nonnull @typhoon_config, ptr noundef %i2c_adap.i) #7
  %cmp157.i = icmp eq ptr %call156.i, null
  br i1 %cmp157.i, label %if.then159.i, label %if.then170.i

if.then159.i:                                     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.54) #7
  br label %do.end432.i

do.end164.i:                                      ; preds = %cond.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %call166.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end432.i

if.then170.i:                                     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #9
  %set_params173.i = getelementptr inbounds %struct.dvb_frontend, ptr %call156.i, i32 0, i32 1, i32 32, i32 6
  %86 = ptrtoint ptr %set_params173.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @philips_su1278_ty_ci_tuner_set_params, ptr %set_params173.i, align 4
  br label %if.end445.i

sw.bb175.i:                                       ; preds = %sw.epilog.i.sw.bb175.i_crit_edge, %sw.epilog.i.sw.bb175.i_crit_edge145, %sw.epilog.i.sw.bb175.i_crit_edge146
  %reinitialise_demod176.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %reinitialise_demod176.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load177.i = load i8, ptr %reinitialise_demod176.i, align 8
  %bf.set179.i = or i8 %bf.load177.i, -128
  store i8 %bf.set179.i, ptr %reinitialise_demod176.i, align 8
  %call182.i = call ptr @__symbol_get(ptr noundef nonnull @.str.74) #7
  %tobool183.not.i = icmp eq ptr %call182.i, null
  br i1 %tobool183.not.i, label %cond.end188.i, label %sw.bb175.i.if.then191.i_crit_edge

sw.bb175.i.if.then191.i_crit_edge:                ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.i

cond.end188.i:                                    ; preds = %sw.bb175.i
  %call186.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.75) #7
  %call187.i = call ptr @__symbol_get(ptr noundef nonnull @.str.74) #7
  %tobool190.not.i = icmp eq ptr %call187.i, null
  br i1 %tobool190.not.i, label %do.end202.i, label %cond.end188.i.if.then191.i_crit_edge

cond.end188.i.if.then191.i_crit_edge:             ; preds = %cond.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.i

if.then191.i:                                     ; preds = %cond.end188.i.if.then191.i_crit_edge, %sw.bb175.i.if.then191.i_crit_edge
  %cond189608.i = phi ptr [ %call187.i, %cond.end188.i.if.then191.i_crit_edge ], [ %call182.i, %sw.bb175.i.if.then191.i_crit_edge ]
  %call194.i = call ptr %cond189608.i(ptr noundef nonnull @knc1_dvbs2_config, ptr noundef %i2c_adap.i) #7
  %cmp195.i = icmp eq ptr %call194.i, null
  br i1 %cmp195.i, label %if.then197.i, label %if.then208.i

if.then197.i:                                     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.74) #7
  br label %do.end432.i

do.end202.i:                                      ; preds = %cond.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  %call204.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #10
  br label %do.end432.i

if.then208.i:                                     ; preds = %if.then191.i
  %call211.i = call ptr @__symbol_get(ptr noundef nonnull @.str.79) #7
  %tobool212.not.i = icmp eq ptr %call211.i, null
  br i1 %tobool212.not.i, label %cond.end217.i, label %if.then208.i.if.then220.i_crit_edge

if.then208.i.if.then220.i_crit_edge:              ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then220.i

cond.end217.i:                                    ; preds = %if.then208.i
  %call215.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.80) #7
  %call216.i = call ptr @__symbol_get(ptr noundef nonnull @.str.79) #7
  %tobool219.not.i = icmp eq ptr %call216.i, null
  br i1 %tobool219.not.i, label %do.end231.i, label %cond.end217.i.if.then220.i_crit_edge

cond.end217.i.if.then220.i_crit_edge:             ; preds = %cond.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then220.i

if.then220.i:                                     ; preds = %cond.end217.i.if.then220.i_crit_edge, %if.then208.i.if.then220.i_crit_edge
  %cond218613.i = phi ptr [ %call216.i, %cond.end217.i.if.then220.i_crit_edge ], [ %call211.i, %if.then208.i.if.then220.i_crit_edge ]
  %call223.i = call ptr %cond218613.i(ptr noundef nonnull %call194.i, ptr noundef nonnull @sd1878c_config, ptr noundef %i2c_adap.i) #7
  %cmp224.i = icmp eq ptr %call223.i, null
  br i1 %cmp224.i, label %if.then226.i, label %if.then220.i.if.end445.i_crit_edge

if.then220.i.if.end445.i_crit_edge:               ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end445.i

if.then226.i:                                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.79) #7
  br label %if.end445.i

do.end231.i:                                      ; preds = %cond.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  %call233.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #10
  br label %if.end445.i

sw.bb237.i:                                       ; preds = %sw.epilog.i
  %call240.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool241.not.i = icmp eq ptr %call240.i, null
  br i1 %tobool241.not.i, label %cond.end246.i, label %sw.bb237.i.if.then249.i_crit_edge

sw.bb237.i.if.then249.i_crit_edge:                ; preds = %sw.bb237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then249.i

cond.end246.i:                                    ; preds = %sw.bb237.i
  %call244.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #7
  %call245.i = call ptr @__symbol_get(ptr noundef nonnull @.str.54) #7
  %tobool248.not.i = icmp eq ptr %call245.i, null
  br i1 %tobool248.not.i, label %do.end260.i, label %cond.end246.i.if.then249.i_crit_edge

cond.end246.i.if.then249.i_crit_edge:             ; preds = %cond.end246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then249.i

if.then249.i:                                     ; preds = %cond.end246.i.if.then249.i_crit_edge, %sw.bb237.i.if.then249.i_crit_edge
  %cond247616.i = phi ptr [ %call245.i, %cond.end246.i.if.then249.i_crit_edge ], [ %call240.i, %sw.bb237.i.if.then249.i_crit_edge ]
  %call252.i = call ptr %cond247616.i(ptr noundef nonnull @cinergy_1200s_config, ptr noundef %i2c_adap.i) #7
  %cmp253.i = icmp eq ptr %call252.i, null
  br i1 %cmp253.i, label %if.then255.i, label %if.then266.i

if.then255.i:                                     ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.54) #7
  br label %do.end432.i

do.end260.i:                                      ; preds = %cond.end246.i
  call void @__sanitizer_cov_trace_pc() #9
  %call262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  br label %do.end432.i

if.then266.i:                                     ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #9
  %set_params269.i = getelementptr inbounds %struct.dvb_frontend, ptr %call252.i, i32 0, i32 1, i32 32, i32 6
  %88 = ptrtoint ptr %set_params269.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @philips_su1278_ty_ci_tuner_set_params, ptr %set_params269.i, align 4
  br label %if.end445.i

sw.bb271.i:                                       ; preds = %sw.epilog.i.sw.bb271.i_crit_edge, %sw.epilog.i.sw.bb271.i_crit_edge147, %sw.epilog.i.sw.bb271.i_crit_edge148, %sw.epilog.i.sw.bb271.i_crit_edge149
  %reinitialise_demod272.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %reinitialise_demod272.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load273.i = load i8, ptr %reinitialise_demod272.i, align 8
  %bf.set275.i = or i8 %bf.load273.i, -128
  store i8 %bf.set275.i, ptr %reinitialise_demod272.i, align 8
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 8
  %i2c_bitrate.i = getelementptr inbounds %struct.saa7146_dev, ptr %91, i32 0, i32 17
  %92 = ptrtoint ptr %i2c_bitrate.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1792, ptr %i2c_bitrate.i, align 4
  %call280.i = call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool281.not.i = icmp eq ptr %call280.i, null
  br i1 %tobool281.not.i, label %cond.end286.i, label %sw.bb271.i.if.then289.i_crit_edge

sw.bb271.i.if.then289.i_crit_edge:                ; preds = %sw.bb271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289.i

cond.end286.i:                                    ; preds = %sw.bb271.i
  %call284.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #7
  %call285.i = call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool288.not.i = icmp eq ptr %call285.i, null
  br i1 %tobool288.not.i, label %do.end301.i, label %cond.end286.i.if.then289.i_crit_edge

cond.end286.i.if.then289.i_crit_edge:             ; preds = %cond.end286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then289.i

if.then289.i:                                     ; preds = %cond.end286.i.if.then289.i_crit_edge, %sw.bb271.i.if.then289.i_crit_edge
  %cond287621.i = phi ptr [ %call285.i, %cond.end286.i.if.then289.i_crit_edge ], [ %call280.i, %sw.bb271.i.if.then289.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #7
  %93 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %b.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i.i) #7
  %94 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %pwm.i.i, align 1, !annotation !384
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i116) #7
  %95 = getelementptr inbounds i8, ptr %msg.i.i116, i32 4
  %96 = call ptr @memset(ptr %95, i32 255, i32 16)
  %97 = ptrtoint ptr %msg.i.i116 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 80, ptr %msg.i.i116, align 4
  %flags.i.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i.i121 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i.i121, align 2
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %95, align 4
  %buf.i.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 0, i32 3
  %100 = ptrtoint ptr %buf.i.i122 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %b.i.i, ptr %buf.i.i122, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 1
  %101 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 80, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 1, i32 1
  %102 = ptrtoint ptr %flags2.i.i123 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %flags2.i.i123, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 1, i32 2
  %103 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i116, i32 1, i32 3
  %104 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %pwm.i.i, ptr %buf4.i.i, align 4
  %call.i.i124 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i.i116, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i124)
  %cmp.not.i.i = icmp eq i32 %call.i.i124, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then289.i.if.then.i.i_crit_edge

if.then289.i.if.then.i.i_crit_edge:               ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then289.i
  %105 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pwm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp5.i.i = icmp eq i8 %106, -1
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge

lor.lhs.false.i.i.read_pwm.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pwm.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then289.i.if.then.i.i_crit_edge
  %107 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 72, ptr %pwm.i.i, align 1
  br label %read_pwm.exit.i

read_pwm.exit.i:                                  ; preds = %if.then.i.i, %lor.lhs.false.i.i.read_pwm.exit.i_crit_edge
  %108 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pwm.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i116) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #7
  %call293.i = call ptr %cond287621.i(ptr noundef nonnull @philips_cu1216_config, ptr noundef %i2c_adap.i, i8 noundef zeroext %109) #7
  %cmp294.i = icmp eq ptr %call293.i, null
  br i1 %cmp294.i, label %if.then296.i, label %read_pwm.exit.i.if.then339.i_crit_edge

read_pwm.exit.i.if.then339.i_crit_edge:           ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then339.i

if.then296.i:                                     ; preds = %read_pwm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.86) #7
  br label %if.then308.i

do.end301.i:                                      ; preds = %cond.end286.i
  call void @__sanitizer_cov_trace_pc() #9
  %call303.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #10
  br label %if.then308.i

if.then308.i:                                     ; preds = %do.end301.i, %if.then296.i
  %call311.i = call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool312.not.i = icmp eq ptr %call311.i, null
  br i1 %tobool312.not.i, label %cond.end317.i, label %if.then308.i.if.then320.i_crit_edge

if.then308.i.if.then320.i_crit_edge:              ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then320.i

cond.end317.i:                                    ; preds = %if.then308.i
  %call315.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #7
  %call316.i = call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool319.not.i = icmp eq ptr %call316.i, null
  br i1 %tobool319.not.i, label %do.end332.i, label %cond.end317.i.if.then320.i_crit_edge

cond.end317.i.if.then320.i_crit_edge:             ; preds = %cond.end317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then320.i

if.then320.i:                                     ; preds = %cond.end317.i.if.then320.i_crit_edge, %if.then308.i.if.then320.i_crit_edge
  %cond318626.i = phi ptr [ %call316.i, %cond.end317.i.if.then320.i_crit_edge ], [ %call311.i, %if.then308.i.if.then320.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i546.i) #7
  %110 = ptrtoint ptr %b.i546.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %b.i546.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i547.i) #7
  %111 = ptrtoint ptr %pwm.i547.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %pwm.i547.i, align 1, !annotation !384
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i548.i) #7
  %112 = getelementptr inbounds i8, ptr %msg.i548.i, i32 4
  %113 = call ptr @memset(ptr %112, i32 255, i32 16)
  %114 = ptrtoint ptr %msg.i548.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 80, ptr %msg.i548.i, align 4
  %flags.i549.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i549.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i549.i, align 2
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %112, align 4
  %buf.i551.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 0, i32 3
  %117 = ptrtoint ptr %buf.i551.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %b.i546.i, ptr %buf.i551.i, align 4
  %arrayinit.element.i552.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 1
  %118 = ptrtoint ptr %arrayinit.element.i552.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 80, ptr %arrayinit.element.i552.i, align 4
  %flags2.i553.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 1, i32 1
  %119 = ptrtoint ptr %flags2.i553.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags2.i553.i, align 2
  %len3.i554.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 1, i32 2
  %120 = ptrtoint ptr %len3.i554.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %len3.i554.i, align 4
  %buf4.i555.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548.i, i32 1, i32 3
  %121 = ptrtoint ptr %buf4.i555.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %pwm.i547.i, ptr %buf4.i555.i, align 4
  %call.i557.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i548.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i557.i)
  %cmp.not.i558.i = icmp eq i32 %call.i557.i, 2
  br i1 %cmp.not.i558.i, label %lor.lhs.false.i560.i, label %if.then320.i.if.then.i561.i_crit_edge

if.then320.i.if.then.i561.i_crit_edge:            ; preds = %if.then320.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i561.i

lor.lhs.false.i560.i:                             ; preds = %if.then320.i
  %122 = ptrtoint ptr %pwm.i547.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pwm.i547.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp5.i559.i = icmp eq i8 %123, -1
  br i1 %cmp5.i559.i, label %lor.lhs.false.i560.i.if.then.i561.i_crit_edge, label %lor.lhs.false.i560.i.read_pwm.exit562.i_crit_edge

lor.lhs.false.i560.i.read_pwm.exit562.i_crit_edge: ; preds = %lor.lhs.false.i560.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pwm.exit562.i

lor.lhs.false.i560.i.if.then.i561.i_crit_edge:    ; preds = %lor.lhs.false.i560.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i561.i

if.then.i561.i:                                   ; preds = %lor.lhs.false.i560.i.if.then.i561.i_crit_edge, %if.then320.i.if.then.i561.i_crit_edge
  %124 = ptrtoint ptr %pwm.i547.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 72, ptr %pwm.i547.i, align 1
  br label %read_pwm.exit562.i

read_pwm.exit562.i:                               ; preds = %if.then.i561.i, %lor.lhs.false.i560.i.read_pwm.exit562.i_crit_edge
  %125 = ptrtoint ptr %pwm.i547.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %pwm.i547.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i548.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i547.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i546.i) #7
  %call324.i = call ptr %cond318626.i(ptr noundef nonnull @philips_cu1216_config_altaddress, ptr noundef %i2c_adap.i, i8 noundef zeroext %126) #7
  %cmp325.i = icmp eq ptr %call324.i, null
  br i1 %cmp325.i, label %if.then327.i, label %read_pwm.exit562.i.if.then339.i_crit_edge

read_pwm.exit562.i.if.then339.i_crit_edge:        ; preds = %read_pwm.exit562.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then339.i

if.then327.i:                                     ; preds = %read_pwm.exit562.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.86) #7
  br label %do.end432.i

do.end332.i:                                      ; preds = %cond.end317.i
  call void @__sanitizer_cov_trace_pc() #9
  %call334.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #10
  br label %do.end432.i

if.then339.i:                                     ; preds = %read_pwm.exit562.i.if.then339.i_crit_edge, %read_pwm.exit.i.if.then339.i_crit_edge
  %fe.0.i = phi ptr [ %call324.i, %read_pwm.exit562.i.if.then339.i_crit_edge ], [ %call293.i, %read_pwm.exit.i.if.then339.i_crit_edge ]
  %set_params342.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe.0.i, i32 0, i32 1, i32 32, i32 6
  %127 = ptrtoint ptr %set_params342.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @philips_cu1216_tuner_set_params, ptr %set_params342.i, align 4
  br label %if.end445.i

sw.bb344.i:                                       ; preds = %sw.epilog.i.sw.bb344.i_crit_edge, %sw.epilog.i.sw.bb344.i_crit_edge150, %sw.epilog.i.sw.bb344.i_crit_edge151, %sw.epilog.i.sw.bb344.i_crit_edge152, %sw.epilog.i.sw.bb344.i_crit_edge153
  %reinitialise_demod345.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %reinitialise_demod345.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load346.i = load i8, ptr %reinitialise_demod345.i, align 8
  %bf.set348.i = or i8 %bf.load346.i, -128
  store i8 %bf.set348.i, ptr %reinitialise_demod345.i, align 8
  %129 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i, align 8
  %i2c_bitrate351.i = getelementptr inbounds %struct.saa7146_dev, ptr %130, i32 0, i32 17
  %131 = ptrtoint ptr %i2c_bitrate351.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1792, ptr %i2c_bitrate351.i, align 4
  %call354.i = call ptr @__symbol_get(ptr noundef nonnull @.str.93) #7
  %tobool355.not.i = icmp eq ptr %call354.i, null
  br i1 %tobool355.not.i, label %cond.end360.i, label %sw.bb344.i.if.then363.i_crit_edge

sw.bb344.i.if.then363.i_crit_edge:                ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then363.i

cond.end360.i:                                    ; preds = %sw.bb344.i
  %call358.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.94) #7
  %call359.i = call ptr @__symbol_get(ptr noundef nonnull @.str.93) #7
  %tobool362.not.i = icmp eq ptr %call359.i, null
  br i1 %tobool362.not.i, label %do.end375.i, label %cond.end360.i.if.then363.i_crit_edge

cond.end360.i.if.then363.i_crit_edge:             ; preds = %cond.end360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then363.i

if.then363.i:                                     ; preds = %cond.end360.i.if.then363.i_crit_edge, %sw.bb344.i.if.then363.i_crit_edge
  %cond361631.i = phi ptr [ %call359.i, %cond.end360.i.if.then363.i_crit_edge ], [ %call354.i, %sw.bb344.i.if.then363.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i563.i) #7
  %132 = ptrtoint ptr %b.i563.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %b.i563.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i564.i) #7
  %133 = ptrtoint ptr %pwm.i564.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %pwm.i564.i, align 1, !annotation !384
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i565.i) #7
  %134 = getelementptr inbounds i8, ptr %msg.i565.i, i32 4
  %135 = call ptr @memset(ptr %134, i32 255, i32 16)
  %136 = ptrtoint ptr %msg.i565.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 80, ptr %msg.i565.i, align 4
  %flags.i566.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 0, i32 1
  %137 = ptrtoint ptr %flags.i566.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %flags.i566.i, align 2
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %134, align 4
  %buf.i568.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 0, i32 3
  %139 = ptrtoint ptr %buf.i568.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %b.i563.i, ptr %buf.i568.i, align 4
  %arrayinit.element.i569.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 1
  %140 = ptrtoint ptr %arrayinit.element.i569.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 80, ptr %arrayinit.element.i569.i, align 4
  %flags2.i570.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 1, i32 1
  %141 = ptrtoint ptr %flags2.i570.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags2.i570.i, align 2
  %len3.i571.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 1, i32 2
  %142 = ptrtoint ptr %len3.i571.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %len3.i571.i, align 4
  %buf4.i572.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i565.i, i32 1, i32 3
  %143 = ptrtoint ptr %buf4.i572.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %pwm.i564.i, ptr %buf4.i572.i, align 4
  %call.i574.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i565.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i574.i)
  %cmp.not.i575.i = icmp eq i32 %call.i574.i, 2
  br i1 %cmp.not.i575.i, label %lor.lhs.false.i577.i, label %if.then363.i.if.then.i578.i_crit_edge

if.then363.i.if.then.i578.i_crit_edge:            ; preds = %if.then363.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i578.i

lor.lhs.false.i577.i:                             ; preds = %if.then363.i
  %144 = ptrtoint ptr %pwm.i564.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pwm.i564.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp5.i576.i = icmp eq i8 %145, -1
  br i1 %cmp5.i576.i, label %lor.lhs.false.i577.i.if.then.i578.i_crit_edge, label %lor.lhs.false.i577.i.read_pwm.exit579.i_crit_edge

lor.lhs.false.i577.i.read_pwm.exit579.i_crit_edge: ; preds = %lor.lhs.false.i577.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pwm.exit579.i

lor.lhs.false.i577.i.if.then.i578.i_crit_edge:    ; preds = %lor.lhs.false.i577.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i578.i

if.then.i578.i:                                   ; preds = %lor.lhs.false.i577.i.if.then.i578.i_crit_edge, %if.then363.i.if.then.i578.i_crit_edge
  %146 = ptrtoint ptr %pwm.i564.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 72, ptr %pwm.i564.i, align 1
  br label %read_pwm.exit579.i

read_pwm.exit579.i:                               ; preds = %if.then.i578.i, %lor.lhs.false.i577.i.read_pwm.exit579.i_crit_edge
  %147 = ptrtoint ptr %pwm.i564.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %pwm.i564.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i565.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i564.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i563.i) #7
  %call367.i = call ptr %cond361631.i(ptr noundef nonnull @philips_cu1216_tda10023_config, ptr noundef %i2c_adap.i, i8 noundef zeroext %148) #7
  %cmp368.i = icmp eq ptr %call367.i, null
  br i1 %cmp368.i, label %if.then370.i, label %if.then381.i

if.then370.i:                                     ; preds = %read_pwm.exit579.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.93) #7
  br label %do.end432.i

do.end375.i:                                      ; preds = %cond.end360.i
  call void @__sanitizer_cov_trace_pc() #9
  %call377.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #10
  br label %do.end432.i

if.then381.i:                                     ; preds = %read_pwm.exit579.i
  call void @__sanitizer_cov_trace_pc() #9
  %set_params384.i = getelementptr inbounds %struct.dvb_frontend, ptr %call367.i, i32 0, i32 1, i32 32, i32 6
  %149 = ptrtoint ptr %set_params384.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @philips_cu1216_tuner_set_params, ptr %set_params384.i, align 4
  br label %if.end445.i

sw.bb386.i:                                       ; preds = %sw.epilog.i.sw.bb386.i_crit_edge, %sw.epilog.i.sw.bb386.i_crit_edge154, %sw.epilog.i.sw.bb386.i_crit_edge155, %sw.epilog.i.sw.bb386.i_crit_edge156
  %reinitialise_demod387.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 7
  %150 = ptrtoint ptr %reinitialise_demod387.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %bf.load388.i = load i8, ptr %reinitialise_demod387.i, align 8
  %bf.set390.i = or i8 %bf.load388.i, -128
  store i8 %bf.set390.i, ptr %reinitialise_demod387.i, align 8
  %call393.i = call ptr @__symbol_get(ptr noundef nonnull @.str.98) #7
  %tobool394.not.i = icmp eq ptr %call393.i, null
  br i1 %tobool394.not.i, label %cond.end399.i, label %sw.bb386.i.if.then402.i_crit_edge

sw.bb386.i.if.then402.i_crit_edge:                ; preds = %sw.bb386.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then402.i

cond.end399.i:                                    ; preds = %sw.bb386.i
  %call397.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.99) #7
  %call398.i = call ptr @__symbol_get(ptr noundef nonnull @.str.98) #7
  %tobool401.not.i = icmp eq ptr %call398.i, null
  br i1 %tobool401.not.i, label %do.end413.i, label %cond.end399.i.if.then402.i_crit_edge

cond.end399.i.if.then402.i_crit_edge:             ; preds = %cond.end399.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then402.i

if.then402.i:                                     ; preds = %cond.end399.i.if.then402.i_crit_edge, %sw.bb386.i.if.then402.i_crit_edge
  %cond400636.i = phi ptr [ %call398.i, %cond.end399.i.if.then402.i_crit_edge ], [ %call393.i, %sw.bb386.i.if.then402.i_crit_edge ]
  %call405.i = call ptr %cond400636.i(ptr noundef nonnull @philips_tu1216_config, ptr noundef %i2c_adap.i) #7
  %cmp406.i = icmp eq ptr %call405.i, null
  br i1 %cmp406.i, label %if.then408.i, label %if.then419.i

if.then408.i:                                     ; preds = %if.then402.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.98) #7
  br label %do.end432.i

do.end413.i:                                      ; preds = %cond.end399.i
  call void @__sanitizer_cov_trace_pc() #9
  %call415.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #10
  br label %do.end432.i

if.then419.i:                                     ; preds = %if.then402.i
  call void @__sanitizer_cov_trace_pc() #9
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %call405.i, i32 0, i32 1, i32 32, i32 2
  %151 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @philips_tu1216_tuner_init, ptr %init.i, align 4
  %set_params424.i = getelementptr inbounds %struct.dvb_frontend, ptr %call405.i, i32 0, i32 1, i32 32, i32 6
  %152 = ptrtoint ptr %set_params424.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @philips_tu1216_tuner_set_params, ptr %set_params424.i, align 4
  br label %if.end445.i

do.end432.i:                                      ; preds = %do.end413.i, %if.then408.i, %do.end375.i, %if.then370.i, %do.end332.i, %if.then327.i, %do.end260.i, %if.then255.i, %do.end202.i, %if.then197.i, %do.end164.i, %if.then159.i, %do.end106.i, %if.then101.i, %do.end74.i, %if.then69.i, %do.end.i120, %if.then17.i, %sw.epilog.i.do.end432.i_crit_edge
  %153 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pci.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %vendor.i, align 8
  %conv435.i = zext i16 %156 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 8
  %157 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %device.i, align 2
  %conv437.i = zext i16 %158 to i32
  %subsystem_vendor439.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 9
  %159 = ptrtoint ptr %subsystem_vendor439.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %subsystem_vendor439.i, align 4
  %conv440.i = zext i16 %160 to i32
  %subsystem_device442.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 10
  %161 = ptrtoint ptr %subsystem_device442.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %subsystem_device442.i, align 2
  %conv443.i = zext i16 %162 to i32
  %call444.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv435.i, i32 noundef %conv437.i, i32 noundef %conv440.i, i32 noundef %conv443.i) #10
  br label %frontend_init.exit

if.end445.i:                                      ; preds = %if.then419.i, %if.then381.i, %if.then339.i, %if.then266.i, %do.end231.i, %if.then226.i, %if.then220.i.if.end445.i_crit_edge, %if.then170.i, %do.end135.i, %if.then130.i, %if.then124.i.if.end445.i_crit_edge, %if.then80.i, %do.end45.i, %if.then40.i, %if.then34.i.if.end445.i_crit_edge
  %fe.1.ph.i = phi ptr [ %call194.i, %do.end231.i ], [ %call194.i, %if.then226.i ], [ %call194.i, %if.then220.i.if.end445.i_crit_edge ], [ %call98.i, %do.end135.i ], [ %call98.i, %if.then130.i ], [ %call98.i, %if.then124.i.if.end445.i_crit_edge ], [ %call14.i, %do.end45.i ], [ %call14.i, %if.then40.i ], [ %call14.i, %if.then34.i.if.end445.i_crit_edge ], [ %call66.i, %if.then80.i ], [ %call156.i, %if.then170.i ], [ %call252.i, %if.then266.i ], [ %fe.0.i, %if.then339.i ], [ %call367.i, %if.then381.i ], [ %call405.i, %if.then419.i ]
  %dvb_frontend.i = getelementptr inbounds %struct.budget, ptr %call7.i.i, i32 0, i32 26
  %163 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %fe.1.ph.i, ptr %dvb_frontend.i, align 8
  %call450.i = call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef nonnull %fe.1.ph.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call450.i)
  %tobool451.not.i = icmp eq i32 %call450.i, 0
  br i1 %tobool451.not.i, label %if.end445.i.frontend_init.exit_crit_edge, label %do.end455.i

if.end445.i.frontend_init.exit_crit_edge:         ; preds = %if.end445.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_init.exit

do.end455.i:                                      ; preds = %if.end445.i
  call void @__sanitizer_cov_trace_pc() #9
  %call457.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #10
  %164 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dvb_frontend.i, align 8
  call void @dvb_frontend_detach(ptr noundef %165) #7
  %166 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %dvb_frontend.i, align 8
  br label %frontend_init.exit

frontend_init.exit:                               ; preds = %do.end455.i, %if.end445.i.frontend_init.exit_crit_edge, %do.end432.i
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 8
  %ca.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6
  %169 = call ptr @memset(ptr %ca.i, i32 0, i32 52)
  call void @saa7146_setgpio(ptr noundef %168, i32 noundef 0, i32 noundef 64) #7
  call void @saa7146_setgpio(ptr noundef %168, i32 noundef 1, i32 noundef 64) #7
  call void @saa7146_setgpio(ptr noundef %168, i32 noundef 2, i32 noundef 64) #7
  call void @saa7146_setgpio(ptr noundef %168, i32 noundef 3, i32 noundef 64) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !385
  call void @arm_heavy_mb() #7
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %168, i32 0, i32 5
  %170 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mem.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %171, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 524296) #7, !srcloc !380
  %172 = ptrtoint ptr %ca.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %ca.i, align 4
  %read_attribute_mem.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 1
  %173 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @ciintf_read_attribute_mem, ptr %read_attribute_mem.i, align 8
  %write_attribute_mem.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 2
  %174 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @ciintf_write_attribute_mem, ptr %write_attribute_mem.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 3
  %175 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @ciintf_read_cam_control, ptr %read_cam_control.i, align 8
  %write_cam_control.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 4
  %176 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @ciintf_write_cam_control, ptr %write_cam_control.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 7
  %177 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @ciintf_slot_reset, ptr %slot_reset.i, align 8
  %slot_shutdown.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 8
  %178 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @ciintf_slot_shutdown, ptr %slot_shutdown.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 9
  %179 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @ciintf_slot_ts_enable, ptr %slot_ts_enable.i, align 8
  %poll_slot_status.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 10
  %180 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @ciintf_poll_slot_status, ptr %poll_slot_status.i, align 4
  %data.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 6, i32 11
  %181 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call7.i.i, ptr %data.i, align 8
  %182 = ptrtoint ptr %ci_present to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %ci_present, align 8
  %slot_status.i = getelementptr inbounds %struct.budget_av, ptr %call7.i.i, i32 0, i32 5
  %183 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %slot_status.i, align 8
  %call.i128 = call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adapter, ptr noundef %ca.i, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %cmp.not.i129, label %do.end20.i, label %do.end16.i

do.end16.i:                                       ; preds = %frontend_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !386
  call void @arm_heavy_mb() #7
  %184 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mem.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %185, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 8) #7, !srcloc !380
  br label %ciintf_init.exit

do.end20.i:                                       ; preds = %frontend_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #10
  br label %ciintf_init.exit

ciintf_init.exit:                                 ; preds = %do.end20.i, %do.end16.i
  call void @ttpci_budget_init_hooks(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ciintf_init.exit, %do.end43, %do.end34, %if.then11, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ %call29, %do.end34 ], [ %call38, %do.end43 ], [ 0, %ciintf_init.exit ], [ -12, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_av_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %2 = load i32, ptr @budget_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.142, ptr noundef %dev) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %has_saa7113 = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %has_saa7113 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %has_saa7113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then4, label %do.end3.if.end7_crit_edge

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 0, i32 noundef 64) #7
  tail call void @msleep(i32 noundef 200) #7
  %vd = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @saa7146_unregister_device(ptr noundef %vd, ptr noundef %dev) #7
  %call6 = tail call i32 @saa7146_vv_release(ptr noundef %dev) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end3.if.end7_crit_edge
  %ci_present = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %ci_present to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ci_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void @saa7146_setgpio(ptr noundef %8, i32 noundef 0, i32 noundef 0) #7
  tail call void @saa7146_setgpio(ptr noundef %8, i32 noundef 1, i32 noundef 0) #7
  tail call void @saa7146_setgpio(ptr noundef %8, i32 noundef 2, i32 noundef 0) #7
  tail call void @saa7146_setgpio(ptr noundef %8, i32 noundef 3, i32 noundef 0) #7
  %ca.i = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 6
  tail call void @dvb_ca_en50221_release(ptr noundef %ca.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !387
  tail call void @arm_heavy_mb() #7
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #7, !srcloc !380
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %dvb_frontend = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvb_frontend, align 8
  %cmp12.not = icmp eq ptr %12, null
  br i1 %cmp12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %12) #7
  %13 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb_frontend, align 8
  tail call void @dvb_frontend_detach(ptr noundef %14) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end10.if.end19_crit_edge
  %call21 = tail call i32 @ttpci_budget_deinit(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @budget_av_irq(ptr noundef %dev, ptr noundef %isr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %1 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ext_priv, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, ptr noundef %dev, ptr noundef %2) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isr, align 4
  %and4 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end3.if.end7_crit_edge, label %if.then6

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ttpci_budget_irq10_handler(ptr noundef %dev, ptr noundef %isr) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end3.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %2) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end2.return_crit_edge, label %if.end5

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x %struct.v4l2_input], ptr @knc1_inputs, i32 0, i32 %4
  %5 = call ptr @memcpy(ptr %i, ptr %arrayidx, i32 80)
  br label %return

return:                                           ; preds = %if.end5, %do.end2.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %cur_input = getelementptr inbounds %struct.budget_av, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cur_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_input, align 8
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %7 = load i32, ptr @budget_debug, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %5) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %4 = load i32, ptr @budget_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %input) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @saa7113_setinput(ptr noundef %3, i32 noundef %input)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_set_hps_source_and_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7113_setinput(ptr noundef %budget_av, i32 noundef %input) unnamed_addr #2 align 64 {
entry:
  %msg.i34 = alloca [2 x i8], align 1
  %msgs.i35 = alloca %struct.i2c_msg, align 4
  %msg.i28 = alloca [2 x i8], align 1
  %msgs.i29 = alloca %struct.i2c_msg, align 4
  %msg.i22 = alloca [2 x i8], align 1
  %msgs.i23 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x i8], align 1
  %msgs.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_saa7113 = getelementptr inbounds %struct.budget_av, ptr %budget_av, i32 0, i32 3
  %0 = ptrtoint ptr %has_saa7113 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %has_saa7113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %input, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then3
    i32 0, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %budget_av, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %msg.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -57, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 37, ptr %msgs.i, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i22) #7
  %11 = getelementptr inbounds [2 x i8], ptr %msg.i22, i32 0, i32 1
  %12 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %msg.i22, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i23) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i23, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i23, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i24, align 2
  %17 = ptrtoint ptr %msgs.i23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 37, ptr %msgs.i23, align 4
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i23, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i22, ptr %buf.i26, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs.i23, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i23) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i22) #7
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap8 = getelementptr inbounds %struct.budget, ptr %budget_av, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i28) #7
  %19 = getelementptr inbounds [2 x i8], ptr %msg.i28, i32 0, i32 1
  %20 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %msg.i28, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -64, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i29) #7
  %22 = getelementptr inbounds i8, ptr %msgs.i29, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %flags.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i29, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i30, align 2
  %25 = ptrtoint ptr %msgs.i29 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 37, ptr %msgs.i29, align 4
  %buf.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i29, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i28, ptr %buf.i32, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %i2c_adap8, ptr noundef nonnull %msgs.i29, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i29) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i28) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i34) #7
  %27 = getelementptr inbounds [2 x i8], ptr %msg.i34, i32 0, i32 1
  %28 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 9, ptr %msg.i34, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i35) #7
  %30 = getelementptr inbounds i8, ptr %msgs.i35, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i35, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i36, align 2
  %33 = ptrtoint ptr %msgs.i35 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 37, ptr %msgs.i35, align 4
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i35, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i34, ptr %buf.i38, align 4
  %call.i39 = call i32 @i2c_transfer(ptr noundef %i2c_adap8, ptr noundef nonnull %msgs.i35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i35) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i34) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.then3
  %cur_input = getelementptr inbounds %struct.budget_av, ptr %budget_av, i32 0, i32 2
  %35 = ptrtoint ptr %cur_input to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %input, ptr %cur_input, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_init_hooks(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_su1278_ty_ci_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf1, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %13 = add i32 %12, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %13)
  %14 = icmp ult i32 %13, -1200001
  br i1 %14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %12, 124
  %div5 = udiv i32 %add, 125
  %shr = lshr i32 %div5, 8
  %17 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %16, align 1
  %and9 = lshr i32 %div5, 10
  %20 = trunc i32 %and9 to i8
  %21 = and i8 %20, 96
  %conv12 = or i8 %21, -124
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12, ptr %15, align 1
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %23 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %24)
  %cmp15 = icmp ult i32 %24, 4000000
  %spec.store.select = select i1 %cmp15, i8 33, i8 32
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.store.select, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %12)
  %cmp24 = icmp ult i32 %12, 1250000
  br i1 %cmp24, label %if.end.if.end60_crit_edge, label %if.else

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1550000, i32 %12)
  %cmp32 = icmp ult i32 %12, 1550000
  br i1 %cmp32, label %if.else.if.end60.sink.split_crit_edge, label %if.else39

if.else.if.end60.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2050000, i32 %12)
  %cmp41 = icmp ult i32 %12, 2050000
  br i1 %cmp41, label %if.else39.if.end60.sink.split_crit_edge, label %if.else48

if.else39.if.end60.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

if.else48:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %12)
  %cmp50 = icmp ult i32 %12, 2150000
  br i1 %cmp50, label %if.else48.if.end60.sink.split_crit_edge, label %if.else48.if.end60_crit_edge

if.else48.if.end60_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else48.if.end60.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.else48.if.end60.sink.split_crit_edge, %if.else39.if.end60.sink.split_crit_edge, %if.else.if.end60.sink.split_crit_edge
  %.sink89 = phi i8 [ 64, %if.else.if.end60.sink.split_crit_edge ], [ -128, %if.else39.if.end60.sink.split_crit_edge ], [ -64, %if.else48.if.end60.sink.split_crit_edge ]
  %26 = or i8 %spec.store.select, %.sink89
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %0, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else48.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end60.if.end64_crit_edge, label %if.then61

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then61:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %29(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end60.if.end64_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %4, i32 0, i32 3
  %call65 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 1
  %. = select i1 %cmp66.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_cu1216_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf1, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %add2 = add i32 %16, 36156250
  %div3 = udiv i32 %add2, 62500
  %shr = lshr i32 %div3, 8
  %17 = trunc i32 %shr to i8
  %conv = and i8 %17, 127
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %buf, align 1
  %conv5 = trunc i32 %div3 to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %4, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -50, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %16)
  %cmp = icmp ult i32 %16, 150000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 445000000, i32 %16)
  %cmp11 = icmp ult i32 %16, 445000000
  %phi.cast = select i1 %cmp11, i8 2, i8 4
  %cond13 = select i1 %cmp, i8 1, i8 %phi.cast
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond13, ptr %6, align 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -34, ptr %7, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %8, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %25(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call20 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags, align 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len, align 4
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %if.end24
  %i.093 = phi i32 [ 0, %if.end24 ], [ %inc, %if.end46.for.body_crit_edge ]
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %for.body.if.end36_crit_edge, label %if.then32

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 %29(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.body.if.end36_crit_edge
  %call38 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end36.if.end46_crit_edge

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end36
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not = icmp eq i8 %32, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  call void @msleep(i32 noundef 10) #7
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags, align 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %len, align 4
  %35 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %5, ptr %buf1, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %38 = and i8 %37, -65
  store i8 %38, ptr %5, align 1
  %39 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool57.not = icmp eq ptr %40, null
  br i1 %tobool57.not, label %for.end.if.end62_crit_edge, label %if.then58

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 %40(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %for.end.if.end62_crit_edge
  %call64 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 1
  %. = select i1 %cmp65.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ %., %if.end62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tu1216_tuner_init(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #7
  %4 = call ptr @memcpy(ptr %tuner_msg, ptr @__const.philips_tu1216_tuner_init.tuner_msg, i32 12)
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call3 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tu1216_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_buf = alloca [4 x i8], align 1
  %tuner_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_buf) #7
  %4 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %tuner_buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_msg) #7
  %7 = getelementptr inbounds i8, ptr %tuner_msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %tuner_msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 96, ptr %tuner_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tuner_buf, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 36166000
  call void @__sanitizer_cov_trace_const_cmp4(i32 87000000, i32 %add)
  %cmp = icmp slt i32 %add, 87000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 130000000, i32 %add)
  %cmp1 = icmp ult i32 %add, 130000000
  br i1 %cmp1, label %if.else.if.end56_crit_edge, label %if.else3

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %add)
  %cmp4 = icmp ult i32 %add, 160000000
  br i1 %cmp4, label %if.else3.if.end56_crit_edge, label %if.else6

if.else3.if.end56_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %add)
  %cmp7 = icmp ult i32 %add, 200000000
  br i1 %cmp7, label %if.else40, label %if.else9

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 290000000, i32 %add)
  %cmp10 = icmp ult i32 %add, 290000000
  br i1 %cmp10, label %if.else9.if.end56_crit_edge, label %if.else12

if.else9.if.end56_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %add)
  %cmp13 = icmp ult i32 %add, 420000000
  br i1 %cmp13, label %if.else12.if.end56_crit_edge, label %if.else15

if.else12.if.end56_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %add)
  %cmp16 = icmp ult i32 %add, 480000000
  br i1 %cmp16, label %if.else15.if.end56_crit_edge, label %if.else18

if.else15.if.end56_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %add)
  %cmp19 = icmp ult i32 %add, 620000000
  br i1 %cmp19, label %if.else44, label %if.else21

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 830000000, i32 %add)
  %cmp22 = icmp ult i32 %add, 830000000
  br i1 %cmp22, label %if.else21.if.else48_crit_edge, label %if.else24

if.else21.if.else48_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else48

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 895000000, i32 %add)
  %cmp25 = icmp ult i32 %add, 895000000
  br i1 %cmp25, label %if.else24.if.else48_crit_edge, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else24.if.else48_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else48

if.else40:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 161000000, i32 %14)
  %cmp42 = icmp ult i32 %14, 161000000
  %spec.select = select i1 %cmp42, i8 1, i8 2
  br label %if.end56

if.else44:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 444000000, i32 %14)
  %cmp46 = icmp ult i32 %14, 444000000
  br i1 %cmp46, label %if.else44.if.end56_crit_edge, label %if.else44.if.else48_crit_edge

if.else44.if.else48_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else48

if.else44.if.end56_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.else48:                                        ; preds = %if.else44.if.else48_crit_edge, %if.else24.if.else48_crit_edge, %if.else21.if.else48_crit_edge
  %cp.0.ph130 = phi i8 [ 96, %if.else44.if.else48_crit_edge ], [ -96, %if.else21.if.else48_crit_edge ], [ -32, %if.else24.if.else48_crit_edge ]
  br label %if.end56

if.end56:                                         ; preds = %if.else48, %if.else44.if.end56_crit_edge, %if.else40, %if.else15.if.end56_crit_edge, %if.else12.if.end56_crit_edge, %if.else9.if.end56_crit_edge, %if.else3.if.end56_crit_edge, %if.else.if.end56_crit_edge
  %cp.0114 = phi i8 [ 96, %if.else44.if.end56_crit_edge ], [ %cp.0.ph130, %if.else48 ], [ -96, %if.else3.if.end56_crit_edge ], [ 96, %if.else.if.end56_crit_edge ], [ 96, %if.else9.if.end56_crit_edge ], [ -96, %if.else12.if.end56_crit_edge ], [ -64, %if.else15.if.end56_crit_edge ], [ -64, %if.else40 ]
  %band.0 = phi i8 [ 2, %if.else44.if.end56_crit_edge ], [ 4, %if.else48 ], [ 1, %if.else3.if.end56_crit_edge ], [ 1, %if.else.if.end56_crit_edge ], [ 2, %if.else9.if.end56_crit_edge ], [ 2, %if.else12.if.end56_crit_edge ], [ 2, %if.else15.if.end56_crit_edge ], [ %spec.select, %if.else40 ]
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth_hz, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %16, label %if.end56.cleanup_crit_edge [
    i32 6000000, label %if.end56.sw.epilog_crit_edge
    i32 7000000, label %if.end56.sw.epilog_crit_edge131
    i32 8000000, label %sw.bb58
  ]

if.end56.sw.epilog_crit_edge131:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb58:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %if.end56.sw.epilog_crit_edge, %if.end56.sw.epilog_crit_edge131
  %filter.0 = phi i8 [ 8, %sw.bb58 ], [ 0, %if.end56.sw.epilog_crit_edge ], [ 0, %if.end56.sw.epilog_crit_edge131 ]
  %div = udiv i32 %14, 1000
  %mul = mul nuw nsw i32 %div, 6
  %add60 = add nuw nsw i32 %mul, 217496
  %div61 = udiv i32 %add60, 1000
  %18 = lshr i32 %div61, 8
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %tuner_buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tuner_buf, align 1
  %conv63 = trunc i32 %div61 to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv63, ptr %4, align 1
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -54, ptr %5, align 1
  %or = or i8 %band.0, %cp.0114
  %or70 = or i8 %or, %filter.0
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or70, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %sw.epilog.if.end76_crit_edge, label %if.then73

sw.epilog.if.end76_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then73:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %25(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %sw.epilog.if.end76_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call77 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 1
  br i1 %cmp78.not, label %if.end81, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end76.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.else24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end81 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else24.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -5, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_su1278_ty_ci_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i62 = alloca [2 x i8], align 1
  %buf.i56 = alloca [2 x i8], align 1
  %buf.i50 = alloca [2 x i8], align 1
  %buf.i44 = alloca [2 x i8], align 1
  %buf.i38 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %srate)
  %cmp = icmp ult i32 %srate, 2000000
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 5000000
  br i1 %cmp1, label %if.else.if.end11_crit_edge, label %if.else3

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 15000000
  br i1 %cmp4, label %if.else3.if.end11_crit_edge, label %if.else6

if.else3.if.end11_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp7, i8 -107, i8 0
  br label %if.end11

if.end11:                                         ; preds = %if.else6, %if.else3.if.end11_crit_edge, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %bclk.0 = phi i8 [ -122, %entry.if.end11_crit_edge ], [ -119, %if.else.if.end11_crit_edge ], [ -113, %if.else3.if.end11_crit_edge ], [ %spec.select, %if.else6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %srate)
  %cmp12 = icmp ult i32 %srate, 4000000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -75, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i38) #7
  br label %stv0299_writereg.exit43

stv0299_writereg.exit:                            ; preds = %if.end11
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i38) #7
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i38, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i38, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i40 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i40, label %stv0299_writereg.exit.stv0299_writereg.exit43_crit_edge, label %if.then.i42

stv0299_writereg.exit.stv0299_writereg.exit43_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit43

if.then.i42:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i38, i32 noundef 2) #7
  br label %stv0299_writereg.exit43

stv0299_writereg.exit43:                          ; preds = %if.then.i42, %stv0299_writereg.exit.stv0299_writereg.exit43_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i38) #7
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i44) #7
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i44, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i44, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i46 = icmp eq ptr %13, null
  br i1 %tobool.not.i46, label %stv0299_writereg.exit43.stv0299_writereg.exit49_crit_edge, label %if.then.i48

stv0299_writereg.exit43.stv0299_writereg.exit49_crit_edge: ; preds = %stv0299_writereg.exit43
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit49

if.then.i48:                                      ; preds = %stv0299_writereg.exit43
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i44, i32 noundef 2) #7
  br label %stv0299_writereg.exit49

stv0299_writereg.exit49:                          ; preds = %if.then.i48, %stv0299_writereg.exit43.stv0299_writereg.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44) #7
  %shr17 = lshr i32 %ratio, 8
  %conv19 = trunc i32 %shr17 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i50) #7
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i50, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i50, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i52 = icmp eq ptr %18, null
  br i1 %tobool.not.i52, label %stv0299_writereg.exit49.stv0299_writereg.exit55_crit_edge, label %if.then.i54

stv0299_writereg.exit49.stv0299_writereg.exit55_crit_edge: ; preds = %stv0299_writereg.exit49
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit55

if.then.i54:                                      ; preds = %stv0299_writereg.exit49
  call void @__sanitizer_cov_trace_pc() #9
  %call.i53 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i50, i32 noundef 2) #7
  br label %stv0299_writereg.exit55

stv0299_writereg.exit55:                          ; preds = %if.then.i54, %stv0299_writereg.exit49.stv0299_writereg.exit55_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i50) #7
  %19 = trunc i32 %ratio to i8
  %conv22 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i56) #7
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i56, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i56, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i58 = icmp eq ptr %24, null
  br i1 %tobool.not.i58, label %stv0299_writereg.exit61.thread, label %stv0299_writereg.exit61

stv0299_writereg.exit61.thread:                   ; preds = %stv0299_writereg.exit55
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i56) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62) #7
  br label %stv0299_writereg.exit67

stv0299_writereg.exit61:                          ; preds = %stv0299_writereg.exit55
  %call.i59 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i56, i32 noundef 2) #7
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr69 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i56) #7
  %conv25 = select i1 %cmp12, i8 -112, i8 -108
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62) #7
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i62, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 15, ptr %buf.i62, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv25, ptr %26, align 1
  %tobool.not.i64 = icmp eq ptr %.pr69, null
  br i1 %tobool.not.i64, label %stv0299_writereg.exit61.stv0299_writereg.exit67_crit_edge, label %if.then.i66

stv0299_writereg.exit61.stv0299_writereg.exit67_crit_edge: ; preds = %stv0299_writereg.exit61
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit67

if.then.i66:                                      ; preds = %stv0299_writereg.exit61
  call void @__sanitizer_cov_trace_pc() #9
  %call.i65 = call i32 %.pr69(ptr noundef %fe, ptr noundef nonnull %buf.i62, i32 noundef 2) #7
  br label %stv0299_writereg.exit67

stv0299_writereg.exit67:                          ; preds = %if.then.i66, %stv0299_writereg.exit61.stv0299_writereg.exit67_crit_edge, %stv0299_writereg.exit61.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_sd1878_ci_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i94 = alloca [2 x i8], align 1
  %buf.i88 = alloca [2 x i8], align 1
  %buf.i82 = alloca [2 x i8], align 1
  %buf.i76 = alloca [2 x i8], align 1
  %buf.i70 = alloca [2 x i8], align 1
  %buf.i64 = alloca [2 x i8], align 1
  %buf.i58 = alloca [2 x i8], align 1
  %buf.i52 = alloca [2 x i8], align 1
  %buf.i46 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %srate)
  %cmp = icmp ult i32 %srate, 2000000
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 5000000
  br i1 %cmp1, label %if.else.if.end11_crit_edge, label %if.else3

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 15000000
  br i1 %cmp4, label %if.else3.if.end11_crit_edge, label %if.else6

if.else3.if.end11_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp7, i8 -107, i8 0
  br label %if.end11

if.end11:                                         ; preds = %if.else6, %if.else3.if.end11_crit_edge, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %bclk.0 = phi i8 [ -122, %entry.if.end11_crit_edge ], [ -119, %if.else.if.end11_crit_edge ], [ -113, %if.else3.if.end11_crit_edge ], [ %spec.select, %if.else6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %srate)
  %cmp12 = icmp ult i32 %srate, 4000000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 14, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 35, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #7
  br label %stv0299_writereg.exit51

stv0299_writereg.exit:                            ; preds = %if.end11
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #7
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i46, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %buf.i46, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -108, ptr %6, align 1
  %tobool.not.i48 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i48, label %stv0299_writereg.exit.stv0299_writereg.exit51_crit_edge, label %if.then.i50

stv0299_writereg.exit.stv0299_writereg.exit51_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit51

if.then.i50:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i49 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i46, i32 noundef 2) #7
  br label %stv0299_writereg.exit51

stv0299_writereg.exit51:                          ; preds = %if.then.i50, %stv0299_writereg.exit.stv0299_writereg.exit51_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #7
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %buf.i52, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 57, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i54 = icmp eq ptr %13, null
  br i1 %tobool.not.i54, label %stv0299_writereg.exit57.thread, label %stv0299_writereg.exit57

stv0299_writereg.exit57.thread:                   ; preds = %stv0299_writereg.exit51
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58) #7
  br label %stv0299_writereg.exit63

stv0299_writereg.exit57:                          ; preds = %stv0299_writereg.exit51
  %call.i55 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i52, i32 noundef 2) #7
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr101 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58) #7
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i58, i32 0, i32 1
  %16 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 19, ptr %buf.i58, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -75, ptr %15, align 1
  %tobool.not.i60 = icmp eq ptr %.pr101, null
  br i1 %tobool.not.i60, label %stv0299_writereg.exit57.stv0299_writereg.exit63_crit_edge, label %if.then.i62

stv0299_writereg.exit57.stv0299_writereg.exit63_crit_edge: ; preds = %stv0299_writereg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit63

if.then.i62:                                      ; preds = %stv0299_writereg.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %call.i61 = call i32 %.pr101(ptr noundef %fe, ptr noundef nonnull %buf.i58, i32 noundef 2) #7
  br label %stv0299_writereg.exit63

stv0299_writereg.exit63:                          ; preds = %if.then.i62, %stv0299_writereg.exit57.stv0299_writereg.exit63_crit_edge, %stv0299_writereg.exit57.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i58) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i64) #7
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i64, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 20, ptr %buf.i64, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bclk.0, ptr %18, align 1
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 4
  %tobool.not.i66 = icmp eq ptr %22, null
  br i1 %tobool.not.i66, label %stv0299_writereg.exit69.thread, label %stv0299_writereg.exit69

stv0299_writereg.exit69.thread:                   ; preds = %stv0299_writereg.exit63
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #7
  br label %stv0299_writereg.exit75

stv0299_writereg.exit69:                          ; preds = %stv0299_writereg.exit63
  %call.i67 = call i32 %22(ptr noundef %fe, ptr noundef nonnull %buf.i64, i32 noundef 2) #7
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr103 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i64) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #7
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i70, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 21, ptr %buf.i70, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -55, ptr %24, align 1
  %tobool.not.i72 = icmp eq ptr %.pr103, null
  br i1 %tobool.not.i72, label %stv0299_writereg.exit69.stv0299_writereg.exit75_crit_edge, label %if.then.i74

stv0299_writereg.exit69.stv0299_writereg.exit75_crit_edge: ; preds = %stv0299_writereg.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit75

if.then.i74:                                      ; preds = %stv0299_writereg.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %call.i73 = call i32 %.pr103(ptr noundef %fe, ptr noundef nonnull %buf.i70, i32 noundef 2) #7
  br label %stv0299_writereg.exit75

stv0299_writereg.exit75:                          ; preds = %if.then.i74, %stv0299_writereg.exit69.stv0299_writereg.exit75_crit_edge, %stv0299_writereg.exit69.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i70) #7
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i76) #7
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i76, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 31, ptr %buf.i76, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %27, align 1
  %30 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i, align 4
  %tobool.not.i78 = icmp eq ptr %31, null
  br i1 %tobool.not.i78, label %stv0299_writereg.exit75.stv0299_writereg.exit81_crit_edge, label %if.then.i80

stv0299_writereg.exit75.stv0299_writereg.exit81_crit_edge: ; preds = %stv0299_writereg.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit81

if.then.i80:                                      ; preds = %stv0299_writereg.exit75
  call void @__sanitizer_cov_trace_pc() #9
  %call.i79 = call i32 %31(ptr noundef %fe, ptr noundef nonnull %buf.i76, i32 noundef 2) #7
  br label %stv0299_writereg.exit81

stv0299_writereg.exit81:                          ; preds = %if.then.i80, %stv0299_writereg.exit75.stv0299_writereg.exit81_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i76) #7
  %shr21 = lshr i32 %ratio, 8
  %conv23 = trunc i32 %shr21 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i82) #7
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i82, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i82 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %buf.i82, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv23, ptr %32, align 1
  %35 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i, align 4
  %tobool.not.i84 = icmp eq ptr %36, null
  br i1 %tobool.not.i84, label %stv0299_writereg.exit81.stv0299_writereg.exit87_crit_edge, label %if.then.i86

stv0299_writereg.exit81.stv0299_writereg.exit87_crit_edge: ; preds = %stv0299_writereg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit87

if.then.i86:                                      ; preds = %stv0299_writereg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %call.i85 = call i32 %36(ptr noundef %fe, ptr noundef nonnull %buf.i82, i32 noundef 2) #7
  br label %stv0299_writereg.exit87

stv0299_writereg.exit87:                          ; preds = %if.then.i86, %stv0299_writereg.exit81.stv0299_writereg.exit87_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i82) #7
  %37 = trunc i32 %ratio to i8
  %conv26 = and i8 %37, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #7
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i88, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 33, ptr %buf.i88, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv26, ptr %38, align 1
  %41 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i, align 4
  %tobool.not.i90 = icmp eq ptr %42, null
  br i1 %tobool.not.i90, label %stv0299_writereg.exit93.thread, label %stv0299_writereg.exit93

stv0299_writereg.exit93.thread:                   ; preds = %stv0299_writereg.exit87
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i94) #7
  br label %stv0299_writereg.exit99

stv0299_writereg.exit93:                          ; preds = %stv0299_writereg.exit87
  %call.i91 = call i32 %42(ptr noundef %fe, ptr noundef nonnull %buf.i88, i32 noundef 2) #7
  %43 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr105 = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #7
  %conv29 = select i1 %cmp12, i8 -112, i8 -108
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i94) #7
  %44 = getelementptr inbounds [2 x i8], ptr %buf.i94, i32 0, i32 1
  %45 = ptrtoint ptr %buf.i94 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 15, ptr %buf.i94, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv29, ptr %44, align 1
  %tobool.not.i96 = icmp eq ptr %.pr105, null
  br i1 %tobool.not.i96, label %stv0299_writereg.exit93.stv0299_writereg.exit99_crit_edge, label %if.then.i98

stv0299_writereg.exit93.stv0299_writereg.exit99_crit_edge: ; preds = %stv0299_writereg.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit99

if.then.i98:                                      ; preds = %stv0299_writereg.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %call.i97 = call i32 %.pr105(ptr noundef %fe, ptr noundef nonnull %buf.i94, i32 noundef 2) #7
  br label %stv0299_writereg.exit99

stv0299_writereg.exit99:                          ; preds = %if.then.i98, %stv0299_writereg.exit93.stv0299_writereg.exit99_crit_edge, %stv0299_writereg.exit93.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i94) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8261_set_frequency(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %0 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.do.body6_crit_edge

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #10
  br label %cleanup

do.body6:                                         ; preds = %if.then.do.body6_crit_edge, %entry.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_set_frequency.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_set_frequency, %if.then12)) #7
          to label %cleanup [label %if.then12], !srcloc !388

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_set_frequency.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.110, i32 noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then12 ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8261_get_frequency(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.115) #10
  br label %cleanup

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_get_frequency.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_get_frequency, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !388

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_get_frequency.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda8261_get_bandwidth(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %bandwidth) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 40000000, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @philips_tu1216_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 80) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %and = and i32 %address, 4095
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 37879808, i32 noundef %and, i32 noundef 1, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp2 = icmp eq i32 %call, -110
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.budget, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %9 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.ciintf_slot_shutdown.exit_crit_edge, label %do.end.i

if.then3.ciintf_slot_shutdown.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ciintf_slot_shutdown.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %ciintf_slot_shutdown.exit

ciintf_slot_shutdown.exit:                        ; preds = %do.end.i, %if.then3.ciintf_slot_shutdown.exit_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %8, i32 noundef 1) #7
  %slot_status.i = getelementptr inbounds %struct.budget_av, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %slot_status.i, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #10
  br label %cleanup

cleanup:                                          ; preds = %ciintf_slot_shutdown.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %ciintf_slot_shutdown.exit ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 80) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %and = and i32 %address, 4095
  %conv = zext i8 %value to i32
  %call = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 37879808, i32 noundef %and, i32 noundef 1, i32 noundef %conv, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp2 = icmp eq i32 %call, -110
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.budget, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %9 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.ciintf_slot_shutdown.exit_crit_edge, label %do.end.i

if.then4.ciintf_slot_shutdown.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ciintf_slot_shutdown.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %ciintf_slot_shutdown.exit

ciintf_slot_shutdown.exit:                        ; preds = %do.end.i, %if.then4.ciintf_slot_shutdown.exit_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %8, i32 noundef 1) #7
  %slot_status.i = getelementptr inbounds %struct.budget_av, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %slot_status.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #10
  br label %cleanup

cleanup:                                          ; preds = %ciintf_slot_shutdown.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %ciintf_slot_shutdown.exit ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %5 = and i8 %address, 3
  %and = zext i8 %5 to i32
  %call = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 37879808, i32 noundef %and, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp2 = icmp eq i32 %call, -110
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.budget, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %10 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.ciintf_slot_shutdown.exit_crit_edge, label %do.end.i

if.then4.ciintf_slot_shutdown.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ciintf_slot_shutdown.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %ciintf_slot_shutdown.exit

ciintf_slot_shutdown.exit:                        ; preds = %do.end.i, %if.then4.ciintf_slot_shutdown.exit_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %9, i32 noundef 1) #7
  %slot_status.i = getelementptr inbounds %struct.budget_av, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %slot_status.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #10
  br label %cleanup

cleanup:                                          ; preds = %ciintf_slot_shutdown.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %ciintf_slot_shutdown.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 1, i32 noundef 64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %5 = and i8 %address, 3
  %and = zext i8 %5 to i32
  %conv2 = zext i8 %value to i32
  %call = tail call i32 @ttpci_budget_debiwrite(ptr noundef %1, i32 noundef 37879808, i32 noundef %and, i32 noundef 1, i32 noundef %conv2, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp3 = icmp eq i32 %call, -110
  br i1 %cmp3, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.budget, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %10 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.ciintf_slot_shutdown.exit_crit_edge, label %do.end.i

if.then5.ciintf_slot_shutdown.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ciintf_slot_shutdown.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %ciintf_slot_shutdown.exit

ciintf_slot_shutdown.exit:                        ; preds = %do.end.i, %if.then5.ciintf_slot_shutdown.exit_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %9, i32 noundef 1) #7
  %slot_status.i = getelementptr inbounds %struct.budget_av, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %slot_status.i, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #10
  br label %cleanup

cleanup:                                          ; preds = %ciintf_slot_shutdown.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %ciintf_slot_shutdown.exit ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %4 = load i32, ptr @budget_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %slot_status = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %slot_status, align 8
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 2, i32 noundef 80) #7
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 0, i32 noundef 80) #7
  tail call void @msleep(i32 noundef 2) #7
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 0, i32 noundef 64) #7
  tail call void @msleep(i32 noundef 20) #7
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 2, i32 noundef 64) #7
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  %reinitialise_demod = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %reinitialise_demod to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reinitialise_demod, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %do.end5.cleanup_crit_edge, label %if.then7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dvb_frontend = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvb_frontend, align 8
  tail call void @dvb_frontend_reinitialise(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %4 = load i32, ptr @budget_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 1) #7
  %slot_status = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %slot_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %4 = load i32, ptr @budget_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %slot_status = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_status, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  tail call void @ttpci_budget_set_video_port(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ciintf_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %slot_status = getelementptr inbounds %struct.budget_av, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %if.end
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !390
  %10 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then2.if.end12_crit_edge, label %if.then4

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %if.then2
  %11 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slot_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.then7, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %slot_status, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.then4.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %3, i32 noundef 3, i32 noundef 64) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %14 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp15 = icmp eq i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open)
  %tobool16.not = icmp eq i32 %open, 0
  %or.cond = or i1 %tobool16.not, %cmp15
  br i1 %or.cond, label %if.then17, label %if.end13.if.end46_crit_edge

if.end13.if.end46_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then17:                                        ; preds = %if.end13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void @saa7146_setgpio(ptr noundef %17, i32 noundef 1, i32 noundef 64) #7
  %call21 = tail call i32 @ttpci_budget_debiread(ptr noundef %1, i32 noundef 37879808, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, -1
  %18 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp24 = icmp eq i32 %19, 1
  br i1 %cmp22, label %land.lhs.true, label %if.then33

land.lhs.true:                                    ; preds = %if.then17
  br i1 %cmp24, label %if.then25, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %slot_status, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #10
  %21 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %slot_status, align 8
  br label %if.end46

if.then33:                                        ; preds = %if.then17
  br i1 %cmp24, label %if.then33.cleanup_crit_edge, label %if.then36

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 @ciintf_slot_shutdown(ptr noundef %ca, i32 noundef 0)
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #10
  br label %cleanup

if.end46:                                         ; preds = %if.then25, %land.lhs.true.if.end46_crit_edge, %if.end13.if.end46_crit_edge
  %22 = phi i32 [ %19, %land.lhs.true.if.end46_crit_edge ], [ %15, %if.end13.if.end46_crit_edge ], [ %.pr, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp48 = icmp eq i32 %22, 4
  br i1 %cmp48, label %if.then49, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %if.end46
  %call50 = tail call i32 @ciintf_read_attribute_mem(ptr noundef %ca, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 29
  br i1 %cmp51, label %if.end55.thread92, label %if.then49.if.end55_crit_edge

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55.thread92:                                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %slot_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %slot_status, align 8
  br label %if.then58

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %24 = ptrtoint ptr %slot_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr90 = load i32, ptr %slot_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr90)
  %cmp57.not = icmp eq i32 %.pr90, 1
  br i1 %cmp57.not, label %if.end55.cleanup_crit_edge, label %if.end55.if.then58_crit_edge

if.end55.if.then58_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %if.end55.if.then58_crit_edge, %if.end55.thread92
  %25 = phi i32 [ 8, %if.end55.thread92 ], [ %.pr90, %if.end55.if.then58_crit_edge ]
  %and60 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %. = select i1 %tobool61.not, i32 1, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end55.cleanup_crit_edge, %if.then36, %if.then33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then36 ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.then58 ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_debiread(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_debiwrite(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_set_video_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_reinitialise(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_irq10_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !186, !187, !189, !190, !191, !192, !193, !195, !196, !198, !199, !201, !202, !203, !204, !205, !207, !208, !210, !211, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !229, !231, !232, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !360, !361, !363, !364, !365, !367, !368, !369}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype387, !1, !"__UNIQUE_ID_adapter_nrtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr388, !1, !"__UNIQUE_ID_adapter_nr388", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_budget_av__389_1617_budget_av_init6, !5, !"__initcall__kmod_budget_av__389_1617_budget_av_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1617, i32 1}
!6 = !{ptr @__exitcall_budget_av_exit, !7, !"__exitcall_budget_av_exit", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1618, i32 1}
!8 = !{ptr @__UNIQUE_ID_file390, !9, !"__UNIQUE_ID_file390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1620, i32 1}
!10 = !{ptr @__UNIQUE_ID_license391, !9, !"__UNIQUE_ID_license391", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author392, !12, !"__UNIQUE_ID_author392", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1621, i32 1}
!13 = !{ptr @__UNIQUE_ID_description393, !14, !"__UNIQUE_ID_description393", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1622, i32 1}
!15 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!16 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!17 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!18 = !{ptr @budget_extension, !19, !"budget_extension", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1593, i32 33}
!20 = !{ptr @pci_tbl, !21, !"pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1556, i32 35}
!22 = !{ptr @knc1s, !23, !"knc1s", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1531, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @knc1s_info, !23, !"knc1s_info", i1 false, i1 false}
!26 = !{ptr @knc1sp, !27, !"knc1sp", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1543, i32 1}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @knc1sp_info, !27, !"knc1sp_info", i1 false, i1 false}
!30 = !{ptr @kncxs, !31, !"kncxs", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1536, i32 1}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @kncxs_info, !31, !"kncxs_info", i1 false, i1 false}
!34 = !{ptr @knc1spx4, !35, !"knc1spx4", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1544, i32 1}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @knc1spx4_info, !35, !"knc1spx4_info", i1 false, i1 false}
!38 = !{ptr @knc1s2, !39, !"knc1s2", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1532, i32 1}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @knc1s2_info, !39, !"knc1s2_info", i1 false, i1 false}
!42 = !{ptr @sates2, !43, !"sates2", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1533, i32 1}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sates2_info, !43, !"sates2_info", i1 false, i1 false}
!46 = !{ptr @satewpls, !47, !"satewpls", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1537, i32 1}
!48 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @satewpls_info, !47, !"satewpls_info", i1 false, i1 false}
!50 = !{ptr @satewpls1, !51, !"satewpls1", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1538, i32 1}
!52 = !{ptr @satewpls1_info, !51, !"satewpls1_info", i1 false, i1 false}
!53 = !{ptr @satewps, !54, !"satewps", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1539, i32 1}
!55 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @satewps_info, !54, !"satewps_info", i1 false, i1 false}
!57 = !{ptr @satewplc, !58, !"satewplc", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1540, i32 1}
!59 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @satewplc_info, !58, !"satewplc_info", i1 false, i1 false}
!61 = !{ptr @satewcmk3, !62, !"satewcmk3", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1541, i32 1}
!63 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @satewcmk3_info, !62, !"satewcmk3_info", i1 false, i1 false}
!65 = !{ptr @satewt, !66, !"satewt", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1542, i32 1}
!67 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @satewt_info, !66, !"satewt_info", i1 false, i1 false}
!69 = !{ptr @knc1c, !70, !"knc1c", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1534, i32 1}
!71 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @knc1c_info, !70, !"knc1c_info", i1 false, i1 false}
!73 = !{ptr @knc1cp, !74, !"knc1cp", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1545, i32 1}
!75 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @knc1cp_info, !74, !"knc1cp_info", i1 false, i1 false}
!77 = !{ptr @knc1cmk3, !78, !"knc1cmk3", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1546, i32 1}
!79 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @knc1cmk3_info, !78, !"knc1cmk3_info", i1 false, i1 false}
!81 = !{ptr @knc1ctda10024, !82, !"knc1ctda10024", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1547, i32 1}
!83 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @knc1ctda10024_info, !82, !"knc1ctda10024_info", i1 false, i1 false}
!85 = !{ptr @knc1cpmk3, !86, !"knc1cpmk3", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1548, i32 1}
!87 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @knc1cpmk3_info, !86, !"knc1cpmk3_info", i1 false, i1 false}
!89 = !{ptr @knc1t, !90, !"knc1t", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1535, i32 1}
!91 = !{ptr @.str.16, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @knc1t_info, !90, !"knc1t_info", i1 false, i1 false}
!93 = !{ptr @knc1tp, !94, !"knc1tp", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1549, i32 1}
!95 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @knc1tp_info, !94, !"knc1tp_info", i1 false, i1 false}
!97 = !{ptr @cin1200s, !98, !"cin1200s", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1550, i32 1}
!99 = !{ptr @.str.18, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cin1200s_info, !98, !"cin1200s_info", i1 false, i1 false}
!101 = !{ptr @cin1200sn, !102, !"cin1200sn", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1551, i32 1}
!103 = !{ptr @cin1200sn_info, !102, !"cin1200sn_info", i1 false, i1 false}
!104 = !{ptr @cin1200c, !105, !"cin1200c", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1552, i32 1}
!106 = !{ptr @.str.19, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cin1200c_info, !105, !"cin1200c_info", i1 false, i1 false}
!108 = !{ptr @cin1200cmk3, !109, !"cin1200cmk3", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1553, i32 1}
!110 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cin1200cmk3_info, !109, !"cin1200cmk3_info", i1 false, i1 false}
!112 = !{ptr @cin1200t, !113, !"cin1200t", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1554, i32 1}
!114 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cin1200t_info, !113, !"cin1200t_info", i1 false, i1 false}
!116 = !{ptr @.str.22, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1439, i32 2}
!118 = !{ptr @.str.23, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.24, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @budget_av_attach._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @budget_av_attach._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1466, i32 4}
!124 = !{ptr @budget_av_attach._entry.25, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @budget_av_attach._entry_ptr.27, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.28, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1473, i32 59}
!128 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1475, i32 4}
!130 = !{ptr @budget_av_attach._entry.29, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @budget_av_attach._entry_ptr.31, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1492, i32 3}
!134 = !{ptr @budget_av_attach._entry.32, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @budget_av_attach._entry_ptr.34, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1496, i32 3}
!138 = !{ptr @budget_av_attach._entry.35, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @budget_av_attach._entry_ptr.37, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 421, i32 3}
!142 = !{ptr @.str.39, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @saa7113_init._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @saa7113_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 425, i32 2}
!147 = !{ptr @saa7113_init._entry.40, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @saa7113_init._entry_ptr.42, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.44, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 432, i32 2}
!151 = !{ptr @saa7113_init._entry.43, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @saa7113_init._entry_ptr.45, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @saa7113_tab, !154, !"saa7113_tab", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 382, i32 17}
!155 = !{ptr @vv_data, !156, !"vv_data", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1521, i32 30}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1510, i32 11}
!159 = !{ptr @.str.47, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1515, i32 11}
!161 = !{ptr @standard, !162, !"standard", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1509, i32 32}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1404, i32 2}
!165 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @vidioc_enum_input._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @vidioc_enum_input._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @knc1_inputs, !169, !"knc1_inputs", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1395, i32 26}
!170 = !{ptr @.str.50, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1418, i32 2}
!172 = !{ptr @.str.51, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @vidioc_g_input._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @vidioc_g_input._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.52, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1427, i32 2}
!177 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @vidioc_s_input._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @vidioc_s_input._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.54, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1233, i32 9}
!182 = !{ptr @.str.55, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @frontend_init._entry, !181, !"_entry", i1 false, i1 false}
!186 = !{ptr @frontend_init._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1236, i32 5}
!189 = !{ptr @.str.59, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @frontend_init._entry.60, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @frontend_init._entry_ptr.62, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @frontend_init._entry.63, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1239, i32 9}
!195 = !{ptr @frontend_init._entry_ptr.64, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @frontend_init._entry.65, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1253, i32 8}
!198 = !{ptr @frontend_init._entry_ptr.66, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.67, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1256, i32 4}
!201 = !{ptr @.str.68, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @frontend_init._entry.69, !200, !"_entry", i1 false, i1 false}
!204 = !{ptr @frontend_init._entry_ptr.71, !200, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @frontend_init._entry.72, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1263, i32 8}
!207 = !{ptr @frontend_init._entry_ptr.73, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1273, i32 13}
!210 = !{ptr @.str.75, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @frontend_init._entry.76, !209, !"_entry", i1 false, i1 false}
!213 = !{ptr @frontend_init._entry_ptr.78, !209, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1274, i32 4}
!216 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.82, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @frontend_init._entry.81, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @frontend_init._entry_ptr.83, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @frontend_init._entry.84, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1278, i32 8}
!222 = !{ptr @frontend_init._entry_ptr.85, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.86, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1291, i32 8}
!225 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.89, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @frontend_init._entry.88, !224, !"_entry", i1 false, i1 false}
!228 = !{ptr @frontend_init._entry_ptr.90, !224, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @frontend_init._entry.91, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1295, i32 9}
!231 = !{ptr @frontend_init._entry_ptr.92, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.93, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1310, i32 8}
!234 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @frontend_init._entry.95, !233, !"_entry", i1 false, i1 false}
!237 = !{ptr @frontend_init._entry_ptr.97, !233, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1324, i32 8}
!240 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @frontend_init._entry.100, !239, !"_entry", i1 false, i1 false}
!243 = !{ptr @frontend_init._entry_ptr.102, !239, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1334, i32 3}
!246 = !{ptr @frontend_init._entry.103, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @frontend_init._entry_ptr.105, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1346, i32 3}
!250 = !{ptr @frontend_init._entry.106, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @frontend_init._entry_ptr.108, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @cinergy_1200s_1894_0010_config, !253, !"cinergy_1200s_1894_0010_config", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 591, i32 36}
!254 = !{ptr @typhoon_cinergy1200s_inittab, !255, !"typhoon_cinergy1200s_inittab", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 524, i32 11}
!256 = !{ptr @typhoon_config, !257, !"typhoon_config", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 566, i32 36}
!258 = !{ptr @philips_sd1878_config, !259, !"philips_sd1878_config", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 865, i32 36}
!260 = !{ptr @philips_sd1878_inittab, !261, !"philips_sd1878_inittab", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 787, i32 11}
!262 = !{ptr @knc1_dvbs2_config, !263, !"knc1_dvbs2_config", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1099, i32 30}
!264 = !{ptr @knc1_stb0899_s1_init_1, !265, !"knc1_stb0899_s1_init_1", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 878, i32 36}
!266 = !{ptr @stb0899_s2_init_2, !267, !"stb0899_s2_init_2", i1 false, i1 false}
!267 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 13, i32 37}
!268 = !{ptr @knc1_stb0899_s1_init_3, !269, !"knc1_stb0899_s1_init_3", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 965, i32 36}
!270 = !{ptr @stb0899_s2_init_4, !271, !"stb0899_s2_init_4", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 195, i32 36}
!272 = !{ptr @stb0899_s1_init_5, !273, !"stb0899_s1_init_5", i1 false, i1 false}
!273 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 219, i32 36}
!274 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/dvb-frontends/tda8261_cfg.h", i32 35, i32 4}
!276 = !{ptr @.str.110, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.111, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @tda8261_set_frequency._entry, !275, !"_entry", i1 false, i1 false}
!279 = !{ptr @tda8261_set_frequency._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.112, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/tda8261_cfg.h", i32 39, i32 2}
!282 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @tda8261_set_frequency.__UNIQUE_ID_ddebug386, !281, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!284 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.115, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/dvb-frontends/tda8261_cfg.h", i32 17, i32 4}
!287 = !{ptr @tda8261_get_frequency._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @tda8261_get_frequency._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @tda8261_get_frequency.__UNIQUE_ID_ddebug385, !290, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!290 = !{!"../drivers/media/dvb-frontends/tda8261_cfg.h", i32 20, i32 3}
!291 = !{ptr @sd1878c_config, !292, !"sd1878c_config", i1 false, i1 false}
!292 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1145, i32 36}
!293 = !{ptr @cinergy_1200s_config, !294, !"cinergy_1200s_config", i1 false, i1 false}
!294 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 579, i32 36}
!295 = !{ptr @philips_cu1216_config, !296, !"philips_cu1216_config", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 653, i32 31}
!297 = !{ptr @philips_cu1216_config_altaddress, !298, !"philips_cu1216_config_altaddress", i1 false, i1 false}
!298 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 658, i32 31}
!299 = !{ptr @philips_cu1216_tda10023_config, !300, !"philips_cu1216_tda10023_config", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 663, i32 31}
!301 = !{ptr @philips_tu1216_config, !302, !"philips_tu1216_config", i1 false, i1 false}
!302 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 776, i32 31}
!303 = !{ptr @philips_tu1216_tuner_init.tu1216_init, !304, !"tu1216_init", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 671, i32 12}
!305 = !{ptr @.str.116, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 353, i32 3}
!307 = !{ptr @.str.117, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @ciintf_init._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @ciintf_init._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.119, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 357, i32 2}
!312 = !{ptr @ciintf_init._entry.118, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @ciintf_init._entry_ptr.120, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.121, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 137, i32 3}
!316 = !{ptr @.str.122, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @ciintf_read_attribute_mem._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @ciintf_read_attribute_mem._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.123, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 156, i32 3}
!321 = !{ptr @.str.124, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @ciintf_write_attribute_mem._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @ciintf_write_attribute_mem._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.125, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 175, i32 3}
!326 = !{ptr @.str.126, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @ciintf_read_cam_control._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @ciintf_read_cam_control._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.127, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 195, i32 3}
!331 = !{ptr @.str.128, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @ciintf_write_cam_control._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @ciintf_write_cam_control._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.129, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 208, i32 2}
!336 = !{ptr @.str.130, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @ciintf_slot_reset._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @ciintf_slot_reset._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.131, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 237, i32 2}
!341 = !{ptr @.str.132, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @ciintf_slot_shutdown._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @ciintf_slot_shutdown._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.133, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 253, i32 2}
!346 = !{ptr @.str.134, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @ciintf_slot_ts_enable._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @ciintf_slot_ts_enable._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.135, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 277, i32 5}
!351 = !{ptr @.str.136, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @ciintf_poll_slot_status._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @ciintf_poll_slot_status._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.138, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 294, i32 4}
!356 = !{ptr @ciintf_poll_slot_status._entry.137, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @ciintf_poll_slot_status._entry_ptr.139, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @ciintf_poll_slot_status._entry.140, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 298, i32 5}
!360 = !{ptr @ciintf_poll_slot_status._entry_ptr.141, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.142, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1368, i32 2}
!363 = !{ptr @budget_av_detach._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @budget_av_detach._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.143, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/ttpci/budget-av.c", i32 1357, i32 2}
!367 = !{ptr @.str.144, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @budget_av_irq._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @budget_av_irq._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{i32 1, !"wchar_size", i32 2}
!371 = !{i32 1, !"min_enum_size", i32 4}
!372 = !{i32 8, !"branch-target-enforcement", i32 0}
!373 = !{i32 8, !"sign-return-address", i32 0}
!374 = !{i32 8, !"sign-return-address-all", i32 0}
!375 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!376 = !{i32 7, !"uwtable", i32 1}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!379 = !{i64 2158781936}
!380 = !{i64 6900670}
!381 = !{i64 2158782433}
!382 = !{i64 2158783055}
!383 = !{i64 2158787437}
!384 = !{!"auto-init"}
!385 = !{i64 2158717605}
!386 = !{i64 2158725581}
!387 = !{i64 2158726109}
!388 = !{i64 2148310041, i64 2148310046, i64 2148310059, i64 2148310103, i64 2148310137, i64 2148310158}
!389 = !{i64 6901088}
!390 = !{i64 2158712423}
