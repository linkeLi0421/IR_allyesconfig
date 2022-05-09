; ModuleID = '/llk/IR_all_yes/drivers/media/usb/hdpvr/hdpvr-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/hdpvr/hdpvr-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdpvr_device = type { %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_device, %struct.anon.98, i32, i32, i32, i8, i8, %struct.hdpvr_options, i64, %struct.v4l2_dv_timings, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.i2c_adapter, %struct.mutex, [128 x i8], %struct.IR_i2c_init_data, %struct.mutex, ptr, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.hdpvr_options = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__const.hdpvr_register_ir_i2c.info = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"ir_z8f0811_hdpvr\00\00\00\00", i16 0, i16 113, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HD-PVR\00", [25 x i8] zeroinitializer }, align 32
@hdpvr_i2c_adapter_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @hdpvr_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"Hauppauge HD PVR I2C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@hdpvr_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @hdpvr_transfer, ptr null, ptr null, ptr null, ptr @hdpvr_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hdpvr_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: refusing 2-phase i2c xfer with conflicting target addresses\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdpvr_transfer\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/hdpvr/hdpvr-i2c.c\00", [60 x i8] zeroinitializer }, align 32
@hdpvr_transfer._entry_ptr = internal global ptr @hdpvr_transfer._entry, section ".printk_index", align 4
@hdpvr_transfer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: refusing complex xfer with r0=%d, r1=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@hdpvr_transfer._entry_ptr.7 = internal global ptr @hdpvr_transfer._entry.5, section ".printk_index", align 4
@hdpvr_transfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: refusing %d-phase i2c xfer\0A\00", [62 x i8] zeroinitializer }, align 32
@hdpvr_transfer._entry_ptr.10 = internal global ptr @hdpvr_transfer._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 39, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 43, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"hdpvr_i2c_adapter_template\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 168, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"hdpvr_algo\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 163, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 129, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 135, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [39 x i8] c"../drivers/media/usb/hdpvr/hdpvr-i2c.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 149, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @hdpvr_transfer._entry, ptr @hdpvr_transfer._entry.5, ptr @hdpvr_transfer._entry.8, ptr @hdpvr_transfer._entry_ptr, ptr @hdpvr_transfer._entry_ptr.10, ptr @hdpvr_transfer._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @hdpvr_i2c_adapter_template, ptr @hdpvr_algo, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_i2c_adapter_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transfer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hdpvr_register_ir_i2c(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_i2c_init_data = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #5
  %0 = call ptr @memcpy(ptr %info, ptr @__const.hdpvr_register_ir_i2c.info, i32 56)
  %1 = ptrtoint ptr %ir_i2c_init_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %ir_i2c_init_data, align 8
  %internal_get_key_func = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 24, i32 5
  %2 = ptrtoint ptr %internal_get_key_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %internal_get_key_func, align 8
  %type = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 24, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 786436, ptr %type, align 8
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 4
  %polling_interval = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 24, i32 3
  %5 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 405, ptr %polling_interval, align 8
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ir_i2c_init_data, ptr %platform_data, align 4
  %i2c_adapter = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 21
  %call = call ptr @i2c_new_client_device(ptr noundef %i2c_adapter, ptr noundef nonnull %info) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #5
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_register_i2c_adapter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_mutex.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #5
  %udev15.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev15.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i57.i.i = shl i32 %3, 8
  %or19.i.i = or i32 %shl.i57.i.i, -2147483520
  %i2c_buf24.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 23
  %call27.i.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or19.i.i, i8 noundef zeroext -79, i8 noundef zeroext -72, i16 noundef zeroext 84, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i.i, i16 noundef zeroext 1, i32 noundef 1000) #5
  %4 = ptrtoint ptr %i2c_buf24.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %i2c_buf24.i.i, align 4
  %buffer.sroa.7.0.i2c_buf.i.sroa_idx.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %buffer.sroa.7.0.i2c_buf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %buffer.sroa.7.0.i2c_buf.i.sroa_idx.i, align 1
  %6 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev15.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext -80, i8 noundef zeroext 56, i16 noundef zeroext 340, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i.i, i16 noundef zeroext 2, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %entry.hdpvr_i2c_write.exit.i_crit_edge, label %if.end11.i.i

entry.hdpvr_i2c_write.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdpvr_i2c_write.exit.i

if.end11.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev15.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i1.i.i = shl i32 %13, 8
  %or16.i.i = or i32 %shl.i1.i.i, -2147483520
  %call19.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or16.i.i, i8 noundef zeroext -48, i8 noundef zeroext -72, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i.i, i16 noundef zeroext 2, i32 noundef 1000) #5
  br label %hdpvr_i2c_write.exit.i

hdpvr_i2c_write.exit.i:                           ; preds = %if.end11.i.i, %entry.hdpvr_i2c_write.exit.i_crit_edge
  %14 = ptrtoint ptr %i2c_buf24.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %i2c_buf24.i.i, align 4
  %15 = ptrtoint ptr %buffer.sroa.7.0.i2c_buf.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 24, ptr %buffer.sroa.7.0.i2c_buf.i.sroa_idx.i, align 1
  %16 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev15.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i6.i = shl i32 %19, 8
  %or.i7.i = or i32 %shl.i.i6.i, -2147483648
  %call7.i8.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i7.i, i8 noundef zeroext -80, i8 noundef zeroext 56, i16 noundef zeroext 340, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i.i, i16 noundef zeroext 2, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i8.i)
  %cmp8.i9.i = icmp slt i32 %call7.i8.i, 0
  br i1 %cmp8.i9.i, label %hdpvr_i2c_write.exit.i.hdpvr_activate_ir.exit_crit_edge, label %if.end11.i14.i

hdpvr_i2c_write.exit.i.hdpvr_activate_ir.exit_crit_edge: ; preds = %hdpvr_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hdpvr_activate_ir.exit

if.end11.i14.i:                                   ; preds = %hdpvr_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev15.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i1.i10.i = shl i32 %23, 8
  %or16.i11.i = or i32 %shl.i1.i10.i, -2147483520
  %call19.i12.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or16.i11.i, i8 noundef zeroext -48, i8 noundef zeroext -72, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i.i, i16 noundef zeroext 2, i32 noundef 1000) #5
  br label %hdpvr_activate_ir.exit

hdpvr_activate_ir.exit:                           ; preds = %if.end11.i14.i, %hdpvr_i2c_write.exit.i.hdpvr_activate_ir.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #5
  %i2c_adapter = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 21
  %24 = call ptr @memcpy(ptr %i2c_adapter, ptr @hdpvr_i2c_adapter_template, i32 1360)
  %25 = ptrtoint ptr %udev15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev15.i.i, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %parent = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 21, i32 9, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 21, i32 9, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %call6 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #5
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_transfer(ptr nocapture noundef readonly %i2c_adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #5
  %2 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msgs, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %4 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num, label %do.end77 [
    i32 1, label %if.then
    i32 2, label %if.then22
  ]

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv10 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %11)
  %cmp.i = icmp ugt i16 %11, 128
  br i1 %cmp.i, label %if.then6.out.thread_crit_edge, label %if.end.i

if.then6.out.thread_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end.i:                                         ; preds = %if.then6
  %12 = trunc i32 %shl to i16
  %13 = and i16 %12, 254
  %.pre60.i = or i16 %13, 256
  %udev15.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %udev15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev15.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i57.i = shl i32 %17, 8
  %or19.i = or i32 %shl.i57.i, -2147483520
  %i2c_buf24.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 23
  %call27.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or19.i, i8 noundef zeroext -79, i8 noundef zeroext -72, i16 noundef zeroext %.pre60.i, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i, i16 noundef zeroext %11, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %conv10)
  %cmp28.i = icmp eq i32 %call27.i, %conv10
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = call ptr @memcpy(ptr %9, ptr %i2c_buf24.i, i32 %conv10)
  br label %out.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i)
  %cmp33.i = icmp sgt i32 %call27.i, -1
  %spec.select = select i1 %cmp33.i, i32 -5, i32 %call27.i
  br label %out.thread

if.else:                                          ; preds = %if.then
  %len16 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %19 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len16, align 4
  %conv17 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %20)
  %cmp.i115 = icmp ugt i16 %20, 128
  br i1 %cmp.i115, label %if.else.out.thread_crit_edge, label %if.end.i116

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end.i116:                                      ; preds = %if.else
  %buf14 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %21 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf14, align 4
  %i2c_buf.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 23
  %23 = call ptr @memcpy(ptr %i2c_buf.i, ptr %22, i32 %conv17)
  %udev.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %28 = trunc i32 %shl to i16
  %conv.i = and i16 %28, 254
  %or2.i = or i16 %conv.i, 256
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext -80, i8 noundef zeroext 56, i16 noundef zeroext %or2.i, i16 noundef zeroext 0, ptr noundef %i2c_buf.i, i16 noundef zeroext %20, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i116.out.thread_crit_edge, label %if.end11.i

if.end.i116.out.thread_crit_edge:                 ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end11.i:                                       ; preds = %if.end.i116
  %29 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i1.i = shl i32 %32, 8
  %or16.i = or i32 %shl.i1.i, -2147483520
  %call19.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or16.i, i8 noundef zeroext -48, i8 noundef zeroext -72, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %i2c_buf.i, i16 noundef zeroext 2, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call19.i)
  %cmp20.i = icmp eq i32 %call19.i, 2
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.else.i118

land.lhs.true.i:                                  ; preds = %if.end11.i
  %arrayidx.i = getelementptr %struct.hdpvr_device, ptr %1, i32 0, i32 23, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv23.i = zext i8 %34 to i32
  %sub.i = add nsw i32 %conv17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv23.i)
  %cmp24.i = icmp eq i32 %sub.i, %conv23.i
  br i1 %cmp24.i, label %land.lhs.true.i.out.thread_crit_edge, label %land.lhs.true.i.select.unfold142_crit_edge

land.lhs.true.i.select.unfold142_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %select.unfold142

land.lhs.true.i.out.thread_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.else.i118:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i)
  %cmp27.i = icmp sgt i32 %call19.i, -1
  br i1 %cmp27.i, label %if.else.i118.select.unfold142_crit_edge, label %if.else.i118.out.thread_crit_edge

if.else.i118.out.thread_crit_edge:                ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.else.i118.select.unfold142_crit_edge:          ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %select.unfold142

if.then22:                                        ; preds = %entry
  %arrayidx26 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %36)
  %cmp29.not = icmp eq i16 %3, %36
  br i1 %cmp29.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  br label %out.thread

if.end33:                                         ; preds = %if.then22
  %flags35 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %37 = ptrtoint ptr %flags35 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags35, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool38.not = icmp eq i16 %39, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %if.end33.do.end47_crit_edge

if.end33.do.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

lor.lhs.false:                                    ; preds = %if.end33
  %flags40 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %40 = ptrtoint ptr %flags40 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags40, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool43.not = icmp eq i16 %42, 0
  br i1 %tobool43.not, label %lor.lhs.false.do.end47_crit_edge, label %if.end61

lor.lhs.false.do.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

do.end47:                                         ; preds = %lor.lhs.false.do.end47_crit_edge, %if.end33.do.end47_crit_edge
  %name50 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %and55 = zext i16 %39 to i32
  %flags57 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %43 = ptrtoint ptr %flags57 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags57, align 2
  %45 = and i16 %44, 1
  %and59 = zext i16 %45 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name50, i32 noundef %and55, i32 noundef %and59) #8
  br label %out.thread

if.end61:                                         ; preds = %lor.lhs.false
  %buf64 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %46 = ptrtoint ptr %buf64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf64, align 4
  %len66 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %48 = ptrtoint ptr %len66 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len66, align 4
  %conv67 = zext i16 %49 to i32
  %buf69 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %50 = ptrtoint ptr %buf69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf69, align 4
  %len71 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %52 = ptrtoint ptr %len71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len71, align 4
  %conv72 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %53)
  %cmp.i120 = icmp ugt i16 %53, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %49)
  %cmp1.i = icmp ugt i16 %49, 128
  %or.cond.i = or i1 %cmp1.i, %cmp.i120
  br i1 %or.cond.i, label %if.end61.out.thread_crit_edge, label %if.end.i121

if.end61.out.thread_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end.i121:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i, label %if.end.if.end14_crit_edge.i, label %if.then2.i

if.end.if.end14_crit_edge.i:                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  %54 = trunc i32 %shl to i16
  %55 = and i16 %54, 254
  %.pre60.i124 = or i16 %55, 256
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i121
  %i2c_buf.i125 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 23
  %56 = call ptr @memcpy(ptr %i2c_buf.i125, ptr %47, i32 %conv67)
  %udev.i126 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %udev.i126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev.i126, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i127 = shl i32 %60, 8
  %or.i128 = or i32 %shl.i.i127, -2147483648
  %61 = trunc i32 %shl to i16
  %62 = and i16 %61, 254
  %conv5.i = or i16 %62, 256
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i128, i8 noundef zeroext -80, i8 noundef zeroext 56, i16 noundef zeroext %conv5.i, i16 noundef zeroext 0, ptr noundef %i2c_buf.i125, i16 noundef zeroext %49, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then2.i.out.thread_crit_edge, label %if.then2.i.if.end14.i_crit_edge

if.then2.i.if.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then2.i.out.thread_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end14.i:                                       ; preds = %if.then2.i.if.end14.i_crit_edge, %if.end.if.end14_crit_edge.i
  %conv23.pre-phi.i = phi i16 [ %.pre60.i124, %if.end.if.end14_crit_edge.i ], [ %conv5.i, %if.then2.i.if.end14.i_crit_edge ]
  %udev15.i130 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %udev15.i130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev15.i130, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i57.i131 = shl i32 %66, 8
  %or19.i132 = or i32 %shl.i57.i131, -2147483520
  %i2c_buf24.i133 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 23
  %call27.i134 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or19.i132, i8 noundef zeroext -79, i8 noundef zeroext -72, i16 noundef zeroext %conv23.pre-phi.i, i16 noundef zeroext 0, ptr noundef %i2c_buf24.i133, i16 noundef zeroext %53, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i134, i32 %conv72)
  %cmp28.i135 = icmp eq i32 %call27.i134, %conv72
  br i1 %cmp28.i135, label %if.then30.i136, label %if.else.i139

if.then30.i136:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = call ptr @memcpy(ptr %51, ptr %i2c_buf24.i133, i32 %conv72)
  br label %out.thread

if.else.i139:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i134)
  %cmp33.i137 = icmp sgt i32 %call27.i134, -1
  %spec.select147 = select i1 %cmp33.i137, i32 -5, i32 %call27.i134
  br label %out.thread

do.end77:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name80 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name80, i32 noundef %num) #8
  br label %out.thread

select.unfold142:                                 ; preds = %if.else.i118.select.unfold142_crit_edge, %land.lhs.true.i.select.unfold142_crit_edge
  br label %out.thread

out.thread:                                       ; preds = %select.unfold142, %do.end77, %if.else.i139, %if.then30.i136, %if.then2.i.out.thread_crit_edge, %if.end61.out.thread_crit_edge, %do.end47, %do.end, %if.else.i118.out.thread_crit_edge, %land.lhs.true.i.out.thread_crit_edge, %if.end.i116.out.thread_crit_edge, %if.else.out.thread_crit_edge, %if.else.i, %if.then30.i, %if.then6.out.thread_crit_edge
  %68 = phi i32 [ -5, %select.unfold142 ], [ %call9.i, %if.then2.i.out.thread_crit_edge ], [ -22, %if.end61.out.thread_crit_edge ], [ %call19.i, %if.else.i118.out.thread_crit_edge ], [ %call7.i, %if.end.i116.out.thread_crit_edge ], [ -22, %if.else.out.thread_crit_edge ], [ -22, %if.then6.out.thread_crit_edge ], [ -22, %do.end47 ], [ -22, %do.end ], [ %spec.select, %if.else.i ], [ %spec.select147, %if.else.i139 ], [ %num, %do.end77 ], [ %num, %if.then30.i ], [ %num, %land.lhs.true.i.out.thread_crit_edge ], [ %num, %if.then30.i136 ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #5
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdpvr_functionality(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 39, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 43, i32 20}
!4 = !{ptr @hdpvr_i2c_adapter_template, !5, !"hdpvr_i2c_adapter_template", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 168, i32 33}
!6 = !{ptr @hdpvr_algo, !7, !"hdpvr_algo", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 163, i32 35}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 129, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hdpvr_transfer._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hdpvr_transfer._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 135, i32 4}
!16 = !{ptr @hdpvr_transfer._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hdpvr_transfer._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/hdpvr/hdpvr-i2c.c", i32 149, i32 3}
!20 = !{ptr @hdpvr_transfer._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hdpvr_transfer._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
