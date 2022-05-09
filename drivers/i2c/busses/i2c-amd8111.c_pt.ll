; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-amd8111.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-amd8111.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.amd_smbus = type { ptr, %struct.i2c_adapter, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_file292 = internal constant [48 x i8] c"i2c_amd8111.file=drivers/i2c/busses/i2c-amd8111\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"i2c_amd8111.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"i2c_amd8111.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"i2c_amd8111.description=AMD8111 SMBus 2.0 driver\00", section ".modinfo", align 1
@__initcall__kmod_i2c_amd8111__304_490_amd8111_driver_init6 = internal global ptr @amd8111_driver_init, section ".initcall6.init", align 4
@amd8111_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @amd8111_ids, ptr @amd8111_probe, ptr @amd8111_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amd8111_driver_exit = internal global ptr @amd8111_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_amd8111\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amd8111_smbus2\00", [17 x i8] zeroinitializer }, align 32
@amd8111_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29802, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBus2 AMD8111 adapter at %04x\00", [33 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @amd8111_access, ptr null, ptr @amd8111_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amd8111_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 324, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amd8111_access\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-amd8111.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd8111_access._entry_ptr = internal global ptr @amd8111_access._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amd_ec_wait_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 77, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout while waiting for IBF to clear\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amd_ec_wait_write\00", [46 x i8] zeroinitializer }, align 32
@amd_ec_wait_write._entry_ptr = internal global ptr @amd_ec_wait_write._entry, section ".printk_index", align 4
@amd_ec_wait_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 93, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout while waiting for OBF to set\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amd_ec_wait_read\00", [47 x i8] zeroinitializer }, align 32
@amd_ec_wait_read._entry_ptr = internal global ptr @amd_ec_wait_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"amd8111_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 483, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 490, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 484, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"amd8111_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 415, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 451, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 409, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 324, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 76, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-amd8111.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 92, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_amd8111_driver_exit, ptr @__initcall__kmod_i2c_amd8111__304_490_amd8111_driver_init6, ptr @amd8111_access._entry, ptr @amd8111_access._entry_ptr, ptr @amd8111_driver_exit, ptr @amd_ec_wait_read._entry, ptr @amd_ec_wait_read._entry_ptr, ptr @amd_ec_wait_write._entry, ptr @amd_ec_wait_write._entry_ptr, ptr @amd8111_driver, ptr @.str, ptr @.str.1, ptr @amd8111_ids, ptr @.str.2, ptr @smbus_algorithm, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_ec_wait_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_ec_wait_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @amd8111_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd8111_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @amd8111_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1376) #12
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %base = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %base, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %5
  %add = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add
  %size = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %size, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @amd8111_driver, i32 0, i32 1), align 4
  %call23 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef %cond, ptr noundef %10, i32 noundef 0) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end3.out_kfree_crit_edge, label %if.end26

if.end3.out_kfree_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_kfree

if.end26:                                         ; preds = %if.end3
  %adapter = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 8
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %13)
  %class = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 129, ptr %class, align 4
  %algo = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @smbus_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.amd_smbus, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev33, ptr %parent, align 8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call37 = tail call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef 72, i32 noundef 0) #9
  %call39 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %out_release_region

if.end42:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_release_region:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 8
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %22, i32 noundef %24) #9
  br label %out_kfree

out_kfree:                                        ; preds = %out_release_region, %if.end3.out_kfree_crit_edge
  %error.0 = phi i32 [ %call39, %out_release_region ], [ -16, %if.end3.out_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_kfree ], [ 0, %if.end42 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.amd_smbus, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %base = getelementptr inbounds %struct.amd_smbus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 8
  %size = getelementptr inbounds %struct.amd_smbus, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef %5) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  %len = alloca i8, align 1
  %temp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #9
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %len, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #9
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %temp, align 1, !annotation !48
  %4 = getelementptr inbounds [2 x i8], ptr %temp, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 1
  %flags.tr = trunc i16 %flags to i8
  %6 = shl i8 %flags.tr, 5
  %conv5 = and i8 %6, -128
  %7 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb18
    i32 3, label %sw.bb35
    i32 5, label %sw.bb63
    i32 8, label %sw.bb100
    i32 4, label %sw.bb146
    i32 7, label %sw.bb168
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = zext i1 %cmp to i8
  %or = or i8 %conv6, 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp10 = icmp eq i8 %read_write, 0
  br i1 %cmp10, label %if.then, label %sw.bb8.if.end14_crit_edge

sw.bb8.if.end14_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %sw.bb8
  %call = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then.if.end14_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %sw.bb8.if.end14_crit_edge
  %conv15 = zext i1 %cmp to i8
  %or16 = or i8 %conv15, 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %call19 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp24 = icmp eq i8 %read_write, 0
  br i1 %cmp24, label %if.then26, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 2
  %call27 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %conv32 = zext i1 %cmp to i8
  %or33 = or i8 %conv32, 6
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %call36 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp41 = icmp eq i8 %read_write, 0
  br i1 %cmp41, label %if.then43, label %if.end39.if.end57_crit_edge

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then43:                                        ; preds = %if.end39
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv46 = trunc i16 %11 to i8
  %call47 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %conv46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.then43
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data, align 2
  %14 = lshr i16 %13, 8
  %conv52 = trunc i16 %14 to i8
  %call53 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %conv52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end50.if.end57_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %if.end50.if.end57_crit_edge, %if.end39.if.end57_crit_edge
  %conv60 = zext i1 %cmp to i8
  %15 = or i8 %conv5, %conv60
  %or61 = or i8 %15, 8
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %call64 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %sw.bb63.cleanup_crit_edge

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp69 = icmp eq i8 %read_write, 0
  br i1 %cmp69, label %if.then71, label %if.end67.if.end94_crit_edge

if.end67.if.end94_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then71:                                        ; preds = %if.end67
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 2
  %18 = tail call i8 @llvm.umin.i8(i8 %17, i8 32)
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %len, align 1
  %call80 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.cond.preheader, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then71
  %conv84 = zext i8 %18 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %add88, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv84)
  %exitcond490.not = icmp eq i32 %i.0, %conv84
  br i1 %exitcond490.not, label %for.cond.if.end94_crit_edge, label %for.body

for.cond.if.end94_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

for.body:                                         ; preds = %for.cond
  %20 = trunc i32 %i.0 to i8
  %conv87 = add i8 %20, 4
  %add88 = add nuw nsw i32 %i.0, 1
  %arrayidx89 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add88
  %21 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx89, align 1
  %call90 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext %conv87, i8 noundef zeroext %22)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end94:                                         ; preds = %for.cond.if.end94_crit_edge, %if.end67.if.end94_crit_edge
  %conv97 = zext i1 %cmp to i8
  %23 = or i8 %conv5, %conv97
  %or98 = or i8 %23, 10
  br label %sw.epilog

sw.bb100:                                         ; preds = %entry
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 2
  %26 = tail call i8 @llvm.umin.i8(i8 %25, i8 32)
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %len, align 1
  %call114 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %sw.bb100.cleanup_crit_edge

sw.bb100.cleanup_crit_edge:                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end117:                                        ; preds = %sw.bb100
  %call118 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp123 = icmp eq i8 %read_write, 0
  br i1 %cmp123, label %for.cond126.preheader, label %if.end121.if.end142_crit_edge

if.end121.if.end142_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

for.cond126.preheader:                            ; preds = %if.end121
  %conv127 = zext i8 %26 to i32
  br label %for.cond126

for.cond126:                                      ; preds = %for.body130.for.cond126_crit_edge, %for.cond126.preheader
  %i.1 = phi i32 [ %add133, %for.body130.for.cond126_crit_edge ], [ 0, %for.cond126.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %conv127)
  %exitcond489.not = icmp eq i32 %i.1, %conv127
  br i1 %exitcond489.not, label %for.cond126.if.end142_crit_edge, label %for.body130

for.cond126.if.end142_crit_edge:                  ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

for.body130:                                      ; preds = %for.cond126
  %28 = trunc i32 %i.1 to i8
  %conv132 = add i8 %28, 4
  %add133 = add nuw nsw i32 %i.1, 1
  %arrayidx134 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add133
  %29 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx134, align 1
  %call135 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext %conv132, i8 noundef zeroext %30)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %for.body130.for.cond126_crit_edge, label %for.body130.cleanup_crit_edge

for.body130.cleanup_crit_edge:                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body130.for.cond126_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond126

if.end142:                                        ; preds = %for.cond126.if.end142_crit_edge, %if.end121.if.end142_crit_edge
  %conv143 = zext i1 %cmp to i8
  %or144 = or i8 %conv143, 74
  br label %sw.epilog

sw.bb146:                                         ; preds = %entry
  %call147 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %sw.bb146.cleanup_crit_edge

sw.bb146.cleanup_crit_edge:                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end150:                                        ; preds = %sw.bb146
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %conv153 = trunc i16 %32 to i8
  %call154 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %conv153)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end157:                                        ; preds = %if.end150
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data, align 2
  %35 = lshr i16 %34, 8
  %conv160 = trunc i16 %35 to i8
  %call161 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %conv160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end157.cleanup_crit_edge

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end164:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %36 = or i8 %conv5, 12
  br label %sw.epilog

sw.bb168:                                         ; preds = %entry
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data, align 2
  %39 = tail call i8 @llvm.umin.i8(i8 %38, i8 31)
  %40 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %len, align 1
  %call182 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %sw.bb168.cleanup_crit_edge

sw.bb168.cleanup_crit_edge:                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end185:                                        ; preds = %sw.bb168
  %call186 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %for.cond190.preheader, label %if.end185.cleanup_crit_edge

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond190.preheader:                            ; preds = %if.end185
  %conv191 = zext i8 %39 to i32
  br label %for.cond190

for.cond190:                                      ; preds = %for.body194.for.cond190_crit_edge, %for.cond190.preheader
  %i.2 = phi i32 [ %add197, %for.body194.for.cond190_crit_edge ], [ 0, %for.cond190.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %conv191)
  %exitcond.not = icmp eq i32 %i.2, %conv191
  br i1 %exitcond.not, label %for.end205, label %for.body194

for.body194:                                      ; preds = %for.cond190
  %41 = trunc i32 %i.2 to i8
  %conv196 = add i8 %41, 4
  %add197 = add nuw nsw i32 %i.2, 1
  %arrayidx198 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add197
  %42 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx198, align 1
  %call199 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext %conv196, i8 noundef zeroext %43)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %for.body194.for.cond190_crit_edge, label %for.body194.cleanup_crit_edge

for.body194.cleanup_crit_edge:                    ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body194.for.cond190_crit_edge:                ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond190

for.end205:                                       ; preds = %for.cond190
  call void @__sanitizer_cov_trace_pc() #11
  %44 = or i8 %conv5, 13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %size) #13
  br label %cleanup

sw.epilog:                                        ; preds = %for.end205, %if.end164, %if.end142, %if.end94, %if.end57, %if.end31, %if.end14, %sw.bb
  %protocol.0 = phi i8 [ %44, %for.end205 ], [ %36, %if.end164 ], [ %or144, %if.end142 ], [ %or98, %if.end94 ], [ %or61, %if.end57 ], [ %or33, %if.end31 ], [ %or16, %if.end14 ], [ %or, %sw.bb ]
  %read_write.addr.0 = phi i8 [ 1, %for.end205 ], [ 1, %if.end164 ], [ %read_write, %if.end142 ], [ %read_write, %if.end94 ], [ %read_write, %if.end57 ], [ %read_write, %if.end31 ], [ %read_write, %if.end14 ], [ 0, %sw.bb ]
  %conv209 = trunc i16 %addr to i8
  %shl = shl i8 %conv209, 1
  %call211 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end214:                                        ; preds = %sw.epilog
  %call215 = tail call fastcc i32 @amd_ec_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %protocol.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %if.end214.cleanup_crit_edge

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end218:                                        ; preds = %if.end214
  %call219 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end218.cleanup_crit_edge

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end222:                                        ; preds = %if.end218
  %45 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool226.not = icmp slt i8 %46, 0
  br i1 %tobool226.not, label %if.end222.if.end247_crit_edge, label %if.then227

if.end222.if.end247_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then227:                                       ; preds = %if.end222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 107374000) #9
  %call230 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end234, label %if.then227.cleanup_crit_edge

if.then227.cleanup_crit_edge:                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end234:                                        ; preds = %if.then227
  %48 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool239.not = icmp slt i8 %.pr, 0
  br i1 %tobool239.not, label %if.end234.if.end247_crit_edge, label %if.then240

if.end234.if.end247_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then240:                                       ; preds = %if.end234
  tail call void @msleep(i32 noundef 1) #9
  %call243 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.then240.if.end247_crit_edge, label %if.then240.cleanup_crit_edge

if.then240.cleanup_crit_edge:                     ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then240.if.end247_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.end247:                                        ; preds = %if.then240.if.end247_crit_edge, %if.end234.if.end247_crit_edge, %if.end222.if.end247_crit_edge
  %49 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %temp, align 1
  %51 = and i8 %50, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %51)
  %52 = icmp eq i8 %51, -128
  br i1 %52, label %if.end258, label %if.end247.cleanup_crit_edge

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end258:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write.addr.0)
  %cmp260 = icmp eq i8 %read_write.addr.0, 0
  br i1 %cmp260, label %if.end258.cleanup_crit_edge, label %if.end263

if.end258.cleanup_crit_edge:                      ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end263:                                        ; preds = %if.end258
  %53 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %size, label %if.end263.sw.epilog325_crit_edge [
    i32 1, label %if.end263.sw.bb264_crit_edge
    i32 2, label %if.end263.sw.bb264_crit_edge506
    i32 3, label %if.end263.sw.bb269_crit_edge
    i32 4, label %if.end263.sw.bb269_crit_edge507
    i32 5, label %if.end263.sw.bb289_crit_edge
    i32 7, label %if.end263.sw.bb289_crit_edge508
    i32 8, label %sw.bb306thread-pre-split
  ]

if.end263.sw.bb289_crit_edge508:                  ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb289

if.end263.sw.bb289_crit_edge:                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb289

if.end263.sw.bb269_crit_edge507:                  ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb269

if.end263.sw.bb269_crit_edge:                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb269

if.end263.sw.bb264_crit_edge506:                  ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb264

if.end263.sw.bb264_crit_edge:                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb264

if.end263.sw.epilog325_crit_edge:                 ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog325

sw.bb264:                                         ; preds = %if.end263.sw.bb264_crit_edge, %if.end263.sw.bb264_crit_edge506
  %call265 = tail call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 4, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %sw.bb264.sw.epilog325_crit_edge, label %sw.bb264.cleanup_crit_edge

sw.bb264.cleanup_crit_edge:                       ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb264.sw.epilog325_crit_edge:                  ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog325

sw.bb269:                                         ; preds = %if.end263.sw.bb269_crit_edge, %if.end263.sw.bb269_crit_edge507
  %call272 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 4, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %if.end275, label %sw.bb269.cleanup_crit_edge

sw.bb269.cleanup_crit_edge:                       ; preds = %sw.bb269
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end275:                                        ; preds = %sw.bb269
  %call278 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 5, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end281, label %if.end275.cleanup_crit_edge

if.end275.cleanup_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end281:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %4, align 1
  %conv283 = zext i8 %55 to i16
  %shl284 = shl nuw i16 %conv283, 8
  %56 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %temp, align 1
  %conv286 = zext i8 %57 to i16
  %or287 = or i16 %shl284, %conv286
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or287, ptr %data, align 2
  br label %sw.epilog325

sw.bb289:                                         ; preds = %if.end263.sw.bb289_crit_edge, %if.end263.sw.bb289_crit_edge508
  %call290 = call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext 36, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %sw.bb289.cleanup_crit_edge

sw.bb289.cleanup_crit_edge:                       ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end293:                                        ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %len, align 1
  %61 = tail call i8 @llvm.umin.i8(i8 %60, i8 32)
  %62 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %len, align 1
  br label %sw.bb306

sw.bb306thread-pre-split:                         ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %63)
  %.pr492 = load i8, ptr %len, align 1
  br label %sw.bb306

sw.bb306:                                         ; preds = %sw.bb306thread-pre-split, %if.end293
  %64 = phi i8 [ %.pr492, %sw.bb306thread-pre-split ], [ %61, %if.end293 ]
  %conv308 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp309483.not = icmp eq i8 %64, 0
  br i1 %cmp309483.not, label %sw.bb306.for.end323_crit_edge, label %for.body311.preheader

sw.bb306.for.end323_crit_edge:                    ; preds = %sw.bb306
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end323

for.body311.preheader:                            ; preds = %sw.bb306
  %add.ptr315 = getelementptr i8, ptr %data, i32 1
  br label %for.body311

for.cond307:                                      ; preds = %for.body311
  %inc322 = add nuw nsw i32 %i.3484, 1
  %exitcond491.not = icmp eq i32 %inc322, %conv308
  br i1 %exitcond491.not, label %for.cond307.for.end323_crit_edge, label %for.cond307.for.body311_crit_edge

for.cond307.for.body311_crit_edge:                ; preds = %for.cond307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body311

for.cond307.for.end323_crit_edge:                 ; preds = %for.cond307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end323

for.body311:                                      ; preds = %for.cond307.for.body311_crit_edge, %for.body311.preheader
  %i.3484 = phi i32 [ %inc322, %for.cond307.for.body311_crit_edge ], [ 0, %for.body311.preheader ]
  %65 = trunc i32 %i.3484 to i8
  %conv313 = add i8 %65, 4
  %add.ptr316 = getelementptr i8, ptr %add.ptr315, i32 %i.3484
  %call317 = tail call fastcc i32 @amd_ec_read(ptr noundef %1, i8 noundef zeroext %conv313, ptr noundef %add.ptr316)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %for.cond307, label %for.body311.cleanup_crit_edge

for.body311.cleanup_crit_edge:                    ; preds = %for.body311
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end323:                                       ; preds = %for.cond307.for.end323_crit_edge, %sw.bb306.for.end323_crit_edge
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %data, align 2
  br label %sw.epilog325

sw.epilog325:                                     ; preds = %for.end323, %if.end281, %sw.bb264.sw.epilog325_crit_edge, %if.end263.sw.epilog325_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog325, %for.body311.cleanup_crit_edge, %sw.bb289.cleanup_crit_edge, %if.end275.cleanup_crit_edge, %sw.bb269.cleanup_crit_edge, %sw.bb264.cleanup_crit_edge, %if.end258.cleanup_crit_edge, %if.end247.cleanup_crit_edge, %if.then240.cleanup_crit_edge, %if.then227.cleanup_crit_edge, %if.end218.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %for.body194.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %sw.bb168.cleanup_crit_edge, %if.end157.cleanup_crit_edge, %if.end150.cleanup_crit_edge, %sw.bb146.cleanup_crit_edge, %for.body130.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %sw.bb100.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %sw.epilog325 ], [ %call, %if.then.cleanup_crit_edge ], [ %call19, %sw.bb18.cleanup_crit_edge ], [ %call27, %if.then26.cleanup_crit_edge ], [ %call36, %sw.bb35.cleanup_crit_edge ], [ %call47, %if.then43.cleanup_crit_edge ], [ %call53, %if.end50.cleanup_crit_edge ], [ %call64, %sw.bb63.cleanup_crit_edge ], [ %call80, %if.then71.cleanup_crit_edge ], [ %call114, %sw.bb100.cleanup_crit_edge ], [ %call118, %if.end117.cleanup_crit_edge ], [ %call147, %sw.bb146.cleanup_crit_edge ], [ %call154, %if.end150.cleanup_crit_edge ], [ %call161, %if.end157.cleanup_crit_edge ], [ %call182, %sw.bb168.cleanup_crit_edge ], [ %call186, %if.end185.cleanup_crit_edge ], [ %call211, %sw.epilog.cleanup_crit_edge ], [ %call215, %if.end214.cleanup_crit_edge ], [ %call219, %if.end218.cleanup_crit_edge ], [ %call230, %if.then227.cleanup_crit_edge ], [ %call243, %if.then240.cleanup_crit_edge ], [ -5, %if.end247.cleanup_crit_edge ], [ 0, %if.end258.cleanup_crit_edge ], [ %call265, %sw.bb264.cleanup_crit_edge ], [ %call272, %sw.bb269.cleanup_crit_edge ], [ %call278, %if.end275.cleanup_crit_edge ], [ %call290, %sw.bb289.cleanup_crit_edge ], [ %call317, %for.body311.cleanup_crit_edge ], [ %call90, %for.body.cleanup_crit_edge ], [ %call135, %for.body130.cleanup_crit_edge ], [ %call199, %for.body194.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amd8111_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268402696
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amd_ec_write(ptr nocapture noundef readonly %smbus, i8 noundef zeroext %address, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.amd_smbus, ptr %smbus, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i, align 8
  %add9.i = add i32 %1, 4
  %and10.i = and i32 %add9.i, 1048575
  %add111.i = or i32 %and10.i, -18874368
  %2 = inttoptr i32 %add111.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not12.i = icmp eq i8 %4, 0
  br i1 %tobool.not12.i, label %entry.do.body_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 500, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %amd_ec_wait_write.exit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 8
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %10 = and i8 %9, 2
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %while.body.i.do.body_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.body.i.do.body_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

amd_ec_wait_write.exit:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smbus, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body:                                          ; preds = %while.body.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i, align 8
  %add = add i32 %14, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %15 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -127) #9, !srcloc !52
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 8
  %add9.i38 = add i32 %17, 4
  %and10.i39 = and i32 %add9.i38, 1048575
  %add111.i40 = or i32 %and10.i39, -18874368
  %18 = inttoptr i32 %add111.i40 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not12.i41 = icmp eq i8 %20, 0
  br i1 %tobool.not12.i41, label %do.body.do.body7_crit_edge, label %do.body.land.rhs.i45_crit_edge

do.body.land.rhs.i45_crit_edge:                   ; preds = %do.body
  br label %land.rhs.i45

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

land.rhs.i45:                                     ; preds = %while.body.i50.land.rhs.i45_crit_edge, %do.body.land.rhs.i45_crit_edge
  %timeout.013.i42 = phi i32 [ %dec.i43, %while.body.i50.land.rhs.i45_crit_edge ], [ 500, %do.body.land.rhs.i45_crit_edge ]
  %dec.i43 = add nsw i32 %timeout.013.i42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i43)
  %tobool4.not.i44 = icmp eq i32 %dec.i43, 0
  br i1 %tobool4.not.i44, label %amd_ec_wait_write.exit54, label %while.body.i50

while.body.i50:                                   ; preds = %land.rhs.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i, align 8
  %add.i46 = add i32 %23, 4
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %24 = inttoptr i32 %add1.i48 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %26 = and i8 %25, 2
  %tobool.not.i49 = icmp eq i8 %26, 0
  br i1 %tobool.not.i49, label %while.body.i50.do.body7_crit_edge, label %while.body.i50.land.rhs.i45_crit_edge

while.body.i50.land.rhs.i45_crit_edge:            ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i45

while.body.i50.do.body7_crit_edge:                ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

amd_ec_wait_write.exit54:                         ; preds = %land.rhs.i45
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smbus, align 8
  %dev6.i51 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i51, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body7:                                         ; preds = %while.body.i50.do.body7_crit_edge, %do.body.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base.i, align 8
  %and12 = and i32 %30, 1048575
  %add13 = or i32 %and12, -18874368
  %31 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %address) #9, !srcloc !52
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base.i, align 8
  %add9.i56 = add i32 %33, 4
  %and10.i57 = and i32 %add9.i56, 1048575
  %add111.i58 = or i32 %and10.i57, -18874368
  %34 = inttoptr i32 %add111.i58 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not12.i59 = icmp eq i8 %36, 0
  br i1 %tobool.not12.i59, label %do.body7.do.body19_crit_edge, label %do.body7.land.rhs.i63_crit_edge

do.body7.land.rhs.i63_crit_edge:                  ; preds = %do.body7
  br label %land.rhs.i63

do.body7.do.body19_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.rhs.i63:                                     ; preds = %while.body.i68.land.rhs.i63_crit_edge, %do.body7.land.rhs.i63_crit_edge
  %timeout.013.i60 = phi i32 [ %dec.i61, %while.body.i68.land.rhs.i63_crit_edge ], [ 500, %do.body7.land.rhs.i63_crit_edge ]
  %dec.i61 = add nsw i32 %timeout.013.i60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i61)
  %tobool4.not.i62 = icmp eq i32 %dec.i61, 0
  br i1 %tobool4.not.i62, label %amd_ec_wait_write.exit72, label %while.body.i68

while.body.i68:                                   ; preds = %land.rhs.i63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base.i, align 8
  %add.i64 = add i32 %39, 4
  %and.i65 = and i32 %add.i64, 1048575
  %add1.i66 = or i32 %and.i65, -18874368
  %40 = inttoptr i32 %add1.i66 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %42 = and i8 %41, 2
  %tobool.not.i67 = icmp eq i8 %42, 0
  br i1 %tobool.not.i67, label %while.body.i68.do.body19_crit_edge, label %while.body.i68.land.rhs.i63_crit_edge

while.body.i68.land.rhs.i63_crit_edge:            ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i63

while.body.i68.do.body19_crit_edge:               ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

amd_ec_wait_write.exit72:                         ; preds = %land.rhs.i63
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smbus, align 8
  %dev6.i69 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i69, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body19:                                        ; preds = %while.body.i68.do.body19_crit_edge, %do.body7.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base.i, align 8
  %and24 = and i32 %46, 1048575
  %add25 = or i32 %and24, -18874368
  %47 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %data) #9, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %amd_ec_wait_write.exit72, %amd_ec_wait_write.exit54, %amd_ec_wait_write.exit
  %retval.0 = phi i32 [ 0, %do.body19 ], [ -110, %amd_ec_wait_write.exit ], [ -110, %amd_ec_wait_write.exit54 ], [ -110, %amd_ec_wait_write.exit72 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amd_ec_read(ptr nocapture noundef readonly %smbus, i8 noundef zeroext %address, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.amd_smbus, ptr %smbus, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i, align 8
  %add9.i = add i32 %1, 4
  %and10.i = and i32 %add9.i, 1048575
  %add111.i = or i32 %and10.i, -18874368
  %2 = inttoptr i32 %add111.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not12.i = icmp eq i8 %4, 0
  br i1 %tobool.not12.i, label %entry.do.body_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 500, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %amd_ec_wait_write.exit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 8
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %10 = and i8 %9, 2
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %while.body.i.do.body_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.body.i.do.body_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

amd_ec_wait_write.exit:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smbus, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body:                                          ; preds = %while.body.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i, align 8
  %add = add i32 %14, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %15 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -128) #9, !srcloc !52
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 8
  %add9.i36 = add i32 %17, 4
  %and10.i37 = and i32 %add9.i36, 1048575
  %add111.i38 = or i32 %and10.i37, -18874368
  %18 = inttoptr i32 %add111.i38 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not12.i39 = icmp eq i8 %20, 0
  br i1 %tobool.not12.i39, label %do.body.do.body7_crit_edge, label %do.body.land.rhs.i43_crit_edge

do.body.land.rhs.i43_crit_edge:                   ; preds = %do.body
  br label %land.rhs.i43

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

land.rhs.i43:                                     ; preds = %while.body.i48.land.rhs.i43_crit_edge, %do.body.land.rhs.i43_crit_edge
  %timeout.013.i40 = phi i32 [ %dec.i41, %while.body.i48.land.rhs.i43_crit_edge ], [ 500, %do.body.land.rhs.i43_crit_edge ]
  %dec.i41 = add nsw i32 %timeout.013.i40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i41)
  %tobool4.not.i42 = icmp eq i32 %dec.i41, 0
  br i1 %tobool4.not.i42, label %amd_ec_wait_write.exit52, label %while.body.i48

while.body.i48:                                   ; preds = %land.rhs.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i, align 8
  %add.i44 = add i32 %23, 4
  %and.i45 = and i32 %add.i44, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %24 = inttoptr i32 %add1.i46 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %26 = and i8 %25, 2
  %tobool.not.i47 = icmp eq i8 %26, 0
  br i1 %tobool.not.i47, label %while.body.i48.do.body7_crit_edge, label %while.body.i48.land.rhs.i43_crit_edge

while.body.i48.land.rhs.i43_crit_edge:            ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i43

while.body.i48.do.body7_crit_edge:                ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

amd_ec_wait_write.exit52:                         ; preds = %land.rhs.i43
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smbus, align 8
  %dev6.i49 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i49, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body7:                                         ; preds = %while.body.i48.do.body7_crit_edge, %do.body.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base.i, align 8
  %and12 = and i32 %30, 1048575
  %add13 = or i32 %and12, -18874368
  %31 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %address) #9, !srcloc !52
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base.i, align 8
  %add9.i54 = add i32 %33, 4
  %and10.i55 = and i32 %add9.i54, 1048575
  %add111.i56 = or i32 %and10.i55, -18874368
  %34 = inttoptr i32 %add111.i56 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.not12.i = icmp eq i8 %36, 0
  br i1 %tobool.not.not12.i, label %do.body7.land.rhs.i60_crit_edge, label %do.body7.if.end18_crit_edge

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body7.land.rhs.i60_crit_edge:                  ; preds = %do.body7
  br label %land.rhs.i60

land.rhs.i60:                                     ; preds = %while.body.i64.land.rhs.i60_crit_edge, %do.body7.land.rhs.i60_crit_edge
  %timeout.013.i57 = phi i32 [ %dec.i58, %while.body.i64.land.rhs.i60_crit_edge ], [ 500, %do.body7.land.rhs.i60_crit_edge ]
  %dec.i58 = add nsw i32 %timeout.013.i57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i58)
  %tobool4.not.i59 = icmp eq i32 %dec.i58, 0
  br i1 %tobool4.not.i59, label %amd_ec_wait_read.exit, label %while.body.i64

while.body.i64:                                   ; preds = %land.rhs.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base.i, align 8
  %add.i61 = add i32 %39, 4
  %and.i62 = and i32 %add.i61, 1048575
  %add1.i63 = or i32 %and.i62, -18874368
  %40 = inttoptr i32 %add1.i63 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  %42 = and i8 %41, 1
  %tobool.not.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.not.i, label %while.body.i64.land.rhs.i60_crit_edge, label %while.body.i64.if.end18_crit_edge

while.body.i64.if.end18_crit_edge:                ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

while.body.i64.land.rhs.i60_crit_edge:            ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i60

amd_ec_wait_read.exit:                            ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smbus, align 8
  %dev6.i65 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i65, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end18:                                         ; preds = %while.body.i64.if.end18_crit_edge, %do.body7.if.end18_crit_edge
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base.i, align 8
  %and21 = and i32 %46, 1048575
  %add22 = or i32 %and21, -18874368
  %47 = inttoptr i32 %add22 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %amd_ec_wait_read.exit, %amd_ec_wait_write.exit52, %amd_ec_wait_write.exit
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -110, %amd_ec_wait_write.exit ], [ -110, %amd_ec_wait_write.exit52 ], [ -110, %amd_ec_wait_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_file292, !1, !"__UNIQUE_ID_file292", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license293, !1, !"__UNIQUE_ID_license293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_i2c_amd8111__304_490_amd8111_driver_init6, !8, !"__initcall__kmod_i2c_amd8111__304_490_amd8111_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 490, i32 1}
!9 = !{ptr @__exitcall_amd8111_driver_exit, !8, !"__exitcall_amd8111_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 484, i32 11}
!13 = !{ptr @amd8111_driver, !14, !"amd8111_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 483, i32 26}
!15 = !{ptr @amd8111_ids, !16, !"amd8111_ids", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 415, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 451, i32 3}
!19 = !{ptr @smbus_algorithm, !20, !"smbus_algorithm", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 409, i32 35}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 324, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amd8111_access._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @amd8111_access._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 76, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @amd_ec_wait_write._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @amd_ec_wait_write._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-amd8111.c", i32 92, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @amd_ec_wait_read._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @amd_ec_wait_read._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 4990019}
!50 = !{i64 2155899202}
!51 = !{i64 2155905342}
!52 = !{i64 4989624}
!53 = !{i64 2155905697}
!54 = !{i64 2155906049}
!55 = !{i64 2155904328}
!56 = !{i64 2155904683}
!57 = !{i64 2155901810}
!58 = !{i64 2155905112}
