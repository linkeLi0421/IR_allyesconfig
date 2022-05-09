; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tcpm/tcpci_rt1711h.c_pt.bc'
source_filename = "../drivers/usb/typec/tcpm/tcpci_rt1711h.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.rt1711h_chip = type { %struct.tcpci_data, ptr, ptr }
%struct.tcpci_data = type { ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tcpci_rt1711h__288_297_rt1711h_i2c_driver_init6 = internal global ptr @rt1711h_i2c_driver_init, section ".initcall6.init", align 4
@rt1711h_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt1711h_probe, ptr @rt1711h_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt1711h_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt1711h_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt1711h_i2c_driver_exit = internal global ptr @rt1711h_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"tcpci_rt1711h.author=ShuFan Lee <shufan_lee@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [78 x i8] c"tcpci_rt1711h.description=RT1711H USB Type-C Port Controller Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [56 x i8] c"tcpci_rt1711h.file=drivers/usb/typec/tcpm/tcpci_rt1711h\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"tcpci_rt1711h.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt1711h\00", [24 x i8] zeroinitializer }, align 32
@rt1711h_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt1711h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt1711h_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt1711h\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt1711h_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check vid/pid fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1711h_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/typec/tcpm/tcpci_rt1711h.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt1711h_probe._entry_ptr = internal global ptr @rt1711h_probe._entry, section ".printk_index", align 4
@rt1711h_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt1711h_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tcpci_rt1711h:232:(&rt1711h_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@rt1711h_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vid is not correct, 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt1711h_check_revision\00", [41 x i8] zeroinitializer }, align 32
@rt1711h_check_revision._entry_ptr = internal global ptr @rt1711h_check_revision._entry, section ".printk_index", align 4
@rt1711h_check_revision._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pid is not correct, 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@rt1711h_check_revision._entry_ptr.11 = internal global ptr @rt1711h_check_revision._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"rt1711h_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 288, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 290, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"rt1711h_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 281, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"rt1711h_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 274, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 223, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"rt1711h_regmap_config\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 64, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 231, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 202, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/usb/typec/tcpm/tcpci_rt1711h.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 209, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rt1711h_i2c_driver_exit, ptr @__initcall__kmod_tcpci_rt1711h__288_297_rt1711h_i2c_driver_init6, ptr @rt1711h_check_revision._entry, ptr @rt1711h_check_revision._entry.9, ptr @rt1711h_check_revision._entry_ptr, ptr @rt1711h_check_revision._entry_ptr.11, ptr @rt1711h_i2c_driver_exit, ptr @rt1711h_probe._entry, ptr @rt1711h_probe._entry_ptr, ptr @rt1711h_i2c_driver, ptr @.str, ptr @rt1711h_of_match, ptr @rt1711h_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rt1711h_probe._key, ptr @rt1711h_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1711h_check_revision._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt1711h_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt1711h_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rt1711h_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_probe(ptr noundef %client, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  %val.addr.i = alloca i16, align 2
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10703, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 10703
  br i1 %cmp1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %call.i) #8
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.do.end_crit_edge, label %if.end7.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5905, i32 %call4.i)
  %cmp8.not.i = icmp eq i32 %call4.i, 5905
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp8.not.i, label %if.end, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call4.i) #8
  br label %do.end

do.end:                                           ; preds = %do.end12.i, %if.end3.i.do.end_crit_edge, %do.end.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end3.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ], [ -19, %do.end12.i ], [ -19, %do.end.i ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i78, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @rt1711h_regmap_config, ptr noundef nonnull @rt1711h_probe._key, ptr noundef nonnull @.str.6) #5
  %0 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5, ptr %call.i78, align 4
  %cmp.i79 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %dev15 = getelementptr inbounds %struct.rt1711h_chip, ptr %call.i78, i32 0, i32 2
  %2 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i78, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @regmap_raw_write(ptr noundef %call5, i32 noundef 160, ptr noundef nonnull %val.addr.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i80 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i80, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %val.addr.i, align 2
  %6 = ptrtoint ptr %call.i78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i78, align 4
  %call.i83 = call i32 @regmap_raw_write(ptr noundef %7, i32 noundef 18, ptr noundef nonnull %val.addr.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp21 = icmp slt i32 %call.i83, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %init = getelementptr inbounds %struct.tcpci_data, ptr %call.i78, i32 0, i32 2
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rt1711h_init, ptr %init, align 4
  %set_vconn = getelementptr inbounds %struct.tcpci_data, ptr %call.i78, i32 0, i32 3
  %9 = ptrtoint ptr %set_vconn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rt1711h_set_vconn, ptr %set_vconn, align 4
  %start_drp_toggling = getelementptr inbounds %struct.tcpci_data, ptr %call.i78, i32 0, i32 4
  %10 = ptrtoint ptr %start_drp_toggling to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rt1711h_start_drp_toggling, ptr %start_drp_toggling, align 4
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  %call29 = call ptr @tcpci_register_port(ptr noundef %12, ptr noundef nonnull %call.i78) #5
  %tcpci = getelementptr inbounds %struct.rt1711h_chip, ptr %call.i78, i32 0, i32 1
  %13 = ptrtoint ptr %tcpci to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %tcpci, align 4
  %tobool.not.i = icmp eq ptr %call29, null
  %cmp.i84 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i84
  br i1 %spec.select.i, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i85 = icmp eq ptr %20, null
  br i1 %tobool.not.i85, label %if.end.i86, label %if.end35.dev_name.exit_crit_edge

if.end35.dev_name.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i86:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i86, %if.end35.dev_name.exit_crit_edge
  %retval.0.i87 = phi ptr [ %22, %if.end.i86 ], [ %20, %if.end35.dev_name.exit_crit_edge ]
  %call39 = call i32 @devm_request_threaded_irq(ptr noundef %16, i32 noundef %18, ptr noundef null, ptr noundef nonnull @rt1711h_irq, i32 noundef 8200, ptr noundef %retval.0.i87, ptr noundef nonnull %call.i78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %dev_name.exit.cleanup_crit_edge, label %if.end42

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call.i88 = call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %dev_name.exit.cleanup_crit_edge, %if.then32, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %1, %if.then9 ], [ %14, %if.then32 ], [ 0, %if.end42 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i83, %if.end19.cleanup_crit_edge ], [ %call39, %dev_name.exit.cleanup_crit_edge ], [ %call.i.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tcpci = getelementptr inbounds %struct.rt1711h_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcpci, align 4
  tail call void @tcpci_unregister_port(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_init(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata) #2 align 64 {
entry:
  %val.addr.i33 = alloca i16, align 2
  %val.addr.i31 = alloca i8, align 1
  %val.addr.i29 = alloca i8, align 1
  %val.addr.i27 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 42, ptr %val.addr.i, align 1
  %1 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tdata, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 155, ptr noundef nonnull %val.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i27)
  %3 = ptrtoint ptr %val.addr.i27 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -113, ptr %val.addr.i27, align 1
  %4 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdata, align 4
  %call.i28 = call i32 @regmap_raw_write(ptr noundef %5, i32 noundef 158, ptr noundef nonnull %val.addr.i27, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp3 = icmp slt i32 %call.i28, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i29)
  %6 = ptrtoint ptr %val.addr.i29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %val.addr.i29, align 1
  %7 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tdata, align 4
  %call.i30 = call i32 @regmap_raw_write(ptr noundef %8, i32 noundef 161, ptr noundef nonnull %val.addr.i29, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp7 = icmp slt i32 %call.i30, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i31)
  %9 = ptrtoint ptr %val.addr.i31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %val.addr.i31, align 1
  %10 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tdata, align 4
  %call.i32 = call i32 @regmap_raw_write(ptr noundef %11, i32 noundef 162, ptr noundef nonnull %val.addr.i31, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp11 = icmp slt i32 %call.i32, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i33)
  %12 = ptrtoint ptr %val.addr.i33 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 330, ptr %val.addr.i33, align 2
  %13 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tdata, align 4
  %call.i34 = call i32 @regmap_raw_write(ptr noundef %14, i32 noundef 163, ptr noundef nonnull %val.addr.i33, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i33)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i34, %if.end13 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i28, %if.end.cleanup_crit_edge ], [ %call.i30, %if.end5.cleanup_crit_edge ], [ %call.i32, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_set_vconn(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %enable, i8 34, i8 42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %val.addr.i, align 1
  %1 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tdata, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 155, ptr noundef nonnull %val.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_start_drp_toggling(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata, i32 noundef %cc) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cc)
  %switch.selectcmp = icmp eq i32 %cc, 4
  %switch.select = select i1 %switch.selectcmp, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cc)
  %switch.selectcmp21 = icmp eq i32 %cc, 5
  %switch.select22 = select i1 %switch.selectcmp21, i8 32, i8 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cc)
  %cmp = icmp eq i32 %cc, 2
  %reg.1.v = select i1 %cmp, i8 10, i8 5
  %reg.1 = or i8 %switch.select22, %reg.1.v
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg.1, ptr %val.addr.i, align 1
  %1 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tdata, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 26, ptr noundef nonnull %val.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %entry.cleanup_crit_edge, label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcpci_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1711h_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %alert = alloca i16, align 2
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alert) #5
  %0 = ptrtoint ptr %alert to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %alert, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status, align 1, !annotation !49
  %tcpci = getelementptr inbounds %struct.rt1711h_chip, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcpci, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %call.i = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %alert, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %alert to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alert, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %if.end2.out_crit_edge, label %if.then4

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then4:                                         ; preds = %if.end2
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %call.i27 = call i32 @regmap_raw_read(ptr noundef %10, i32 noundef 29, ptr noundef nonnull %status, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp6 = icmp slt i32 %call.i27, 0
  br i1 %cmp6, label %if.then4.out_crit_edge, label %if.end9

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.then4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 1
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end9.out_crit_edge, label %if.then13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %14 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %val.addr.i, align 1
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %call.i28 = call i32 @regmap_raw_write(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %val.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %out

out:                                              ; preds = %if.then13, %if.end9.out_crit_edge, %if.then4.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %17 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcpci, align 4
  %call18 = call i32 @tcpci_irq(ptr noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %out ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alert) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcpci_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpci_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_tcpci_rt1711h__288_297_rt1711h_i2c_driver_init6, !1, !"__initcall__kmod_tcpci_rt1711h__288_297_rt1711h_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_rt1711h_i2c_driver_exit, !1, !"__exitcall_rt1711h_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 299, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 300, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 301, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 290, i32 11}
!12 = !{ptr @rt1711h_i2c_driver, !13, !"rt1711h_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 288, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 223, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rt1711h_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rt1711h_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rt1711h_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 231, i32 22}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 202, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rt1711h_check_revision._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rt1711h_check_revision._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 209, i32 3}
!32 = !{ptr @rt1711h_check_revision._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt1711h_check_revision._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rt1711h_regmap_config, !35, !"rt1711h_regmap_config", i1 false, i1 false}
!35 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 64, i32 35}
!36 = !{ptr @rt1711h_of_match, !37, !"rt1711h_of_match", i1 false, i1 false}
!37 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 281, i32 34}
!38 = !{ptr @rt1711h_id, !39, !"rt1711h_id", i1 false, i1 false}
!39 = !{!"../drivers/usb/typec/tcpm/tcpci_rt1711h.c", i32 274, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
