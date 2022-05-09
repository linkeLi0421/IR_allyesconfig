; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/da311.c_pt.bc'
source_filename = "../drivers/iio/accel/da311.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.anon.87 = type { i16, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da311__288_288_da311_driver_init6 = internal global ptr @da311_driver_init, section ".initcall6.init", align 4
@da311_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da311_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da311_pm_ops, ptr null, ptr null }, ptr @da311_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da311_driver_exit = internal global ptr @da311_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"da311.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"da311.description=MiraMEMS DA311 3-Axis Accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"da311.file=drivers/iio/accel/da311\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"da311.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"da311\00", [26 x i8] zeroinitializer }, align 32
@da311_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @da311_suspend, ptr @da311_resume, ptr @da311_suspend, ptr @da311_resume, ptr @da311_suspend, ptr @da311_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@da311_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da311\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da311_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @da311_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@da311_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 168, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 170, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 172, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@da311_reset.init_data = internal constant { [11 x %struct.anon.87], [52 x i8] } { [11 x %struct.anon.87] [%struct.anon.87 { i16 31, i8 -1, i8 8 }, %struct.anon.87 { i16 36, i8 -1, i8 -128 }, %struct.anon.87 { i16 35, i8 48, i8 0 }, %struct.anon.87 { i16 32, i8 -1, i8 111 }, %struct.anon.87 { i16 31, i8 -1, i8 -120 }, %struct.anon.87 { i16 6, i8 -1, i8 2 }, %struct.anon.87 { i16 283, i8 -1, i8 39 }, %struct.anon.87 { i16 284, i8 -1, i8 48 }, %struct.anon.87 { i16 295, i8 -1, i8 63 }, %struct.anon.87 { i16 296, i8 -1, i8 -1 }, %struct.anon.87 { i16 297, i8 -1, i8 15 }], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"da311_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 279, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 281, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"da311_pm_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 271, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"da311_i2c_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 273, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"da311_info\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 211, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"da311_channels\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 89, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"init_data\00", align 1
@___asan_gen_.20 = private constant [29 x i8] c"../drivers/iio/accel/da311.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 143, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da311_driver_exit, ptr @__initcall__kmod_da311__288_288_da311_driver_init6, ptr @da311_driver_exit, ptr @da311_driver, ptr @.str, ptr @da311_pm_ops, ptr @da311_i2c_id, ptr @da311_info, ptr @da311_channels, ptr @da311_reset.init_data], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da311_reset.init_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da311_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da311_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da311_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @da311_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da311_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call)
  %cmp.not = icmp eq i32 %call, 19
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 4) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @da311_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name, align 8
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @da311_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %num_channels, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.cleanup_crit_edge, label %if.end3.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end4
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 5, i8 noundef zeroext -86) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %if.end3.i.i.cleanup_crit_edge, label %if.end32.i.i

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32.i.i:                                     ; preds = %if.end3.i.i
  %call37.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.end32.i.i.cleanup_crit_edge, label %if.end32.i.i.for.body.i_crit_edge

if.end32.i.i.for.body.i_crit_edge:                ; preds = %if.end32.i.i
  br label %for.body.i

if.end32.i.i.cleanup_crit_edge:                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end32.i.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end32.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.anon.87], ptr @da311_reset.init_data, i32 0, i32 %i.032.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %mask.i = getelementptr [11 x %struct.anon.87], ptr @da311_reset.init_data, i32 0, i32 %i.032.i, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask.i, align 2
  %data.i = getelementptr [11 x %struct.anon.87], ptr @da311_reset.init_data, i32 0, i32 %i.032.i, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %tobool.not.i.i = icmp ult i16 %9, 256
  br i1 %tobool.not.i.i, label %for.body.i.if.end3.i19.i_crit_edge, label %if.then.i.i

for.body.i.if.end3.i19.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i19.i

if.then.i.i:                                      ; preds = %for.body.i
  %call.i17.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i18.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i18.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end3.i19.i_crit_edge

if.then.i.i.if.end3.i19.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i19.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i19.i:                                    ; preds = %if.then.i.i.if.end3.i19.i_crit_edge, %for.body.i.if.end3.i19.i_crit_edge
  %conv4.i.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.032.i)
  %cmp5.not.i.not.i = icmp eq i32 %i.032.i, 2
  %.pre.i.i = trunc i16 %9 to i8
  br i1 %cmp5.not.i.not.i, label %if.then7.i.i, label %if.end3.i19.i.if.end15.i.i_crit_edge

if.end3.i19.i.if.end15.i.i_crit_edge:             ; preds = %if.end3.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i.i

if.then7.i.i:                                     ; preds = %if.end3.i19.i
  %call9.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %.pre.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.then7.i.i.cleanup_crit_edge, label %if.end13.i.i

if.then7.i.i.cleanup_crit_edge:                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast.i.i = and i32 %call9.i.i, 255
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %if.end3.i19.i.if.end15.i.i_crit_edge
  %tmp_data.0.i.i = phi i32 [ %phi.cast.i.i, %if.end13.i.i ], [ 0, %if.end3.i19.i.if.end15.i.i_crit_edge ]
  %neg.i.i = xor i32 %conv4.i.i, -1
  %and18.i.i = and i32 %tmp_data.0.i.i, %neg.i.i
  %and2262.i.i = and i8 %13, %11
  %14 = trunc i32 %and18.i.i to i8
  %conv24.i.i = or i8 %and2262.i.i, %14
  %call28.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %.pre.i.i, i8 noundef zeroext %conv24.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i20.i)
  %cmp29.i21.i = icmp slt i32 %call28.i20.i, 0
  br i1 %cmp29.i21.i, label %if.end15.i.i.cleanup_crit_edge, label %if.end32.i22.i

if.end15.i.i.cleanup_crit_edge:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32.i22.i:                                   ; preds = %if.end15.i.i
  br i1 %tobool.not.i.i, label %if.end32.i22.i.for.inc.i_crit_edge, label %if.then36.i.i

if.end32.i22.i.for.inc.i_crit_edge:               ; preds = %if.end32.i22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then36.i.i:                                    ; preds = %if.end32.i22.i
  %call37.i23.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i23.i)
  %cmp38.i24.i = icmp slt i32 %call37.i23.i, 0
  br i1 %cmp38.i24.i, label %if.then36.i.i.cleanup_crit_edge, label %if.then36.i.i.for.inc.i_crit_edge

if.then36.i.i.for.inc.i_crit_edge:                ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then36.i.i.cleanup_crit_edge:                  ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.i:                                        ; preds = %if.then36.i.i.for.inc.i_crit_edge, %if.end32.i22.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end10, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end10:                                         ; preds = %for.inc.i
  %call9.i.i46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i46)
  %cmp10.i.i47 = icmp slt i32 %call9.i.i46, 0
  br i1 %cmp10.i.i47, label %if.end10.cleanup_crit_edge, label %da311_enable.exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

da311_enable.exit:                                ; preds = %if.end10
  %15 = trunc i32 %call9.i.i46 to i8
  %16 = and i8 %15, -33
  %call28.i.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext %16) #4
  %17 = tail call i32 @llvm.smin.i32(i32 %call28.i.i48, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i48)
  %cmp12 = icmp slt i32 %call28.i.i48, 0
  br i1 %cmp12, label %da311_enable.exit.cleanup_crit_edge, label %if.end14

da311_enable.exit.cleanup_crit_edge:              ; preds = %da311_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %da311_enable.exit
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @da311_disable, ptr noundef %client) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end19, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  %call9.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i.i)
  %cmp10.i.i.i.i = icmp slt i32 %call9.i.i.i.i, 0
  br i1 %cmp10.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.end13.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = trunc i32 %call9.i.i.i.i to i8
  %conv24.i.i.i.i = or i8 %18, 32
  %call28.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext %conv24.i.i.i.i) #4
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.i.i.i.i, %if.then.i.cleanup_crit_edge, %da311_enable.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then36.i.i.cleanup_crit_edge, %if.end15.i.i.cleanup_crit_edge, %if.then7.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.end32.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %call21, %if.end19 ], [ -12, %if.end.cleanup_crit_edge ], [ %17, %da311_enable.exit.cleanup_crit_edge ], [ %call.i.i, %if.end4.cleanup_crit_edge ], [ %call28.i.i, %if.end3.i.i.cleanup_crit_edge ], [ %call37.i.i, %if.end32.i.i.cleanup_crit_edge ], [ %call9.i.i46, %if.end10.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %if.end13.i.i.i.i ], [ %call.i17.i, %if.then.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.then7.i.i.cleanup_crit_edge ], [ %call28.i20.i, %if.end15.i.i.cleanup_crit_edge ], [ %call37.i23.i, %if.then36.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da311_disable(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %entry.da311_enable.exit_crit_edge, label %if.end13.i.i

entry.da311_enable.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %da311_enable.exit

if.end13.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = trunc i32 %call9.i.i to i8
  %conv24.i.i = or i8 %0, 32
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext %conv24.i.i) #4
  br label %da311_enable.exit

da311_enable.exit:                                ; preds = %if.end13.i.i, %entry.da311_enable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da311_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %conv = trunc i32 %6 to i8
  %call1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %sext = shl i32 %call1, 16
  %shr = ashr i32 %sext, 20
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9580078, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.bb5 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da311_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call9.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %entry.da311_enable.exit_crit_edge, label %if.end13.i.i

entry.da311_enable.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %da311_enable.exit

if.end13.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = trunc i32 %call9.i.i to i8
  %conv24.i.i = or i8 %0, 32
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext %conv24.i.i) #4
  %1 = tail call i32 @llvm.smin.i32(i32 %call28.i.i, i32 0) #4
  br label %da311_enable.exit

da311_enable.exit:                                ; preds = %if.end13.i.i, %entry.da311_enable.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call9.i.i, %entry.da311_enable.exit_crit_edge ], [ %1, %if.end13.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da311_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call9.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %entry.da311_enable.exit_crit_edge, label %if.end13.i.i

entry.da311_enable.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %da311_enable.exit

if.end13.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = trunc i32 %call9.i.i to i8
  %1 = and i8 %0, -33
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext %1) #4
  %2 = tail call i32 @llvm.smin.i32(i32 %call28.i.i, i32 0) #4
  br label %da311_enable.exit

da311_enable.exit:                                ; preds = %if.end13.i.i, %entry.da311_enable.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call9.i.i, %entry.da311_enable.exit_crit_edge ], [ %2, %if.end13.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_da311__288_288_da311_driver_init6, !1, !"__initcall__kmod_da311__288_288_da311_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/da311.c", i32 288, i32 1}
!2 = !{ptr @__exitcall_da311_driver_exit, !1, !"__exitcall_da311_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/da311.c", i32 290, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/da311.c", i32 291, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/da311.c", i32 292, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/da311.c", i32 281, i32 11}
!12 = !{ptr @da311_driver, !13, !"da311_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/da311.c", i32 279, i32 26}
!14 = !{ptr @da311_info, !15, !"da311_info", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/da311.c", i32 211, i32 30}
!16 = !{ptr @da311_channels, !17, !"da311_channels", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/da311.c", i32 89, i32 35}
!18 = !{ptr @da311_reset.init_data, !19, !"init_data", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/da311.c", i32 143, i32 4}
!20 = !{ptr @da311_pm_ops, !21, !"da311_pm_ops", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/da311.c", i32 271, i32 8}
!22 = !{ptr @da311_i2c_id, !23, !"da311_i2c_id", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/da311.c", i32 273, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
