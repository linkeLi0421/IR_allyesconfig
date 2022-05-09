; ModuleID = '/llk/IR_all_yes/samples/kobject/kset-example.c_pt.bc'
source_filename = "../samples/kobject/kset-example.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.foo_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.foo_obj = type { %struct.kobject, i32, i32, i32 }

@baz_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bar_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@foo_obj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@example_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_kset_example__173_285_example_init6 = internal global ptr @example_init, section ".initcall6.init", align 4
@__exitcall_example_exit = internal global ptr @example_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [47 x i8] c"kset_example.file=samples/kobject/kset-example\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"kset_example.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [56 x i8] c"kset_example.author=Greg Kroah-Hartman <greg@kroah.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kset_example\00", [19 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"foo\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bar\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"baz\00", [28 x i8] zeroinitializer }, align 32
@foo_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @foo_release, ptr @foo_sysfs_ops, ptr null, ptr @foo_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@foo_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @foo_attr_show, ptr @foo_attr_store }, [24 x i8] zeroinitializer }, align 32
@foo_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @foo_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@foo_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @foo_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@foo_default_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @foo_attribute, ptr @baz_attribute, ptr @bar_attribute, ptr null], [16 x i8] zeroinitializer }, align 32
@foo_attribute = internal global { %struct.foo_attribute, [36 x i8] } { %struct.foo_attribute { %struct.attribute { ptr @.str.1, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @foo_show, ptr @foo_store }, [36 x i8] zeroinitializer }, align 32
@baz_attribute = internal global { %struct.foo_attribute, [36 x i8] } { %struct.foo_attribute { %struct.attribute { ptr @.str.3, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b_show, ptr @b_store }, [36 x i8] zeroinitializer }, align 32
@bar_attribute = internal global { %struct.foo_attribute, [36 x i8] } { %struct.foo_attribute { %struct.attribute { ptr @.str.2, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b_show, ptr @b_store }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"baz_obj\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 197, i32 24 }
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"bar_obj\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 196, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"foo_obj\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 195, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"example_kset\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 194, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 247, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 254, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 258, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 262, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"foo_ktype\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 188, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 221, i32 62 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"foo_sysfs_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 89, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"foo_default_groups\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"foo_default_group\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 181, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"foo_default_attrs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 175, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"foo_attribute\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 131, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"baz_attribute\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 166, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"bar_attribute\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 168, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [34 x i8] c"../samples/kobject/kset-example.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 115, i32 22 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_example_exit, ptr @__initcall__kmod_kset_example__173_285_example_init6, ptr @example_exit, ptr @baz_obj, ptr @bar_obj, ptr @foo_obj, ptr @example_kset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @foo_ktype, ptr @.str.4, ptr @foo_sysfs_ops, ptr @foo_default_groups, ptr @foo_default_group, ptr @foo_default_attrs, ptr @foo_attribute, ptr @baz_attribute, ptr @bar_attribute, ptr @.str.5], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baz_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bar_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_obj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_default_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baz_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bar_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @example_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @baz_obj, align 4
  tail call void @kobject_put(ptr noundef %0) #8
  %1 = load ptr, ptr @bar_obj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  %2 = load ptr, ptr @foo_obj, align 4
  tail call void @kobject_put(ptr noundef %2) #8
  %3 = load ptr, ptr @example_kset, align 4
  tail call void @kset_unregister(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @example_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %0) #8
  store ptr %call, ptr @example_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @create_foo_obj(ptr noundef nonnull @.str.1)
  store ptr %call1, ptr @foo_obj, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.foo_error_crit_edge, label %if.end4

if.end.foo_error_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %foo_error

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @create_foo_obj(ptr noundef nonnull @.str.2)
  store ptr %call5, ptr @bar_obj, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.bar_error_crit_edge, label %if.end8

if.end4.bar_error_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %bar_error

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc ptr @create_foo_obj(ptr noundef nonnull @.str.3)
  store ptr %call9, ptr @baz_obj, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %baz_error, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

baz_error:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @bar_obj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  br label %bar_error

bar_error:                                        ; preds = %baz_error, %if.end4.bar_error_crit_edge
  %2 = load ptr, ptr @foo_obj, align 4
  tail call void @kobject_put(ptr noundef %2) #8
  br label %foo_error

foo_error:                                        ; preds = %bar_error, %if.end.foo_error_crit_edge
  %3 = load ptr, ptr @example_kset, align 4
  tail call void @kset_unregister(ptr noundef %3) #8
  br label %return

return:                                           ; preds = %foo_error, %if.end8.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %foo_error ], [ -12, %entry.return_crit_edge ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_foo_obj(ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 148) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @example_kset, align 4
  %kset = getelementptr inbounds %struct.kobject, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %kset, align 8
  %call3 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @foo_ktype, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ %call7.i.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @foo_release(ptr noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @foo_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.foo_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @foo_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.foo_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @foo_show(ptr nocapture noundef readonly %foo_obj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %foo = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 1
  %0 = ptrtoint ptr %foo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %foo, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @foo_store(ptr noundef %foo_obj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %foo = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 1
  %call = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef %foo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %call.count = select i1 %cmp, i32 %call, i32 %count
  ret i32 %call.count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_show(ptr nocapture noundef readonly %foo_obj, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %baz = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 2
  %bar = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 3
  %var.0.in = select i1 %cmp, ptr %baz, ptr %bar
  %2 = ptrtoint ptr %var.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %var.0 = load i32, ptr %var.0.in, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %var.0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_store(ptr nocapture noundef writeonly %foo_obj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %var = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var) #8
  %0 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %var, align 4, !annotation !53
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %var) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  %3 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %var, align 4
  %baz = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 2
  %bar = getelementptr inbounds %struct.foo_obj, ptr %foo_obj, i32 0, i32 3
  %baz.sink = select i1 %cmp3, ptr %baz, ptr %bar
  %5 = ptrtoint ptr %baz.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %baz.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_kset_example__173_285_example_init6, !1, !"__initcall__kmod_kset_example__173_285_example_init6", i1 false, i1 false}
!1 = !{!"../samples/kobject/kset-example.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_example_exit, !3, !"__exitcall_example_exit", i1 false, i1 false}
!3 = !{!"../samples/kobject/kset-example.c", i32 286, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../samples/kobject/kset-example.c", i32 287, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author176, !8, !"__UNIQUE_ID_author176", i1 false, i1 false}
!8 = !{!"../samples/kobject/kset-example.c", i32 288, i32 1}
!9 = !{ptr @example_kset, !10, !"example_kset", i1 false, i1 false}
!10 = !{!"../samples/kobject/kset-example.c", i32 194, i32 21}
!11 = !{ptr @foo_obj, !12, !"foo_obj", i1 false, i1 false}
!12 = !{!"../samples/kobject/kset-example.c", i32 195, i32 24}
!13 = !{ptr @bar_obj, !14, !"bar_obj", i1 false, i1 false}
!14 = !{!"../samples/kobject/kset-example.c", i32 196, i32 24}
!15 = !{ptr @baz_obj, !16, !"baz_obj", i1 false, i1 false}
!16 = !{!"../samples/kobject/kset-example.c", i32 197, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../samples/kobject/kset-example.c", i32 247, i32 37}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../samples/kobject/kset-example.c", i32 254, i32 27}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../samples/kobject/kset-example.c", i32 258, i32 27}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../samples/kobject/kset-example.c", i32 262, i32 27}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../samples/kobject/kset-example.c", i32 221, i32 62}
!27 = !{ptr @foo_ktype, !28, !"foo_ktype", i1 false, i1 false}
!28 = !{!"../samples/kobject/kset-example.c", i32 188, i32 25}
!29 = !{ptr @foo_sysfs_ops, !30, !"foo_sysfs_ops", i1 false, i1 false}
!30 = !{!"../samples/kobject/kset-example.c", i32 89, i32 31}
!31 = !{ptr @foo_default_groups, !32, !"foo_default_groups", i1 false, i1 false}
!32 = !{!"../samples/kobject/kset-example.c", i32 181, i32 1}
!33 = !{ptr @foo_default_group, !32, !"foo_default_group", i1 false, i1 false}
!34 = !{ptr @foo_default_attrs, !35, !"foo_default_attrs", i1 false, i1 false}
!35 = !{!"../samples/kobject/kset-example.c", i32 175, i32 26}
!36 = !{ptr @foo_attribute, !37, !"foo_attribute", i1 false, i1 false}
!37 = !{!"../samples/kobject/kset-example.c", i32 131, i32 29}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../samples/kobject/kset-example.c", i32 115, i32 22}
!40 = !{ptr @baz_attribute, !41, !"baz_attribute", i1 false, i1 false}
!41 = !{!"../samples/kobject/kset-example.c", i32 166, i32 29}
!42 = !{ptr @bar_attribute, !43, !"bar_attribute", i1 false, i1 false}
!43 = !{!"../samples/kobject/kset-example.c", i32 168, i32 29}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
