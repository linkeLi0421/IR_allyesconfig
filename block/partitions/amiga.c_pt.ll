; ModuleID = '/llk/IR_all_yes/block/partitions/amiga.c_pt.bc'
source_filename = "../block/partitions/amiga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.RigidDiskBlock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [16 x i8], [4 x i8], [8 x i8], [16 x i8], [4 x i8], [10 x i32] }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.PartitionBlock = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i8], [15 x i32], [17 x i32], [15 x i32] }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@amiga_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Dev %s: unable to read RDB block %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amiga_partition\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"block/partitions/amiga.c\00", [39 x i8] zeroinitializer }, align 32
@amiga_partition._entry_ptr = internal global ptr @amiga_partition._entry, section ".printk_index", align 4
@amiga_partition._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Trashed word at 0xd0 in block %d ignored in checksum calculation\0A\00", [60 x i8] zeroinitializer }, align 32
@amiga_partition._entry_ptr.5 = internal global ptr @amiga_partition._entry.3, section ".printk_index", align 4
@amiga_partition._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Dev %s: RDB in block %d has bad checksum\0A\00", [52 x i8] zeroinitializer }, align 32
@amiga_partition._entry_ptr.8 = internal global ptr @amiga_partition._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" RDSK (%d)\00", [21 x i8] zeroinitializer }, align 32
@amiga_partition._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Dev %s: unable to read partition block %d\0A\00", [51 x i8] zeroinitializer }, align 32
@amiga_partition._entry_ptr.12 = internal global ptr @amiga_partition._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (%c%c%c^%c)\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (%c%c%c%c)\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(res %d spb %d)\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 43, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 60, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 65, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 76, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 85, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 119, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 123, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 127, i32 31 }
@___asan_gen_.62 = private constant [28 x i8] c"../block/partitions/amiga.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 134, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 717, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 45, i32 30 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @amiga_partition._entry, ptr @amiga_partition._entry.10, ptr @amiga_partition._entry.3, ptr @amiga_partition._entry.6, ptr @amiga_partition._entry_ptr, ptr @amiga_partition._entry_ptr.12, ptr @amiga_partition._entry_ptr.5, ptr @amiga_partition._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amiga_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amiga_partition._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amiga_partition._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amiga_partition._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amiga_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp33 = alloca [19 x i8], align 1
  %tmp92 = alloca [42 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #7
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !41
  br label %if.end

if.end:                                           ; preds = %put_dev_sector.exit.if.end_crit_edge, %entry
  %blk.0278 = phi i32 [ 0, %entry ], [ %inc, %put_dev_sector.exit.if.end_crit_edge ]
  %conv = zext i32 %blk.0278 to i64
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 3
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %disk_name, i32 noundef %blk.0278) #10
  br label %rdb_done

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380209483, i32 %4)
  %cmp4.not = icmp eq i32 %4, 1380209483
  br i1 %cmp4.not, label %if.end7, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %if.end3
  %rdb_SummedLongs = getelementptr inbounds %struct.RigidDiskBlock, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %rdb_SummedLongs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdb_SummedLongs, align 4
  %and = and i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not2.i = icmp eq i32 %and, 0
  br i1 %tobool.not2.i, label %if.end7.for.end_crit_edge, label %if.end7.while.body.i_crit_edge

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  %sum.05.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end7.while.body.i_crit_edge ]
  %size.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %and, %if.end7.while.body.i_crit_edge ]
  %m.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call, %if.end7.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %size.addr.04.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %m.addr.03.i, i32 1
  %7 = ptrtoint ptr %m.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m.addr.03.i, align 4
  %add.i = add i32 %8, %sum.05.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %checksum_block.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

checksum_block.exit:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp9 = icmp eq i32 %add.i, 0
  br i1 %cmp9, label %checksum_block.exit.for.end_crit_edge, label %while.body.i207.preheader

checksum_block.exit.for.end_crit_edge:            ; preds = %checksum_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.body.i207.preheader:                        ; preds = %checksum_block.exit
  %add.ptr = getelementptr i8, ptr %call, i32 220
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr, align 4
  br label %while.body.i207

while.body.i207:                                  ; preds = %while.body.i207.while.body.i207_crit_edge, %while.body.i207.preheader
  %sum.05.i200 = phi i32 [ %add.i205, %while.body.i207.while.body.i207_crit_edge ], [ 0, %while.body.i207.preheader ]
  %size.addr.04.i201 = phi i32 [ %dec.i203, %while.body.i207.while.body.i207_crit_edge ], [ %and, %while.body.i207.preheader ]
  %m.addr.03.i202 = phi ptr [ %incdec.ptr.i204, %while.body.i207.while.body.i207_crit_edge ], [ %call, %while.body.i207.preheader ]
  %dec.i203 = add nsw i32 %size.addr.04.i201, -1
  %incdec.ptr.i204 = getelementptr i32, ptr %m.addr.03.i202, i32 1
  %10 = ptrtoint ptr %m.addr.03.i202 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m.addr.03.i202, align 4
  %add.i205 = add i32 %11, %sum.05.i200
  %tobool.not.i206 = icmp eq i32 %dec.i203, 0
  br i1 %tobool.not.i206, label %checksum_block.exit209, label %while.body.i207.while.body.i207_crit_edge

while.body.i207.while.body.i207_crit_edge:        ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i207

checksum_block.exit209:                           ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i205)
  %cmp16 = icmp eq i32 %add.i205, 0
  br i1 %cmp16, label %do.end21, label %do.end27

do.end21:                                         ; preds = %checksum_block.exit209
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %blk.0278) #10
  br label %for.end

do.end27:                                         ; preds = %checksum_block.exit209
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %disk_name30 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 3
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %disk_name30, i32 noundef %blk.0278) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end27, %if.end3.for.inc_crit_edge
  %inc = add nuw nsw i32 %blk.0278, 1
  %14 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.0.load = load i32, ptr %sect, align 4
  %15 = inttoptr i32 %.fca.0.load to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.inc._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !42

for.inc._compound_head.exit.i.i_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %18, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %for.inc._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %15, %for.inc._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !43

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.17) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@amiga_partition, %if.then.i.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !48

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %.pre-phi.i) #7
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %cmp = icmp eq i32 %inc, 16
  br i1 %cmp, label %put_dev_sector.exit.rdb_done_crit_edge, label %put_dev_sector.exit.if.end_crit_edge

put_dev_sector.exit.if.end_crit_edge:             ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

put_dev_sector.exit.rdb_done_crit_edge:           ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdb_done

for.end:                                          ; preds = %do.end21, %checksum_block.exit.for.end_crit_edge, %if.end7.for.end_crit_edge
  %rdb_BlockBytes = getelementptr inbounds %struct.RigidDiskBlock, ptr %call, i32 0, i32 4
  %22 = ptrtoint ptr %rdb_BlockBytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rdb_BlockBytes, align 4
  %div198 = lshr i32 %23, 9
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %tmp33) #7
  %mul = and i32 %23, -512
  %24 = call ptr @memset(ptr %tmp33, i32 255, i32 19)
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp33, i32 noundef 19, ptr noundef nonnull @.str.9, i32 noundef %mul)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %25 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pp_buf, align 4
  %call37 = call i32 @strlcat(ptr noundef %26, ptr noundef nonnull %tmp33, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %tmp33) #7
  %rdb_PartitionList = getelementptr inbounds %struct.RigidDiskBlock, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %rdb_PartitionList to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdb_PartitionList, align 4
  %29 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.0.load179 = load i32, ptr %sect, align 4
  %30 = inttoptr i32 %.fca.0.load179 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i210 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i210)
  %tobool.not.i.i.i211 = icmp eq i32 %and.i.i.i210, 0
  br i1 %tobool.not.i.i.i211, label %for.end._compound_head.exit.i.i219_crit_edge, label %if.then.i.i.i214, !prof !42

for.end._compound_head.exit.i.i219_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i219

if.then.i.i.i214:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i212 = add i32 %33, -1
  %.pre.i213 = inttoptr i32 %sub.i.i.i212 to ptr
  br label %_compound_head.exit.i.i219

_compound_head.exit.i.i219:                       ; preds = %if.then.i.i.i214, %for.end._compound_head.exit.i.i219_crit_edge
  %.pre-phi.i215 = phi ptr [ %30, %for.end._compound_head.exit.i.i219_crit_edge ], [ %.pre.i213, %if.then.i.i.i214 ]
  %_refcount.i.i.i.i.i.i216 = getelementptr inbounds %struct.page, ptr %.pre-phi.i215, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i217 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i216, i32 noundef 4) #7
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i.i218 = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i.i218, label %if.then.i.i.i.i.i220, label %do.end5.i.i.i.i.i224, !prof !43

if.then.i.i.i.i.i220:                             ; preds = %_compound_head.exit.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i215, ptr noundef nonnull @.str.17) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

do.end5.i.i.i.i.i224:                             ; preds = %_compound_head.exit.i.i219
  %call.i.i.i10.i.i.i.i.i221 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i216, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i216, i32 1, i32 3, i32 1) #7
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i216, ptr %_refcount.i.i.i.i.i.i216, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i216) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i.i.i.i222 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i222)
  %cmp.i.i.i.i.i.i.i.i223 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i222, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@amiga_partition, %if.then.i.i.i.i.i.i226)) #7
          to label %folio_put_testzero.exit.i.i.i227 [label %if.then.i.i.i.i.i.i226], !srcloc !48

if.then.i.i.i.i.i.i226:                           ; preds = %do.end5.i.i.i.i.i224
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i225 = zext i1 %cmp.i.i.i.i.i.i.i.i223 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i215, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i225) #7
  br label %folio_put_testzero.exit.i.i.i227

folio_put_testzero.exit.i.i.i227:                 ; preds = %if.then.i.i.i.i.i.i226, %do.end5.i.i.i.i.i224
  br i1 %cmp.i.i.i.i.i.i.i.i223, label %if.then.i4.i.i228, label %folio_put_testzero.exit.i.i.i227.put_dev_sector.exit229_crit_edge

folio_put_testzero.exit.i.i.i227.put_dev_sector.exit229_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev_sector.exit229

if.then.i4.i.i228:                                ; preds = %folio_put_testzero.exit.i.i.i227
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %.pre-phi.i215) #7
  br label %put_dev_sector.exit229

put_dev_sector.exit229:                           ; preds = %if.then.i4.i.i228, %folio_put_testzero.exit.i.i.i227.put_dev_sector.exit229_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40280 = icmp sgt i32 %28, 0
  br i1 %cmp40280, label %for.body.lr.ph, label %put_dev_sector.exit229.for.end138_crit_edge

put_dev_sector.exit229.for.end138_crit_edge:      ; preds = %put_dev_sector.exit229
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.body.lr.ph:                                   ; preds = %put_dev_sector.exit229
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %put_dev_sector.exit260.for.body_crit_edge, %for.body.lr.ph
  %slot.0284 = phi i32 [ 1, %for.body.lr.ph ], [ %slot.1, %put_dev_sector.exit260.for.body_crit_edge ]
  %res.0283 = phi i32 [ 0, %for.body.lr.ph ], [ %res.1, %put_dev_sector.exit260.for.body_crit_edge ]
  %part.0282 = phi i32 [ 1, %for.body.lr.ph ], [ %inc136, %put_dev_sector.exit260.for.body_crit_edge ]
  %blk.1281 = phi i32 [ %28, %for.body.lr.ph ], [ %40, %put_dev_sector.exit260.for.body_crit_edge ]
  %mul44 = mul i32 %blk.1281, %div198
  %conv45 = sext i32 %mul44 to i64
  %call46 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv45, ptr noundef nonnull %sect) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.end57

do.end51:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %disk_name54 = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 3
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %disk_name54, i32 noundef %mul44) #10
  br label %rdb_done

if.end57:                                         ; preds = %for.body
  %pb_Next = getelementptr inbounds %struct.PartitionBlock, ptr %call46, i32 0, i32 4
  %39 = ptrtoint ptr %pb_Next to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pb_Next, align 4
  %41 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346458196, i32 %42)
  %cmp58.not = icmp eq i32 %42, 1346458196
  br i1 %cmp58.not, label %if.end61, label %if.end57.for.inc135_crit_edge

if.end57.for.inc135_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

if.end61:                                         ; preds = %if.end57
  %pb_SummedLongs = getelementptr inbounds %struct.PartitionBlock, ptr %call46, i32 0, i32 1
  %43 = ptrtoint ptr %pb_SummedLongs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pb_SummedLongs, align 4
  %and62 = and i32 %44, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool.not2.i230 = icmp eq i32 %and62, 0
  br i1 %tobool.not2.i230, label %if.end61.if.end67_crit_edge, label %if.end61.while.body.i238_crit_edge

if.end61.while.body.i238_crit_edge:               ; preds = %if.end61
  br label %while.body.i238

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

while.body.i238:                                  ; preds = %while.body.i238.while.body.i238_crit_edge, %if.end61.while.body.i238_crit_edge
  %sum.05.i231 = phi i32 [ %add.i236, %while.body.i238.while.body.i238_crit_edge ], [ 0, %if.end61.while.body.i238_crit_edge ]
  %size.addr.04.i232 = phi i32 [ %dec.i234, %while.body.i238.while.body.i238_crit_edge ], [ %and62, %if.end61.while.body.i238_crit_edge ]
  %m.addr.03.i233 = phi ptr [ %incdec.ptr.i235, %while.body.i238.while.body.i238_crit_edge ], [ %call46, %if.end61.while.body.i238_crit_edge ]
  %dec.i234 = add nsw i32 %size.addr.04.i232, -1
  %incdec.ptr.i235 = getelementptr i32, ptr %m.addr.03.i233, i32 1
  %45 = ptrtoint ptr %m.addr.03.i233 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m.addr.03.i233, align 4
  %add.i236 = add i32 %46, %sum.05.i231
  %tobool.not.i237 = icmp eq i32 %dec.i234, 0
  br i1 %tobool.not.i237, label %checksum_block.exit240, label %while.body.i238.while.body.i238_crit_edge

while.body.i238.while.body.i238_crit_edge:        ; preds = %while.body.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i238

checksum_block.exit240:                           ; preds = %while.body.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i236)
  %cmp64.not = icmp eq i32 %add.i236, 0
  br i1 %cmp64.not, label %checksum_block.exit240.if.end67_crit_edge, label %checksum_block.exit240.for.inc135_crit_edge

checksum_block.exit240.for.inc135_crit_edge:      ; preds = %checksum_block.exit240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

checksum_block.exit240.if.end67_crit_edge:        ; preds = %checksum_block.exit240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.end67:                                         ; preds = %checksum_block.exit240.if.end67_crit_edge, %if.end61.if.end67_crit_edge
  %arrayidx = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 10
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %add = add i32 %48, 1
  %arrayidx69 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 9
  %49 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx69, align 4
  %sub = sub i32 %add, %50
  %arrayidx71 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 3
  %51 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx71, align 4
  %arrayidx74 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 5
  %53 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx74, align 4
  %mul72 = mul i32 %52, %div198
  %mul75 = mul i32 %mul72, %sub
  %mul76 = mul i32 %mul75, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul76)
  %tobool77.not = icmp eq i32 %mul76, 0
  br i1 %tobool77.not, label %if.end67.for.inc135_crit_edge, label %if.end79

if.end67.for.inc135_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

if.end79:                                         ; preds = %if.end67
  %inc89 = add i32 %slot.0284, 1
  %55 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %slot.0284)
  %cmp.i = icmp sgt i32 %56, %slot.0284
  br i1 %cmp.i, label %if.then.i, label %if.end79.put_partition.exit_crit_edge

if.end79.put_partition.exit_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %conv91 = sext i32 %mul76 to i64
  %mul87 = mul i32 %mul72, %50
  %mul88 = mul i32 %mul87, %54
  %conv90 = sext i32 %mul88 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #7
  %57 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %58 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %59, i32 %slot.0284
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv90, ptr %arrayidx.i, align 8
  %61 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %61, i32 %slot.0284, i32 1
  %62 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv91, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot.0284) #7
  %63 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %64, ptr noundef nonnull %tmp.i, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #7
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.end79.put_partition.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %tmp92) #7
  %65 = call ptr @memset(ptr %tmp92, i32 255, i32 42)
  %arrayidx95 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 16
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx95, align 4
  %dostype.sroa.0.0.extract.shift = lshr i32 %67, 24
  %dostype.sroa.6.0.extract.shift = lshr i32 %67, 16
  %dostype.sroa.9.0.extract.shift = lshr i32 %67, 8
  %conv97 = and i32 %67, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv97)
  %cmp98 = icmp ult i32 %conv97, 32
  %conv105 = and i32 %dostype.sroa.6.0.extract.shift, 255
  %conv107 = and i32 %dostype.sroa.9.0.extract.shift, 255
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add110 = add nuw nsw i32 %conv97, 64
  %call111 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp92, i32 noundef 42, ptr noundef nonnull @.str.13, i32 noundef %dostype.sroa.0.0.extract.shift, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %add110)
  br label %if.end122

if.else:                                          ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp92, i32 noundef 42, ptr noundef nonnull @.str.14, i32 noundef %dostype.sroa.0.0.extract.shift, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv97)
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then100
  %68 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pp_buf, align 4
  %call125 = call i32 @strlcat(ptr noundef %69, ptr noundef nonnull %tmp92, i32 noundef 4096) #7
  %arrayidx128 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 6
  %70 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx128, align 4
  %arrayidx130 = getelementptr %struct.PartitionBlock, ptr %call46, i32 0, i32 10, i32 4
  %72 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx130, align 4
  %call131 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp92, i32 noundef 42, ptr noundef nonnull @.str.15, i32 noundef %71, i32 noundef %73)
  %74 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pp_buf, align 4
  %call134 = call i32 @strlcat(ptr noundef %75, ptr noundef nonnull %tmp92, i32 noundef 4096) #7
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %tmp92) #7
  br label %for.inc135

for.inc135:                                       ; preds = %if.end122, %if.end67.for.inc135_crit_edge, %checksum_block.exit240.for.inc135_crit_edge, %if.end57.for.inc135_crit_edge
  %res.1 = phi i32 [ %res.0283, %if.end57.for.inc135_crit_edge ], [ %res.0283, %checksum_block.exit240.for.inc135_crit_edge ], [ 1, %if.end122 ], [ %res.0283, %if.end67.for.inc135_crit_edge ]
  %slot.1 = phi i32 [ %slot.0284, %if.end57.for.inc135_crit_edge ], [ %slot.0284, %checksum_block.exit240.for.inc135_crit_edge ], [ %inc89, %if.end122 ], [ %slot.0284, %if.end67.for.inc135_crit_edge ]
  %inc136 = add nuw nsw i32 %part.0282, 1
  %76 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %76)
  %.fca.0.load182 = load i32, ptr %sect, align 4
  %77 = inttoptr i32 %.fca.0.load182 to ptr
  %78 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i.i241 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i241)
  %tobool.not.i.i.i242 = icmp eq i32 %and.i.i.i241, 0
  br i1 %tobool.not.i.i.i242, label %for.inc135._compound_head.exit.i.i250_crit_edge, label %if.then.i.i.i245, !prof !42

for.inc135._compound_head.exit.i.i250_crit_edge:  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i250

if.then.i.i.i245:                                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i243 = add i32 %80, -1
  %.pre.i244 = inttoptr i32 %sub.i.i.i243 to ptr
  br label %_compound_head.exit.i.i250

_compound_head.exit.i.i250:                       ; preds = %if.then.i.i.i245, %for.inc135._compound_head.exit.i.i250_crit_edge
  %.pre-phi.i246 = phi ptr [ %77, %for.inc135._compound_head.exit.i.i250_crit_edge ], [ %.pre.i244, %if.then.i.i.i245 ]
  %_refcount.i.i.i.i.i.i247 = getelementptr inbounds %struct.page, ptr %.pre-phi.i246, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i248 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i247, i32 noundef 4) #7
  %81 = ptrtoint ptr %_refcount.i.i.i.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %_refcount.i.i.i.i.i.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.i.i.i.i249 = icmp eq i32 %82, 0
  br i1 %cmp.i.i.i.i.i249, label %if.then.i.i.i.i.i251, label %do.end5.i.i.i.i.i255, !prof !43

if.then.i.i.i.i.i251:                             ; preds = %_compound_head.exit.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi.i246, ptr noundef nonnull @.str.17) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

do.end5.i.i.i.i.i255:                             ; preds = %_compound_head.exit.i.i250
  %call.i.i.i10.i.i.i.i.i252 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i247, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i247, i32 1, i32 3, i32 1) #7
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i247, ptr %_refcount.i.i.i.i.i.i247, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i247) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i.i.i.i253 = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i253)
  %cmp.i.i.i.i.i.i.i.i254 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i253, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@amiga_partition, %if.then.i.i.i.i.i.i257)) #7
          to label %folio_put_testzero.exit.i.i.i258 [label %if.then.i.i.i.i.i.i257], !srcloc !48

if.then.i.i.i.i.i.i257:                           ; preds = %do.end5.i.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i256 = zext i1 %cmp.i.i.i.i.i.i.i.i254 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i246, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i256) #7
  br label %folio_put_testzero.exit.i.i.i258

folio_put_testzero.exit.i.i.i258:                 ; preds = %if.then.i.i.i.i.i.i257, %do.end5.i.i.i.i.i255
  br i1 %cmp.i.i.i.i.i.i.i.i254, label %if.then.i4.i.i259, label %folio_put_testzero.exit.i.i.i258.put_dev_sector.exit260_crit_edge

folio_put_testzero.exit.i.i.i258.put_dev_sector.exit260_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev_sector.exit260

if.then.i4.i.i259:                                ; preds = %folio_put_testzero.exit.i.i.i258
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %.pre-phi.i246) #7
  br label %put_dev_sector.exit260

put_dev_sector.exit260:                           ; preds = %if.then.i4.i.i259, %folio_put_testzero.exit.i.i.i258.put_dev_sector.exit260_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp40 = icmp sgt i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %part.0282)
  %cmp42 = icmp ult i32 %part.0282, 16
  %or.cond = select i1 %cmp40, i1 %cmp42, i1 false
  br i1 %or.cond, label %put_dev_sector.exit260.for.body_crit_edge, label %put_dev_sector.exit260.for.end138_crit_edge

put_dev_sector.exit260.for.end138_crit_edge:      ; preds = %put_dev_sector.exit260
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

put_dev_sector.exit260.for.body_crit_edge:        ; preds = %put_dev_sector.exit260
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end138:                                       ; preds = %put_dev_sector.exit260.for.end138_crit_edge, %put_dev_sector.exit229.for.end138_crit_edge
  %res.0.lcssa = phi i32 [ 0, %put_dev_sector.exit229.for.end138_crit_edge ], [ %res.1, %put_dev_sector.exit260.for.end138_crit_edge ]
  %84 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pp_buf, align 4
  %call140 = call i32 @strlcat(ptr noundef %85, ptr noundef nonnull @.str.16, i32 noundef 4096) #7
  br label %rdb_done

rdb_done:                                         ; preds = %for.end138, %do.end51, %put_dev_sector.exit.rdb_done_crit_edge, %do.end
  %res.2 = phi i32 [ -1, %do.end51 ], [ %res.0.lcssa, %for.end138 ], [ -1, %do.end ], [ 0, %put_dev_sector.exit.rdb_done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #7
  ret i32 %res.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/amiga.c", i32 43, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @amiga_partition._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @amiga_partition._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/amiga.c", i32 60, i32 4}
!8 = !{ptr @amiga_partition._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @amiga_partition._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/partitions/amiga.c", i32 65, i32 3}
!12 = !{ptr @amiga_partition._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @amiga_partition._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/partitions/amiga.c", i32 76, i32 30}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/partitions/amiga.c", i32 85, i32 4}
!18 = !{ptr @amiga_partition._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @amiga_partition._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/partitions/amiga.c", i32 119, i32 32}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../block/partitions/amiga.c", i32 123, i32 32}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/partitions/amiga.c", i32 127, i32 31}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/partitions/amiga.c", i32 134, i32 25}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mm.h", i32 717, i32 2}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/partitions/check.h", i32 45, i32 30}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2153155430, i64 2153155913, i64 2153155467, i64 2153155523, i64 2153155557, i64 2153155581, i64 2153155622, i64 2153155643, i64 2153155671, i64 2153155705}
!45 = !{i64 2148797910}
!46 = !{i64 2148712619, i64 2148712651, i64 2148712680, i64 2148712714, i64 2148712745, i64 2148712768}
!47 = !{i64 2148798139}
!48 = !{i64 2148310111, i64 2148310116, i64 2148310129, i64 2148310173, i64 2148310207, i64 2148310228}
