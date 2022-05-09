; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-slave-eeprom.c_pt.bc'
source_filename = "../drivers/i2c/i2c-slave-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.eeprom_data = type { %struct.bin_attribute, %struct.spinlock, i16, i16, i8, i8, i8, [0 x i8] }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@__initcall__kmod_i2c_slave_eeprom__303_215_i2c_slave_eeprom_driver_init6 = internal global ptr @i2c_slave_eeprom_driver_init, section ".initcall6.init", align 4
@i2c_slave_eeprom_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @i2c_slave_eeprom_probe, ptr @i2c_slave_eeprom_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @i2c_slave_eeprom_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_i2c_slave_eeprom_driver_exit = internal global ptr @i2c_slave_eeprom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [64 x i8] c"i2c_slave_eeprom.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [61 x i8] c"i2c_slave_eeprom.description=I2C slave mode EEPROM simulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [51 x i8] c"i2c_slave_eeprom.file=drivers/i2c/i2c-slave-eeprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [32 x i8] c"i2c_slave_eeprom.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c-slave-eeprom\00", [47 x i8] zeroinitializer }, align 32
@i2c_slave_eeprom_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"slave-24c02\00\00\00\00\00\00\00\00\00", i32 255 }, %struct.i2c_device_id { [20 x i8] c"slave-24c02ro\00\00\00\00\00\00\00", i32 131327 }, %struct.i2c_device_id { [20 x i8] c"slave-24c32\00\00\00\00\00\00\00\00\00", i32 69631 }, %struct.i2c_device_id { [20 x i8] c"slave-24c32ro\00\00\00\00\00\00\00", i32 200703 }, %struct.i2c_device_id { [20 x i8] c"slave-24c64\00\00\00\00\00\00\00\00\00", i32 73727 }, %struct.i2c_device_id { [20 x i8] c"slave-24c64ro\00\00\00\00\00\00\00", i32 204799 }, %struct.i2c_device_id { [20 x i8] c"slave-24c512\00\00\00\00\00\00\00\00", i32 131071 }, %struct.i2c_device_id { [20 x i8] c"slave-24c512ro\00\00\00\00\00\00", i32 262143 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@i2c_slave_eeprom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&eeprom->buffer_lock\00", [43 x i8] zeroinitializer }, align 32
@i2c_slave_eeprom_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slave-eeprom\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"i2c_slave_eeprom_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 207, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 209, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"i2c_slave_eeprom_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 194, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 157, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 164, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 165, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [34 x i8] c"../drivers/i2c/i2c-slave-eeprom.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 128, i32 54 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_i2c_slave_eeprom_driver_exit, ptr @__initcall__kmod_i2c_slave_eeprom__303_215_i2c_slave_eeprom_driver_init6, ptr @i2c_slave_eeprom_driver_exit, ptr @i2c_slave_eeprom_driver, ptr @.str, ptr @i2c_slave_eeprom_id, ptr @i2c_slave_eeprom_probe.__key, ptr @.str.1, ptr @i2c_slave_eeprom_probe.__key.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_eeprom_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_eeprom_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_eeprom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_eeprom_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @i2c_slave_eeprom_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_slave_eeprom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @i2c_slave_eeprom_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %eeprom_data.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %and = and i32 %1, 65535
  %add = add nuw nsw i32 %and, 1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %add32 = add nuw nsw i32 %and, 97
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add32, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool33.not = icmp eq i32 %2, 0
  %conv = select i1 %tobool33.not, i8 1, i8 2
  %num_address_bytes = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %num_address_bytes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %num_address_bytes, align 4
  %conv34 = trunc i32 %1 to i16
  %address_mask = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %address_mask to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv34, ptr %address_mask, align 2
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %read_only = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 6
  %7 = lshr i32 %6, 17
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %read_only, align 2
  %buffer_lock = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @i2c_slave_eeprom_probe.__key, i16 noundef signext 3) #4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #4
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eeprom_data.i) #4
  %13 = ptrtoint ptr %eeprom_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %eeprom_data.i, align 4, !annotation !34
  %call.i119 = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %eeprom_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %eeprom_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eeprom_data.i, align 4
  %buffer.i = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 7
  %call2.i = call i32 @request_firmware_into_buf(ptr noundef nonnull %fw.i, ptr noundef %15, ptr noundef %dev, ptr noundef %buffer.i, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %i2c_slave_init_eeprom_data.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %17) #4
  br label %do.body63

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %buffer5.i = getelementptr inbounds %struct.eeprom_data, ptr %call.i, i32 0, i32 7
  %18 = call ptr @memset(ptr %buffer5.i, i32 255, i32 %add)
  br label %do.body63

i2c_slave_init_eeprom_data.exit:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eeprom_data.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #4
  br label %cleanup

do.body63:                                        ; preds = %if.else.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eeprom_data.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @i2c_slave_eeprom_probe.__key.2, ptr %key, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.3, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 384, ptr %mode, align 4
  %read = getelementptr inbounds %struct.bin_attribute, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @i2c_slave_eeprom_bin_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.bin_attribute, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @i2c_slave_eeprom_bin_write, ptr %write, align 4
  %size73 = getelementptr inbounds %struct.bin_attribute, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %size73 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %size73, align 4
  %call76 = call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end79:                                         ; preds = %do.body63
  %call80 = call i32 @i2c_slave_register(ptr noundef %client, ptr noundef nonnull @i2c_slave_eeprom_slave_cb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %if.then82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end79.cleanup_crit_edge, %do.body63.cleanup_crit_edge, %i2c_slave_init_eeprom_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %if.then82 ], [ -12, %entry.cleanup_crit_edge ], [ %call2.i, %i2c_slave_init_eeprom_data.exit ], [ %call76, %do.body63.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i2c_slave_unregister(ptr noundef %client) #4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_bin_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buffer_lock = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #4
  %idxprom = trunc i64 %off to i32
  %arrayidx = getelementptr %struct.eeprom_data, ptr %1, i32 0, i32 7, i32 %idxprom
  %2 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %count)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call4) #4
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_bin_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buffer_lock = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #4
  %idxprom = trunc i64 %off to i32
  %arrayidx = getelementptr %struct.eeprom_data, ptr %1, i32 0, i32 7, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %count)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call4) #4
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_slave_cb(ptr nocapture noundef readonly %client, i32 noundef %event, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb22
    i32 0, label %entry.sw.bb25_crit_edge
    i32 4, label %entry.sw.bb35_crit_edge
    i32 1, label %entry.sw.bb35_crit_edge60
  ]

entry.sw.bb35_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

entry.sw.bb35_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb35

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %idx_write_cnt = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %idx_write_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %idx_write_cnt, align 1
  %num_address_bytes = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %num_address_bytes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_address_bytes, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp ult i8 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5 = icmp eq i8 %4, 0
  br i1 %cmp5, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %buffer_idx = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %buffer_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %buffer_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %conv8 = zext i8 %9 to i16
  %buffer_idx9 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %buffer_idx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buffer_idx9, align 4
  %shl = shl i16 %11, 8
  %or = or i16 %shl, %conv8
  store i16 %or, ptr %buffer_idx9, align 4
  %12 = ptrtoint ptr %idx_write_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %idx_write_cnt, align 1
  %inc = add i8 %13, 1
  store i8 %inc, ptr %idx_write_cnt, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %read_only = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %read_only, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then14, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %buffer_lock = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock) #4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %buffer_idx15 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %buffer_idx15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buffer_idx15, align 4
  %inc16 = add i16 %19, 1
  store i16 %inc16, ptr %buffer_idx15, align 4
  %address_mask = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %address_mask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %address_mask, align 2
  %and59 = and i16 %21, %19
  %and = zext i16 %and59 to i32
  %arrayidx = getelementptr %struct.eeprom_data, ptr %1, i32 0, i32 7, i32 %and
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %17, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock(ptr noundef %buffer_lock) #4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %buffer_idx23 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %buffer_idx23 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %buffer_idx23, align 4
  %inc24 = add i16 %24, 1
  store i16 %inc24, ptr %buffer_idx23, align 4
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb22, %entry.sw.bb25_crit_edge
  %buffer_lock26 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %buffer_lock26) #4
  %buffer_idx28 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %buffer_idx28 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buffer_idx28, align 4
  %address_mask30 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %address_mask30 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %address_mask30, align 2
  %and3258 = and i16 %28, %26
  %and32 = zext i16 %and3258 to i32
  %arrayidx33 = getelementptr %struct.eeprom_data, ptr %1, i32 0, i32 7, i32 %and32
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx33, align 1
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %val, align 1
  tail call void @_raw_spin_unlock(ptr noundef %buffer_lock26) #4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry.sw.bb35_crit_edge, %entry.sw.bb35_crit_edge60
  %idx_write_cnt36 = getelementptr inbounds %struct.eeprom_data, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %idx_write_cnt36 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %idx_write_cnt36, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb25, %if.then14, %if.else.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_i2c_slave_eeprom__303_215_i2c_slave_eeprom_driver_init6, !1, !"__initcall__kmod_i2c_slave_eeprom__303_215_i2c_slave_eeprom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 215, i32 1}
!2 = !{ptr @__exitcall_i2c_slave_eeprom_driver_exit, !1, !"__exitcall_i2c_slave_eeprom_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 217, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 218, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 219, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 209, i32 11}
!12 = !{ptr @i2c_slave_eeprom_driver, !13, !"i2c_slave_eeprom_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 207, i32 26}
!14 = !{ptr @i2c_slave_eeprom_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 157, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_slave_eeprom_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 164, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 165, i32 26}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 128, i32 54}
!23 = !{ptr @i2c_slave_eeprom_id, !24, !"i2c_slave_eeprom_id", i1 false, i1 false}
!24 = !{!"../drivers/i2c/i2c-slave-eeprom.c", i32 194, i32 35}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i8 0, i8 2}
