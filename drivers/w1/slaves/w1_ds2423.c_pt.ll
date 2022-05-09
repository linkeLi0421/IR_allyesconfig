; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2423.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2423.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@__initcall__kmod_w1_ds2423__170_128_w1_family_1d_init6 = internal global ptr @w1_family_1d_init, section ".initcall6.init", align 4
@w1_family_1d = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 29, ptr @w1_f1d_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_1d_exit = internal global ptr @w1_family_1d_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [49 x i8] c"w1_ds2423.author=Mika Laitio <lamikr@pilppa.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [77 x i8] c"w1_ds2423.description=w1 family 1d driver for DS2423, 4 counters and 4kb ram\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"w1_ds2423.file=drivers/w1/slaves/w1_ds2423\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"w1_ds2423.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [31 x i8] c"w1_ds2423.alias=w1-family-0x1D\00", section ".modinfo", align 1
@w1_f1d_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_f1d_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f1d_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f1d_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f1d_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_f1d_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_f1d_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_w1_slave, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_w1_slave = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_slave_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_slave\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@w1_slave_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"w1_counter_read() returned %u bytes instead of %d bytes wanted.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1_slave_show\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2423.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_slave_show._entry_ptr = internal global ptr @w1_slave_show._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crc=NO\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crc=YES c=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Connection error\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"w1_family_1d\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 124, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"w1_f1d_fops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 120, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"w1_f1d_groups\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"w1_f1d_group\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 118, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"w1_f1d_attrs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 114, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"dev_attr_w1_slave\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 112, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 66, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 69, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 75, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 98, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2423.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 45 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_w1_family_1d_exit, ptr @__initcall__kmod_w1_ds2423__170_128_w1_family_1d_init6, ptr @w1_family_1d_exit, ptr @w1_slave_show._entry, ptr @w1_slave_show._entry_ptr, ptr @w1_family_1d, ptr @w1_f1d_fops, ptr @w1_f1d_groups, ptr @w1_f1d_group, ptr @w1_f1d_attrs, ptr @dev_attr_w1_slave, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_1d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1d_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1d_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1d_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1d_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_w1_slave to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_1d_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_1d) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_1d_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_1d) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_slave_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out_buf) #2 align 64 {
entry:
  %rbuf = alloca [168 x i8], align 1
  %wrbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %master = getelementptr i8, ptr %device, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %rbuf) #6
  %2 = call ptr @memset(ptr %rbuf, i32 255, i32 168)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #6
  %3 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  %5 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -91, ptr %wrbuf, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -97, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %4, align 1
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  %call4 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.else77

if.then:                                          ; preds = %entry
  call void @w1_write_block(ptr noundef %1, ptr noundef nonnull %wrbuf, i32 noundef 3) #6
  %add.ptr13 = getelementptr i8, ptr %out_buf, i32 4096
  %add.ptr42 = getelementptr inbounds i8, ptr %rbuf, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc74.for.body_crit_edge, %if.then
  %p.0134 = phi i32 [ 0, %if.then ], [ %add20, %for.inc74.for.body_crit_edge ]
  %c.0133 = phi i32 [ 4096, %if.then ], [ %c.2, %for.inc74.for.body_crit_edge ]
  %read_byte_count.0132 = phi i32 [ 0, %if.then ], [ %add, %for.inc74.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %p.0134, 42
  %add.ptr = getelementptr i8, ptr %rbuf, i32 %mul
  %call7 = call zeroext i8 @w1_read_block(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 42) #6
  %conv8 = zext i8 %call7 to i32
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body
  %ii.0129 = phi i32 [ 0, %for.body ], [ %inc, %for.body12.for.body12_crit_edge ]
  %c.1128 = phi i32 [ %c.0133, %for.body ], [ %sub, %for.body12.for.body12_crit_edge ]
  %idx.neg = sub i32 0, %c.1128
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 %idx.neg
  %add16 = add nuw nsw i32 %ii.0129, %mul
  %arrayidx17 = getelementptr [168 x i8], ptr %rbuf, i32 0, i32 %add16
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr14, i32 noundef %c.1128, ptr noundef nonnull @.str.1, i32 noundef %conv18)
  %sub = sub i32 %c.1128, %call19
  %inc = add nuw nsw i32 %ii.0129, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.end, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.end:                                          ; preds = %for.body12
  %add = add i32 %read_byte_count.0132, %conv8
  %add20 = add nuw nsw i32 %p.0134, 1
  %mul21 = mul nuw nsw i32 %add20, 42
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul21)
  %cmp22.not = icmp eq i32 %add, %mul21
  br i1 %cmp22.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.2, i32 noundef %add, i32 noundef 42) #9
  %idx.neg26 = sub i32 0, %sub
  %add.ptr27 = getelementptr i8, ptr %add.ptr13, i32 %idx.neg26
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr27, i32 noundef %sub, ptr noundef nonnull @.str.7)
  br label %for.inc74

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.0134)
  %cmp30 = icmp eq i32 %p.0134, 0
  br i1 %cmp30, label %if.then32, label %if.else40

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %wrbuf, i32 noundef 3) #6
  %call38 = call zeroext i16 @crc16(i16 noundef zeroext %call34, ptr noundef nonnull %rbuf, i32 noundef 11) #6
  br label %if.end

if.else40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mul44 = add nsw i32 %mul, -42
  %add.ptr45 = getelementptr i8, ptr %add.ptr42, i32 %mul44
  %call46 = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %add.ptr45, i32 noundef 42) #6
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then32
  %crc.0.in = phi i16 [ %call38, %if.then32 ], [ %call46, %if.else40 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %crc.0.in)
  %cmp48 = icmp eq i16 %crc.0.in, -20479
  br i1 %cmp48, label %for.body54.preheader, label %if.else66

for.body54.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add56 = add nuw nsw i32 %mul, 4
  %arrayidx57 = getelementptr [168 x i8], ptr %rbuf, i32 0, i32 %add56
  %10 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %11 to i32
  %add56.1 = add nuw nsw i32 %mul, 3
  %arrayidx57.1 = getelementptr [168 x i8], ptr %rbuf, i32 0, i32 %add56.1
  %12 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx57.1, align 1
  %conv58.1 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv58, 16
  %15 = shl nuw nsw i32 %conv58.1, 8
  %shl.2 = or i32 %14, %15
  %add56.2 = add nuw nsw i32 %mul, 2
  %arrayidx57.2 = getelementptr [168 x i8], ptr %rbuf, i32 0, i32 %add56.2
  %16 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx57.2, align 1
  %conv58.2 = zext i8 %17 to i32
  %or.2 = or i32 %shl.2, %conv58.2
  %shl.3 = shl nuw i32 %or.2, 8
  %add56.3 = or i32 %mul, 1
  %arrayidx57.3 = getelementptr [168 x i8], ptr %rbuf, i32 0, i32 %add56.3
  %18 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx57.3, align 1
  %conv58.3 = zext i8 %19 to i32
  %or.3 = or i32 %shl.3, %conv58.3
  %idx.neg62 = sub i32 0, %sub
  %add.ptr63 = getelementptr i8, ptr %add.ptr13, i32 %idx.neg62
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr63, i32 noundef %sub, ptr noundef nonnull @.str.8, i32 noundef %or.3)
  br label %for.inc74

if.else66:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %idx.neg68 = sub i32 0, %sub
  %add.ptr69 = getelementptr i8, ptr %add.ptr13, i32 %idx.neg68
  %call70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr69, i32 noundef %sub, ptr noundef nonnull @.str.7)
  br label %for.inc74

for.inc74:                                        ; preds = %if.else66, %for.body54.preheader, %do.end
  %call28.pn = phi i32 [ %call28, %do.end ], [ %call64, %for.body54.preheader ], [ %call70, %if.else66 ]
  %c.2 = sub i32 %sub, %call28.pn
  %exitcond135.not = icmp eq i32 %add20, 4
  br i1 %exitcond135.not, label %if.end83.loopexit, label %for.inc74.for.body_crit_edge

for.inc74.for.body_crit_edge:                     ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else77:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = call ptr @memcpy(ptr %out_buf, ptr @.str.9, i32 17)
  br label %if.end83

if.end83.loopexit:                                ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = sub i32 4096, %c.2
  br label %if.end83

if.end83:                                         ; preds = %if.end83.loopexit, %if.else77
  %c.3 = phi i32 [ 16, %if.else77 ], [ %phi.bo, %if.end83.loopexit ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #6
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %rbuf) #6
  ret i32 %c.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_w1_ds2423__170_128_w1_family_1d_init6, !1, !"__initcall__kmod_w1_ds2423__170_128_w1_family_1d_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 128, i32 1}
!2 = !{ptr @__exitcall_w1_family_1d_exit, !1, !"__exitcall_w1_family_1d_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 130, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 131, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 132, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 133, i32 1}
!12 = !{ptr @w1_family_1d, !13, !"w1_family_1d", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 124, i32 25}
!14 = !{ptr @w1_f1d_fops, !15, !"w1_f1d_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 120, i32 35}
!16 = !{ptr @w1_f1d_groups, !17, !"w1_f1d_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 118, i32 1}
!18 = !{ptr @w1_f1d_group, !17, !"w1_f1d_group", i1 false, i1 false}
!19 = !{ptr @w1_f1d_attrs, !20, !"w1_f1d_attrs", i1 false, i1 false}
!20 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 114, i32 26}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 112, i32 8}
!23 = !{ptr @dev_attr_w1_slave, !22, !"dev_attr_w1_slave", i1 false, i1 false}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 66, i32 9}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 69, i32 5}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @w1_slave_show._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @w1_slave_show._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 75, i32 9}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 98, i32 10}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/w1/slaves/w1_ds2423.c", i32 106, i32 45}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
