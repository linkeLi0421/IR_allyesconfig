; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2805.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2805.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__initcall__kmod_w1_ds2805__170_294_w1_family_0d_init6 = internal global ptr @w1_family_0d_init, section ".initcall6.init", align 4
@w1_family_0d = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 13, ptr @w1_f0d_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_0d_exit = internal global ptr @w1_family_0d_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [43 x i8] c"w1_ds2805.file=drivers/w1/slaves/w1_ds2805\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [22 x i8] c"w1_ds2805.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [52 x i8] c"w1_ds2805.author=Andrew Worsley amworsley@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [65 x i8] c"w1_ds2805.description=w1 family 0d driver for DS2805, 1kb EEPROM\00", section ".modinfo", align 1
@w1_f0d_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f0d_add_slave, ptr @w1_f0d_remove_slave, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f0d_bin_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 128, ptr null, ptr null, ptr @w1_f0d_read_bin, ptr @w1_f0d_write_bin, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@w1_f0d_readblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"proof reading failed %d times\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_f0d_readblock\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2805.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_f0d_readblock._entry_ptr = internal global ptr @w1_f0d_readblock._entry, section ".printk_index", align 4
@w1_f0d_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: bad addr/len -  addr=%#x len=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w1_f0d_write\00", [19 x i8] zeroinitializer }, align 32
@w1_f0d_write._entry_ptr = internal global ptr @w1_f0d_write._entry, section ".printk_index", align 4
@w1_f0d_write._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"could not write to eeprom, scratchpad compare failed %d times\0A\00", [33 x i8] zeroinitializer }, align 32
@w1_f0d_write._entry_ptr.10 = internal global ptr @w1_f0d_write._entry.8, section ".printk_index", align 4
@w1_f0d_write._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: rdbuf = %#x %#x data = %#x %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@w1_f0d_write._entry_ptr.13 = internal global ptr @w1_f0d_write._entry.11, section ".printk_index", align 4
@w1_f0d_write._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"save to eeprom failed = CS=%#x\0A\00", [32 x i8] zeroinitializer }, align 32
@w1_f0d_write._entry_ptr.16 = internal global ptr @w1_f0d_write._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"w1_family_0d\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 289, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"w1_f0d_fops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 284, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"w1_f0d_bin_attr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 264, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 266, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 88, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 152, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 177, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 180, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2805.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 195, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_w1_family_0d_exit, ptr @__initcall__kmod_w1_ds2805__170_294_w1_family_0d_init6, ptr @w1_f0d_readblock._entry, ptr @w1_f0d_readblock._entry_ptr, ptr @w1_f0d_write._entry, ptr @w1_f0d_write._entry.11, ptr @w1_f0d_write._entry.14, ptr @w1_f0d_write._entry.8, ptr @w1_f0d_write._entry_ptr, ptr @w1_f0d_write._entry_ptr.10, ptr @w1_f0d_write._entry_ptr.13, ptr @w1_f0d_write._entry_ptr.16, ptr @w1_family_0d_exit, ptr @w1_family_0d, ptr @w1_f0d_fops, ptr @w1_f0d_bin_attr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_0d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_bin_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_readblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_write._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_write._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f0d_write._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_0d_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_0d) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_0d_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_0d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f0d_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef nonnull @w1_f0d_bin_attr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_f0d_remove_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @w1_f0d_bin_attr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f0d_read_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %off)
  %cmp.i = icmp sgt i64 %off, 128
  br i1 %cmp.i, label %entry.cleanup13_crit_edge, label %if.end.i

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 128
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 128, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup13_crit_edge, label %if.end

if.end.i.cleanup13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp234 = icmp sgt i32 %count, 0
  br i1 %cmp234, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %todo.037 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %count, %if.end.while.body_crit_edge ]
  %off.addr.036 = phi i64 [ %add, %cleanup.while.body_crit_edge ], [ %off, %if.end.while.body_crit_edge ]
  %buf.addr.035 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %todo.037, i32 128)
  %conv = trunc i64 %off.addr.036 to i32
  %call6 = tail call fastcc i32 @w1_f0d_readblock(ptr noundef %add.ptr.i.i, i32 noundef %conv, i32 noundef %3, ptr noundef %buf.addr.035)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup:                                          ; preds = %while.body
  %sub = add nsw i32 %todo.037, -128
  %add.ptr = getelementptr i8, ptr %buf.addr.035, i32 128
  %add = add i64 %off.addr.036, 128
  %cmp2 = icmp sgt i32 %todo.037, 128
  br i1 %cmp2, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %count.addr.2 = phi i32 [ %retval.0.i, %if.end.while.end_crit_edge ], [ -5, %while.body.while.end_crit_edge ], [ %retval.0.i, %cleanup.while.end_crit_edge ]
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %mutex12 = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %mutex12) #7
  br label %cleanup13

cleanup13:                                        ; preds = %while.end, %if.end.i.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.0 = phi i32 [ %count.addr.2, %while.end ], [ 0, %if.end.i.cleanup13_crit_edge ], [ 0, %entry.cleanup13_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f0d_write_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %tmp = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %off)
  %cmp.i = icmp sgt i64 %off, 128
  br i1 %cmp.i, label %entry.cleanup34_crit_edge, label %if.end.i

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 128
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 128, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup34_crit_edge, label %if.end

if.end.i.cleanup34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp272 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp272, label %while.body.lr.ph, label %if.end.out_up_crit_edge

if.end.out_up_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

while.body.lr.ph:                                 ; preds = %if.end
  %3 = getelementptr inbounds [2 x i8], ptr %tmp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %len.077 = phi i32 [ %retval.0.i, %while.body.lr.ph ], [ %sub31, %if.end30.while.body_crit_edge ]
  %addr.075 = phi i32 [ %0, %while.body.lr.ph ], [ %add, %if.end30.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end30.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.077)
  %cmp4 = icmp ne i32 %len.077, 1
  %and = and i32 %addr.075, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp4, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then6

if.then6:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #7
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp, align 1, !annotation !52
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %3, align 1, !annotation !52
  %and7 = and i32 %addr.075, -2
  %call8 = call fastcc i32 @w1_f0d_readblock(ptr noundef %add.ptr.i.i, i32 noundef %and7, i32 noundef 2, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end11:                                         ; preds = %if.then6
  %sub = sub nuw nsw i32 2, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len.077)
  %cmp13 = icmp ugt i32 %sub, %len.077
  %spec.select = select i1 %cmp13, i32 1, i32 %sub
  %arrayidx = getelementptr [2 x i8], ptr %tmp, i32 0, i32 %and
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %buf.addr.073, i32 %spec.select)
  %call20 = call fastcc i32 @w1_f0d_write(ptr noundef %add.ptr.i.i, i32 noundef %and7, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end11.cleanup.thread_crit_edge, label %cleanup

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end11.cleanup.thread_crit_edge, %if.then6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #7
  br label %out_up

cleanup:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #7
  br label %if.end30

if.else:                                          ; preds = %while.body
  %call25 = call fastcc i32 @w1_f0d_write(ptr noundef %add.ptr.i.i, i32 noundef %addr.075, ptr noundef %buf.addr.073)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.else.out_up_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else.out_up_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %cleanup
  %copy.3 = phi i32 [ %spec.select, %cleanup ], [ 2, %if.else.if.end30_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf.addr.073, i32 %copy.3
  %add = add i32 %copy.3, %addr.075
  %sub31 = sub nsw i32 %len.077, %copy.3
  %cmp2 = icmp sgt i32 %sub31, 0
  br i1 %cmp2, label %if.end30.while.body_crit_edge, label %if.end30.out_up_crit_edge

if.end30.out_up_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out_up:                                           ; preds = %if.end30.out_up_crit_edge, %if.else.out_up_crit_edge, %cleanup.thread, %if.end.out_up_crit_edge
  %count.addr.3 = phi i32 [ -5, %cleanup.thread ], [ %retval.0.i, %if.end.out_up_crit_edge ], [ %retval.0.i, %if.end30.out_up_crit_edge ], [ -5, %if.else.out_up_crit_edge ]
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %mutex33 = getelementptr inbounds %struct.w1_master, ptr %8, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %mutex33) #7
  br label %cleanup34

cleanup34:                                        ; preds = %out_up, %if.end.i.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %count.addr.3, %out_up ], [ 0, %if.end.i.cleanup34_crit_edge ], [ 0, %entry.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f0d_readblock(ptr noundef %sl, i32 noundef %off, i32 noundef %count, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %wrbuf = alloca [3 x i8], align 1
  %cmp = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #7
  %0 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmp) #7
  %2 = call ptr @memset(ptr %cmp, i32 255, i32 128)
  %3 = trunc i32 %off to i8
  %conv = and i8 %3, 127
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %tries.0 = phi i32 [ 10, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %4 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -16, ptr %wrbuf, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %1, align 1
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %8, ptr noundef nonnull %wrbuf, i32 noundef 3) #7
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %call4 = call zeroext i8 @w1_read_block(ptr noundef %10, ptr noundef %buf, i32 noundef %count) #7
  %call5 = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %12, ptr noundef nonnull %wrbuf, i32 noundef 3) #7
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %call13 = call zeroext i8 @w1_read_block(ptr noundef %14, ptr noundef nonnull %cmp, i32 noundef %count) #7
  %bcmp = call i32 @bcmp(ptr nonnull %cmp, ptr %buf, i32 %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %do.cond

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %if.end8
  %dec = add nsw i32 %tries.0, -1
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %do.end22, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end22:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end22 ], [ 0, %if.end8.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmp) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f0d_write(ptr noundef %sl, i32 noundef %addr, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %wrbuf = alloca [3 x i8], align 1
  %rdbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #7
  %0 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wrbuf, align 1, !annotation !52
  %1 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !52
  %3 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdbuf) #7
  %5 = ptrtoint ptr %rdbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rdbuf, align 1, !annotation !52
  %6 = getelementptr inbounds [2 x i8], ptr %rdbuf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !52
  %and = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %retry.preheader, label %do.end

retry.preheader:                                  ; preds = %entry
  %conv = trunc i32 %addr to i8
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %arrayidx20 = getelementptr i8, ptr %data, i32 1
  br label %retry

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %addr, i32 noundef 2) #11
  br label %cleanup

retry:                                            ; preds = %if.then24.retry_crit_edge, %retry.preheader
  %tries.0 = phi i32 [ %dec, %if.then24.retry_crit_edge ], [ 10, %retry.preheader ]
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %retry
  %8 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 85, ptr %wrbuf, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %1, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %3, align 1
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %12, ptr noundef nonnull %wrbuf, i32 noundef 3) #7
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %14, ptr noundef %data, i32 noundef 2) #7
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %call10 = call zeroext i8 @w1_read_block(ptr noundef %16, ptr noundef nonnull %rdbuf, i32 noundef 2) #7
  %17 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rdbuf, align 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp15.not = icmp eq i8 %18, %20
  br i1 %cmp15.not, label %lor.lhs.false17, label %if.end3.if.then24_crit_edge

if.end3.if.then24_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false17:                                  ; preds = %if.end3
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %6, align 1
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp22.not = icmp eq i8 %22, %24
  br i1 %cmp22.not, label %if.end44, label %lor.lhs.false17.if.then24_crit_edge

lor.lhs.false17.if.then24_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false17.if.then24_crit_edge, %if.end3.if.then24_crit_edge
  %dec = add nsw i32 %tries.0, -1
  %tobool25.not = icmp eq i32 %dec, 0
  br i1 %tobool25.not, label %do.end30, label %if.then24.retry_crit_edge

if.then24.retry_crit_edge:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.9, i32 noundef 10) #11
  %25 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rdbuf, align 1
  %conv36 = zext i8 %26 to i32
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %conv38 = zext i8 %28 to i32
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 1
  %conv40 = zext i8 %30 to i32
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx20, align 1
  %conv42 = zext i8 %32 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv42) #11
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false17
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %34, i8 noundef zeroext -1) #7
  call void @msleep(i32 noundef 16) #7
  %35 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master, align 4
  %call47 = call zeroext i8 @w1_read_8(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call47)
  %cmp49.not = icmp eq i8 %call47, -86
  br i1 %cmp49.not, label %if.end44.cleanup_crit_edge, label %do.end54

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %conv48 = zext i8 %call47 to i32
  %dev55 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.15, i32 noundef %conv48) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.end44.cleanup_crit_edge, %do.end30, %retry.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end30 ], [ -1, %do.end54 ], [ 0, %if.end44.cleanup_crit_edge ], [ -1, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdbuf) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_w1_ds2805__170_294_w1_family_0d_init6, !1, !"__initcall__kmod_w1_ds2805__170_294_w1_family_0d_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_w1_family_0d_exit, !1, !"__exitcall_w1_family_0d_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 296, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author173, !7, !"__UNIQUE_ID_author173", i1 false, i1 false}
!7 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 297, i32 1}
!8 = !{ptr @__UNIQUE_ID_description174, !9, !"__UNIQUE_ID_description174", i1 false, i1 false}
!9 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 298, i32 1}
!10 = !{ptr @w1_family_0d, !11, !"w1_family_0d", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 289, i32 25}
!12 = !{ptr @w1_f0d_fops, !13, !"w1_f0d_fops", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 284, i32 35}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 266, i32 11}
!16 = !{ptr @w1_f0d_bin_attr, !17, !"w1_f0d_bin_attr", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 264, i32 29}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 88, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @w1_f0d_readblock._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @w1_f0d_readblock._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 152, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @w1_f0d_write._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @w1_f0d_write._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 177, i32 3}
!33 = !{ptr @w1_f0d_write._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @w1_f0d_write._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 180, i32 3}
!37 = !{ptr @w1_f0d_write._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @w1_f0d_write._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/w1/slaves/w1_ds2805.c", i32 195, i32 3}
!41 = !{ptr @w1_f0d_write._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @w1_f0d_write._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
