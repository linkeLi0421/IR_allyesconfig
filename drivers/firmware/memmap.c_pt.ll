; ModuleID = '/llk/IR_all_yes/drivers/firmware/memmap.c_pt.bc'
source_filename = "../drivers/firmware/memmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.memmap_attribute = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.firmware_map_entry = type { i64, i64, ptr, %struct.list_head, %struct.kobject }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@map_entries_bootmem_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/firmware/memmap.c\00", [38 x i8] zeroinitializer }, align 32
@map_entries_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_memmap__226_418_firmware_memmap_init7 = internal global ptr @firmware_memmap_init, section ".initcall7.init", align 4
@map_entries = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @map_entries, ptr @map_entries }, [24 x i8] zeroinitializer }, align 32
@map_entries_bootmem = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @map_entries_bootmem, ptr @map_entries_bootmem }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"map_entries_bootmem_lock\00", [39 x i8] zeroinitializer }, align 32
@memmap_ktype = internal global %struct.kobj_type { ptr @release_firmware_map_entry, ptr @memmap_attr_ops, ptr null, ptr @def_groups, ptr null, ptr null, ptr null }, section ".ref.data", align 4
@memmap_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @memmap_attr_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@def_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @def_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@def_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @def_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@def_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @memmap_start_attr, ptr @memmap_end_attr, ptr @memmap_type_attr, ptr null], [16 x i8] zeroinitializer }, align 32
@memmap_start_attr = internal global { %struct.memmap_attribute, [40 x i8] } { %struct.memmap_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @start_show }, [40 x i8] zeroinitializer }, align 32
@memmap_end_attr = internal global { %struct.memmap_attribute, [40 x i8] } { %struct.memmap_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @end_show }, [40 x i8] zeroinitializer }, align 32
@memmap_type_attr = internal global { %struct.memmap_attribute, [40 x i8] } { %struct.memmap_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@add_sysfs_fw_map_entry.map_entries_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@add_sysfs_fw_map_entry.mmap_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memmap\00", [25 x i8] zeroinitializer }, align 32
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"map_entries_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"map_entries_bootmem_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 330, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"map_entries_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"map_entries\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 79, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"map_entries_bootmem\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 88, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 89, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"memmap_attr_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 74, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"def_groups\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 440, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"def_group\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 72, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"def_attrs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 66, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"memmap_start_attr\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 59, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"memmap_end_attr\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 60, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"memmap_type_attr\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 61, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 59, i32 52 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 372, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 60, i32 52 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 61, i32 52 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 384, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"map_entries_nr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 178, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"mmap_kset\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 179, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 185, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 191, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [29 x i8] c"../drivers/firmware/memmap.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 80, i32 8 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_memmap__226_418_firmware_memmap_init7, ptr @map_entries_bootmem_lock, ptr @.str, ptr @map_entries_lock, ptr @map_entries, ptr @map_entries_bootmem, ptr @.str.1, ptr @memmap_attr_ops, ptr @def_groups, ptr @.str.2, ptr @def_group, ptr @def_attrs, ptr @memmap_start_attr, ptr @memmap_end_attr, ptr @memmap_type_attr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @add_sysfs_fw_map_entry.map_entries_nr, ptr @add_sysfs_fw_map_entry.mmap_kset, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_entries_bootmem_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_entries_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_entries_bootmem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmap_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmap_start_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmap_end_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memmap_type_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_sysfs_fw_map_entry.map_entries_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_sysfs_fw_map_entry.mmap_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @firmware_map_add_hotplug(i64 noundef %start, i64 noundef %end, ptr noundef %type) local_unnamed_addr #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i64 %end, -1
  %call.i = tail call fastcc ptr @firmware_map_find_entry_in_list(i64 noundef %start, i64 noundef %sub, ptr noundef %type, ptr noundef nonnull @map_entries) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25 = tail call fastcc ptr @firmware_map_find_entry_in_list(i64 noundef %start, i64 noundef %sub, ptr noundef %type, ptr noundef nonnull @map_entries_bootmem) #11
  %tobool4.not = icmp eq ptr %call.i25, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 168) #12
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @map_entries_bootmem_lock) #8
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i25, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i25, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i25, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @map_entries_bootmem_lock) #8
  %9 = call ptr @memset(ptr %call.i25, i32 0, i32 168)
  br label %if.end10

if.end10:                                         ; preds = %list_del.exit, %if.then5.if.end10_crit_edge
  %entry1.0 = phi ptr [ %call.i25, %list_del.exit ], [ %call7.i.i, %if.then5.if.end10_crit_edge ]
  tail call fastcc void @firmware_map_add_entry(i64 noundef %start, i64 noundef %end, ptr noundef %type, ptr noundef nonnull %entry1.0)
  tail call fastcc void @add_sysfs_fw_map_entry(ptr noundef nonnull %entry1.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @firmware_map_add_entry(i64 noundef %start, i64 noundef %end, ptr noundef %type, ptr noundef %entry1) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp = icmp ugt i64 %start, %end
  br i1 %cmp, label %do.body3, label %do.end6, !prof !58

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/firmware/memmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.end6:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %start, ptr %entry1, align 8
  %sub = add i64 %end, -1
  %end8 = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 1
  %1 = ptrtoint ptr %end8 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %sub, ptr %end8, align 8
  %type9 = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %type, ptr %type9, align 8
  %list = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %kobj = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 4
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @memmap_ktype) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @map_entries_lock) #8
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @map_entries, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef nonnull @map_entries) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end6.list_add_tail.exit_crit_edge

do.end6.list_add_tail.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @map_entries, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @map_entries, ptr %list, align 4
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end6.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @map_entries_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_sysfs_fw_map_entry(ptr noundef %entry1) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 4
  %state_in_sysfs = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %state_in_sysfs to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %state_in_sysfs, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @add_sysfs_fw_map_entry.mmap_kset, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_kobj to i32))
  %3 = load ptr, ptr @firmware_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef %3) #8
  store ptr %call, ptr @add_sysfs_fw_map_entry.mmap_kset, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then3.return_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %4 = load ptr, ptr @add_sysfs_fw_map_entry.mmap_kset, align 4
  %kset = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %kset, align 4
  %6 = load i32, ptr @add_sysfs_fw_map_entry.map_entries_nr, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @add_sysfs_fw_map_entry.map_entries_nr, align 4
  %call10 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.return_crit_edge, label %if.then12

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef %kobj) #8
  br label %return

return:                                           ; preds = %if.then12, %if.end7.return_crit_edge, %if.then3.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @firmware_map_add_early(i64 noundef %start, i64 noundef %end, ptr noundef %type) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 168, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @firmware_map_add_entry(i64 noundef %start, i64 noundef %end, ptr noundef %type, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @firmware_map_remove(i64 noundef %start, i64 noundef %end, ptr nocapture noundef readonly %type) local_unnamed_addr #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @map_entries_lock) #8
  %sub = add i64 %end, -1
  %call.i = tail call fastcc ptr @firmware_map_find_entry_in_list(i64 noundef %start, i64 noundef %sub, ptr noundef %type, ptr noundef nonnull @map_entries) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @map_entries_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %list.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.firmware_map_remove_entry.exit_crit_edge

if.end.firmware_map_remove_entry.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %firmware_map_remove_entry.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %firmware_map_remove_entry.exit

firmware_map_remove_entry.exit:                   ; preds = %if.end.i.i.i, %if.end.firmware_map_remove_entry.exit_crit_edge
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @map_entries_lock) #8
  %kobj.i = getelementptr inbounds %struct.firmware_map_entry, ptr %call.i, i32 0, i32 4
  tail call void @kobject_put(ptr noundef %kobj.i) #8
  br label %cleanup

cleanup:                                          ; preds = %firmware_map_remove_entry.exit, %if.then
  %retval.0 = phi i32 [ 0, %firmware_map_remove_entry.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_memmap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn8 = load ptr, ptr @map_entries, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @map_entries
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn10, i32 -20
  tail call fastcc void @add_sysfs_fw_map_entry(ptr noundef %entry1.0)
  %0 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @map_entries
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @firmware_map_find_entry_in_list(i64 noundef %start, i64 noundef %end, ptr nocapture noundef readonly %type, ptr noundef readonly %list) unnamed_addr #3 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %list, align 4
  %cmp.not22 = icmp eq ptr %.pn20, %list
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %entry1.024 = getelementptr i8, ptr %.pn23, i32 -20
  %1 = ptrtoint ptr %entry1.024 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry1.024, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %start)
  %cmp4 = icmp eq i64 %2, %start
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %end5 = getelementptr i8, ptr %.pn23, i32 -12
  %3 = ptrtoint ptr %end5 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %end5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %end)
  %cmp6 = icmp eq i64 %4, %end
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %type8 = getelementptr i8, ptr %.pn23, i32 -4
  %5 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type8, align 8
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.loopexit.split.loop.exit26, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.loopexit.split.loop.exit26:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %entry1.024.le = getelementptr i8, ptr %.pn23, i32 -20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit26, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %entry1.024.le, %cleanup.loopexit.split.loop.exit26 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @release_firmware_map_entry(ptr noundef %kobj) #0 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageReserved.exit, !prof !58

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

PageReserved.exit:                                ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %PageReserved.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @map_entries_bootmem_lock) #8
  %list = getelementptr i8, ptr %kobj, i32 -8
  %7 = load ptr, ptr @map_entries_bootmem, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @map_entries_bootmem, ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %kobj, i32 -4
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @map_entries_bootmem, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @map_entries_bootmem, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @map_entries_bootmem_lock) #8
  br label %cleanup

if.end:                                           ; preds = %PageReserved.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_add.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memmap_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -28
  %show = getelementptr inbounds %struct.memmap_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %call3 = tail call i32 %1(ptr noundef %add.ptr.i, ptr noundef %buf) #8
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_show(ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %entry1, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_show(ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.firmware_map_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/memmap.c", i32 330, i32 6}
!2 = !{ptr @__initcall__kmod_memmap__226_418_firmware_memmap_init7, !3, !"__initcall__kmod_memmap__226_418_firmware_memmap_init7", i1 false, i1 false}
!3 = !{!"../drivers/firmware/memmap.c", i32 418, i32 1}
!4 = !{ptr @map_entries, !5, !"map_entries", i1 false, i1 false}
!5 = !{!"../drivers/firmware/memmap.c", i32 79, i32 8}
!6 = !{ptr @map_entries_bootmem, !7, !"map_entries_bootmem", i1 false, i1 false}
!7 = !{!"../drivers/firmware/memmap.c", i32 88, i32 8}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/memmap.c", i32 89, i32 8}
!10 = !{ptr @map_entries_bootmem_lock, !9, !"map_entries_bootmem_lock", i1 false, i1 false}
!11 = !{ptr @memmap_ktype, !12, !"memmap_ktype", i1 false, i1 false}
!12 = !{!"../drivers/firmware/memmap.c", i32 119, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!15 = !{ptr @memmap_attr_ops, !16, !"memmap_attr_ops", i1 false, i1 false}
!16 = !{!"../drivers/firmware/memmap.c", i32 74, i32 31}
!17 = !{ptr @def_groups, !18, !"def_groups", i1 false, i1 false}
!18 = !{!"../drivers/firmware/memmap.c", i32 72, i32 1}
!19 = !{ptr @def_group, !18, !"def_group", i1 false, i1 false}
!20 = !{ptr @def_attrs, !21, !"def_attrs", i1 false, i1 false}
!21 = !{!"../drivers/firmware/memmap.c", i32 66, i32 26}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/memmap.c", i32 59, i32 52}
!24 = !{ptr @memmap_start_attr, !25, !"memmap_start_attr", i1 false, i1 false}
!25 = !{!"../drivers/firmware/memmap.c", i32 59, i32 32}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/memmap.c", i32 372, i32 34}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/memmap.c", i32 60, i32 52}
!30 = !{ptr @memmap_end_attr, !31, !"memmap_end_attr", i1 false, i1 false}
!31 = !{!"../drivers/firmware/memmap.c", i32 60, i32 32}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/memmap.c", i32 61, i32 52}
!34 = !{ptr @memmap_type_attr, !35, !"memmap_type_attr", i1 false, i1 false}
!35 = !{!"../drivers/firmware/memmap.c", i32 61, i32 32}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firmware/memmap.c", i32 384, i32 34}
!38 = !{ptr @add_sysfs_fw_map_entry.map_entries_nr, !39, !"map_entries_nr", i1 false, i1 false}
!39 = !{!"../drivers/firmware/memmap.c", i32 178, i32 13}
!40 = !{ptr @add_sysfs_fw_map_entry.mmap_kset, !41, !"mmap_kset", i1 false, i1 false}
!41 = !{!"../drivers/firmware/memmap.c", i32 179, i32 22}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/firmware/memmap.c", i32 185, i32 35}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/firmware/memmap.c", i32 191, i32 38}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/firmware/memmap.c", i32 80, i32 8}
!48 = !{ptr @map_entries_lock, !47, !"map_entries_lock", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2153538364, i64 2153538854, i64 2153538401, i64 2153538457, i64 2153538491, i64 2153538515, i64 2153538556, i64 2153538577, i64 2153538605, i64 2153538639}
!60 = !{i64 2150564983, i64 2150565474, i64 2150565020, i64 2150565076, i64 2150565110, i64 2150565134, i64 2150565175, i64 2150565196, i64 2150565224, i64 2150565258}
