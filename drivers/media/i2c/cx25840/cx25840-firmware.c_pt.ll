; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/cx25840/cx25840-firmware.c_pt.bc'
source_filename = "../drivers/media/i2c/cx25840/cx25840-firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_firmware = internal constant [17 x i8] c"cx25840.firmware\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@firmware = internal global { ptr, [28 x i8] } { ptr @.str.3, [28 x i8] zeroinitializer }, align 32
@__param_firmware = internal constant %struct.kernel_param { ptr @__param_str_firmware, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @firmware } }, section "__param", align 4
@__UNIQUE_ID_firmwaretype292 = internal constant [32 x i8] c"cx25840.parmtype=firmware:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"cx25840.parm=firmware:Firmware image to load\00", section ".modinfo", align 1
@cx25840_loadfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: unable to open firmware %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx25840_loadfw\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/i2c/cx25840/cx25840-firmware.c\00", [51 x i8] zeroinitializer }, align 32
@cx25840_loadfw._entry_ptr = internal global ptr @cx25840_loadfw._entry, section ".printk_index", align 4
@__UNIQUE_ID_firmware296 = internal constant [42 x i8] c"cx25840.firmware=v4l-cx23885-avcore-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [42 x i8] c"cx25840.firmware=v4l-cx231xx-avcore-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [32 x i8] c"cx25840.firmware=v4l-cx25840.fw\00", section ".modinfo", align 1
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"v4l-cx23885-avcore-01.fw\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"v4l-cx231xx-avcore-01.fw\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"v4l-cx25840.fw\00", [17 x i8] zeroinitializer }, align 32
@fw_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: firmware load i2c failure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_write\00", [23 x i8] zeroinitializer }, align 32
@fw_write._entry_ptr = internal global ptr @fw_write._entry, section ".printk_index", align 4
@check_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s %d-%04x: firmware %s load failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_fw_load\00", [18 x i8] zeroinitializer }, align 32
@check_fw_load._entry_ptr = internal global ptr @check_fw_load._entry, section ".printk_index", align 4
@check_fw_load._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s %d-%04x: loaded %s firmware (%d bytes)\0A\00", [51 x i8] zeroinitializer }, align 32
@check_fw_load._entry_ptr.13 = internal global ptr @check_fw_load._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 26, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 117, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 26, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 62, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 64, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 65, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 88, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 75, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [48 x i8] c"../drivers/media/i2c/cx25840/cx25840-firmware.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 80, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmwaretype292, ptr @__param_firmware, ptr @check_fw_load._entry, ptr @check_fw_load._entry.11, ptr @check_fw_load._entry_ptr, ptr @check_fw_load._entry_ptr.13, ptr @cx25840_loadfw._entry, ptr @cx25840_loadfw._entry_ptr, ptr @fw_write._entry, ptr @fw_write._entry_ptr, ptr @firmware, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_loadfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_load._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_loadfw(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %buffer = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buffer) #5
  %3 = getelementptr inbounds i8, ptr %buffer, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 46)
  %5 = load ptr, ptr @firmware, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.get_fw_name.exit_crit_edge

entry.get_fw_name.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit

if.end.i:                                         ; preds = %entry
  %id.i.i = getelementptr i8, ptr %1, i32 436
  %8 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %switch.i.i = icmp ult i32 %9, 3
  br i1 %switch.i.i, label %if.end.i.get_fw_name.exit_crit_edge, label %if.end4.i

if.end.i.get_fw_name.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 3
  %.str.5..str.6.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  br label %get_fw_name.exit

get_fw_name.exit:                                 ; preds = %if.end4.i, %if.end.i.get_fw_name.exit_crit_edge, %entry.get_fw_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %entry.get_fw_name.exit_crit_edge ], [ @.str.4, %if.end.i.get_fw_name.exit_crit_edge ], [ %.str.5..str.6.i, %if.end4.i ]
  %id.i = getelementptr i8, ptr %1, i32 436
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %switch.i = icmp ult i32 %11, 3
  br i1 %switch.i, label %if.then, label %get_fw_name.exit.if.end_crit_edge

get_fw_name.exit.if.end_crit_edge:                ; preds = %get_fw_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %get_fw_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call zeroext i8 @cx25840_read(ptr noundef %client, i16 noundef zeroext 352) #5
  %call6 = tail call zeroext i8 @cx25840_read(ptr noundef %client, i16 noundef zeroext 356) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %get_fw_name.exit.if.end_crit_edge
  %gpio_oe.0 = phi i8 [ %call5, %if.then ], [ 0, %get_fw_name.exit.if.end_crit_edge ]
  %gpio_da.0 = phi i8 [ %call6, %if.then ], [ 0, %get_fw_name.exit.if.end_crit_edge ]
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  %spec.select = select i1 %cmp.i, i32 14, i32 46
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call13 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %retval.0.i, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr, align 2
  %conv19 = zext i16 %23 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %21, i32 noundef %conv19, ptr noundef %retval.0.i) #8
  br label %cleanup46

if.end21:                                         ; preds = %if.end
  %call.i = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 2048, i8 noundef zeroext 0) #5
  %call1.i = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 2049, i8 noundef zeroext 0) #5
  %call2.i = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 2051, i8 noundef zeroext 11) #5
  %call3.i = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 0, i8 noundef zeroext 32) #5
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %buffer, align 1
  %arrayidx22 = getelementptr inbounds [48 x i8], ptr %buffer, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx22, align 1
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp24106 = icmp sgt i32 %29, 0
  br i1 %cmp24106, label %while.body.lr.ph, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end21
  %data = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr inbounds i8, ptr %buffer, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %size.0108 = phi i32 [ %29, %while.body.lr.ph ], [ %sub35, %cleanup.while.body_crit_edge ]
  %ptr.0107 = phi ptr [ %31, %while.body.lr.ph ], [ %add.ptr36, %cleanup.while.body_crit_edge ]
  %32 = call i32 @llvm.smin.i32(i32 %spec.select, i32 %size.0108)
  %33 = call ptr @memcpy(ptr %add.ptr, ptr %ptr.0107, i32 %32)
  %add = add i32 %32, 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef %add, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add)
  %cmp.i85 = icmp slt i32 %call.i.i, %add
  br i1 %cmp.i85, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %43 to i32
  %call2.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %37, i32 noundef %41, i32 noundef %conv.i) #8
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %45) #5
  br label %cleanup46

cleanup:                                          ; preds = %while.body
  %sub35 = sub i32 %size.0108, %32
  %add.ptr36 = getelementptr i8, ptr %ptr.0107, i32 %32
  %cmp24 = icmp sgt i32 %sub35, 0
  br i1 %cmp24, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end21.while.end_crit_edge
  %call.i88 = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 0, i8 noundef zeroext 0) #5
  %call1.i89 = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 2051, i8 noundef zeroext 3) #5
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @release_firmware(ptr noundef %47) #5
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %switch.i91 = icmp ult i32 %51, 3
  br i1 %switch.i91, label %if.then39, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 352, i8 noundef zeroext %gpio_oe.0) #5
  %call43 = call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 356, i8 noundef zeroext %gpio_da.0) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %while.end.if.end44_crit_edge
  %call.i92 = call zeroext i8 @cx25840_read(ptr noundef %client, i16 noundef zeroext 2049) #5
  %conv.i93 = zext i8 %call.i92 to i32
  %shl.i = shl nuw nsw i32 %conv.i93, 8
  %call1.i94 = call zeroext i8 @cx25840_read(ptr noundef %client, i16 noundef zeroext 2048) #5
  %conv2.i = zext i8 %call1.i94 to i32
  %or.i = or i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %49)
  %cmp.not.i = icmp eq i32 %or.i, %49
  %driver13.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %driver13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver13.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %adapter15.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %56 = ptrtoint ptr %adapter15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter15.i, align 8
  %nr.i32.i = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %nr.i32.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr.i32.i, align 4
  %addr17.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %60 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr17.i, align 2
  %conv18.i = zext i16 %61 to i32
  %62 = load ptr, ptr @firmware, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i33.i = icmp eq i8 %64, 0
  br i1 %cmp.not.i, label %do.end10.i, label %do.end.i95

do.end.i95:                                       ; preds = %if.end44
  br i1 %tobool.not.i33.i, label %if.end.i.i, label %do.end.i95.get_fw_name.exit.i_crit_edge

do.end.i95.get_fw_name.exit.i_crit_edge:          ; preds = %do.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i95
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i, align 4
  %id.i.i.i = getelementptr i8, ptr %66, i32 436
  %67 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %switch.i.i.i = icmp ult i32 %68, 3
  br i1 %switch.i.i.i, label %if.end.i.i.get_fw_name.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.get_fw_name.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp.i.i.i = icmp eq i32 %68, 3
  %.str.5..str.6.i.i = select i1 %cmp.i.i.i, ptr @.str.5, ptr @.str.6
  br label %get_fw_name.exit.i

get_fw_name.exit.i:                               ; preds = %if.end4.i.i, %if.end.i.i.get_fw_name.exit.i_crit_edge, %do.end.i95.get_fw_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %62, %do.end.i95.get_fw_name.exit.i_crit_edge ], [ @.str.4, %if.end.i.i.get_fw_name.exit.i_crit_edge ], [ %.str.5..str.6.i.i, %if.end4.i.i ]
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %55, i32 noundef %59, i32 noundef %conv18.i, ptr noundef %retval.0.i.i) #8
  br label %cleanup46

do.end10.i:                                       ; preds = %if.end44
  br i1 %tobool.not.i33.i, label %if.end.i37.i, label %do.end10.i.get_fw_name.exit42.i_crit_edge

do.end10.i.get_fw_name.exit42.i_crit_edge:        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit42.i

if.end.i37.i:                                     ; preds = %do.end10.i
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i, align 4
  %id.i.i35.i = getelementptr i8, ptr %70, i32 436
  %71 = ptrtoint ptr %id.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i.i35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %switch.i.i36.i = icmp ult i32 %72, 3
  br i1 %switch.i.i36.i, label %if.end.i37.i.get_fw_name.exit42.i_crit_edge, label %if.end4.i40.i

if.end.i37.i.get_fw_name.exit42.i_crit_edge:      ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_fw_name.exit42.i

if.end4.i40.i:                                    ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp.i.i38.i = icmp eq i32 %72, 3
  %.str.5..str.6.i39.i = select i1 %cmp.i.i38.i, ptr @.str.5, ptr @.str.6
  br label %get_fw_name.exit42.i

get_fw_name.exit42.i:                             ; preds = %if.end4.i40.i, %if.end.i37.i.get_fw_name.exit42.i_crit_edge, %do.end10.i.get_fw_name.exit42.i_crit_edge
  %retval.0.i41.i = phi ptr [ %62, %do.end10.i.get_fw_name.exit42.i_crit_edge ], [ @.str.4, %if.end.i37.i.get_fw_name.exit42.i_crit_edge ], [ %.str.5..str.6.i39.i, %if.end4.i40.i ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %55, i32 noundef %59, i32 noundef %conv18.i, ptr noundef %retval.0.i41.i, i32 noundef %49) #8
  br label %cleanup46

cleanup46:                                        ; preds = %get_fw_name.exit42.i, %get_fw_name.exit.i, %cleanup.thread, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -38, %cleanup.thread ], [ -22, %get_fw_name.exit.i ], [ 0, %get_fw_name.exit42.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buffer) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx25840_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__param_firmware, !1, !"__param_firmware", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmwaretype292, !1, !"__UNIQUE_ID_firmwaretype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_firmware293, !4, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 30, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 117, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx25840_loadfw._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx25840_loadfw._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware296, !12, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 158, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware297, !14, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 159, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware298, !16, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 160, i32 1}
!17 = !{ptr @__param_str_firmware, !1, !"__param_str_firmware", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 26, i32 25}
!20 = !{ptr @firmware, !21, !"firmware", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 26, i32 14}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 62, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 64, i32 10}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 65, i32 9}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 88, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fw_write._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @fw_write._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 75, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @check_fw_load._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @check_fw_load._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/cx25840/cx25840-firmware.c", i32 80, i32 2}
!40 = !{ptr @check_fw_load._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @check_fw_load._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
