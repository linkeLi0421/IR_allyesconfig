; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ngene/ngene-cards.c_pt.bc'
source_filename = "../drivers/media/pci/ngene/ngene-cards.c"
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
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngene_info = type { i32, i32, i8, ptr, [5 x i32], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i32, i8, [4 x i8], [4 x i8], ptr, ptr }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stv0910_cfg = type { i32, i8, i8, i8, i8, i8 }
%struct.stv0367_config = type { i8, i32, i32, i32, i32, i32 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.mt2131_config = type { i8, i8 }
%struct.drxd_config = type { i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ngene_channel = type { %struct.device, %struct.i2c_adapter, [1 x ptr], i32, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, ptr, ptr, %struct.tasklet_struct, ptr, i32, i32, i8, i8, i8, ptr, ptr, %struct.spinlock, i16, i16, i16, i16, i16, i32, i32, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, [188 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.SRingBufferDescriptor = type { ptr, i64, i32, i32, i32, i32, ptr, i64, i32 }
%struct.ngene = type { i32, ptr, ptr, i32, i32, i32, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, [16 x %struct.EVENT_BUFFER], i32, i32, %struct.tasklet_struct, ptr, i32, i32, %struct.wait_queue_head, i32, %struct.mutex, %struct.mutex, %struct.semaphore, %struct.mutex, i32, i32, %struct.spinlock, [5 x %struct.dvb_adapter], ptr, [5 x %struct.ngene_channel], ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4096 x i8], i32, i32, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, ptr, %struct.dvb_ringbuffer, i32, i32, %struct.ngene_ci }
%struct.EVENT_BUFFER = type { i32, i8, i8, i8, i8, [2 x i32] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ngene_ci = type { %struct.device, %struct.i2c_adapter, ptr, ptr }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.125], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.125 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.126 }>
%union.anon.126 = type { i64 }
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drxk_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, ptr, i32 }
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.cxd2841er_config = type { i8, i32, i32 }
%struct.lnbh25_config = type { i8, i8 }

@ngene_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ngene_id_tbl, ptr @ngene_probe, ptr @ngene_remove, ptr null, ptr null, ptr @ngene_shutdown, ptr null, ptr null, ptr null, ptr @ngene_errors, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ngene__387_1234_module_init_ngene6 = internal global ptr @module_init_ngene, section ".initcall6.init", align 4
@__exitcall_module_exit_ngene = internal global ptr @module_exit_ngene, section ".exitcall.exit", align 4
@__UNIQUE_ID_description388 = internal constant [24 x i8] c"ngene.description=nGene\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [54 x i8] c"ngene.author=Micronas, Ralph Metzler, Manfred Voelkel\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [41 x i8] c"ngene.file=drivers/media/pci/ngene/ngene\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [18 x i8] c"ngene.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ngene\00", [26 x i8] zeroinitializer }, align 32
@ngene_id_tbl = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 43780, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_cineS2 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 43781, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_cineS2v5 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 43971, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_cineS2 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 43972, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_cineS2 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 56065, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_satixS2 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 56066, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_satixS2v2 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 56576, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_cineS2v5 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 56592, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_duoFlex to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 6339, i32 56608, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_duoFlex to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 5217, i32 1582, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_m780 to i32), i32 0 }, %struct.pci_device_id { i32 6339, i32 1824, i32 5435, i32 4455, i32 0, i32 0, i32 ptrtoint (ptr @ngene_info_terratec to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@ngene_errors = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @ngene_error_detected, ptr null, ptr @ngene_slot_reset, ptr null, ptr null, ptr @ngene_resume }, [40 x i8] zeroinitializer }, align 32
@ngene_info_cineS2 = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 2, i32 18, i8 1, ptr @.str.1, [5 x i32] [i32 4, i32 4, i32 0, i32 0, i32 0], [4 x ptr] [ptr @fe_cineS2, ptr @fe_cineS2, ptr null, ptr null], [4 x ptr] [ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr null, ptr null], [4 x ptr] [ptr @demod_attach_stv0900, ptr @demod_attach_stv0900, ptr null, ptr null], [4 x ptr] [ptr @tuner_attach_stv6110, ptr @tuner_attach_stv6110, ptr null, ptr null], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\0B\08\00\00", i32 0, i8 0, [4 x i8] c"\03\03\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_cineS2v5 = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 2, i32 18, i8 1, ptr @.str.27, [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 8], [4 x ptr] [ptr @fe_cineS2, ptr @fe_cineS2, ptr @fe_cineS2_2, ptr @fe_cineS2_2], [4 x ptr] [ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr @tuner_cineS2_0, ptr @tuner_cineS2_1], [4 x ptr] [ptr @demod_attach_stv0900, ptr @demod_attach_stv0900, ptr @cineS2_probe, ptr @cineS2_probe], [4 x ptr] [ptr @tuner_attach_stv6110, ptr @tuner_attach_stv6110, ptr @tuner_attach_probe, ptr @tuner_attach_probe], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\0A\08\0B\09", i32 0, i8 0, [4 x i8] c"\03\03\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_satixS2 = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 2, i32 18, i8 1, ptr @.str.126, [5 x i32] [i32 4, i32 4, i32 0, i32 0, i32 0], [4 x ptr] [ptr @fe_cineS2, ptr @fe_cineS2, ptr null, ptr null], [4 x ptr] [ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr null, ptr null], [4 x ptr] [ptr @demod_attach_stv0900, ptr @demod_attach_stv0900, ptr null, ptr null], [4 x ptr] [ptr @tuner_attach_stv6110, ptr @tuner_attach_stv6110, ptr null, ptr null], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\0B\08\00\00", i32 0, i8 0, [4 x i8] c"\03\03\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_satixS2v2 = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 2, i32 18, i8 1, ptr @.str.127, [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 8], [4 x ptr] [ptr @fe_cineS2, ptr @fe_cineS2, ptr @fe_cineS2_2, ptr @fe_cineS2_2], [4 x ptr] [ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr @tuner_cineS2_0, ptr @tuner_cineS2_1], [4 x ptr] [ptr @demod_attach_stv0900, ptr @demod_attach_stv0900, ptr @cineS2_probe, ptr @cineS2_probe], [4 x ptr] [ptr @tuner_attach_stv6110, ptr @tuner_attach_stv6110, ptr @tuner_attach_probe, ptr @tuner_attach_probe], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\0A\08\0B\09", i32 0, i8 0, [4 x i8] c"\03\03\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_duoFlex = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 2, i32 18, i8 1, ptr @.str.128, [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 8], [4 x ptr] [ptr @fe_cineS2, ptr @fe_cineS2, ptr @fe_cineS2_2, ptr @fe_cineS2_2], [4 x ptr] [ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr @tuner_cineS2_0, ptr @tuner_cineS2_1], [4 x ptr] [ptr @cineS2_probe, ptr @cineS2_probe, ptr @cineS2_probe, ptr @cineS2_probe], [4 x ptr] [ptr @tuner_attach_probe, ptr @tuner_attach_probe, ptr @tuner_attach_probe, ptr @tuner_attach_probe], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\0A\08\0B\09", i32 0, i8 0, [4 x i8] c"\03\03\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_m780 = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 0, i32 15, i8 0, ptr @.str.129, [5 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0], [4 x ptr] [ptr null, ptr @aver_m780, ptr null, ptr null], [4 x ptr] zeroinitializer, [4 x ptr] [ptr null, ptr @demod_attach_lg330x, ptr null, ptr null], [4 x ptr] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i32 0, i8 0, [4 x i8] c"\04\04\00\00", [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ngene_info_terratec = internal constant { %struct.ngene_info, [52 x i8] } { %struct.ngene_info { i32 1, i32 0, i8 0, ptr @.str.142, [5 x i32] [i32 4, i32 4, i32 0, i32 0, i32 0], [4 x ptr] [ptr @fe_terratec_dvbt_0, ptr @fe_terratec_dvbt_1, ptr null, ptr null], [4 x ptr] zeroinitializer, [4 x ptr] [ptr @demod_attach_drxd, ptr @demod_attach_drxd, ptr null, ptr null], [4 x ptr] [ptr @tuner_attach_dtt7520x, ptr @tuner_attach_dtt7520x, ptr null, ptr null], [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i32 1, i8 0, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Linux4Media cineS2 DVB-S2 Twin Tuner\00", [59 x i8] zeroinitializer }, align 32
@fe_cineS2 = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 1, i32 0, i32 2, i32 0, i32 27000000, i8 104, i8 1, i8 1, i32 0, i32 0, i8 0, i32 4, i8 0, i32 1, i32 1, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cineS2_tuner_i2c_lock, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tuner_cineS2_0 = internal global { %struct.stv6110x_config, [44 x i8] } { %struct.stv6110x_config { i8 96, i32 27000000, i8 1, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tuner_cineS2_1 = internal global { %struct.stv6110x_config, [44 x i8] } { %struct.stv6110x_config { i8 99, i32 27000000, i8 1, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv090x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv090x_attach\00", [42 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv090x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demod_attach_stv0900\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/ngene/ngene-cards.c\00", [58 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry_ptr = internal global ptr @demod_attach_stv0900._entry, section ".printk_index", align 4
@demod_attach_stv0900._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 293, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No STV0900 found!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry_ptr.11 = internal global ptr @demod_attach_stv0900._entry.7, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh24_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh24_attach\00", [43 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh24_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry_ptr.16 = internal global ptr @demod_attach_stv0900._entry.14, section ".printk_index", align 4
@demod_attach_stv0900._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 303, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No LNBH24 found!\0A\00", [46 x i8] zeroinitializer }, align 32
@demod_attach_stv0900._entry_ptr.19 = internal global ptr @demod_attach_stv0900._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv6110x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:stv6110x_attach\00", [41 x i8] zeroinitializer }, align 32
@tuner_attach_stv6110._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol stv6110x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tuner_attach_stv6110\00", [43 x i8] zeroinitializer }, align 32
@tuner_attach_stv6110._entry_ptr = internal global ptr @tuner_attach_stv6110._entry, section ".printk_index", align 4
@tuner_attach_stv6110._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 129, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No STV6110X found!\0A\00", [44 x i8] zeroinitializer }, align 32
@tuner_attach_stv6110._entry_ptr.26 = internal global ptr @tuner_attach_stv6110._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Linux4Media cineS2 DVB-S2 Twin Tuner (v5)\00", [54 x i8] zeroinitializer }, align 32
@fe_cineS2_2 = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 1, i32 0, i32 2, i32 0, i32 27000000, i8 105, i8 1, i8 1, i32 0, i32 0, i8 0, i32 4, i8 0, i32 1, i32 1, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cineS2_tuner_i2c_lock, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@cineS2_probe.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cineS2_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XO2 on channel %d (type %d, id %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@cineS2_probe.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.6, ptr @.str.30, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"skipping XO2 init on odd channel %d\00", [60 x i8] zeroinitializer }, align 32
@cineS2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.6, i32 627, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s (XO2) on channel %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr = internal global ptr @cineS2_probe._entry, section ".printk_index", align 4
@xo2names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], [40 x i8] zeroinitializer }, align 32
@cineS2_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.6, i32 636, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.34 = internal global ptr @cineS2_probe._entry.33, section ".printk_index", align 4
@cineS2_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.6, i32 643, ptr @.str.37, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported XO2 module on channel %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.38 = internal global ptr @cineS2_probe._entry.35, section ".printk_index", align 4
@cineS2_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.6, i32 648, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DuoFlex CI modules not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.41 = internal global ptr @cineS2_probe._entry.39, section ".printk_index", align 4
@cineS2_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.6, i32 651, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported XO2 module type\0A\00", [35 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.44 = internal global ptr @cineS2_probe._entry.42, section ".printk_index", align 4
@cineS2_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.28, ptr @.str.6, i32 680, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Could not setup DPNx\0A\00", [42 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.47 = internal global ptr @cineS2_probe._entry.45, section ".printk_index", align 4
@cineS2_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.28, ptr @.str.6, i32 688, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"STV0367 on channel %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.50 = internal global ptr @cineS2_probe._entry.48, section ".printk_index", align 4
@cineS2_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.28, ptr @.str.6, i32 691, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No demod found on chan %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cineS2_probe._entry_ptr.53 = internal global ptr @cineS2_probe._entry.51, section ".printk_index", align 4
@init_xo2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 534, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid XO2 on channel %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_xo2\00", [23 x i8] zeroinitializer }, align 32
@init_xo2._entry_ptr = internal global ptr @init_xo2._entry, section ".printk_index", align 4
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DUAL DVB-S2\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DUAL DVB-C/T/T2\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DUAL DVB-ISDBT\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DUAL DVB-C/C2/T/T2\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DUAL ATSC\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DUAL DVB-C/C2/T/T2/I\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2841er_attach_t_c\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"symbol:cxd2841er_attach_t_c\00", [36 x i8] zeroinitializer }, align 32
@demod_attach_cxd28xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DVB: Unable to find symbol cxd2841er_attach_t_c()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demod_attach_cxd28xx\00", [43 x i8] zeroinitializer }, align 32
@demod_attach_cxd28xx._entry_ptr = internal global ptr @demod_attach_cxd28xx._entry, section ".printk_index", align 4
@demod_attach_cxd28xx._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 416, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CXD28XX attach failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@demod_attach_cxd28xx._entry_ptr.68 = internal global ptr @demod_attach_cxd28xx._entry.66, section ".printk_index", align 4
@stv0910_p = internal constant { %struct.stv0910_cfg, [20 x i8] } { %struct.stv0910_cfg { i32 30000000, i8 104, i8 1, i8 4, i8 0, i8 40 }, [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0910_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0910_attach\00", [42 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0910_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demod_attach_stv0910\00", [43 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr = internal global ptr @demod_attach_stv0910._entry, section ".printk_index", align 4
@demod_attach_stv0910._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr.74 = internal global ptr @demod_attach_stv0910._entry.73, section ".printk_index", align 4
@demod_attach_stv0910._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.6, i32 339, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0910_attach() failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr.77 = internal global ptr @demod_attach_stv0910._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh25_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh25_attach\00", [43 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.72, ptr @.str.6, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh25_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr.82 = internal global ptr @demod_attach_stv0910._entry.80, section ".printk_index", align 4
@demod_attach_stv0910._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.72, ptr @.str.6, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr.84 = internal global ptr @demod_attach_stv0910._entry.83, section ".printk_index", align 4
@demod_attach_stv0910._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.6, i32 351, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lnbh25_attach() failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@demod_attach_stv0910._entry_ptr.87 = internal global ptr @demod_attach_stv0910._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"drxk_a3.mc\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxk_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxk_attach\00", [45 x i8] zeroinitializer }, align 32
@demod_attach_drxk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxk_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"demod_attach_drxk\00", [46 x i8] zeroinitializer }, align 32
@demod_attach_drxk._entry_ptr = internal global ptr @demod_attach_drxk._entry, section ".printk_index", align 4
@demod_attach_drxk._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.6, i32 500, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No DRXK found!\0A\00", [16 x i8] zeroinitializer }, align 32
@demod_attach_drxk._entry_ptr.95 = internal global ptr @demod_attach_drxk._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0367ddb_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"symbol:stv0367ddb_attach\00", [39 x i8] zeroinitializer }, align 32
@ddb_stv0367_config = internal global { [2 x %struct.stv0367_config], [48 x i8] } { [2 x %struct.stv0367_config] [%struct.stv0367_config { i8 31, i32 27000000, i32 0, i32 0, i32 1, i32 0 }, %struct.stv0367_config { i8 30, i32 27000000, i32 0, i32 0, i32 1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@demod_attach_stv0367._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013DVB: Unable to find symbol stv0367ddb_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demod_attach_stv0367\00", [43 x i8] zeroinitializer }, align 32
@demod_attach_stv0367._entry_ptr = internal global ptr @demod_attach_stv0367._entry, section ".printk_index", align 4
@demod_attach_stv0367._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.6, i32 388, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0367ddb_attach() failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@demod_attach_stv0367._entry_ptr.102 = internal global ptr @demod_attach_stv0367._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18271c2dd_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:tda18271c2dd_attach\00", [37 x i8] zeroinitializer }, align 32
@tuner_attach_tda18271._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.6, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol tda18271c2dd_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tuner_attach_tda18271\00", [42 x i8] zeroinitializer }, align 32
@tuner_attach_tda18271._entry_ptr = internal global ptr @tuner_attach_tda18271._entry, section ".printk_index", align 4
@tuner_attach_tda18271._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.6, i32 193, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No TDA18271 found!\0A\00", [44 x i8] zeroinitializer }, align 32
@tuner_attach_tda18271._entry_ptr.109 = internal global ptr @tuner_attach_tda18271._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18212\00", [23 x i8] zeroinitializer }, align 32
@tuner_attach_tda18212._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.6, i32 258, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"TDA18212 tuner not found. Device is not fully operational.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tuner_attach_tda18212\00", [42 x i8] zeroinitializer }, align 32
@tuner_attach_tda18212._entry_ptr = internal global ptr @tuner_attach_tda18212._entry, section ".printk_index", align 4
@tuner_tda18212_ping.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.6, ptr @.str.114, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tuner_tda18212_ping\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0367-tda18212 tuner ping\0A\00", [35 x i8] zeroinitializer }, align 32
@tuner_tda18212_ping.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.6, ptr @.str.115, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda18212 ping 1 fail\0A\00", [42 x i8] zeroinitializer }, align 32
@tuner_tda18212_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.113, ptr @.str.6, i32 215, ptr @.str.37, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tda18212 ping failed, expect problems\0A\00", [57 x i8] zeroinitializer }, align 32
@tuner_tda18212_ping._entry_ptr = internal global ptr @tuner_tda18212_ping._entry, section ".printk_index", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6111_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv6111_attach\00", [42 x i8] zeroinitializer }, align 32
@tuner_attach_stv6111._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.6, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv6111_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tuner_attach_stv6111\00", [43 x i8] zeroinitializer }, align 32
@tuner_attach_stv6111._entry_ptr = internal global ptr @tuner_attach_stv6111._entry, section ".printk_index", align 4
@tuner_attach_stv6111._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.6, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tuner_attach_stv6111._entry_ptr.122 = internal global ptr @tuner_attach_stv6111._entry.121, section ".printk_index", align 4
@tuner_attach_stv6111._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.120, ptr @.str.6, i32 159, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv6111_attach() failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@tuner_attach_stv6111._entry_ptr.125 = internal global ptr @tuner_attach_stv6111._entry.123, section ".printk_index", align 4
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mystique SaTiX-S2 Dual\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mystique SaTiX-S2 Dual (v2)\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Digital Devices DuoFlex PCIe or miniPCIe\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Aver M780 ATSC/QAM-B\00", [43 x i8] zeroinitializer }, align 32
@aver_m780 = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 0, ptr null, ptr null, i32 1, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@demod_attach_lg330x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.6, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"demod_attach_lg330x\00", [44 x i8] zeroinitializer }, align 32
@demod_attach_lg330x._entry_ptr = internal global ptr @demod_attach_lg330x._entry, section ".printk_index", align 4
@demod_attach_lg330x._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.6, i32 718, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No LGDT330x found!\0A\00", [44 x i8] zeroinitializer }, align 32
@demod_attach_lg330x._entry_ptr.136 = internal global ptr @demod_attach_lg330x._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2131_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2131_attach\00", [43 x i8] zeroinitializer }, align 32
@m780_tunerconfig = internal global { %struct.mt2131_config, [30 x i8] } { %struct.mt2131_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@demod_attach_lg330x._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.133, ptr @.str.6, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2131_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@demod_attach_lg330x._entry_ptr.141 = internal global ptr @demod_attach_lg330x._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Terratec Integra/Cinergy2400i Dual DVB-T\00", [55 x i8] zeroinitializer }, align 32
@fe_terratec_dvbt_0 = internal global { %struct.drxd_config, [40 x i8] } { %struct.drxd_config { i8 0, i8 96, i8 19, i32 20000, i8 0, i8 112, i8 0, i8 -94, i8 0, i32 0, ptr @osc_deviation }, [40 x i8] zeroinitializer }, align 32
@fe_terratec_dvbt_1 = internal global { %struct.drxd_config, [40 x i8] } { %struct.drxd_config { i8 1, i8 96, i8 19, i32 20000, i8 0, i8 113, i8 0, i8 -94, i8 0, i32 0, ptr @osc_deviation }, [40 x i8] zeroinitializer }, align 32
@osc_deviation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.6, i32 954, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write deviation %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"osc_deviation\00", [18 x i8] zeroinitializer }, align 32
@osc_deviation._entry_ptr = internal global ptr @osc_deviation._entry, section ".printk_index", align 4
@osc_deviation._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.6, i32 960, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read deviation %d\0A\00", [45 x i8] zeroinitializer }, align 32
@osc_deviation._entry_ptr.147 = internal global ptr @osc_deviation._entry.145, section ".printk_index", align 4
@WriteEEProm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.6, i32 881, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reached EOEE @ Tag = %04x Length = %3d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WriteEEProm\00", [20 x i8] zeroinitializer }, align 32
@WriteEEProm._entry_ptr = internal global ptr @WriteEEProm._entry, section ".printk_index", align 4
@WriteEEProm._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.6, i32 908, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eeprom write error\0A\00", [44 x i8] zeroinitializer }, align 32
@WriteEEProm._entry_ptr.152 = internal global ptr @WriteEEProm._entry.150, section ".printk_index", align 4
@WriteEEProm._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.6, i32 912, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Timeout polling eeprom\0A\00", [40 x i8] zeroinitializer }, align 32
@WriteEEProm._entry_ptr.155 = internal global ptr @WriteEEProm._entry.153, section ".printk_index", align 4
@i2c_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.6, i32 813, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error reading EEPROM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_read_eeprom\00", [16 x i8] zeroinitializer }, align 32
@i2c_read_eeprom._entry_ptr = internal global ptr @i2c_read_eeprom._entry, section ".printk_index", align 4
@i2c_write_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.6, i32 796, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing EEPROM!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_write_eeprom\00", [47 x i8] zeroinitializer }, align 32
@i2c_write_eeprom._entry_ptr = internal global ptr @i2c_write_eeprom._entry, section ".printk_index", align 4
@ReadEEProm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.160, ptr @.str.6, i32 839, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ReadEEProm\00", [21 x i8] zeroinitializer }, align 32
@ReadEEProm._entry_ptr = internal global ptr @ReadEEProm._entry, section ".printk_index", align 4
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxd_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxd_attach\00", [45 x i8] zeroinitializer }, align 32
@demod_attach_drxd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.6, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxd_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"demod_attach_drxd\00", [46 x i8] zeroinitializer }, align 32
@demod_attach_drxd._entry_ptr = internal global ptr @demod_attach_drxd._entry, section ".printk_index", align 4
@demod_attach_drxd._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.6, i32 738, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No DRXD found!\0A\00", [16 x i8] zeroinitializer }, align 32
@demod_attach_drxd._entry_ptr.167 = internal global ptr @demod_attach_drxd._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@tuner_attach_dtt7520x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.6, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tuner_attach_dtt7520x\00", [42 x i8] zeroinitializer }, align 32
@tuner_attach_dtt7520x._entry_ptr = internal global ptr @tuner_attach_dtt7520x._entry, section ".printk_index", align 4
@tuner_attach_dtt7520x._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.6, i32 754, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No pll(%d) found!\0A\00", [45 x i8] zeroinitializer }, align 32
@tuner_attach_dtt7520x._entry_ptr.174 = internal global ptr @tuner_attach_dtt7520x._entry.172, section ".printk_index", align 4
@ngene_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.6, i32 1187, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ngene_error_detected\00", [43 x i8] zeroinitializer }, align 32
@ngene_error_detected._entry_ptr = internal global ptr @ngene_error_detected._entry, section ".printk_index", align 4
@ngene_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.6, i32 1197, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slot reset\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ngene_slot_reset\00", [47 x i8] zeroinitializer }, align 32
@ngene_slot_reset._entry_ptr = internal global ptr @ngene_slot_reset._entry, section ".printk_index", align 4
@ngene_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.6, i32 1203, ptr @.str.32, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ngene_resume\00", [19 x i8] zeroinitializer }, align 32
@ngene_resume._entry_ptr = internal global ptr @ngene_resume._entry, section ".printk_index", align 4
@module_init_ngene._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.6, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016ngene: nGene PCIE bridge driver, Copyright (C) 2005-2007 Micronas\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"module_init_ngene\00", [46 x i8] zeroinitializer }, align 32
@module_init_ngene._entry_ptr = internal global ptr @module_init_ngene._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 68]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [7 x i64] [i64 5, i64 6, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.186 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 32, i64 33, i64 34, i64 35, i64 37]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"ngene_pci_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1212, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1213, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"ngene_id_tbl\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1164, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant [13 x i8] c"ngene_errors\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1206, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"ngene_info_cineS2\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1025, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"ngene_info_cineS2v5\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1068, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"ngene_info_satixS2\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1039, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"ngene_info_satixS2v2\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1053, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"ngene_info_duoFlex\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1084, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"ngene_info_m780\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1099, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"ngene_info_terratec\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1139, i32 32 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1027, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"fe_cineS2\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 971, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"tuner_cineS2_0\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1013, i32 31 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"tuner_cineS2_1\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1019, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 289, i32 13 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 293, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 301, i32 7 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 303, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 127, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 129, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1070, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant [12 x i8] c"fe_cineS2_2\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 992, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 607, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 613, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 626, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant [9 x i8] c"xo2names\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 513, i32 14 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 635, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 641, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 648, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 651, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 680, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 688, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 691, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 534, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 514, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 515, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 516, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 517, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 518, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 519, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 413, i32 13 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 416, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [10 x i8] c"stv0910_p\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 312, i32 27 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 332, i32 13 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 335, i32 14 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 339, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 348, i32 7 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 350, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 351, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 494, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 498, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 500, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [19 x i8] c"ddb_stv0367_config\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 361, i32 30 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 384, i32 13 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 388, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 189, i32 7 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 193, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 249, i32 28 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 258, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 208, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 213, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 215, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 155, i32 7 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 157, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 159, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1041, i32 11 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1055, i32 11 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1086, i32 20 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1101, i32 20 }
@___asan_gen_.600 = private unnamed_addr constant [10 x i8] c"aver_m780\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 698, i32 31 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 715, i32 13 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 718, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"m780_tunerconfig\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 704, i32 29 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 722, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1141, i32 20 }
@___asan_gen_.642 = private unnamed_addr constant [19 x i8] c"fe_terratec_dvbt_0\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1117, i32 27 }
@___asan_gen_.645 = private unnamed_addr constant [19 x i8] c"fe_terratec_dvbt_1\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1128, i32 27 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 953, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 959, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 880, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 908, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 912, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 813, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 796, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 838, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 735, i32 13 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 738, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 751, i32 7 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 754, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1187, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1197, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1203, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.784 = private constant [41 x i8] c"../drivers/media/pci/ngene/ngene-cards.c\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1224, i32 2 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @ReadEEProm._entry, ptr @ReadEEProm._entry_ptr, ptr @WriteEEProm._entry, ptr @WriteEEProm._entry.150, ptr @WriteEEProm._entry.153, ptr @WriteEEProm._entry_ptr, ptr @WriteEEProm._entry_ptr.152, ptr @WriteEEProm._entry_ptr.155, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_module_exit_ngene, ptr @__initcall__kmod_ngene__387_1234_module_init_ngene6, ptr @cineS2_probe._entry, ptr @cineS2_probe._entry.33, ptr @cineS2_probe._entry.35, ptr @cineS2_probe._entry.39, ptr @cineS2_probe._entry.42, ptr @cineS2_probe._entry.45, ptr @cineS2_probe._entry.48, ptr @cineS2_probe._entry.51, ptr @cineS2_probe._entry_ptr, ptr @cineS2_probe._entry_ptr.34, ptr @cineS2_probe._entry_ptr.38, ptr @cineS2_probe._entry_ptr.41, ptr @cineS2_probe._entry_ptr.44, ptr @cineS2_probe._entry_ptr.47, ptr @cineS2_probe._entry_ptr.50, ptr @cineS2_probe._entry_ptr.53, ptr @demod_attach_cxd28xx._entry, ptr @demod_attach_cxd28xx._entry.66, ptr @demod_attach_cxd28xx._entry_ptr, ptr @demod_attach_cxd28xx._entry_ptr.68, ptr @demod_attach_drxd._entry, ptr @demod_attach_drxd._entry.165, ptr @demod_attach_drxd._entry_ptr, ptr @demod_attach_drxd._entry_ptr.167, ptr @demod_attach_drxk._entry, ptr @demod_attach_drxk._entry.93, ptr @demod_attach_drxk._entry_ptr, ptr @demod_attach_drxk._entry_ptr.95, ptr @demod_attach_lg330x._entry, ptr @demod_attach_lg330x._entry.134, ptr @demod_attach_lg330x._entry.139, ptr @demod_attach_lg330x._entry_ptr, ptr @demod_attach_lg330x._entry_ptr.136, ptr @demod_attach_lg330x._entry_ptr.141, ptr @demod_attach_stv0367._entry, ptr @demod_attach_stv0367._entry.100, ptr @demod_attach_stv0367._entry_ptr, ptr @demod_attach_stv0367._entry_ptr.102, ptr @demod_attach_stv0900._entry, ptr @demod_attach_stv0900._entry.14, ptr @demod_attach_stv0900._entry.17, ptr @demod_attach_stv0900._entry.7, ptr @demod_attach_stv0900._entry_ptr, ptr @demod_attach_stv0900._entry_ptr.11, ptr @demod_attach_stv0900._entry_ptr.16, ptr @demod_attach_stv0900._entry_ptr.19, ptr @demod_attach_stv0910._entry, ptr @demod_attach_stv0910._entry.73, ptr @demod_attach_stv0910._entry.75, ptr @demod_attach_stv0910._entry.80, ptr @demod_attach_stv0910._entry.83, ptr @demod_attach_stv0910._entry.85, ptr @demod_attach_stv0910._entry_ptr, ptr @demod_attach_stv0910._entry_ptr.74, ptr @demod_attach_stv0910._entry_ptr.77, ptr @demod_attach_stv0910._entry_ptr.82, ptr @demod_attach_stv0910._entry_ptr.84, ptr @demod_attach_stv0910._entry_ptr.87, ptr @i2c_read_eeprom._entry, ptr @i2c_read_eeprom._entry_ptr, ptr @i2c_write_eeprom._entry, ptr @i2c_write_eeprom._entry_ptr, ptr @init_xo2._entry, ptr @init_xo2._entry_ptr, ptr @module_exit_ngene, ptr @module_init_ngene._entry, ptr @module_init_ngene._entry_ptr, ptr @ngene_error_detected._entry, ptr @ngene_error_detected._entry_ptr, ptr @ngene_resume._entry, ptr @ngene_resume._entry_ptr, ptr @ngene_slot_reset._entry, ptr @ngene_slot_reset._entry_ptr, ptr @osc_deviation._entry, ptr @osc_deviation._entry.145, ptr @osc_deviation._entry_ptr, ptr @osc_deviation._entry_ptr.147, ptr @tuner_attach_dtt7520x._entry, ptr @tuner_attach_dtt7520x._entry.172, ptr @tuner_attach_dtt7520x._entry_ptr, ptr @tuner_attach_dtt7520x._entry_ptr.174, ptr @tuner_attach_stv6110._entry, ptr @tuner_attach_stv6110._entry.24, ptr @tuner_attach_stv6110._entry_ptr, ptr @tuner_attach_stv6110._entry_ptr.26, ptr @tuner_attach_stv6111._entry, ptr @tuner_attach_stv6111._entry.121, ptr @tuner_attach_stv6111._entry.123, ptr @tuner_attach_stv6111._entry_ptr, ptr @tuner_attach_stv6111._entry_ptr.122, ptr @tuner_attach_stv6111._entry_ptr.125, ptr @tuner_attach_tda18212._entry, ptr @tuner_attach_tda18212._entry_ptr, ptr @tuner_attach_tda18271._entry, ptr @tuner_attach_tda18271._entry.107, ptr @tuner_attach_tda18271._entry_ptr, ptr @tuner_attach_tda18271._entry_ptr.109, ptr @tuner_tda18212_ping._entry, ptr @tuner_tda18212_ping._entry_ptr, ptr @ngene_pci_driver, ptr @.str, ptr @ngene_id_tbl, ptr @ngene_errors, ptr @ngene_info_cineS2, ptr @ngene_info_cineS2v5, ptr @ngene_info_satixS2, ptr @ngene_info_satixS2v2, ptr @ngene_info_duoFlex, ptr @ngene_info_m780, ptr @ngene_info_terratec, ptr @.str.1, ptr @fe_cineS2, ptr @tuner_cineS2_0, ptr @tuner_cineS2_1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @fe_cineS2_2, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @xo2names, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @stv0910_p, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @ddb_stv0367_config, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @aver_m780, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @m780_tunerconfig, ptr @.str.140, ptr @.str.142, ptr @fe_terratec_dvbt_0, ptr @fe_terratec_dvbt_1, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], section "llvm.metadata"
@0 = internal global [199 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_id_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_errors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_cineS2 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_cineS2v5 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_satixS2 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_satixS2v2 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_duoFlex to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_m780 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_info_terratec to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_cineS2 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_cineS2_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_cineS2_1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0900._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0900._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0900._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0900._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_stv6110._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_stv6110._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_cineS2_2 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xo2names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cineS2_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_xo2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_cxd28xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_cxd28xx._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_p to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0910._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_drxk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_drxk._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_stv0367_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0367._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_stv0367._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_tda18271._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_tda18271._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_tda18212._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_tda18212_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_stv6111._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_stv6111._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_stv6111._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aver_m780 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_lg330x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_lg330x._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m780_tunerconfig to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_lg330x._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_terratec_dvbt_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_terratec_dvbt_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_deviation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_deviation._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteEEProm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteEEProm._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteEEProm._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ReadEEProm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_drxd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_attach_drxd._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_dtt7520x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_attach_dtt7520x._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ngene_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_init_ngene._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ngene_port_has_cxd2099(ptr noundef %i2c, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  %probe = alloca [4 x i8], align 4
  %data = alloca [4 x i8], align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %probe) #6
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -536870912, ptr %probe, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #6
  %4 = getelementptr inbounds i8, ptr %msgs, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %probe, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 64, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %13 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %buf4, align 4
  %call = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs, i32 noundef 2) #6
  %conv7 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv7)
  %cmp.not = icmp eq i32 %conv7, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp10 = icmp eq i8 %15, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %17)
  %cmp14 = icmp eq i8 %17, 43
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true16:                                  ; preds = %land.lhs.true
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %19)
  %cmp19 = icmp eq i8 %19, 67
  br i1 %cmp19, label %land.lhs.true16.if.end22_crit_edge, label %land.lhs.true16.if.else_crit_edge

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true16.if.end22_crit_edge
  %storemerge = phi i8 [ 1, %if.else ], [ 2, %land.lhs.true16.if.end22_crit_edge ]
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge, ptr %type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %probe) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @module_exit_ngene() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ngene_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @module_init_ngene() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #9
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ngene_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ngene_probe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ngene_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ngene_shutdown(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @demod_attach_stv0900(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %number.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  %i2c_adapter.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %i2c_adapter.i, ptr %i2c_adapter4.i
  %card_info = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_info, align 8
  %arrayidx = getelementptr %struct.ngene_info, ptr %7, i32 0, i32 5, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.2) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3) #6
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.2) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond87 = phi ptr [ %call5, %cond.end.if.then_crit_edge ], [ %call3, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number.i, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %cond8 = select i1 %cmp, i32 1, i32 2
  %call9 = tail call ptr %cond87(ptr noundef %9, ptr noundef %retval.0.i, i32 noundef %cond8) #6
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.2) #6
  br label %do.end20

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end, %if.then11
  %fe89 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %12 = ptrtoint ptr %fe89 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fe89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end21:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %13 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %fe, align 4
  %tuner_i2c_lock = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 27
  %14 = ptrtoint ptr %tuner_i2c_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner_i2c_lock, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call9, i32 0, i32 7
  %16 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chan, ptr %analog_demod_priv, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %call28 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.12) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end34, label %if.end25.if.then37_crit_edge

if.end25.if.then37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

cond.end34:                                       ; preds = %if.end25
  %call32 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.13) #6
  %call33 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.12) #6
  %tobool36.not = icmp eq ptr %call33, null
  br i1 %tobool36.not, label %do.end50, label %cond.end34.if.then37_crit_edge

cond.end34.if.then37_crit_edge:                   ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.then37:                                        ; preds = %cond.end34.if.then37_crit_edge, %if.end25.if.then37_crit_edge
  %cond3594 = phi ptr [ %call33, %cond.end34.if.then37_crit_edge ], [ %call28, %if.end25.if.then37_crit_edge ]
  %17 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %card_info40 = getelementptr inbounds %struct.ngene, ptr %20, i32 0, i32 35
  %21 = ptrtoint ptr %card_info40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card_info40, align 8
  %23 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number.i, align 4
  %arrayidx42 = getelementptr %struct.ngene_info, ptr %22, i32 0, i32 12, i32 %24
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx42, align 1
  %call43 = tail call ptr %cond3594(ptr noundef %18, ptr noundef %retval.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %26) #6
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.then45, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.12) #6
  br label %do.end59

do.end50:                                         ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %do.end59

do.end59:                                         ; preds = %do.end50, %if.then45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %27 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fe, align 4
  tail call void @dvb_frontend_detach(ptr noundef %28) #6
  %29 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %fe, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then37.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ -19, %do.end20 ], [ -19, %do.end59 ], [ 0, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_attach_stv6110(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %number.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  %i2c_adapter.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %i2c_adapter.i, ptr %i2c_adapter4.i
  %card_info = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_info, align 8
  %arrayidx = getelementptr %struct.ngene_info, ptr %7, i32 0, i32 5, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.ngene_info, ptr %7, i32 0, i32 6, i32 %5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21) #6
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.20) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond68 = phi ptr [ %call9, %cond.end.if.then_crit_edge ], [ %call7, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe, align 4
  %call11 = tail call ptr %cond68(ptr noundef %13, ptr noundef %11, ptr noundef %retval.0.i) #6
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.20) #6
  br label %do.end20

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end, %if.then12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end21:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call11, align 4
  %tuner_init22 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 16
  %16 = ptrtoint ptr %tuner_init22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tuner_init22, align 4
  %tuner_sleep = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 1
  %17 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner_sleep, align 4
  %tuner_sleep23 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 17
  %19 = ptrtoint ptr %tuner_sleep23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %tuner_sleep23, align 4
  %tuner_set_mode = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 2
  %20 = ptrtoint ptr %tuner_set_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_set_mode, align 4
  %tuner_set_mode24 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 18
  %22 = ptrtoint ptr %tuner_set_mode24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tuner_set_mode24, align 4
  %tuner_set_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 3
  %23 = ptrtoint ptr %tuner_set_frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tuner_set_frequency, align 4
  %tuner_set_frequency25 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 19
  %25 = ptrtoint ptr %tuner_set_frequency25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %tuner_set_frequency25, align 4
  %tuner_get_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 4
  %26 = ptrtoint ptr %tuner_get_frequency to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_get_frequency, align 4
  %tuner_get_frequency26 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 20
  %28 = ptrtoint ptr %tuner_get_frequency26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %tuner_get_frequency26, align 4
  %tuner_set_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 5
  %29 = ptrtoint ptr %tuner_set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tuner_set_bandwidth, align 4
  %tuner_set_bandwidth27 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 21
  %31 = ptrtoint ptr %tuner_set_bandwidth27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %tuner_set_bandwidth27, align 4
  %tuner_get_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 6
  %32 = ptrtoint ptr %tuner_get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tuner_get_bandwidth, align 4
  %tuner_get_bandwidth28 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 22
  %34 = ptrtoint ptr %tuner_get_bandwidth28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %tuner_get_bandwidth28, align 4
  %tuner_set_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 7
  %35 = ptrtoint ptr %tuner_set_bbgain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tuner_set_bbgain, align 4
  %tuner_set_bbgain29 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 23
  %37 = ptrtoint ptr %tuner_set_bbgain29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tuner_set_bbgain29, align 4
  %tuner_get_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 8
  %38 = ptrtoint ptr %tuner_get_bbgain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tuner_get_bbgain, align 4
  %tuner_get_bbgain30 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 24
  %40 = ptrtoint ptr %tuner_get_bbgain30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %tuner_get_bbgain30, align 4
  %tuner_set_refclk = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 9
  %41 = ptrtoint ptr %tuner_set_refclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tuner_set_refclk, align 4
  %tuner_set_refclk31 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 25
  %43 = ptrtoint ptr %tuner_set_refclk31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %tuner_set_refclk31, align 4
  %tuner_get_status = getelementptr inbounds %struct.stv6110x_devctl, ptr %call11, i32 0, i32 10
  %44 = ptrtoint ptr %tuner_get_status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tuner_get_status, align 4
  %tuner_get_status32 = getelementptr inbounds %struct.stv090x_config, ptr %9, i32 0, i32 26
  %46 = ptrtoint ptr %tuner_get_status32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %tuner_get_status32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20
  %retval.0 = phi i32 [ -19, %do.end20 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cineS2_tuner_i2c_lock(ptr nocapture noundef readonly %fe, i32 noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  %dev1 = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %pll_mutex2 = getelementptr inbounds %struct.ngene, ptr %3, i32 0, i32 27
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @down(ptr noundef %pll_mutex2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %pll_mutex2) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cineS2_probe(ptr noundef %chan) #0 align 64 {
entry:
  %msg.i16.i = alloca [2 x i8], align 1
  %msgs.i17.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i218 = alloca [2 x i8], align 1
  %msgs.i.i219 = alloca [2 x %struct.i2c_msg], align 4
  %val.i220 = alloca i8, align 1
  %config.i = alloca %struct.drxk_config, align 4
  %msgs.i.i206 = alloca [1 x %struct.i2c_msg], align 4
  %val.i207 = alloca i8, align 1
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i201 = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %probe.i = alloca [1 x i8], align 1
  %data.i = alloca [4 x i8], align 4
  %buf = alloca [3 x i8], align 1
  %i2c_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %number.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  %i2c_adapter.i = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i = getelementptr %struct.ngene, ptr %1, i32 0, i32 34, i32 1, i32 1
  %retval.0.i199 = select i1 %cmp.i, ptr %i2c_adapter.i, ptr %i2c_adapter4.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buf, align 1, !annotation !372
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !372
  %9 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !372
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_msg) #6
  %11 = getelementptr inbounds i8, ptr %i2c_msg, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %i2c_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %16 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %probe.i) #6
  %17 = ptrtoint ptr %probe.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %probe.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %18 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %21 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 16)
  %23 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %21, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %probe.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %27 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 16, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %29 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %len5.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %30 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data.i, ptr %buf7.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.if.else73_crit_edge

entry.if.else73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

if.end.i:                                         ; preds = %entry
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.i, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %if.end.i.if.else73_crit_edge [
    i8 68, label %land.lhs.true.i
    i8 67, label %land.lhs.true14.i
  ]

if.end.i.if.else73_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

land.lhs.true.i:                                  ; preds = %if.end.i
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %35)
  %cmp5.i = icmp eq i8 %35, 70
  br i1 %cmp5.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else73_crit_edge

land.lhs.true.i.if.else73_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true14.i:                                ; preds = %if.end.i
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %37)
  %cmp17.i = icmp eq i8 %37, 73
  br i1 %cmp17.i, label %land.lhs.true14.i.if.then_crit_edge, label %land.lhs.true14.i.if.else73_crit_edge

land.lhs.true14.i.if.else73_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

land.lhs.true14.i.if.then_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true14.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %.sink.i = phi i8 [ 1, %land.lhs.true.i.if.then_crit_edge ], [ 2, %land.lhs.true14.i.if.then_crit_edge ]
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %19, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %probe.i) #6
  %40 = lshr i8 %39, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cineS2_probe.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cineS2_probe, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !373

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number.i, align 4
  %conv10 = zext i8 %.sink.i to i32
  %conv11 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cineS2_probe.__UNIQUE_ID_ddebug385, ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %42, i32 noundef %conv10, i32 noundef %conv11) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.then
  %trunc = trunc i8 %.sink.i to i2
  %43 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.183)
  switch i2 %trunc, label %do.end71 [
    i2 1, label %sw.bb
    i2 -2, label %do.end67
  ]

sw.bb:                                            ; preds = %do.end
  %44 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %number.i, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %do.body16

do.body16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cineS2_probe.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cineS2_probe, %if.then28)) #6
          to label %if.end34 [label %if.then28], !srcloc !373

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cineS2_probe.__UNIQUE_ID_ddebug386, ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %47) #6
  br label %if.end34

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @init_xo2(ptr noundef %chan, ptr noundef %retval.0.i199)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then28, %do.body16
  %trunc245 = trunc i8 %40 to i6
  %48 = zext i6 %trunc245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.184)
  switch i6 %trunc245, label %do.end62 [
    i6 1, label %if.end34.do.end41_crit_edge
    i6 2, label %if.end34.do.end41_crit_edge246
    i6 3, label %if.end34.do.end41_crit_edge247
    i6 5, label %if.end34.do.end41_crit_edge248
    i6 0, label %do.end53
  ]

if.end34.do.end41_crit_edge248:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.end34.do.end41_crit_edge247:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.end34.do.end41_crit_edge246:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.end34.do.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end41:                                         ; preds = %if.end34.do.end41_crit_edge, %if.end34.do.end41_crit_edge246, %if.end34.do.end41_crit_edge247, %if.end34.do.end41_crit_edge248
  %add = add nuw nsw i8 %40, 32
  %conv37 = zext i8 %add to i32
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @xo2names, i32 0, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %50, i32 noundef %52) #9
  %demod_type = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %53 = ptrtoint ptr %demod_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv37, ptr %demod_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %add)
  %cmp = icmp eq i8 %add, 37
  %spec.select = zext i1 %cmp to i32
  call fastcc void @demod_attach_cxd28xx(ptr noundef %chan, ptr noundef %retval.0.i199, i32 noundef %spec.select)
  br label %cleanup

do.end53:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %conv35 = zext i8 %40 to i32
  %arrayidx55 = getelementptr [6 x ptr], ptr @xo2names, i32 0, i32 %conv35
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx55, align 4
  %56 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %55, i32 noundef %57) #9
  %demod_type58 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %58 = ptrtoint ptr %demod_type58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %demod_type58, align 4
  call fastcc void @demod_attach_stv0910(ptr noundef %chan, ptr noundef %retval.0.i199)
  br label %cleanup

do.end62:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %60) #9
  br label %cleanup

do.end67:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.40) #9
  br label %cleanup

do.end71:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.else73:                                        ; preds = %land.lhs.true14.i.if.else73_crit_edge, %land.lhs.true.i.if.else73_crit_edge, %if.end.i.if.else73_crit_edge, %entry.if.else73_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %probe.i) #6
  %61 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %val.i, align 1, !annotation !372
  %div.i = sdiv i32 %62, 2
  %64 = trunc i32 %div.i to i8
  %conv.i = add i8 %64, 104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %65 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -15, ptr %msg.i.i, align 1
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i201) #6
  %68 = getelementptr inbounds i8, ptr %msgs.i.i201, i32 4
  %69 = call ptr @memset(ptr %68, i32 255, i32 16)
  %conv5.i.i = zext i8 %conv.i to i16
  %70 = ptrtoint ptr %msgs.i.i201 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv5.i.i, ptr %msgs.i.i201, align 4
  %flags.i.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i202 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i202, align 2
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %68, align 4
  %buf.i.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i.i203 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i, ptr %buf.i.i203, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 1
  %74 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 1, i32 1
  %75 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 1, i32 2
  %76 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %len10.i.i, align 4
  %buf11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i201, i32 1, i32 3
  %77 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %val.i, ptr %buf11.i.i, align 4
  %call.i.i204 = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %msgs.i.i201, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i204)
  %cmp.i.not.i205.not = icmp eq i32 %call.i.i204, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i201) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br i1 %cmp.i.not.i205.not, label %if.then77, label %if.else111

if.then77:                                        ; preds = %if.else73
  %demod_type78 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %78 = ptrtoint ptr %demod_type78 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %demod_type78, align 4
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 8
  %card_info = getelementptr inbounds %struct.ngene, ptr %80, i32 0, i32 35
  %81 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card_info, align 8
  %83 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %number.i, align 4
  %arrayidx81 = getelementptr %struct.ngene_info, ptr %82, i32 0, i32 5, i32 %84
  %85 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx81, align 4
  %call82 = call i32 @demod_attach_stv0900(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then77.cleanup_crit_edge, label %lor.lhs.false

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then77
  %87 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp86 = icmp slt i32 %88, 2
  br i1 %cmp86, label %lor.lhs.false.cleanup_crit_edge, label %if.end89

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false
  %address = getelementptr inbounds %struct.stv090x_config, ptr %86, i32 0, i32 5
  %89 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %address, align 4
  %conv90 = zext i8 %90 to i16
  %91 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv90, ptr %i2c_msg, align 4
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 3, ptr %len, align 4
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -15, ptr %buf, align 1
  %94 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %88, label %if.end89.cleanup_crit_edge [
    i32 2, label %if.end89.sw.epilog102_crit_edge
    i32 3, label %sw.bb98
  ]

if.end89.sw.epilog102_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog102

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb98:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.bb98, %if.end89.sw.epilog102_crit_edge
  %storemerge195 = phi i8 [ 97, %sw.bb98 ], [ 92, %if.end89.sw.epilog102_crit_edge ]
  %storemerge = phi i8 [ -52, %sw.bb98 ], [ -62, %if.end89.sw.epilog102_crit_edge ]
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %storemerge195, ptr %7, align 1
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %storemerge, ptr %9, align 1
  %call103 = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %i2c_msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call103)
  %cmp104.not = icmp eq i32 %call103, 1
  br i1 %cmp104.not, label %sw.epilog102.cleanup_crit_edge, label %do.end109

sw.epilog102.cleanup_crit_edge:                   ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end109:                                        ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #9
  br label %cleanup

if.else111:                                       ; preds = %if.else73
  %97 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %number.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i207) #6
  %99 = ptrtoint ptr %val.i207 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %val.i207, align 1, !annotation !372
  %100 = trunc i32 %98 to i8
  %101 = xor i8 %100, 2
  %conv.i208 = add i8 %101, 41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i206) #6
  %102 = getelementptr inbounds i8, ptr %msgs.i.i206, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 131071, ptr %102, align 4
  %conv.i.i = zext i8 %conv.i208 to i16
  %104 = ptrtoint ptr %msgs.i.i206 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i.i, ptr %msgs.i.i206, align 4
  %flags.i.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i206, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i.i209 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %flags.i.i209, align 2
  %buf.i.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i206, i32 0, i32 3
  %106 = ptrtoint ptr %buf.i.i210 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %val.i207, ptr %buf.i.i210, align 4
  %call.i.i211 = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %msgs.i.i206, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i211)
  %cmp.i.not.i212.not = icmp eq i32 %call.i.i211, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i206) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i207) #6
  br i1 %cmp.i.not.i212.not, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.else111
  %demod_type116 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %107 = ptrtoint ptr %demod_type116 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %demod_type116, align 4
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 8
  %pci_dev.i = getelementptr inbounds %struct.ngene, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pci_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %112 = call ptr @memset(ptr %config.i, i32 0, i32 16)
  %microcode_name.i = getelementptr inbounds %struct.drxk_config, ptr %config.i, i32 0, i32 10
  %113 = ptrtoint ptr %microcode_name.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.88, ptr %microcode_name.i, align 4
  %qam_demod_parameter_count.i = getelementptr inbounds %struct.drxk_config, ptr %config.i, i32 0, i32 11
  %114 = ptrtoint ptr %qam_demod_parameter_count.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 4, ptr %qam_demod_parameter_count.i, align 4
  %115 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %number.i, align 4
  %117 = trunc i32 %116 to i8
  %118 = xor i8 %117, 2
  %conv.i216 = add i8 %118, 41
  %119 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i216, ptr %config.i, align 4
  %call.i = call ptr @__symbol_get(ptr noundef nonnull @.str.89) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.i, label %if.then115.if.then.i_crit_edge

if.then115.if.then.i_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

cond.end.i:                                       ; preds = %if.then115
  %call2.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #6
  %call3.i = call ptr @__symbol_get(ptr noundef nonnull @.str.89) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %if.then115.if.then.i_crit_edge
  %cond3.i = phi ptr [ %call3.i, %cond.end.i.if.then.i_crit_edge ], [ %call.i, %if.then115.if.then.i_crit_edge ]
  %call5.i = call ptr %cond3.i(ptr noundef nonnull %config.i, ptr noundef %retval.0.i199) #6
  %cmp.i217 = icmp eq ptr %call5.i, null
  br i1 %cmp.i217, label %if.then7.i, label %if.end17.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.89) #6
  br label %do.end16.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %if.then7.i
  %fe5.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %120 = ptrtoint ptr %fe5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %fe5.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.94) #9
  br label %demod_attach_drxk.exit

if.end17.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %fe.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %121 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call5.i, ptr %fe.i, align 4
  %sec_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %call5.i, i32 0, i32 6
  %122 = ptrtoint ptr %sec_priv.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %chan, ptr %sec_priv.i, align 4
  %123 = load ptr, ptr %fe.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %123, i32 0, i32 1, i32 28
  %124 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %gate_ctrl.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 11
  %126 = ptrtoint ptr %gate_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %gate_ctrl.i, align 8
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl.i, align 4
  br label %demod_attach_drxk.exit

demod_attach_drxk.exit:                           ; preds = %if.end17.i, %do.end16.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %cleanup

if.else118:                                       ; preds = %if.else111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i220) #6
  %127 = ptrtoint ptr %val.i220 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %val.i220, align 1, !annotation !372
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i218) #6
  %128 = getelementptr inbounds [2 x i8], ptr %msg.i.i218, i32 0, i32 1
  %129 = ptrtoint ptr %msg.i.i218 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -16, ptr %msg.i.i218, align 1
  %130 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i219) #6
  %131 = getelementptr inbounds i8, ptr %msgs.i.i219, i32 4
  %132 = call ptr @memset(ptr %131, i32 255, i32 16)
  %133 = ptrtoint ptr %msgs.i.i219 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 30, ptr %msgs.i.i219, align 4
  %flags.i.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 0, i32 1
  %134 = ptrtoint ptr %flags.i.i221 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i.i221, align 2
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 2, ptr %131, align 4
  %buf.i.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 0, i32 3
  %136 = ptrtoint ptr %buf.i.i222 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %msg.i.i218, ptr %buf.i.i222, align 4
  %arrayinit.element6.i.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 1
  %137 = ptrtoint ptr %arrayinit.element6.i.i223 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 30, ptr %arrayinit.element6.i.i223, align 4
  %flags9.i.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 1, i32 1
  %138 = ptrtoint ptr %flags9.i.i224 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %flags9.i.i224, align 2
  %len10.i.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 1, i32 2
  %139 = ptrtoint ptr %len10.i.i225 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %len10.i.i225, align 4
  %buf11.i.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i219, i32 1, i32 3
  %140 = ptrtoint ptr %buf11.i.i226 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %val.i220, ptr %buf11.i.i226, align 4
  %call.i.i227 = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %msgs.i.i219, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i227)
  %cmp.i.not.i228 = icmp eq i32 %call.i.i227, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i219) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i218) #6
  br i1 %cmp.i.not.i228, label %if.end.i229, label %if.else118.port_has_stv0367.exit.thread_crit_edge

if.else118.port_has_stv0367.exit.thread_crit_edge: ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #8
  br label %port_has_stv0367.exit.thread

if.end.i229:                                      ; preds = %if.else118
  %141 = ptrtoint ptr %val.i220 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %val.i220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %142)
  %cmp1.not.i = icmp eq i8 %142, 96
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i229.port_has_stv0367.exit.thread_crit_edge

if.end.i229.port_has_stv0367.exit.thread_crit_edge: ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %port_has_stv0367.exit.thread

if.end4.i:                                        ; preds = %if.end.i229
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i16.i) #6
  %143 = getelementptr inbounds [2 x i8], ptr %msg.i16.i, i32 0, i32 1
  %144 = ptrtoint ptr %msg.i16.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -16, ptr %msg.i16.i, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i17.i) #6
  %146 = getelementptr inbounds i8, ptr %msgs.i17.i, i32 4
  %147 = call ptr @memset(ptr %146, i32 255, i32 16)
  %148 = ptrtoint ptr %msgs.i17.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 31, ptr %msgs.i17.i, align 4
  %flags.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i18.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i18.i, align 2
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 2, ptr %146, align 4
  %buf.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 0, i32 3
  %151 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %msg.i16.i, ptr %buf.i20.i, align 4
  %arrayinit.element6.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 1
  %152 = ptrtoint ptr %arrayinit.element6.i21.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 31, ptr %arrayinit.element6.i21.i, align 4
  %flags9.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 1, i32 1
  %153 = ptrtoint ptr %flags9.i22.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 1, ptr %flags9.i22.i, align 2
  %len10.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 1, i32 2
  %154 = ptrtoint ptr %len10.i23.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1, ptr %len10.i23.i, align 4
  %buf11.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i17.i, i32 1, i32 3
  %155 = ptrtoint ptr %buf11.i24.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %val.i220, ptr %buf11.i24.i, align 4
  %call.i25.i = call i32 @i2c_transfer(ptr noundef %retval.0.i199, ptr noundef nonnull %msgs.i17.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25.i)
  %cmp.i26.not.i = icmp eq i32 %call.i25.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i17.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i16.i) #6
  br i1 %cmp.i26.not.i, label %port_has_stv0367.exit, label %if.end4.i.port_has_stv0367.exit.thread_crit_edge

if.end4.i.port_has_stv0367.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %port_has_stv0367.exit.thread

port_has_stv0367.exit.thread:                     ; preds = %if.end4.i.port_has_stv0367.exit.thread_crit_edge, %if.end.i229.port_has_stv0367.exit.thread_crit_edge, %if.else118.port_has_stv0367.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i220) #6
  br label %do.end131

port_has_stv0367.exit:                            ; preds = %if.end4.i
  %156 = ptrtoint ptr %val.i220 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %val.i220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %157)
  %cmp11.not.i.not = icmp eq i8 %157, 96
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i220) #6
  br i1 %cmp11.not.i.not, label %if.then121, label %port_has_stv0367.exit.do.end131_crit_edge

port_has_stv0367.exit.do.end131_crit_edge:        ; preds = %port_has_stv0367.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end131

if.then121:                                       ; preds = %port_has_stv0367.exit
  call void @__sanitizer_cov_trace_pc() #8
  %demod_type122 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %158 = ptrtoint ptr %demod_type122 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %demod_type122, align 4
  %159 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %160) #9
  call fastcc void @demod_attach_stv0367(ptr noundef %chan, ptr noundef %retval.0.i199)
  br label %cleanup

do.end131:                                        ; preds = %port_has_stv0367.exit.do.end131_crit_edge, %port_has_stv0367.exit.thread
  %161 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %number.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %162) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %if.then121, %demod_attach_drxk.exit, %do.end109, %sw.epilog102.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %do.end71, %do.end67, %do.end62, %do.end53, %do.end41
  %retval.0 = phi i32 [ -19, %do.end71 ], [ -19, %do.end67 ], [ -19, %do.end62 ], [ -5, %do.end109 ], [ -19, %do.end131 ], [ %call82, %lor.lhs.false.cleanup_crit_edge ], [ %call82, %if.then77.cleanup_crit_edge ], [ -19, %if.end89.cleanup_crit_edge ], [ 0, %sw.epilog102.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %demod_attach_drxk.exit ], [ 0, %do.end53 ], [ 0, %do.end41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_attach_probe(ptr nocapture noundef %chan) #0 align 64 {
entry:
  %config.i = alloca %struct.tda18212_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_type = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 10
  %0 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demod_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %entry.sw.bb3_crit_edge
    i32 33, label %entry.sw.bb3_crit_edge46
    i32 34, label %entry.sw.bb3_crit_edge47
    i32 35, label %entry.sw.bb3_crit_edge48
    i32 37, label %entry.sw.bb3_crit_edge49
    i32 32, label %sw.bb6
  ]

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @tuner_attach_stv6110(ptr noundef %chan)
  br label %return

sw.bb1:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %pci_dev.i = getelementptr inbounds %struct.ngene, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %number.i.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i.i = icmp slt i32 %8, 2
  %i2c_adapter.i.i = getelementptr inbounds %struct.ngene, ptr %4, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i.i = getelementptr %struct.ngene, ptr %4, i32 0, i32 34, i32 1, i32 1
  %retval.0.i.i = select i1 %cmp.i.i, ptr %i2c_adapter.i.i, ptr %i2c_adapter4.i.i
  %fe2.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %9 = ptrtoint ptr %fe2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe2.i, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %sw.bb1.if.end.i_crit_edge, label %if.then.i

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 %12(ptr noundef %10, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.if.end.i_crit_edge
  %call8.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.103) #6
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %cond.end.i, label %if.end.i.if.then13.i_crit_edge

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

cond.end.i:                                       ; preds = %if.end.i
  %call10.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.104) #6
  %call11.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.103) #6
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end.i, label %cond.end.i.if.then13.i_crit_edge

cond.end.i.if.then13.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

if.then13.i:                                      ; preds = %cond.end.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  %cond53.i = phi ptr [ %call11.i, %cond.end.i.if.then13.i_crit_edge ], [ %call8.i, %if.end.i.if.then13.i_crit_edge ]
  %13 = ptrtoint ptr %fe2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe2.i, align 4
  %call15.i = tail call ptr %cond53.i(ptr noundef %14, ptr noundef %retval.0.i.i, i8 noundef zeroext 96) #6
  %cmp.i = icmp eq ptr %call15.i, null
  br i1 %cmp.i, label %if.then16.i, label %if.then13.i.if.end19.i_crit_edge

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.103) #6
  br label %if.end19.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.then16.i, %if.then13.i.if.end19.i_crit_edge
  %__r.0.i = phi ptr [ null, %if.then16.i ], [ %call15.i, %if.then13.i.if.end19.i_crit_edge ], [ null, %do.end.i ]
  %15 = ptrtoint ptr %fe2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe2.i, align 4
  %i2c_gate_ctrl23.i = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl23.i, align 4
  %tobool24.not.i = icmp eq ptr %18, null
  br i1 %tobool24.not.i, label %if.end19.i.if.end31.i_crit_edge, label %if.then25.i

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call30.i = tail call i32 %18(ptr noundef %16, i32 noundef 0) #6
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then25.i, %if.end19.i.if.end31.i_crit_edge
  %tobool32.not.i = icmp eq ptr %__r.0.i, null
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end31.i.return_crit_edge

if.end31.i.return_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end36.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.108) #9
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49
  %dev.i13 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 4
  %19 = ptrtoint ptr %dev.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i13, align 8
  %pci_dev.i14 = getelementptr inbounds %struct.ngene, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pci_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev.i14, align 4
  %dev1.i15 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %number.i.i16 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %23 = ptrtoint ptr %number.i.i16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i.i17 = icmp slt i32 %24, 2
  %i2c_adapter.i.i18 = getelementptr inbounds %struct.ngene, ptr %20, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i.i19 = getelementptr %struct.ngene, ptr %20, i32 0, i32 34, i32 1, i32 1
  %retval.0.i.i20 = select i1 %cmp.i.i17, ptr %i2c_adapter.i.i18, ptr %i2c_adapter4.i.i19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %25 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 3
  %28 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 4
  %29 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 5
  %30 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 6
  %31 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 7
  %32 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 8
  %33 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 9
  %34 = getelementptr inbounds %struct.tda18212_config, ptr %config.i, i32 0, i32 10
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3550, ptr %config.i, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3700, ptr %25, align 2
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 4150, ptr %26, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %27, align 2
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 3250, ptr %28, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4000, ptr %29, align 2
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4000, ptr %30, align 4
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 5000, ptr %31, align 2
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %32, align 4
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %33, align 2
  %fe2.i21 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %45 = ptrtoint ptr %fe2.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fe2.i21, align 4
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %34, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i22, i8 96, i8 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i23 = icmp eq i32 %1, 2
  br i1 %cmp.i23, label %if.then.i24, label %sw.bb3.if.end.i25_crit_edge

sw.bb3.if.end.i25_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

if.then.i24:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i8 %conv.i to i16
  tail call fastcc void @tuner_tda18212_ping(ptr noundef %chan, ptr noundef %retval.0.i.i20, i16 noundef zeroext %conv4.i) #6
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i24, %sw.bb3.if.end.i25_crit_edge
  %call6.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef %retval.0.i.i20, i8 noundef zeroext %conv.i, ptr noundef nonnull %config.i) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %do.end.i26, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 2
  %48 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call6.i, ptr %i2c_client.i, align 8
  %i2c_client_fe.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 3
  %49 = ptrtoint ptr %i2c_client_fe.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %i2c_client_fe.i, align 4
  br label %tuner_attach_tda18212.exit

do.end.i26:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i15, ptr noundef nonnull @.str.111) #9
  br label %tuner_attach_tda18212.exit

tuner_attach_tda18212.exit:                       ; preds = %do.end.i26, %if.end9.i
  %retval.0.i27 = phi i32 [ 0, %if.end9.i ], [ -19, %do.end.i26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %return

sw.bb6:                                           ; preds = %entry
  %dev.i28 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 4
  %50 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i28, align 8
  %pci_dev.i29 = getelementptr inbounds %struct.ngene, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pci_dev.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_dev.i29, align 4
  %dev1.i30 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %number.i.i31 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %54 = ptrtoint ptr %number.i.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i.i32 = icmp slt i32 %55, 2
  %i2c_adapter.i.i33 = getelementptr inbounds %struct.ngene, ptr %51, i32 0, i32 34, i32 0, i32 1
  %i2c_adapter4.i.i34 = getelementptr %struct.ngene, ptr %51, i32 0, i32 34, i32 1, i32 1
  %retval.0.i.i35 = select i1 %cmp.i.i32, ptr %i2c_adapter.i.i33, ptr %i2c_adapter4.i.i34
  %and.i36 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  %conv.i38 = select i1 %tobool.not.i37, i8 100, i8 103
  %call2.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %cond.end.i40, label %sw.bb6.if.then.i42_crit_edge

sw.bb6.if.then.i42_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i42

cond.end.i40:                                     ; preds = %sw.bb6
  %call4.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.118) #6
  %call5.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #6
  %tobool7.not.i39 = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i39, label %do.end.i43, label %cond.end.i40.if.then.i42_crit_edge

cond.end.i40.if.then.i42_crit_edge:               ; preds = %cond.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i42

if.then.i42:                                      ; preds = %cond.end.i40.if.then.i42_crit_edge, %sw.bb6.if.then.i42_crit_edge
  %cond669.i = phi ptr [ %call5.i, %cond.end.i40.if.then.i42_crit_edge ], [ %call2.i, %sw.bb6.if.then.i42_crit_edge ]
  %fe8.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %56 = ptrtoint ptr %fe8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fe8.i, align 4
  %call9.i = tail call ptr %cond669.i(ptr noundef %57, ptr noundef %retval.0.i.i35, i8 noundef zeroext %conv.i38) #6
  %cmp.i41 = icmp eq ptr %call9.i, null
  br i1 %cmp.i41, label %if.then11.i, label %if.then.i42.return_crit_edge

if.then.i42.return_crit_edge:                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then11.i:                                      ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.117) #6
  br label %if.then16.i44

do.end.i43:                                       ; preds = %cond.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #9
  br label %if.then16.i44

if.then16.i44:                                    ; preds = %do.end.i43, %if.then11.i
  %call19.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #6
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %cond.end25.i, label %if.then16.i44.if.then28.i_crit_edge

if.then16.i44.if.then28.i_crit_edge:              ; preds = %if.then16.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

cond.end25.i:                                     ; preds = %if.then16.i44
  %call23.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.118) #6
  %call24.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #6
  %tobool27.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool27.not.i, label %do.end41.i, label %cond.end25.i.if.then28.i_crit_edge

cond.end25.i.if.then28.i_crit_edge:               ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

if.then28.i:                                      ; preds = %cond.end25.i.if.then28.i_crit_edge, %if.then16.i44.if.then28.i_crit_edge
  %cond2674.i = phi ptr [ %call24.i, %cond.end25.i.if.then28.i_crit_edge ], [ %call19.i, %if.then16.i44.if.then28.i_crit_edge ]
  %fe29.i = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %58 = ptrtoint ptr %fe29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fe29.i, align 4
  %60 = and i8 %conv.i38, 99
  %call33.i = tail call ptr %cond2674.i(ptr noundef %59, ptr noundef %retval.0.i.i35, i8 noundef zeroext %60) #6
  %cmp34.i = icmp eq ptr %call33.i, null
  br i1 %cmp34.i, label %if.then36.i, label %if.then28.i.return_crit_edge

if.then28.i.return_crit_edge:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then36.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.117) #6
  br label %do.end50.i

do.end41.i:                                       ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #9
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end41.i, %if.then36.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i30, ptr noundef nonnull @.str.124) #9
  br label %return

return:                                           ; preds = %do.end50.i, %if.then28.i.return_crit_edge, %if.then.i42.return_crit_edge, %tuner_attach_tda18212.exit, %do.end36.i, %if.end31.i.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i27, %tuner_attach_tda18212.exit ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ], [ -19, %do.end36.i ], [ 0, %if.end31.i.return_crit_edge ], [ -19, %do.end50.i ], [ 0, %if.then.i42.return_crit_edge ], [ 0, %if.then28.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_xo2(ptr nocapture noundef readonly %chan, ptr noundef %i2c) unnamed_addr #0 align 64 {
entry:
  %msg.i.i29 = alloca %struct.i2c_msg, align 4
  %msg.i30 = alloca [2 x i8], align 1
  %msg.i.i24 = alloca %struct.i2c_msg, align 4
  %msg.i25 = alloca [2 x i8], align 1
  %msg.i.i19 = alloca %struct.i2c_msg, align 4
  %msg.i20 = alloca [2 x i8], align 1
  %msg.i.i14 = alloca %struct.i2c_msg, align 4
  %msg.i15 = alloca [2 x i8], align 1
  %msg.i.i9 = alloca %struct.i2c_msg, align 4
  %msg.i10 = alloca [2 x i8], align 1
  %msg.i.i4 = alloca %struct.i2c_msg, align 4
  %msg.i5 = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x i8], align 1
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !372
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data, align 1, !annotation !372
  %6 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !372
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %8 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %9 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 16, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len5.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp2.not = icmp eq i8 %20, 1
  br i1 %cmp2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %22) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %23 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %24 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 255, i32 16)
  %26 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 16, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %24, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 16, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %32 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len5.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %val, ptr %buf7.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp8.not = icmp eq i8 %35, 0
  br i1 %cmp8.not, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #6
  %36 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %37 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %msg.i, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 16, ptr %msg.i.i, align 4
  %flags.i.i1 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i.i1, align 2
  %buf.i.i2 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i.i2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i, ptr %buf.i.i2, align 4
  %call.i.i3 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #6
  call void @msleep(i32 noundef 100) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i5) #6
  %44 = getelementptr inbounds [2 x i8], ptr %msg.i5, i32 0, i32 1
  %45 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %msg.i5, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i4) #6
  %47 = getelementptr inbounds i8, ptr %msg.i.i4, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %49 = ptrtoint ptr %msg.i.i4 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 16, ptr %msg.i.i4, align 4
  %flags.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i6 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i6, align 2
  %buf.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i5, ptr %buf.i.i7, align 4
  %call.i.i8 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i5) #6
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i10) #6
  %52 = getelementptr inbounds [2 x i8], ptr %msg.i10, i32 0, i32 1
  %53 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %msg.i10, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 7, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i9) #6
  %55 = getelementptr inbounds i8, ptr %msg.i.i9, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %57 = ptrtoint ptr %msg.i.i9 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 16, ptr %msg.i.i9, align 4
  %flags.i.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i9, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i.i11, align 2
  %buf.i.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i9, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i.i12 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i10, ptr %buf.i.i12, align 4
  %call.i.i13 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i9, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i9) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i10) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i15) #6
  %60 = getelementptr inbounds [2 x i8], ptr %msg.i15, i32 0, i32 1
  %61 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 9, ptr %msg.i15, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i14) #6
  %63 = getelementptr inbounds i8, ptr %msg.i.i14, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %msg.i.i14 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16, ptr %msg.i.i14, align 4
  %flags.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i14, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i16, align 2
  %buf.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i14, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i15, ptr %buf.i.i17, align 4
  %call.i.i18 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i20) #6
  %68 = getelementptr inbounds [2 x i8], ptr %msg.i20, i32 0, i32 1
  %69 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %msg.i20, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i19) #6
  %71 = getelementptr inbounds i8, ptr %msg.i.i19, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 196607, ptr %71, align 4
  %73 = ptrtoint ptr %msg.i.i19 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 16, ptr %msg.i.i19, align 4
  %flags.i.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i19, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i.i21 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i.i21, align 2
  %buf.i.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i19, i32 0, i32 3
  %75 = ptrtoint ptr %buf.i.i22 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i20, ptr %buf.i.i22, align 4
  %call.i.i23 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i19, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i19) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i20) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i25) #6
  %76 = getelementptr inbounds [2 x i8], ptr %msg.i25, i32 0, i32 1
  %77 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 11, ptr %msg.i25, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #6
  %79 = getelementptr inbounds i8, ptr %msg.i.i24, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 16, ptr %msg.i.i24, align 4
  %flags.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i24, i32 0, i32 1
  %82 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags.i.i26, align 2
  %buf.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i24, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i.i27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i25, ptr %buf.i.i27, align 4
  %call.i.i28 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i25) #6
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i30) #6
  %84 = getelementptr inbounds [2 x i8], ptr %msg.i30, i32 0, i32 1
  %85 = ptrtoint ptr %msg.i30 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 8, ptr %msg.i30, align 1
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -121, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i29) #6
  %87 = getelementptr inbounds i8, ptr %msg.i.i29, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 196607, ptr %87, align 4
  %89 = ptrtoint ptr %msg.i.i29 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 16, ptr %msg.i.i29, align 4
  %flags.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i.i31 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i.i31, align 2
  %buf.i.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i.i32 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i30, ptr %buf.i.i32, align 4
  %call.i.i33 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i.i29, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @demod_attach_cxd28xx(ptr noundef %chan, ptr noundef %i2c, i32 noundef %osc24) unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.cxd2841er_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #6
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cfg, align 4
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %.tr = trunc i32 %6 to i8
  %7 = shl i8 %.tr, 1
  %8 = and i8 %7, 2
  %conv = or i8 %8, -40
  store i8 %conv, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osc24)
  %tobool2.not = icmp ne i32 %osc24, 0
  %cond3 = zext i1 %tobool2.not to i32
  %xtal = getelementptr inbounds %struct.cxd2841er_config, ptr %cfg, i32 0, i32 1
  %9 = ptrtoint ptr %xtal to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond3, ptr %xtal, align 4
  %flags = getelementptr inbounds %struct.cxd2841er_config, ptr %cfg, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 246, ptr %flags, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.62) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.63) #6
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.62) #6
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond73 = phi ptr [ %call6, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call9 = call ptr %cond73(ptr noundef nonnull %cfg, ptr noundef %i2c) #6
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.62) #6
  br label %do.end20

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  br label %do.end20

do.end20:                                         ; preds = %do.end, %if.then11
  %fe5 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %11 = ptrtoint ptr %fe5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fe5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67) #9
  br label %cleanup

if.end21:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %fe, align 4
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call9, i32 0, i32 6
  %13 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chan, ptr %sec_priv, align 4
  %14 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %gate_ctrl = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 11
  %17 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %gate_ctrl, align 8
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @demod_attach_stv0910(ptr nocapture noundef %chan, ptr noundef %i2c) unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.stv0910_cfg, align 4
  %lnbcfg = alloca %struct.lnbh25_config, align 2
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #6
  %4 = call ptr @memcpy(ptr %cfg, ptr @stv0910_p, i32 12)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnbcfg) #6
  %5 = ptrtoint ptr %lnbcfg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6145, ptr %lnbcfg, align 2
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #6
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond4 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %and = and i32 %7, 1
  %call5 = call ptr %cond4(ptr noundef %i2c, ptr noundef nonnull %cfg, i32 noundef %and) #6
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end40.thread

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.69) #6
  br label %if.then12

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #9
  br label %if.then12

if.end40.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %fe, align 4
  br label %if.end47

if.then12:                                        ; preds = %do.end, %if.then6
  %fe6 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %9 = ptrtoint ptr %fe6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fe6, align 4
  %adr = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 1
  %10 = ptrtoint ptr %adr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 108, ptr %adr, align 4
  %call15 = call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.then12.if.then24_crit_edge

if.then12.if.then24_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

cond.end21:                                       ; preds = %if.then12
  %call19 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.70) #6
  %call20 = call ptr @__symbol_get(ptr noundef nonnull @.str.69) #6
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end34, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.then12.if.then24_crit_edge
  %cond2214 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.then12.if.then24_crit_edge ]
  %number25 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %number25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number25, align 4
  %and26 = and i32 %12, 1
  %call27 = call ptr %cond2214(ptr noundef %i2c, ptr noundef nonnull %cfg, i32 noundef %and26) #6
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then29, label %if.end40

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.69) #6
  br label %do.end46

do.end34:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #9
  br label %do.end46

if.end40:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %fe6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %fe6, align 4
  br label %if.end47

do.end46:                                         ; preds = %do.end34, %if.then29
  %14 = ptrtoint ptr %fe6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fe6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end40, %if.end40.thread
  %fe817 = phi ptr [ %fe, %if.end40.thread ], [ %fe6, %if.end40 ]
  %number48 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %number48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number48, align 4
  %.tr = trunc i32 %16 to i8
  %17 = shl i8 %.tr, 1
  %18 = and i8 %17, 2
  %conv = or i8 %18, 24
  %19 = ptrtoint ptr %lnbcfg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %lnbcfg, align 2
  %call54 = call ptr @__symbol_get(ptr noundef nonnull @.str.78) #6
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %cond.end60, label %if.end47.if.then63_crit_edge

if.end47.if.then63_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

cond.end60:                                       ; preds = %if.end47
  %call58 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #6
  %call59 = call ptr @__symbol_get(ptr noundef nonnull @.str.78) #6
  %tobool62.not = icmp eq ptr %call59, null
  br i1 %tobool62.not, label %do.end73, label %cond.end60.if.then63_crit_edge

cond.end60.if.then63_crit_edge:                   ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.then63:                                        ; preds = %cond.end60.if.then63_crit_edge, %if.end47.if.then63_crit_edge
  %cond6123 = phi ptr [ %call59, %cond.end60.if.then63_crit_edge ], [ %call54, %if.end47.if.then63_crit_edge ]
  %20 = ptrtoint ptr %fe817 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fe817, align 4
  %call65 = call ptr %cond6123(ptr noundef %21, ptr noundef nonnull %lnbcfg, ptr noundef %i2c) #6
  %cmp66 = icmp eq ptr %call65, null
  br i1 %cmp66, label %if.then68, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.78) #6
  br label %if.then79

do.end73:                                         ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #9
  br label %if.then79

if.then79:                                        ; preds = %do.end73, %if.then68
  %22 = ptrtoint ptr %number48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number48, align 4
  %.tr1 = trunc i32 %23 to i8
  %24 = shl i8 %.tr1, 1
  %25 = and i8 %24, 2
  %conv85 = or i8 %25, 16
  %26 = ptrtoint ptr %lnbcfg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv85, ptr %lnbcfg, align 2
  %call89 = call ptr @__symbol_get(ptr noundef nonnull @.str.78) #6
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %cond.end95, label %if.then79.if.then98_crit_edge

if.then79.if.then98_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

cond.end95:                                       ; preds = %if.then79
  %call93 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.79) #6
  %call94 = call ptr @__symbol_get(ptr noundef nonnull @.str.78) #6
  %tobool97.not = icmp eq ptr %call94, null
  br i1 %tobool97.not, label %do.end108, label %cond.end95.if.then98_crit_edge

cond.end95.if.then98_crit_edge:                   ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

if.then98:                                        ; preds = %cond.end95.if.then98_crit_edge, %if.then79.if.then98_crit_edge
  %cond9630 = phi ptr [ %call94, %cond.end95.if.then98_crit_edge ], [ %call89, %if.then79.if.then98_crit_edge ]
  %27 = ptrtoint ptr %fe817 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fe817, align 4
  %call100 = call ptr %cond9630(ptr noundef %28, ptr noundef nonnull %lnbcfg, ptr noundef %i2c) #6
  %cmp101 = icmp eq ptr %call100, null
  br i1 %cmp101, label %if.then103, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.78) #6
  br label %do.end117

do.end108:                                        ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #9
  br label %do.end117

do.end117:                                        ; preds = %do.end108, %if.then103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.86) #9
  %29 = ptrtoint ptr %fe817 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fe817, align 4
  call void @dvb_frontend_detach(ptr noundef %30) #6
  %31 = ptrtoint ptr %fe817 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fe817, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %if.then98.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %do.end46
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnbcfg) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @demod_attach_stv0367(ptr noundef %chan, ptr noundef %i2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.96) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.97) #6
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.96) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond3 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %and = and i32 %5, 1
  %arrayidx = getelementptr [2 x %struct.stv0367_config], ptr @ddb_stv0367_config, i32 0, i32 %and
  %call5 = tail call ptr %cond3(ptr noundef %arrayidx, ptr noundef %i2c) #6
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.96) #6
  br label %do.end15

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #9
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.then6
  %fe5 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %6 = ptrtoint ptr %fe5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fe5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.101) #9
  br label %cleanup

if.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %7 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %fe, align 4
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call5, i32 0, i32 6
  %8 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chan, ptr %sec_priv, align 4
  %9 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %gate_ctrl = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 11
  %12 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %gate_ctrl, align 8
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxk_gate_ctrl(ptr noundef %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %pll_mutex = getelementptr inbounds %struct.ngene, ptr %3, i32 0, i32 27
  tail call void @down(ptr noundef %pll_mutex) #6
  %gate_ctrl = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gate_ctrl, align 8
  %call = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gate_ctrl1 = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %gate_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gate_ctrl1, align 8
  %call2 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #6
  %dev3 = getelementptr inbounds %struct.ngene_channel, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  %pll_mutex4 = getelementptr inbounds %struct.ngene, ptr %9, i32 0, i32 27
  tail call void @up(ptr noundef %pll_mutex4) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tuner_tda18212_ping(ptr nocapture noundef readonly %chan, ptr noundef %i2c, i16 noundef zeroext %adr) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i4 = alloca i8, align 1
  %msgs.i5 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %tda_id = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tda_id) #6
  %4 = ptrtoint ptr %tda_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tda_id, align 1, !annotation !372
  %5 = getelementptr inbounds [2 x i8], ptr %tda_id, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !372
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tuner_tda18212_ping.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tuner_tda18212_ping, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tuner_tda18212_ping.__UNIQUE_ID_ddebug383, ptr noundef %dev1, ptr noundef nonnull @.str.114) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %7 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %if.then5

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %10(ptr noundef %8, i32 noundef 1) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %do.end.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %11 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %12 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %conv.i = and i16 %adr, 255
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %12, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %20 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len5.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tda_id, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i.not, label %if.end11.if.end31_crit_edge, label %do.body15

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tuner_tda18212_ping.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tuner_tda18212_ping, %if.then27)) #6
          to label %if.end31 [label %if.then27], !srcloc !373

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tuner_tda18212_ping.__UNIQUE_ID_ddebug384, ptr noundef %dev1, ptr noundef nonnull @.str.115) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.body15, %if.end11.if.end31_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i4)
  %22 = ptrtoint ptr %reg.addr.i4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reg.addr.i4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i5) #6
  %23 = getelementptr inbounds i8, ptr %msgs.i5, i32 4
  %24 = call ptr @memset(ptr %23, i32 255, i32 16)
  %25 = ptrtoint ptr %msgs.i5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %msgs.i5, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i7, align 2
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %23, align 4
  %buf.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reg.addr.i4, ptr %buf.i9, align 4
  %arrayinit.element.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 1
  %29 = ptrtoint ptr %arrayinit.element.i10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %arrayinit.element.i10, align 4
  %flags4.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 1, i32 1
  %30 = ptrtoint ptr %flags4.i11 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags4.i11, align 2
  %len5.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 1, i32 2
  %31 = ptrtoint ptr %len5.i12 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %len5.i12, align 4
  %buf7.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i5, i32 1, i32 3
  %32 = ptrtoint ptr %buf7.i13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tda_id, ptr %buf7.i13, align 4
  %call.i14 = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i5, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i14)
  %cmp.i15.not = icmp eq i32 %call.i14, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i4)
  br i1 %cmp.i15.not, label %if.end31.if.end41_crit_edge, label %do.end40

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.116) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end31.if.end41_crit_edge
  %33 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl44 = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 1, i32 28
  %35 = ptrtoint ptr %i2c_gate_ctrl44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_gate_ctrl44, align 4
  %tobool45.not = icmp eq ptr %36, null
  br i1 %tobool45.not, label %if.end41.if.end52_crit_edge, label %if.then46

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call i32 %36(ptr noundef %34, i32 noundef 0) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end41.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tda_id) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @demod_attach_lg330x(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.131) #6
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond58 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %i2c_adapter = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 1
  %call5 = tail call ptr %cond58(ptr noundef nonnull @aver_m780, i8 noundef zeroext 89, ptr noundef %i2c_adapter) #6
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.130) #6
  br label %do.end15

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #9
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.then6
  %fe60 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %4 = ptrtoint ptr %fe60 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fe60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.135) #9
  br label %cleanup

if.end16:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %fe, align 4
  %call19 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.137) #6
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %cond.end25, label %if.end16.if.then28_crit_edge

if.end16.if.then28_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

cond.end25:                                       ; preds = %if.end16
  %call23 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.138) #6
  %call24 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.137) #6
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %do.end38, label %cond.end25.if.then28_crit_edge

cond.end25.if.then28_crit_edge:                   ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %cond.end25.if.then28_crit_edge, %if.end16.if.then28_crit_edge
  %cond2665 = phi ptr [ %call24, %cond.end25.if.then28_crit_edge ], [ %call19, %if.end16.if.then28_crit_edge ]
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 4
  %call31 = tail call ptr %cond2665(ptr noundef %7, ptr noundef %i2c_adapter, ptr noundef nonnull @m780_tunerconfig, i16 noundef zeroext 0) #6
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then33, label %if.then28.if.end41_crit_edge

if.then28.if.end41_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.137) #6
  br label %if.end41

do.end38:                                         ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.then33, %if.then28.if.end41_crit_edge
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe, align 4
  %tobool44.not = icmp eq ptr %9, null
  %cond45 = select i1 %tobool44.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end15
  %retval.0 = phi i32 [ -19, %do.end15 ], [ %cond45, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @demod_attach_drxd(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %card_info = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_info, align 8
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.ngene_info, ptr %5, i32 0, i32 5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.161) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.162) #6
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.161) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond33 = phi ptr [ %call4, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %i2c_adapter = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %pci_dev7 = getelementptr inbounds %struct.ngene, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call9 = tail call ptr %cond33(ptr noundef %9, ptr noundef %chan, ptr noundef %i2c_adapter, ptr noundef %dev8) #6
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.161) #6
  br label %do.end19

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #9
  br label %do.end19

if.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %fe, align 4
  br label %cleanup

do.end19:                                         ; preds = %do.end, %if.then10
  %fe35 = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %15 = ptrtoint ptr %fe35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %fe35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.166) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end12
  %retval.0 = phi i32 [ -19, %do.end19 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_attach_dtt7520x(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %card_info = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_info, align 8
  %number = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.ngene_info, ptr %5, i32 0, i32 5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #6
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond32 = phi ptr [ %call4, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 12
  %10 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe, align 4
  %pll_address = getelementptr inbounds %struct.drxd_config, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %pll_address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_address, align 1
  %conv = zext i8 %13 to i32
  %i2c_adapter = getelementptr inbounds %struct.ngene_channel, ptr %chan, i32 0, i32 1
  %pll_type = getelementptr inbounds %struct.drxd_config, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %pll_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pll_type, align 2
  %conv6 = zext i8 %15 to i32
  %call7 = tail call ptr %cond32(ptr noundef %11, i32 noundef %conv, ptr noundef %i2c_adapter, i32 noundef %conv6) #6
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then9, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #6
  br label %do.end17

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.then9
  %pll_type18 = getelementptr inbounds %struct.drxd_config, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %pll_type18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll_type18, align 2
  %conv19 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.173, i32 noundef %conv19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end17 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal signext i16 @osc_deviation(ptr noundef %priv, i16 noundef signext %deviation, i32 noundef %flag) #0 align 64 {
entry:
  %msg.i1.i.i20 = alloca [2 x i8], align 1
  %msgs.i2.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i21 = alloca [2 x i8], align 1
  %msgs.i.i.i22 = alloca [2 x %struct.i2c_msg], align 4
  %EETag.i.i23 = alloca [3 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %msg.i11.i.i = alloca [2 x i8], align 1
  %msgs.i12.i.i = alloca [2 x %struct.i2c_msg], align 4
  %m.i.i.i = alloca [3 x i8], align 1
  %msg.i1.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %EETag.i.i = alloca [3 x i8], align 1
  %Tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pci_dev = getelementptr inbounds %struct.ngene, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %i2c_adapter = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool.not = icmp eq i32 %flag, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i16 %deviation to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.143, i32 noundef %conv) #9
  %number = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %conv2 = add i32 %5, 4096
  %6 = lshr i16 %deviation, 8
  %conv1.i = trunc i16 %6 to i8
  %conv3.i = trunc i16 %deviation to i8
  %parent.i.i = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 1, i32 9, i32 1
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %EETag.i.i) #6
  %9 = ptrtoint ptr %EETag.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %EETag.i.i, align 1, !annotation !372
  %10 = getelementptr inbounds [3 x i8], ptr %EETag.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !372
  %12 = getelementptr inbounds [3 x i8], ptr %EETag.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %12, align 1, !annotation !372
  %14 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %15 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayinit.element7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %flags10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %len11.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %buf13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %conv16.i.i = and i32 %conv2, 65535
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end20.i.i.while.body.i.i_crit_edge, %if.then
  %Addr.052.i.i = phi i16 [ 256, %if.then ], [ %add25.i.i, %if.end20.i.i.while.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %18 = lshr i16 %Addr.052.i.i, 8
  %conv1.i.i.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i.i.i, ptr %msg.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %Addr.052.i.i to i8
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i.i.i, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %21 = call ptr @memset(ptr %15, i32 255, i32 16)
  %22 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 80, ptr %msgs.i.i.i, align 4
  %23 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i.i.i, align 2
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %15, align 4
  %25 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %buf.i.i.i, align 4
  %26 = ptrtoint ptr %arrayinit.element7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 80, ptr %arrayinit.element7.i.i.i, align 4
  %27 = ptrtoint ptr %flags10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags10.i.i.i, align 2
  %28 = ptrtoint ptr %len11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3, ptr %len11.i.i.i, align 4
  %29 = ptrtoint ptr %buf13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %EETag.i.i, ptr %buf13.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i, label %i2c_read_eeprom.exit.i.i

i2c_read_eeprom.exit.i.i:                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.156) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  br label %eeprom_write_ushort.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %30 = ptrtoint ptr %EETag.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %EETag.i.i, align 1
  %conv3.i.i = zext i8 %31 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %10, align 1
  %conv5.i.i = zext i8 %33 to i32
  %or.i.i = or i32 %shl.i.i, %conv5.i.i
  %trunc.i.i = trunc i32 %or.i.i to i16
  %34 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.187)
  switch i16 %trunc.i.i, label %if.end14.i.i [
    i16 0, label %if.end.i.i.eeprom_write_ushort.exit_crit_edge
    i16 -1, label %if.end.i.i.eeprom_write_ushort.exit_crit_edge156
  ]

if.end.i.i.eeprom_write_ushort.exit_crit_edge156: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %eeprom_write_ushort.exit

if.end.i.i.eeprom_write_ushort.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %eeprom_write_ushort.exit

if.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv16.i.i)
  %cmp17.i.i = icmp eq i32 %or.i.i, %conv16.i.i
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr.i.i = load i8, ptr %12, align 1
  br i1 %cmp17.i.i, label %if.end14.i.i.while.end.i.i_crit_edge, label %if.end20.i.i

if.end14.i.i.while.end.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %conv22.i.i = zext i8 %.pr.i.i to i16
  %add23.i.i = add nuw nsw i16 %Addr.052.i.i, 3
  %add25.i.i = add nuw nsw i16 %add23.i.i, %conv22.i.i
  %cmp.i.i = icmp ult i16 %add25.i.i, 4077
  br i1 %cmp.i.i, label %if.end20.i.i.while.body.i.i_crit_edge, label %if.end20.i.i.while.end.i.i_crit_edge

if.end20.i.i.while.end.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end20.i.i.while.body.i.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end20.i.i.while.end.i.i_crit_edge, %if.end14.i.i.while.end.i.i_crit_edge
  %or.lcssa64.i.i = phi i32 [ %conv16.i.i, %if.end14.i.i.while.end.i.i_crit_edge ], [ %or.i.i, %if.end20.i.i.while.end.i.i_crit_edge ]
  %Addr.0.lcssa51.i.i = phi i16 [ %Addr.052.i.i, %if.end14.i.i.while.end.i.i_crit_edge ], [ %add25.i.i, %if.end20.i.i.while.end.i.i_crit_edge ]
  %narrow.le.i.i = add nuw nsw i16 %Addr.0.lcssa51.i.i, 3
  %add1.le.i.i = zext i16 %narrow.le.i.i to i32
  %conv31.i.i = zext i8 %.pr.i.i to i32
  %add32.i.i = add nuw nsw i32 %add1.le.i.i, %conv31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %add32.i.i)
  %cmp33.i.i = icmp ugt i32 %add32.i.i, 4080
  br i1 %cmp33.i.i, label %do.end.i.i, label %if.end39.i.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.148, i32 noundef %or.lcssa64.i.i, i32 noundef %conv31.i.i) #9
  br label %eeprom_write_ushort.exit

if.end39.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i.i)
  %cmp42.i.i = icmp ult i8 %.pr.i.i, 2
  br i1 %cmp42.i.i, label %if.end39.i.i.eeprom_write_ushort.exit_crit_edge, label %if.end45.i.i

if.end39.i.i.eeprom_write_ushort.exit_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %eeprom_write_ushort.exit

if.end45.i.i:                                     ; preds = %if.end39.i.i
  %36 = getelementptr inbounds [3 x i8], ptr %m.i.i.i, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %m.i.i.i, i32 0, i32 2
  %38 = getelementptr inbounds i8, ptr %msg.i1.i.i, i32 4
  %flags.i5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 1
  %buf.i6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 3
  %39 = getelementptr inbounds [2 x i8], ptr %msg.i11.i.i, i32 0, i32 1
  %40 = getelementptr inbounds i8, ptr %msgs.i12.i.i, i32 4
  %flags.i16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 0, i32 1
  %buf.i18.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 0, i32 3
  %arrayinit.element7.i19.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 1
  %flags10.i20.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 1, i32 1
  %len11.i21.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 1, i32 2
  %buf13.i22.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i12.i.i, i32 1, i32 3
  %41 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %m.i.i.i) #6
  %43 = lshr i16 %narrow.le.i.i, 8
  %conv1.i3.i.i = trunc i16 %43 to i8
  %44 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv1.i3.i.i, ptr %m.i.i.i, align 1
  %conv3.i4.i.i = trunc i16 %narrow.le.i.i to i8
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv3.i4.i.i, ptr %36, align 1
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv1.i, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i.i) #6
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 262143, ptr %38, align 4
  %48 = ptrtoint ptr %msg.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 80, ptr %msg.i1.i.i, align 4
  %49 = ptrtoint ptr %flags.i5.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i5.i.i, align 2
  %50 = ptrtoint ptr %buf.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m.i.i.i, ptr %buf.i6.i.i, align 4
  %call.i7.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msg.i1.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7.i.i)
  %cmp.not.i8.i.i = icmp eq i32 %call.i7.i.i, 1
  br i1 %cmp.not.i8.i.i, label %i2c_write_eeprom.exit.i.i, label %if.end45.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge

if.end45.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_write_eeprom.exit.thread.i.i

i2c_write_eeprom.exit.thread.i.i:                 ; preds = %for.inc.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge, %if.end45.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge
  %.lcssa58.i.i = phi ptr [ %42, %if.end45.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge ], [ %68, %for.inc.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %.lcssa58.i.i, ptr noundef nonnull @.str.158) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %m.i.i.i) #6
  br label %eeprom_write_ushort.exit

i2c_write_eeprom.exit.i.i:                        ; preds = %if.end45.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %m.i.i.i) #6
  br label %while.body58.i.i

while.body58.i.i:                                 ; preds = %cleanup.i.i.while.body58.i.i_crit_edge, %i2c_write_eeprom.exit.i.i
  %retry.053.i.i = phi i32 [ 10, %i2c_write_eeprom.exit.i.i ], [ %sub.i.i, %cleanup.i.i.while.body58.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %Tmp.i.i) #6
  %51 = ptrtoint ptr %Tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %Tmp.i.i, align 1, !annotation !372
  call void @msleep(i32 noundef 50) #6
  %52 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i11.i.i) #6
  %54 = ptrtoint ptr %msg.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv1.i3.i.i, ptr %msg.i11.i.i, align 1
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv3.i4.i.i, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i12.i.i) #6
  %56 = call ptr @memset(ptr %40, i32 255, i32 16)
  %57 = ptrtoint ptr %msgs.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 80, ptr %msgs.i12.i.i, align 4
  %58 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i16.i.i, align 2
  %59 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %40, align 4
  %60 = ptrtoint ptr %buf.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i11.i.i, ptr %buf.i18.i.i, align 4
  %61 = ptrtoint ptr %arrayinit.element7.i19.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 80, ptr %arrayinit.element7.i19.i.i, align 4
  %62 = ptrtoint ptr %flags10.i20.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags10.i20.i.i, align 2
  %63 = ptrtoint ptr %len11.i21.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %len11.i21.i.i, align 4
  %64 = ptrtoint ptr %buf13.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %Tmp.i.i, ptr %buf13.i22.i.i, align 4
  %call.i23.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msgs.i12.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i23.i.i)
  %cmp.not.i24.i.i = icmp eq i32 %call.i23.i.i, 2
  br i1 %cmp.not.i24.i.i, label %if.end62.i.i, label %while.body58.i.i.do.end78.i.i_crit_edge

while.body58.i.i.do.end78.i.i_crit_edge:          ; preds = %while.body58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78.i.i

if.end62.i.i:                                     ; preds = %while.body58.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i12.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i11.i.i) #6
  %65 = ptrtoint ptr %Tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %Tmp.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %conv1.i)
  %cmp66.not.i.i = icmp eq i8 %66, %conv1.i
  br i1 %cmp66.not.i.i, label %if.end62.i.i.cleanup.i.i_crit_edge, label %do.end71.i.i

if.end62.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

do.end71.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.151) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %do.end71.i.i, %if.end62.i.i.cleanup.i.i_crit_edge
  %sub.i.i = add nsw i32 %retry.053.i.i, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %Tmp.i.i) #6
  %tobool57.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool57.not.i.i, label %for.inc.i.i, label %cleanup.i.i.while.body58.i.i_crit_edge

cleanup.i.i.while.body58.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body58.i.i

do.end78.i.i:                                     ; preds = %while.body58.1.i.i.do.end78.i.i_crit_edge, %while.body58.i.i.do.end78.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %79, %while.body58.1.i.i.do.end78.i.i_crit_edge ], [ %53, %while.body58.i.i.do.end78.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %.lcssa.i.i, ptr noundef nonnull @.str.156) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i12.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i11.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %Tmp.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.154) #9
  br label %eeprom_write_ushort.exit

for.inc.i.i:                                      ; preds = %cleanup.i.i
  %inc80.i.i = add i16 %Addr.0.lcssa51.i.i, 4
  %67 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %m.i.i.i) #6
  %69 = lshr i16 %inc80.i.i, 8
  %conv1.i3.1.i.i = trunc i16 %69 to i8
  %70 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv1.i3.1.i.i, ptr %m.i.i.i, align 1
  %conv3.i4.1.i.i = trunc i16 %inc80.i.i to i8
  %71 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv3.i4.1.i.i, ptr %36, align 1
  %72 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv3.i, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i.i) #6
  %73 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 262143, ptr %38, align 4
  %74 = ptrtoint ptr %msg.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 80, ptr %msg.i1.i.i, align 4
  %75 = ptrtoint ptr %flags.i5.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i5.i.i, align 2
  %76 = ptrtoint ptr %buf.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %m.i.i.i, ptr %buf.i6.i.i, align 4
  %call.i7.1.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msg.i1.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7.1.i.i)
  %cmp.not.i8.1.i.i = icmp eq i32 %call.i7.1.i.i, 1
  br i1 %cmp.not.i8.1.i.i, label %i2c_write_eeprom.exit.1.i.i, label %for.inc.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge

for.inc.i.i.i2c_write_eeprom.exit.thread.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_write_eeprom.exit.thread.i.i

i2c_write_eeprom.exit.1.i.i:                      ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %m.i.i.i) #6
  br label %while.body58.1.i.i

while.body58.1.i.i:                               ; preds = %cleanup.1.i.i.while.body58.1.i.i_crit_edge, %i2c_write_eeprom.exit.1.i.i
  %retry.053.1.i.i = phi i32 [ 10, %i2c_write_eeprom.exit.1.i.i ], [ %sub.1.i.i, %cleanup.1.i.i.while.body58.1.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %Tmp.i.i) #6
  %77 = ptrtoint ptr %Tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %Tmp.i.i, align 1, !annotation !372
  call void @msleep(i32 noundef 50) #6
  %78 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i11.i.i) #6
  %80 = ptrtoint ptr %msg.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv1.i3.1.i.i, ptr %msg.i11.i.i, align 1
  %81 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv3.i4.1.i.i, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i12.i.i) #6
  %82 = call ptr @memset(ptr %40, i32 255, i32 16)
  %83 = ptrtoint ptr %msgs.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 80, ptr %msgs.i12.i.i, align 4
  %84 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i16.i.i, align 2
  %85 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2, ptr %40, align 4
  %86 = ptrtoint ptr %buf.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i11.i.i, ptr %buf.i18.i.i, align 4
  %87 = ptrtoint ptr %arrayinit.element7.i19.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 80, ptr %arrayinit.element7.i19.i.i, align 4
  %88 = ptrtoint ptr %flags10.i20.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %flags10.i20.i.i, align 2
  %89 = ptrtoint ptr %len11.i21.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %len11.i21.i.i, align 4
  %90 = ptrtoint ptr %buf13.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %Tmp.i.i, ptr %buf13.i22.i.i, align 4
  %call.i23.1.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msgs.i12.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i23.1.i.i)
  %cmp.not.i24.1.i.i = icmp eq i32 %call.i23.1.i.i, 2
  br i1 %cmp.not.i24.1.i.i, label %if.end62.1.i.i, label %while.body58.1.i.i.do.end78.i.i_crit_edge

while.body58.1.i.i.do.end78.i.i_crit_edge:        ; preds = %while.body58.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78.i.i

if.end62.1.i.i:                                   ; preds = %while.body58.1.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i12.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i11.i.i) #6
  %91 = ptrtoint ptr %Tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %Tmp.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %conv3.i)
  %cmp66.not.1.i.i = icmp eq i8 %92, %conv3.i
  br i1 %cmp66.not.1.i.i, label %if.end62.1.i.i.cleanup.1.i.i_crit_edge, label %do.end71.1.i.i

if.end62.1.i.i.cleanup.1.i.i_crit_edge:           ; preds = %if.end62.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1.i.i

do.end71.1.i.i:                                   ; preds = %if.end62.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.151) #9
  br label %cleanup.1.i.i

cleanup.1.i.i:                                    ; preds = %do.end71.1.i.i, %if.end62.1.i.i.cleanup.1.i.i_crit_edge
  %sub.1.i.i = add nsw i32 %retry.053.1.i.i, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %Tmp.i.i) #6
  %tobool57.not.1.i.i = icmp eq i32 %sub.1.i.i, 0
  br i1 %tobool57.not.1.i.i, label %cleanup.1.i.i.eeprom_write_ushort.exit_crit_edge, label %cleanup.1.i.i.while.body58.1.i.i_crit_edge

cleanup.1.i.i.while.body58.1.i.i_crit_edge:       ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body58.1.i.i

cleanup.1.i.i.eeprom_write_ushort.exit_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %eeprom_write_ushort.exit

eeprom_write_ushort.exit:                         ; preds = %cleanup.1.i.i.eeprom_write_ushort.exit_crit_edge, %do.end78.i.i, %i2c_write_eeprom.exit.thread.i.i, %if.end39.i.i.eeprom_write_ushort.exit_crit_edge, %do.end.i.i, %if.end.i.i.eeprom_write_ushort.exit_crit_edge, %if.end.i.i.eeprom_write_ushort.exit_crit_edge156, %i2c_read_eeprom.exit.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %EETag.i.i) #6
  br label %if.end13

if.else:                                          ; preds = %entry
  %number3 = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 5
  %93 = ptrtoint ptr %number3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %number3, align 4
  %conv5 = add i32 %94, 4096
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %95 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %buf.i, align 1, !annotation !372
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %96, align 1, !annotation !372
  %parent.i.i24 = getelementptr inbounds %struct.ngene_channel, ptr %priv, i32 0, i32 1, i32 9, i32 1
  %98 = ptrtoint ptr %parent.i.i24 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent.i.i24, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %EETag.i.i23) #6
  %100 = ptrtoint ptr %EETag.i.i23 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -1, ptr %EETag.i.i23, align 1, !annotation !372
  %101 = getelementptr inbounds [3 x i8], ptr %EETag.i.i23, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %101, align 1, !annotation !372
  %103 = getelementptr inbounds [3 x i8], ptr %EETag.i.i23, i32 0, i32 2
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %103, align 1, !annotation !372
  %105 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i21, i32 0, i32 1
  %106 = getelementptr inbounds i8, ptr %msgs.i.i.i22, i32 4
  %flags.i.i.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 0, i32 1
  %buf.i.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 0, i32 3
  %arrayinit.element7.i.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 1
  %flags10.i.i.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 1, i32 1
  %len11.i.i.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 1, i32 2
  %buf13.i.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i22, i32 1, i32 3
  %conv16.i.i31 = and i32 %conv5, 65535
  br label %while.body.i.i36

while.body.i.i36:                                 ; preds = %if.end20.i.i50.while.body.i.i36_crit_edge, %if.else
  %Addr.029.i.i = phi i16 [ 256, %if.else ], [ %add25.i.i48, %if.end20.i.i50.while.body.i.i36_crit_edge ]
  %107 = ptrtoint ptr %parent.i.i24 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %parent.i.i24, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i21) #6
  %109 = lshr i16 %Addr.029.i.i, 8
  %conv1.i.i.i32 = trunc i16 %109 to i8
  %110 = ptrtoint ptr %msg.i.i.i21 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv1.i.i.i32, ptr %msg.i.i.i21, align 1
  %conv3.i.i.i33 = trunc i16 %Addr.029.i.i to i8
  %111 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv3.i.i.i33, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i22) #6
  %112 = call ptr @memset(ptr %106, i32 255, i32 16)
  %113 = ptrtoint ptr %msgs.i.i.i22 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 80, ptr %msgs.i.i.i22, align 4
  %114 = ptrtoint ptr %flags.i.i.i25 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i.i.i25, align 2
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 2, ptr %106, align 4
  %116 = ptrtoint ptr %buf.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %msg.i.i.i21, ptr %buf.i.i.i26, align 4
  %117 = ptrtoint ptr %arrayinit.element7.i.i.i27 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 80, ptr %arrayinit.element7.i.i.i27, align 4
  %118 = ptrtoint ptr %flags10.i.i.i28 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %flags10.i.i.i28, align 2
  %119 = ptrtoint ptr %len11.i.i.i29 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 3, ptr %len11.i.i.i29, align 4
  %120 = ptrtoint ptr %buf13.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %EETag.i.i23, ptr %buf13.i.i.i30, align 4
  %call.i.i.i34 = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msgs.i.i.i22, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i34)
  %cmp.not.i.i.i35 = icmp eq i32 %call.i.i.i34, 2
  br i1 %cmp.not.i.i.i35, label %if.end.i.i43, label %i2c_read_eeprom.exit.i.i37

i2c_read_eeprom.exit.i.i37:                       ; preds = %while.body.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.156) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i21) #6
  br label %ReadEEProm.exit.thread.i

if.end.i.i43:                                     ; preds = %while.body.i.i36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i21) #6
  %121 = ptrtoint ptr %EETag.i.i23 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %EETag.i.i23, align 1
  %conv3.i.i38 = zext i8 %122 to i32
  %shl.i.i39 = shl nuw nsw i32 %conv3.i.i38, 8
  %123 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %101, align 1
  %conv5.i.i40 = zext i8 %124 to i32
  %or.i.i41 = or i32 %shl.i.i39, %conv5.i.i40
  %trunc.i.i42 = trunc i32 %or.i.i41 to i16
  %125 = zext i16 %trunc.i.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.188)
  switch i16 %trunc.i.i42, label %if.end14.i.i45 [
    i16 0, label %if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge
    i16 -1, label %if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge157
  ]

if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge157: ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %ReadEEProm.exit.thread.i

if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge:  ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %ReadEEProm.exit.thread.i

if.end14.i.i45:                                   ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i41, i32 %conv16.i.i31)
  %cmp17.i.i44 = icmp eq i32 %or.i.i41, %conv16.i.i31
  br i1 %cmp17.i.i44, label %if.end14.i.i45.while.end.i.i56_crit_edge, label %if.end20.i.i50

if.end14.i.i45.while.end.i.i56_crit_edge:         ; preds = %if.end14.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i56

if.end20.i.i50:                                   ; preds = %if.end14.i.i45
  %126 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %103, align 1
  %conv22.i.i46 = zext i8 %127 to i16
  %add23.i.i47 = add nuw nsw i16 %Addr.029.i.i, 3
  %add25.i.i48 = add nuw nsw i16 %add23.i.i47, %conv22.i.i46
  %cmp.i.i49 = icmp ult i16 %add25.i.i48, 4077
  br i1 %cmp.i.i49, label %if.end20.i.i50.while.body.i.i36_crit_edge, label %if.end20.i.i50.while.end.i.i56_crit_edge

if.end20.i.i50.while.end.i.i56_crit_edge:         ; preds = %if.end20.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i56

if.end20.i.i50.while.body.i.i36_crit_edge:        ; preds = %if.end20.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i36

while.end.i.i56:                                  ; preds = %if.end20.i.i50.while.end.i.i56_crit_edge, %if.end14.i.i45.while.end.i.i56_crit_edge
  %or.lcssa32.i.i = phi i32 [ %conv16.i.i31, %if.end14.i.i45.while.end.i.i56_crit_edge ], [ %or.i.i41, %if.end20.i.i50.while.end.i.i56_crit_edge ]
  %Addr.0.lcssa28.i.i = phi i16 [ %Addr.029.i.i, %if.end14.i.i45.while.end.i.i56_crit_edge ], [ %add25.i.i48, %if.end20.i.i50.while.end.i.i56_crit_edge ]
  %narrow.le.i.i51 = add nuw nsw i16 %Addr.0.lcssa28.i.i, 3
  %add1.le.i.i52 = zext i16 %narrow.le.i.i51 to i32
  %128 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %103, align 1
  %conv31.i.i53 = zext i8 %129 to i32
  %add32.i.i54 = add nuw nsw i32 %conv31.i.i53, %add1.le.i.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %add32.i.i54)
  %cmp33.i.i55 = icmp ugt i32 %add32.i.i54, 4080
  br i1 %cmp33.i.i55, label %do.end.i.i57, label %if.end39.i.i58

do.end.i.i57:                                     ; preds = %while.end.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.148, i32 noundef %or.lcssa32.i.i, i32 noundef %conv31.i.i53) #9
  br label %ReadEEProm.exit.thread.i

if.end39.i.i58:                                   ; preds = %while.end.i.i56
  %130 = call i8 @llvm.umin.i8(i8 %129, i8 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp49.not.i.i = icmp eq i8 %130, 0
  br i1 %cmp49.not.i.i, label %if.end.thread.i, label %if.then51.i.i

if.end.thread.i:                                  ; preds = %if.end39.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %EETag.i.i23) #6
  br label %if.then8

if.then51.i.i:                                    ; preds = %if.end39.i.i58
  %131 = ptrtoint ptr %parent.i.i24 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %parent.i.i24, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i1.i.i20) #6
  %133 = getelementptr inbounds [2 x i8], ptr %msg.i1.i.i20, i32 0, i32 1
  %134 = lshr i16 %narrow.le.i.i51, 8
  %conv1.i4.i.i = trunc i16 %134 to i8
  %135 = ptrtoint ptr %msg.i1.i.i20 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv1.i4.i.i, ptr %msg.i1.i.i20, align 1
  %conv3.i5.i.i = trunc i16 %narrow.le.i.i51 to i8
  %136 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv3.i5.i.i, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i2.i.i) #6
  %137 = getelementptr inbounds i8, ptr %msgs.i2.i.i, i32 4
  %138 = call ptr @memset(ptr %137, i32 255, i32 16)
  %139 = ptrtoint ptr %msgs.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 80, ptr %msgs.i2.i.i, align 4
  %flags.i6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i6.i.i, align 2
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 2, ptr %137, align 4
  %buf.i8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 0, i32 3
  %142 = ptrtoint ptr %buf.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %msg.i1.i.i20, ptr %buf.i8.i.i, align 4
  %arrayinit.element7.i9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 1
  %143 = ptrtoint ptr %arrayinit.element7.i9.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 80, ptr %arrayinit.element7.i9.i.i, align 4
  %flags10.i10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 1, i32 1
  %144 = ptrtoint ptr %flags10.i10.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %flags10.i10.i.i, align 2
  %len11.i11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 1, i32 2
  %conv12.i.i.i = zext i8 %130 to i16
  %145 = ptrtoint ptr %len11.i11.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv12.i.i.i, ptr %len11.i11.i.i, align 4
  %buf13.i12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i.i, i32 1, i32 3
  %146 = ptrtoint ptr %buf13.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i, ptr %buf13.i12.i.i, align 4
  %call.i13.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adapter, ptr noundef nonnull %msgs.i2.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i13.i.i)
  %cmp.not.i14.i.i = icmp eq i32 %call.i13.i.i, 2
  br i1 %cmp.not.i14.i.i, label %if.end.i, label %i2c_read_eeprom.exit17.i.i

i2c_read_eeprom.exit17.i.i:                       ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.156) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i1.i.i20) #6
  br label %ReadEEProm.exit.thread.i

ReadEEProm.exit.thread.i:                         ; preds = %i2c_read_eeprom.exit17.i.i, %do.end.i.i57, %if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge, %if.end.i.i43.ReadEEProm.exit.thread.i_crit_edge157, %i2c_read_eeprom.exit.i.i37
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %EETag.i.i23) #6
  br label %if.then8

if.end.i:                                         ; preds = %if.then51.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i1.i.i20) #6
  %147 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %103, align 1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %EETag.i.i23) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %cmp.not.i = icmp eq i8 %148, 2
  br i1 %cmp.not.i, label %eeprom_read_ushort.exit, label %if.end.i.if.then8_crit_edge

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

eeprom_read_ushort.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %150 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %151 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %96, align 1
  %conv4.i = zext i8 %152 to i16
  %or.i = or i16 %shl.i, %conv4.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %do.end11

if.then8:                                         ; preds = %if.end.i.if.then8_crit_edge, %ReadEEProm.exit.thread.i, %if.end.thread.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %eeprom_read_ushort.exit
  %data.1 = phi i16 [ %or.i, %eeprom_read_ushort.exit ], [ 0, %if.then8 ]
  %conv12 = sext i16 %data.1 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.146, i32 noundef %conv12) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %eeprom_write_ushort.exit
  %data.2 = phi i16 [ %data.1, %do.end11 ], [ %deviation, %eeprom_write_ushort.exit ]
  ret i16 %data.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ngene_error_detected(ptr noundef %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.175) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %switch.selectcmp = icmp eq i32 %state, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %switch.selectcmp6 = icmp eq i32 %state, 3
  %switch.select7 = select i1 %switch.selectcmp6, i32 4, i32 %switch.select
  ret i32 %switch.select7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ngene_slot_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.177) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ngene_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.179) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !163, !164, !165, !167, !169, !171, !173, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !188, !189, !191, !192, !193, !195, !197, !198, !199, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !229, !230, !231, !233, !234, !236, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !273, !275, !277, !279, !281, !283, !284, !285, !286, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !321, !322, !323, !324, !325, !326, !328, !329, !330, !332, !333, !334, !335, !336, !337, !339, !340, !341, !343, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !358, !360, !361, !362}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369, !370}
!llvm.ident = !{!371}

!0 = !{ptr @__initcall__kmod_ngene__387_1234_module_init_ngene6, !1, !"__initcall__kmod_ngene__387_1234_module_init_ngene6", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1234, i32 1}
!2 = !{ptr @__exitcall_module_exit_ngene, !3, !"__exitcall_module_exit_ngene", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1235, i32 1}
!4 = !{ptr @__UNIQUE_ID_description388, !5, !"__UNIQUE_ID_description388", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1237, i32 1}
!6 = !{ptr @__UNIQUE_ID_author389, !7, !"__UNIQUE_ID_author389", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1238, i32 1}
!8 = !{ptr @__UNIQUE_ID_file390, !9, !"__UNIQUE_ID_file390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1239, i32 1}
!10 = !{ptr @__UNIQUE_ID_license391, !9, !"__UNIQUE_ID_license391", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1213, i32 17}
!13 = !{ptr @ngene_pci_driver, !14, !"ngene_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1212, i32 26}
!15 = !{ptr @ngene_id_tbl, !16, !"ngene_id_tbl", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1164, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1027, i32 11}
!19 = !{ptr @ngene_info_cineS2, !20, !"ngene_info_cineS2", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1025, i32 32}
!21 = !{ptr @fe_cineS2, !22, !"fe_cineS2", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 971, i32 30}
!23 = !{ptr @tuner_cineS2_0, !24, !"tuner_cineS2_0", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1013, i32 31}
!25 = !{ptr @tuner_cineS2_1, !26, !"tuner_cineS2_1", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1019, i32 31}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 289, i32 13}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @demod_attach_stv0900._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @demod_attach_stv0900._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 293, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @demod_attach_stv0900._entry.7, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @demod_attach_stv0900._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 301, i32 7}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @demod_attach_stv0900._entry.14, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @demod_attach_stv0900._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 303, i32 3}
!49 = !{ptr @demod_attach_stv0900._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @demod_attach_stv0900._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 127, i32 8}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tuner_attach_stv6110._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @tuner_attach_stv6110._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 129, i32 3}
!60 = !{ptr @tuner_attach_stv6110._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tuner_attach_stv6110._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1070, i32 11}
!64 = !{ptr @ngene_info_cineS2v5, !65, !"ngene_info_cineS2v5", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1068, i32 32}
!66 = !{ptr @fe_cineS2_2, !67, !"fe_cineS2_2", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 992, i32 30}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 607, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cineS2_probe.__UNIQUE_ID_ddebug385, !69, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 613, i32 5}
!74 = !{ptr @cineS2_probe.__UNIQUE_ID_ddebug386, !73, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 626, i32 5}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cineS2_probe._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cineS2_probe._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @cineS2_probe._entry.33, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 635, i32 5}
!82 = !{ptr @cineS2_probe._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 641, i32 5}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cineS2_probe._entry.35, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cineS2_probe._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 648, i32 4}
!90 = !{ptr @cineS2_probe._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cineS2_probe._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 651, i32 4}
!94 = !{ptr @cineS2_probe._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cineS2_probe._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 680, i32 4}
!98 = !{ptr @cineS2_probe._entry.45, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cineS2_probe._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 688, i32 3}
!102 = !{ptr @cineS2_probe._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cineS2_probe._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 691, i32 3}
!106 = !{ptr @cineS2_probe._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cineS2_probe._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 534, i32 3}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @init_xo2._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @init_xo2._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 514, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 515, i32 2}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 516, i32 2}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 517, i32 2}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 518, i32 2}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 519, i32 2}
!125 = !{ptr @xo2names, !126, !"xo2names", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 513, i32 14}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 413, i32 13}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @demod_attach_cxd28xx._entry, !128, !"_entry", i1 false, i1 false}
!133 = !{ptr @demod_attach_cxd28xx._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 416, i32 3}
!136 = !{ptr @demod_attach_cxd28xx._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @demod_attach_cxd28xx._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 332, i32 13}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @demod_attach_stv0910._entry, !139, !"_entry", i1 false, i1 false}
!144 = !{ptr @demod_attach_stv0910._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @demod_attach_stv0910._entry.73, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 335, i32 14}
!147 = !{ptr @demod_attach_stv0910._entry_ptr.74, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 339, i32 3}
!150 = !{ptr @demod_attach_stv0910._entry.75, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @demod_attach_stv0910._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 348, i32 7}
!154 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @demod_attach_stv0910._entry.80, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @demod_attach_stv0910._entry_ptr.82, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @demod_attach_stv0910._entry.83, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 350, i32 8}
!160 = !{ptr @demod_attach_stv0910._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 351, i32 4}
!163 = !{ptr @demod_attach_stv0910._entry.85, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @demod_attach_stv0910._entry_ptr.87, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @stv0910_p, !166, !"stv0910_p", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 312, i32 27}
!167 = distinct !{null, !168, !"lnbh25_cfg", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 320, i32 29}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 494, i32 26}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 498, i32 13}
!173 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.92, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @demod_attach_drxk._entry, !172, !"_entry", i1 false, i1 false}
!177 = !{ptr @demod_attach_drxk._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 500, i32 3}
!180 = !{ptr @demod_attach_drxk._entry.93, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @demod_attach_drxk._entry_ptr.95, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 384, i32 13}
!184 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @demod_attach_stv0367._entry, !183, !"_entry", i1 false, i1 false}
!188 = !{ptr @demod_attach_stv0367._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 388, i32 3}
!191 = !{ptr @demod_attach_stv0367._entry.100, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @demod_attach_stv0367._entry_ptr.102, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @ddb_stv0367_config, !194, !"ddb_stv0367_config", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 361, i32 30}
!195 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 189, i32 7}
!197 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @tuner_attach_tda18271._entry, !196, !"_entry", i1 false, i1 false}
!201 = !{ptr @tuner_attach_tda18271._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.108, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 193, i32 3}
!204 = !{ptr @tuner_attach_tda18271._entry.107, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @tuner_attach_tda18271._entry_ptr.109, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 249, i32 28}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 258, i32 2}
!210 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @tuner_attach_tda18212._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @tuner_attach_tda18212._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 208, i32 2}
!215 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @tuner_tda18212_ping.__UNIQUE_ID_ddebug383, !214, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!217 = !{ptr @.str.115, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 213, i32 3}
!219 = !{ptr @tuner_tda18212_ping.__UNIQUE_ID_ddebug384, !218, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!220 = !{ptr @.str.116, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 215, i32 3}
!222 = !{ptr @tuner_tda18212_ping._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @tuner_tda18212_ping._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 155, i32 7}
!226 = !{ptr @.str.118, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.119, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @tuner_attach_stv6111._entry, !225, !"_entry", i1 false, i1 false}
!230 = !{ptr @tuner_attach_stv6111._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @tuner_attach_stv6111._entry.121, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 157, i32 8}
!233 = !{ptr @tuner_attach_stv6111._entry_ptr.122, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 159, i32 4}
!236 = !{ptr @tuner_attach_stv6111._entry.123, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @tuner_attach_stv6111._entry_ptr.125, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.126, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1041, i32 11}
!240 = !{ptr @ngene_info_satixS2, !241, !"ngene_info_satixS2", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1039, i32 32}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1055, i32 11}
!244 = !{ptr @ngene_info_satixS2v2, !245, !"ngene_info_satixS2v2", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1053, i32 32}
!246 = !{ptr @.str.128, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1086, i32 20}
!248 = !{ptr @ngene_info_duoFlex, !249, !"ngene_info_duoFlex", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1084, i32 32}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1101, i32 20}
!252 = !{ptr @ngene_info_m780, !253, !"ngene_info_m780", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1099, i32 32}
!254 = !{ptr @aver_m780, !255, !"aver_m780", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 698, i32 31}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 715, i32 13}
!258 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.133, !257, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @demod_attach_lg330x._entry, !257, !"_entry", i1 false, i1 false}
!262 = !{ptr @demod_attach_lg330x._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 718, i32 3}
!265 = !{ptr @demod_attach_lg330x._entry.134, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @demod_attach_lg330x._entry_ptr.136, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.137, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 722, i32 2}
!269 = !{ptr @.str.138, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.140, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @demod_attach_lg330x._entry.139, !268, !"_entry", i1 false, i1 false}
!272 = !{ptr @demod_attach_lg330x._entry_ptr.141, !268, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @m780_tunerconfig, !274, !"m780_tunerconfig", i1 false, i1 false}
!274 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 704, i32 29}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1141, i32 20}
!277 = !{ptr @ngene_info_terratec, !278, !"ngene_info_terratec", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1139, i32 32}
!279 = !{ptr @fe_terratec_dvbt_0, !280, !"fe_terratec_dvbt_0", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1117, i32 27}
!281 = !{ptr @.str.143, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 953, i32 3}
!283 = !{ptr @.str.144, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @osc_deviation._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @osc_deviation._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.146, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 959, i32 3}
!288 = !{ptr @osc_deviation._entry.145, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @osc_deviation._entry_ptr.147, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.148, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 880, i32 3}
!292 = !{ptr @.str.149, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @WriteEEProm._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @WriteEEProm._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.151, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 908, i32 5}
!297 = !{ptr @WriteEEProm._entry.150, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @WriteEEProm._entry_ptr.152, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.154, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 912, i32 4}
!301 = !{ptr @WriteEEProm._entry.153, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @WriteEEProm._entry_ptr.155, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 813, i32 3}
!305 = !{ptr @.str.157, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @i2c_read_eeprom._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @i2c_read_eeprom._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.158, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 796, i32 3}
!310 = !{ptr @.str.159, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @i2c_write_eeprom._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @i2c_write_eeprom._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.160, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 838, i32 3}
!315 = !{ptr @ReadEEProm._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @ReadEEProm._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @fe_terratec_dvbt_1, !318, !"fe_terratec_dvbt_1", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1128, i32 27}
!319 = !{ptr @.str.161, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 735, i32 13}
!321 = !{ptr @.str.162, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.163, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.164, !320, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @demod_attach_drxd._entry, !320, !"_entry", i1 false, i1 false}
!325 = !{ptr @demod_attach_drxd._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.166, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 738, i32 3}
!328 = !{ptr @demod_attach_drxd._entry.165, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @demod_attach_drxd._entry_ptr.167, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.168, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 751, i32 7}
!332 = !{ptr @.str.169, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.170, !331, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.171, !331, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @tuner_attach_dtt7520x._entry, !331, !"_entry", i1 false, i1 false}
!336 = !{ptr @tuner_attach_dtt7520x._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.173, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 754, i32 3}
!339 = !{ptr @tuner_attach_dtt7520x._entry.172, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @tuner_attach_dtt7520x._entry_ptr.174, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @ngene_errors, !342, !"ngene_errors", i1 false, i1 false}
!342 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1206, i32 40}
!343 = !{ptr @.str.175, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1187, i32 2}
!345 = !{ptr @.str.176, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @ngene_error_detected._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @ngene_error_detected._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1197, i32 2}
!350 = !{ptr @.str.178, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @ngene_slot_reset._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @ngene_slot_reset._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.179, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1203, i32 2}
!355 = !{ptr @.str.180, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @ngene_resume._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @ngene_resume._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.181, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/ngene/ngene-cards.c", i32 1224, i32 2}
!360 = !{ptr @.str.182, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @module_init_ngene._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @module_init_ngene._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{i32 1, !"wchar_size", i32 2}
!364 = !{i32 1, !"min_enum_size", i32 4}
!365 = !{i32 8, !"branch-target-enforcement", i32 0}
!366 = !{i32 8, !"sign-return-address", i32 0}
!367 = !{i32 8, !"sign-return-address-all", i32 0}
!368 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!369 = !{i32 7, !"uwtable", i32 1}
!370 = !{i32 7, !"frame-pointer", i32 2}
!371 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!372 = !{!"auto-init"}
!373 = !{i64 2148985595, i64 2148985600, i64 2148985613, i64 2148985657, i64 2148985691, i64 2148985712}
