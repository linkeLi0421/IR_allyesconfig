; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-fw.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fw_address_region = type { i64, i64 }
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
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
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
%struct.fdtv_ir_context = type { ptr, %struct.fw_iso_buffer, i32, i32, [16 x ptr] }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@fdtv_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str.8, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @node_probe, ptr @node_update, ptr @node_remove, ptr @fdtv_id_table }, [36 x i8] zeroinitializer }, align 32
@fcp_handler = internal global { %struct.fw_address_handler, [32 x i8] } { %struct.fw_address_handler { i64 0, i64 512, ptr @handle_fcp, ptr null, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_firedtv__381_426_fdtv_init6 = internal global ptr @fdtv_init, section ".initcall6.init", align 4
@__exitcall_fdtv_exit = internal global ptr @fdtv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author382 = internal constant [52 x i8] c"firedtv.author=Andreas Monitzer <andy@monitzer.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author383 = internal constant [42 x i8] c"firedtv.author=Ben Backx <ben@bbackx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description384 = internal constant [39 x i8] c"firedtv.description=FireDTV DVB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file385 = internal constant [44 x i8] c"firedtv.file=drivers/media/firewire/firedtv\00", section ".modinfo", align 1
@__UNIQUE_ID_license386 = internal constant [20 x i8] c"firedtv.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@handle_iso._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"length = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_iso\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/firewire/firedtv-fw.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@handle_iso._entry_ptr = internal global ptr @handle_iso._entry, section ".printk_index", align 4
@handle_iso._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"requeue failed\0A\00", [16 x i8] zeroinitializer }, align 32
@handle_iso._entry_ptr.7 = internal global ptr @handle_iso._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"firedtv\00", [24 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@fdtv_id_table = internal constant { [7 x %struct.ieee1394_device_id], [56 x i8] } { [7 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 15, i32 4743, i32 36, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4743, i32 37, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4743, i32 38, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4743, i32 52, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4743, i32 53, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4743, i32 54, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@node_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fdtv->avc_mutex\00", [47 x i8] zeroinitializer }, align 32
@node_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fdtv->avc_wait\00", [16 x i8] zeroinitializer }, align 32
@node_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&fdtv->demux_mutex\00", [45 x i8] zeroinitializer }, align 32
@node_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&fdtv->remote_ctrl_work)\00", [53 x i8] zeroinitializer }, align 32
@model_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@node_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@node_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @node_list, ptr @node_list }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown type\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FireDTV S/CI\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FireDTV C/CI\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FireDTV T/CI\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FireDTV S2  \00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"node_list_lock\00", [17 x i8] zeroinitializer }, align 32
@fcp_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474708278528, i64 281474708279040 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"fdtv_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 393, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"fcp_handler\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 231, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 110, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 124, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 396, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"fdtv_id_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 346, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 268, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 269, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 270, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 271, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"model_names\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 241, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"node_list_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"node_list\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 29, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 242, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 243, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 244, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 245, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 246, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 30, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"fcp_region\00", align 1
@___asan_gen_.110 = private constant [39 x i8] c"../drivers/media/firewire/firedtv-fw.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 236, i32 39 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author382, ptr @__UNIQUE_ID_author383, ptr @__UNIQUE_ID_description384, ptr @__UNIQUE_ID_file385, ptr @__UNIQUE_ID_license386, ptr @__exitcall_fdtv_exit, ptr @__initcall__kmod_firedtv__381_426_fdtv_init6, ptr @fdtv_exit, ptr @handle_iso._entry, ptr @handle_iso._entry.5, ptr @handle_iso._entry_ptr, ptr @handle_iso._entry_ptr.7, ptr @fdtv_driver, ptr @fcp_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @fdtv_id_table, ptr @node_probe.__key, ptr @.str.9, ptr @node_probe.__key.10, ptr @.str.11, ptr @node_probe.__key.12, ptr @.str.13, ptr @node_probe.__key.14, ptr @.str.15, ptr @model_names, ptr @node_list_lock, ptr @node_list, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @fcp_region], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_iso._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_iso._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_lock(ptr nocapture noundef readonly %fdtv, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdtv, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %generation1.i = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  %card.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr i8, ptr %3, i32 -16
  %8 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id.i, align 8
  %max_speed.i = getelementptr i8, ptr %3, i32 -8
  %10 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed.i, align 8
  %call5.i = tail call i32 @fw_run_transaction(ptr noundef %7, i32 noundef 18, i32 noundef %9, i32 noundef %5, i32 noundef %11, i64 noundef %addr, ptr noundef %data, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 0
  %cond.i = select i1 %cmp.not.i, i32 0, i32 -5
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_read(ptr nocapture noundef readonly %fdtv, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdtv, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %generation1.i = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  %card.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr i8, ptr %3, i32 -16
  %8 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id.i, align 8
  %max_speed.i = getelementptr i8, ptr %3, i32 -8
  %10 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed.i, align 8
  %call5.i = tail call i32 @fw_run_transaction(ptr noundef %7, i32 noundef 4, i32 noundef %9, i32 noundef %5, i32 noundef %11, i64 noundef %addr, ptr noundef %data, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 0
  %cond.i = select i1 %cmp.not.i, i32 0, i32 -5
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_write(ptr nocapture noundef readonly %fdtv, i64 noundef %addr, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdtv, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %generation1.i = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %generation1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  %card.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr i8, ptr %3, i32 -16
  %8 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id.i, align 8
  %max_speed.i = getelementptr i8, ptr %3, i32 -8
  %10 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed.i, align 8
  %call5.i = tail call i32 @fw_run_transaction(ptr noundef %7, i32 noundef 1, i32 noundef %9, i32 noundef %5, i32 noundef %11, i64 noundef %addr, ptr noundef %data, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 0
  %cond.i = select i1 %cmp.not.i, i32 0, i32 -5
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_start_iso(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca %struct.fw_iso_packet, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdtv, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 92) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr i8, ptr %3, i32 -4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %isochannel = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 18
  %7 = ptrtoint ptr %isochannel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %isochannel, align 1
  %conv = sext i8 %8 to i32
  %max_speed = getelementptr i8, ptr %3, i32 -8
  %9 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed, align 8
  %call2 = tail call ptr @fw_iso_context_create(ptr noundef %6, i32 noundef 1, i32 noundef %conv, i32 noundef %10, i32 noundef 4, ptr noundef nonnull @handle_iso, ptr noundef %fdtv) #7
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %call7.i, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call2 to i32
  br label %fail_free

if.end8:                                          ; preds = %if.end
  %buffer = getelementptr inbounds %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %call10 = tail call i32 @fw_iso_buffer_init(ptr noundef %buffer, ptr noundef %14, i32 noundef 16, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.fail_context_destroy_crit_edge

if.end8.fail_context_destroy_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_context_destroy

if.end13:                                         ; preds = %if.end8
  %interrupt_packet = getelementptr inbounds %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %interrupt_packet to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %interrupt_packet, align 4
  %current_packet = getelementptr inbounds %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 3
  %16 = ptrtoint ptr %current_packet to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %current_packet, align 8
  %pages = getelementptr inbounds %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call16 = tail call ptr @page_address(ptr noundef %20) #7
  %arrayidx18 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 0
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call16, ptr %arrayidx18, align 4
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 8
  %arrayidx.1 = getelementptr ptr, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  %call16.1 = tail call ptr @page_address(ptr noundef %25) #7
  %arrayidx18.1 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16.1, ptr %arrayidx18.1, align 8
  %27 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages, align 8
  %arrayidx.2 = getelementptr ptr, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2, align 4
  %call16.2 = tail call ptr @page_address(ptr noundef %30) #7
  %arrayidx18.2 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16.2, ptr %arrayidx18.2, align 4
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages, align 8
  %arrayidx.3 = getelementptr ptr, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.3, align 4
  %call16.3 = tail call ptr @page_address(ptr noundef %35) #7
  %arrayidx18.3 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call16.3, ptr %arrayidx18.3, align 8
  %37 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages, align 8
  %arrayidx.4 = getelementptr ptr, ptr %38, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.4, align 4
  %call16.4 = tail call ptr @page_address(ptr noundef %40) #7
  %arrayidx18.4 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call16.4, ptr %arrayidx18.4, align 4
  %42 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pages, align 8
  %arrayidx.5 = getelementptr ptr, ptr %43, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5, align 4
  %call16.5 = tail call ptr @page_address(ptr noundef %45) #7
  %arrayidx18.5 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call16.5, ptr %arrayidx18.5, align 8
  %47 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pages, align 8
  %arrayidx.6 = getelementptr ptr, ptr %48, i32 6
  %49 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.6, align 4
  %call16.6 = tail call ptr @page_address(ptr noundef %50) #7
  %arrayidx18.6 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call16.6, ptr %arrayidx18.6, align 4
  %52 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pages, align 8
  %arrayidx.7 = getelementptr ptr, ptr %53, i32 7
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.7, align 4
  %call16.7 = tail call ptr @page_address(ptr noundef %55) #7
  %arrayidx18.7 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 7
  %56 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call16.7, ptr %arrayidx18.7, align 8
  %57 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages, align 8
  %arrayidx.8 = getelementptr ptr, ptr %58, i32 8
  %59 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.8, align 4
  %call16.8 = tail call ptr @page_address(ptr noundef %60) #7
  %arrayidx18.8 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 8
  %61 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call16.8, ptr %arrayidx18.8, align 4
  %62 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pages, align 8
  %arrayidx.9 = getelementptr ptr, ptr %63, i32 9
  %64 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.9, align 4
  %call16.9 = tail call ptr @page_address(ptr noundef %65) #7
  %arrayidx18.9 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 9
  %66 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call16.9, ptr %arrayidx18.9, align 8
  %67 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pages, align 8
  %arrayidx.10 = getelementptr ptr, ptr %68, i32 10
  %69 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.10, align 4
  %call16.10 = tail call ptr @page_address(ptr noundef %70) #7
  %arrayidx18.10 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 10
  %71 = ptrtoint ptr %arrayidx18.10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call16.10, ptr %arrayidx18.10, align 4
  %72 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pages, align 8
  %arrayidx.11 = getelementptr ptr, ptr %73, i32 11
  %74 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.11, align 4
  %call16.11 = tail call ptr @page_address(ptr noundef %75) #7
  %arrayidx18.11 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 11
  %76 = ptrtoint ptr %arrayidx18.11 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call16.11, ptr %arrayidx18.11, align 8
  %77 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pages, align 8
  %arrayidx.12 = getelementptr ptr, ptr %78, i32 12
  %79 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.12, align 4
  %call16.12 = tail call ptr @page_address(ptr noundef %80) #7
  %arrayidx18.12 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 12
  %81 = ptrtoint ptr %arrayidx18.12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call16.12, ptr %arrayidx18.12, align 4
  %82 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pages, align 8
  %arrayidx.13 = getelementptr ptr, ptr %83, i32 13
  %84 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.13, align 4
  %call16.13 = tail call ptr @page_address(ptr noundef %85) #7
  %arrayidx18.13 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 13
  %86 = ptrtoint ptr %arrayidx18.13 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call16.13, ptr %arrayidx18.13, align 8
  %87 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pages, align 8
  %arrayidx.14 = getelementptr ptr, ptr %88, i32 14
  %89 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.14, align 4
  %call16.14 = tail call ptr @page_address(ptr noundef %90) #7
  %arrayidx18.14 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 14
  %91 = ptrtoint ptr %arrayidx18.14 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call16.14, ptr %arrayidx18.14, align 4
  %92 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pages, align 8
  %arrayidx.15 = getelementptr ptr, ptr %93, i32 15
  %94 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.15, align 4
  %call16.15 = tail call ptr @page_address(ptr noundef %95) #7
  %arrayidx18.15 = getelementptr %struct.fdtv_ir_context, ptr %call7.i, i32 0, i32 4, i32 15
  %96 = ptrtoint ptr %arrayidx18.15 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call16.15, ptr %arrayidx18.15, align 8
  %97 = getelementptr inbounds %struct.fw_iso_packet, ptr %p.i, i32 0, i32 1
  br label %for.body22

for.cond19:                                       ; preds = %for.body22
  %inc28 = add nuw nsw i32 %i.171, 1
  %exitcond.not = icmp eq i32 %inc28, 64
  br i1 %exitcond.not, label %for.end29, label %for.cond19.for.body22_crit_edge

for.cond19.for.body22_crit_edge:                  ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.body22:                                       ; preds = %for.cond19.for.body22_crit_edge, %if.end13
  %i.171 = phi i32 [ 0, %if.end13 ], [ %inc28, %for.cond19.for.body22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #7
  %98 = ptrtoint ptr %p.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1024, ptr %p.i, align 4
  %99 = ptrtoint ptr %interrupt_packet to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %interrupt_packet, align 4
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %interrupt_packet, align 4
  %and.i = and i32 %inc.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bf.set6.i = select i1 %tobool.not.i, i16 -16636, i16 16132
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %bf.set6.i, ptr %97, align 2
  %102 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i, align 8
  %mul.i = shl i32 %i.171, 10
  %call.i = call i32 @fw_iso_context_queue(ptr noundef %103, ptr noundef nonnull %p.i, ptr noundef %buffer, i32 noundef %mul.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %for.cond19, label %for.body22.fail_crit_edge

for.body22.fail_crit_edge:                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.end29:                                        ; preds = %for.cond19
  %104 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i, align 8
  %call31 = call i32 @fw_iso_context_start(ptr noundef %105, i32 noundef -1, i32 noundef 0, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %for.end29.fail_crit_edge

for.end29.fail_crit_edge:                         ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end34:                                         ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #9
  %ir_context = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 19
  %106 = ptrtoint ptr %ir_context to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i, ptr %ir_context, align 4
  br label %cleanup

fail:                                             ; preds = %for.end29.fail_crit_edge, %for.body22.fail_crit_edge
  %err.0 = phi i32 [ %call31, %for.end29.fail_crit_edge ], [ %call.i, %for.body22.fail_crit_edge ]
  %107 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %card, align 4
  call void @fw_iso_buffer_destroy(ptr noundef %buffer, ptr noundef %108) #7
  br label %fail_context_destroy

fail_context_destroy:                             ; preds = %fail, %if.end8.fail_context_destroy_crit_edge
  %err.1 = phi i32 [ %call10, %if.end8.fail_context_destroy_crit_edge ], [ %err.0, %fail ]
  %109 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call7.i, align 8
  call void @fw_iso_context_destroy(ptr noundef %110) #7
  br label %fail_free

fail_free:                                        ; preds = %fail_context_destroy, %if.then5
  %err.2 = phi i32 [ %12, %if.then5 ], [ %err.1, %fail_context_destroy ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail_free ], [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_iso_context_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_iso(ptr nocapture noundef readnone %context, i32 noundef %cycle, i32 noundef %header_length, ptr noundef readonly %header, ptr noundef %data) #0 align 64 {
entry:
  %p.i = alloca %struct.fw_iso_packet, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_context = getelementptr inbounds %struct.firedtv, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %ir_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_context, align 4
  %current_packet = getelementptr inbounds %struct.fdtv_ir_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %current_packet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_packet, align 4
  %div49 = lshr i32 %header_length, 2
  %add.ptr = getelementptr i32, ptr %header, i32 %div49
  %cmp53 = icmp ugt ptr %add.ptr, %header
  br i1 %cmp53, label %for.body.lr.ph, label %entry.for.end26_crit_edge

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %demux = getelementptr inbounds %struct.firedtv, ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fw_iso_packet, ptr %p.i, i32 0, i32 1
  %interrupt_packet.i = getelementptr inbounds %struct.fdtv_ir_context, ptr %1, i32 0, i32 2
  %buffer.i = getelementptr inbounds %struct.fdtv_ir_context, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ %3, %for.body.lr.ph ], [ %and, %if.end24.for.body_crit_edge ]
  %h.054 = phi ptr [ %header, %for.body.lr.ph ], [ %incdec.ptr, %if.end24.for.body_crit_edge ]
  %5 = ptrtoint ptr %h.054 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h.054, align 4
  %shr = lshr i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67174399, i32 %6)
  %cmp1 = icmp ugt i32 %6, 67174399
  br i1 %cmp1, label %do.end, label %for.body.if.end_crit_edge, !prof !74

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %shr) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %length.0 = phi i32 [ 1024, %do.end ], [ %shr, %for.body.if.end_crit_edge ]
  %div350 = lshr i32 %i.055, 2
  %arrayidx = getelementptr %struct.fdtv_ir_context, ptr %1, i32 0, i32 4, i32 %div350
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %rem = shl i32 %i.055, 10
  %mul = and i32 %rem, 3072
  %add.ptr4 = getelementptr i8, ptr %10, i32 %mul
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %length.0
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 12
  %cmp851 = icmp ult ptr %add.ptr6, %add.ptr5
  br i1 %cmp851, label %if.end.for.body9_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body9_crit_edge:                       ; preds = %if.end
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %if.end.for.body9_crit_edge
  %p.052 = phi ptr [ %add.ptr10, %for.body9.for.body9_crit_edge ], [ %add.ptr6, %if.end.for.body9_crit_edge ]
  call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %p.052, i32 noundef 1) #7
  %add.ptr10 = getelementptr i8, ptr %p.052, i32 192
  %cmp8 = icmp ult ptr %add.ptr10, %add.ptr5
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end_crit_edge

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #7
  %11 = ptrtoint ptr %p.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1024, ptr %p.i, align 4
  %12 = ptrtoint ptr %interrupt_packet.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt_packet.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %interrupt_packet.i, align 4
  %and.i = and i32 %inc.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bf.set6.i = select i1 %tobool.not.i, i16 -16636, i16 16132
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.set6.i, ptr %4, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @fw_iso_context_queue(ptr noundef %16, ptr noundef nonnull %p.i, ptr noundef %buffer.i, i32 noundef %rem) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %for.end.if.end24_crit_edge, label %do.end22, !prof !75

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %for.end.if.end24_crit_edge
  %add = add i32 %i.055, 1
  %and = and i32 %add, 63
  %incdec.ptr = getelementptr i32, ptr %h.054, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.for.end26_crit_edge

if.end24.for.end26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end26:                                        ; preds = %if.end24.for.end26_crit_edge, %entry.for.end26_crit_edge
  %i.0.lcssa = phi i32 [ %3, %entry.for.end26_crit_edge ], [ %and, %if.end24.for.end26_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void @fw_iso_context_queue_flush(ptr noundef %20) #7
  %21 = ptrtoint ptr %current_packet to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0.lcssa, ptr %current_packet, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_buffer_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_stop_iso(ptr nocapture noundef readonly %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_context = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 19
  %0 = ptrtoint ptr %ir_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir_context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @fw_iso_context_stop(ptr noundef %3) #7
  %buffer = getelementptr inbounds %struct.fdtv_ir_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdtv, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  tail call void @fw_iso_buffer_destroy(ptr noundef %buffer, ptr noundef %9) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @fw_iso_context_destroy(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fdtv_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef nonnull @fdtv_driver) #7
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @fcp_handler) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_core_add_address_handler(ptr noundef nonnull @fcp_handler, ptr noundef nonnull @fcp_region) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @driver_register(ptr noundef nonnull @fdtv_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @fcp_handler) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_queue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_probe(ptr noundef %unit, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %name = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 13)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4000) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %unit, ptr %call7.i.i, align 8
  %isochannel = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %isochannel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %isochannel, align 1
  %voltage = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 20
  %5 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %voltage, align 8
  %tone = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 21
  %6 = ptrtoint ptr %tone to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %tone, align 4
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %avc_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @node_probe.__key) #7
  %avc_wait = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %avc_wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @node_probe.__key.10) #7
  %demux_mutex = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %demux_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @node_probe.__key.12) #7
  %remote_ctrl_work = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %remote_ctrl_work, i32 noundef 0) #7
  %7 = ptrtoint ptr %remote_ctrl_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %remote_ctrl_work, align 4
  %lockdep_map = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @node_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry13 = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @avc_remote_ctrl_work, ptr %func, align 8
  %directory = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %11 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %directory, align 8
  %call17 = call i32 @fw_csr_string(ptr noundef %12, i32 noundef 23, ptr noundef nonnull %name, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end.fail_free_crit_edge, label %for.body.preheader

if.end.fail_free_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call17)
  %cmp22.not = icmp ult i32 %call17, 12
  br i1 %cmp22.not, label %for.body.preheader.if.end28.3_crit_edge, label %land.lhs.true

for.body.preheader.if.end28.3_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.3

land.lhs.true:                                    ; preds = %for.body.preheader
  %call25 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull @.str.20, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.1

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call25.1 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull @.str.19, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.1 = icmp eq i32 %call25.1, 0
  br i1 %cmp26.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.2

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  %call25.2 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull @.str.18, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %cmp26.2 = icmp eq i32 %call25.2, 0
  br i1 %cmp26.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.3

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %call25.3 = call i32 @strncmp(ptr noundef nonnull %name, ptr noundef nonnull @.str.17, i32 noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %cmp26.3 = icmp eq i32 %call25.3, 0
  br i1 %cmp26.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.if.end28.3_crit_edge

land.lhs.true.3.if.end28.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.3:                                       ; preds = %land.lhs.true.3.if.end28.3_crit_edge, %for.body.preheader.if.end28.3_crit_edge
  br label %for.end

for.end:                                          ; preds = %if.end28.3, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %dec.lcssa = phi i32 [ 4, %land.lhs.true.for.end_crit_edge ], [ 3, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 1, %land.lhs.true.3.for.end_crit_edge ], [ 0, %if.end28.3 ]
  %type = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec.lcssa, ptr %type, align 4
  %call30 = call i32 @fdtv_register_rc(ptr noundef nonnull %call7.i.i, ptr noundef %unit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.end.fail_free_crit_edge

for.end.fail_free_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free

if.end33:                                         ; preds = %for.end
  call void @_raw_spin_lock_irq(ptr noundef nonnull @node_list_lock) #7
  %list = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @node_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef nonnull @node_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @node_list, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @node_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev3.i.i, align 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end33.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @node_list_lock) #7
  %call34 = call i32 @avc_identify_subunit(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %list_add_tail.exit.fail_crit_edge

list_add_tail.exit.fail_crit_edge:                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end37:                                         ; preds = %list_add_tail.exit
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %arrayidx39 = getelementptr [5 x ptr], ptr @model_names, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 4
  %call40 = call i32 @fdtv_dvb_register(ptr noundef nonnull %call7.i.i, ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.fail_crit_edge

if.end37.fail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 @avc_register_remote_control(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

fail:                                             ; preds = %if.end37.fail_crit_edge, %list_add_tail.exit.fail_crit_edge
  %err.0 = phi i32 [ %call34, %list_add_tail.exit.fail_crit_edge ], [ %call40, %if.end37.fail_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef nonnull @node_list_lock) #7
  %call.i.i85 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i85, label %if.end.i.i86, label %fail.list_del.exit_crit_edge

fail.list_del.exit_crit_edge:                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i86:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 8
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i86, %fail.list_del.exit_crit_edge
  %28 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i87 = getelementptr inbounds %struct.firedtv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @node_list_lock) #7
  call void @fdtv_unregister_rc(ptr noundef nonnull %call7.i.i) #7
  br label %fail_free

fail_free:                                        ; preds = %list_del.exit, %for.end.fail_free_crit_edge, %if.end.fail_free_crit_edge
  %err.1 = phi i32 [ %call30, %for.end.fail_free_crit_edge ], [ %err.0, %list_del.exit ], [ %call17, %if.end.fail_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail_free ], [ 0, %if.end43 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @node_update(ptr nocapture noundef readonly %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %isochannel = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %isochannel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %isochannel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i8 %3 to i32
  %subunit = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %subunit, align 8
  %conv2 = zext i8 %5 to i32
  %call5 = tail call i32 @cmp_establish_pp_connection(ptr noundef %1, i32 noundef %conv2, i32 noundef %conv9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @node_remove(ptr nocapture noundef readonly %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @fdtv_dvb_unregister(ptr noundef %1) #7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @node_list_lock) #7
  %list = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @node_list_lock) #7
  tail call void @fdtv_unregister_rc(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @avc_remote_ctrl_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_register_rc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_identify_subunit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_dvb_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_register_remote_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_unregister_rc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_establish_pp_connection(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_dvb_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_fcp(ptr noundef readnone %card, ptr nocapture noundef readnone %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr noundef %payload, i32 noundef %length, ptr nocapture noundef readnone %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp = icmp ult i32 %length, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %payload, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp1.not = icmp ult i8 %1, 16
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr i8, ptr %payload, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %4 = and i8 %3, 7
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @node_list_lock) #7
  %.pn72 = load ptr, ptr @node_list, align 4
  %cmp13.not74 = icmp eq ptr %.pn72, @node_list
  br i1 %cmp13.not74, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp42 = icmp eq i8 %4, 7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @node_list_lock, i32 noundef %call9) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn75 = phi ptr [ %.pn72, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %f.076 = getelementptr i8, ptr %.pn75, i32 -4
  %5 = ptrtoint ptr %f.076 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f.076, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %generation16 = getelementptr i8, ptr %8, i32 -12
  %9 = ptrtoint ptr %generation16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %generation16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %generation)
  %cmp17.not = icmp eq i32 %10, %generation
  br i1 %cmp17.not, label %do.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end24:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  %card27 = getelementptr i8, ptr %8, i32 -4
  %11 = ptrtoint ptr %card27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card27, align 4
  %cmp28 = icmp eq ptr %12, %card
  br i1 %cmp28, label %land.lhs.true, label %do.end24.for.inc_crit_edge

do.end24.for.inc_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end24
  %node_id = getelementptr i8, ptr %8, i32 -16
  %13 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %source)
  %cmp30 = icmp eq i32 %14, %source
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true32:                                  ; preds = %land.lhs.true
  %subunit = getelementptr i8, ptr %.pn75, i32 3332
  %15 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %subunit, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %4)
  %cmp34 = icmp eq i8 %16, %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp39 = icmp eq i8 %16, 0
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  %or.cond77 = or i1 %cmp34, %or.cond
  br i1 %or.cond77, label %for.end, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true32.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp13.not = icmp eq ptr %.pn, @node_list
  br i1 %cmp13.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true32
  %f.076.le = getelementptr i8, ptr %.pn75, i32 -4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @node_list_lock, i32 noundef %call9) #7
  %tobool.not = icmp eq ptr %f.076.le, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 @avc_recv(ptr noundef nonnull %f.076.le, ptr noundef %payload, i32 noundef %length) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %for.end.cleanup_crit_edge, %for.end.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_firedtv__381_426_fdtv_init6, !1, !"__initcall__kmod_firedtv__381_426_fdtv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_fdtv_exit, !3, !"__exitcall_fdtv_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 427, i32 1}
!4 = !{ptr @__UNIQUE_ID_author382, !5, !"__UNIQUE_ID_author382", i1 false, i1 false}
!5 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 429, i32 1}
!6 = !{ptr @__UNIQUE_ID_author383, !7, !"__UNIQUE_ID_author383", i1 false, i1 false}
!7 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 430, i32 1}
!8 = !{ptr @__UNIQUE_ID_description384, !9, !"__UNIQUE_ID_description384", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 431, i32 1}
!10 = !{ptr @__UNIQUE_ID_file385, !11, !"__UNIQUE_ID_file385", i1 false, i1 false}
!11 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 432, i32 1}
!12 = !{ptr @__UNIQUE_ID_license386, !11, !"__UNIQUE_ID_license386", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 110, i32 4}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @handle_iso._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @handle_iso._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 124, i32 4}
!23 = !{ptr @handle_iso._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @handle_iso._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 396, i32 13}
!27 = !{ptr @fdtv_driver, !28, !"fdtv_driver", i1 false, i1 false}
!28 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 393, i32 25}
!29 = !{ptr @node_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 268, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @node_probe.__key.10, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 269, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @node_probe.__key.12, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 270, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @node_probe.__key.14, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 271, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 242, i32 22}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 243, i32 22}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 244, i32 22}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 245, i32 22}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 246, i32 22}
!51 = !{ptr @model_names, !52, !"model_names", i1 false, i1 false}
!52 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 241, i32 27}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 30, i32 8}
!55 = !{ptr @node_list_lock, !54, !"node_list_lock", i1 false, i1 false}
!56 = !{ptr @node_list, !57, !"node_list", i1 false, i1 false}
!57 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 29, i32 8}
!58 = !{ptr @fdtv_id_table, !59, !"fdtv_id_table", i1 false, i1 false}
!59 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 346, i32 40}
!60 = !{ptr @fcp_handler, !61, !"fcp_handler", i1 false, i1 false}
!61 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 231, i32 34}
!62 = !{ptr @fcp_region, !63, !"fcp_region", i1 false, i1 false}
!63 = !{!"../drivers/media/firewire/firedtv-fw.c", i32 236, i32 39}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2157769039}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2157781078}
