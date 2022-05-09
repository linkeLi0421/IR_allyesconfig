; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-btree-spine.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-btree-spine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.node_header = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.ro_spine = type { ptr, i32, [2 x ptr] }
%struct.shadow_spine = type { ptr, i32, [2 x ptr], i64 }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btree_node\00", [21 x i8] zeroinitializer }, align 32
@btree_node_validator = dso_local global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str, ptr @node_prepare_for_write, ptr @node_check }, [20 x i8] zeroinitializer }, align 32
@node_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.node_check = private unnamed_addr constant [11 x i8] c"node_check\00", align 1
@node_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.node_check, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: btree spine: node_check failed: blocknr %llu != wanted %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/md/persistent-data/dm-btree-spine.c\00", [52 x i8] zeroinitializer }, align 32
@node_check._entry_ptr = internal global ptr @node_check._entry, section ".printk_index", align 4
@node_check._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@node_check._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.node_check, ptr @.str.3, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: btree spine: node_check failed: csum %u != wanted %u\0A\00", [57 x i8] zeroinitializer }, align 32
@node_check._entry_ptr.7 = internal global ptr @node_check._entry.5, section ".printk_index", align 4
@node_check._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@node_check._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.node_check, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: btree spine: node_check failed: max_entries too large\0A\00", [56 x i8] zeroinitializer }, align 32
@node_check._entry_ptr.11 = internal global ptr @node_check._entry.9, section ".printk_index", align 4
@node_check._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@node_check._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.node_check, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: btree spine: node_check failed: too many entries\0A\00", [61 x i8] zeroinitializer }, align 32
@node_check._entry_ptr.15 = internal global ptr @node_check._entry.13, section ".printk_index", align 4
@node_check._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@node_check._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.node_check, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013device-mapper: btree spine: node_check failed: node is neither INTERNAL or LEAF\0A\00", [45 x i8] zeroinitializer }, align 32
@node_check._entry_ptr.19 = internal global ptr @node_check._entry.17, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 84, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"btree_node_validator\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 83, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 42, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 51, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 62, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 67, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [47 x i8] c"../drivers/md/persistent-data/dm-btree-spine.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 76, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @node_check._entry, ptr @node_check._entry.13, ptr @node_check._entry.17, ptr @node_check._entry.5, ptr @node_check._entry.9, ptr @node_check._entry_ptr, ptr @node_check._entry_ptr.11, ptr @node_check._entry_ptr.15, ptr @node_check._entry_ptr.19, ptr @node_check._entry_ptr.7, ptr @.str, ptr @btree_node_validator, ptr @node_check._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @node_check._rs.4, ptr @.str.6, ptr @node_check._rs.8, ptr @.str.10, ptr @node_check._rs.12, ptr @.str.14, ptr @node_check._rs.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btree_node_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_check._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @node_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %blocknr, align 8
  %flags = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 121107) #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %blocknr = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %blocknr, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @node_check._rs, ptr noundef nonnull @__func__.node_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %blocknr, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call5 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %5, i64 noundef %call5) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %flags8 = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call9 = tail call i32 @dm_bm_checksum(ptr noundef %flags8, i32 noundef %sub, i32 noundef 121107) #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %call9)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp10.not = icmp eq i32 %6, %8
  br i1 %cmp10.not, label %if.end22, label %if.then11

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @node_check._rs.4, ptr noundef nonnull @__func__.node_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call9, i32 noundef %11) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %max_entries24 = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %max_entries24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries24, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %value_size25 = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %value_size25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value_size25, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, 8
  %mul = mul i32 %add, %14
  %add26 = add i32 %mul, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %block_size)
  %cmp27 = icmp ugt i32 %add26, %block_size
  br i1 %cmp27, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.end22
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @node_check._rs.8, ptr noundef nonnull @__func__.node_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  %nr_entries23 = getelementptr inbounds %struct.node_header, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %nr_entries23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_entries23, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %14)
  %cmp39 = icmp ugt i32 %20, %14
  br i1 %cmp39, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @node_check._rs.12, ptr noundef nonnull @__func__.node_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.cleanup_crit_edge, label %do.end46

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %21 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags8, align 4
  %23 = and i32 %22, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @node_check._rs.16, ptr noundef nonnull @__func__.node_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.cleanup_crit_edge, label %do.end61

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %if.then55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end46, %if.then40.cleanup_crit_edge, %do.end34, %if.then28.cleanup_crit_edge, %do.end17, %if.then11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -15, %do.end ], [ -15, %if.then.cleanup_crit_edge ], [ -84, %do.end17 ], [ -84, %if.then11.cleanup_crit_edge ], [ -84, %do.end34 ], [ -84, %if.then28.cleanup_crit_edge ], [ -84, %do.end46 ], [ -84, %if.then40.cleanup_crit_edge ], [ -84, %do.end61 ], [ -84, %if.then55.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bn_read_lock(ptr nocapture noundef readonly %info, i64 noundef %b, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call i32 @dm_tm_read_lock(ptr noundef %1, i64 noundef %b, ptr noundef nonnull @btree_node_validator, ptr noundef %result) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @new_block(ptr nocapture noundef readonly %info, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call i32 @dm_tm_new_block(ptr noundef %1, ptr noundef nonnull @btree_node_validator, ptr noundef %result) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_new_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlock_block(ptr nocapture noundef readonly %info, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  tail call void @dm_tm_unlock(ptr noundef %1, ptr noundef %b) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_unlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_ro_spine(ptr nocapture noundef writeonly %s, ptr noundef %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %info, ptr %s, align 4
  %count = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %count, align 4
  %nodes = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nodes, align 4
  %arrayidx3 = getelementptr %struct.ro_spine, ptr %s, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_ro_spine(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %arrayidx = getelementptr %struct.ro_spine, ptr %s, i32 0, i32 2, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @dm_tm_unlock(ptr noundef %7, ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.06, 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ro_step(ptr noundef %s, i64 noundef %new_child) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %nodes = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nodes, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @dm_tm_unlock(ptr noundef %7, ptr noundef %5) #7
  %arrayidx2 = getelementptr %struct.ro_spine, ptr %s, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %10 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %nodes, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s, align 4
  %nodes7 = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 2
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %add.ptr = getelementptr ptr, ptr %nodes7, i32 %16
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %call.i = tail call i32 @dm_tm_read_lock(ptr noundef %18, i64 noundef %new_child, ptr noundef nonnull @btree_node_validator, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ro_pop(ptr nocapture noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !41

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-spine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s, align 4
  %arrayidx = getelementptr %struct.ro_spine, ptr %s, i32 0, i32 2, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  tail call void @dm_tm_unlock(ptr noundef %8, ptr noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ro_node(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ro_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !41

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-spine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.ro_spine, ptr %s, i32 0, i32 2, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @dm_block_data(ptr noundef %3) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_shadow_spine(ptr nocapture noundef writeonly %s, ptr noundef %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %info, ptr %s, align 8
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_shadow_spine(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr %struct.shadow_spine, ptr %s, i32 0, i32 2, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @dm_tm_unlock(ptr noundef %7, ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.06, 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shadow_step(ptr noundef %s, i64 noundef %b, ptr noundef %vt) local_unnamed_addr #0 align 64 {
entry:
  %inc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 8
  %nodes = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nodes, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @dm_tm_unlock(ptr noundef %7, ptr noundef %5) #7
  %arrayidx2 = getelementptr %struct.shadow_spine, ptr %s, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %10 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %nodes, align 8
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s, align 8
  %nodes7 = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 2
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %add.ptr = getelementptr ptr, ptr %nodes7, i32 %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc.i) #7
  %17 = ptrtoint ptr %inc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %inc.i, align 4, !annotation !44
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %call.i = call i32 @dm_tm_shadow_block(ptr noundef %19, i64 noundef %b, ptr noundef nonnull @btree_node_validator, ptr noundef %add.ptr, ptr noundef nonnull %inc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %bn_shadow.exit

land.lhs.true.i:                                  ; preds = %if.end
  %20 = ptrtoint ptr %inc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then9_crit_edge, label %if.then.i

land.lhs.true.i.if.then9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call3.i = call ptr @dm_block_data(ptr noundef %25) #7
  call void @inc_children(ptr noundef %23, ptr noundef %call3.i, ptr noundef %vt) #7
  br label %if.then9

bn_shadow.exit:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i) #7
  br label %if.end18

if.then9:                                         ; preds = %if.then.i, %land.lhs.true.i.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i) #7
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not = icmp eq i32 %27, 0
  br i1 %tobool11.not, label %if.then12, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %nodes7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nodes7, align 8
  %call15 = call i64 @dm_block_location(ptr noundef %29) #7
  %root = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 3
  %30 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call15, ptr %root, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then9.if.end16_crit_edge
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %bn_shadow.exit
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shadow_current(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !41

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-spine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.shadow_spine, ptr %s, i32 0, i32 2, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shadow_parent(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %cond.end, label %do.body2, !prof !46

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-btree-spine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nodes = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nodes, align 8
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @shadow_has_parent(ptr nocapture noundef readonly %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @shadow_root(ptr nocapture noundef readonly %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.shadow_spine, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %root, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_le64_type(ptr noundef %tm, ptr nocapture noundef writeonly %vt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tm, ptr %vt, align 4
  %size = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %size, align 4
  %inc = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt, i32 0, i32 2
  %2 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @le64_inc, ptr %inc, align 4
  %dec = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt, i32 0, i32 3
  %3 = ptrtoint ptr %dec to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @le64_dec, ptr %dec, align 4
  %equal = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt, i32 0, i32 4
  %4 = ptrtoint ptr %equal to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @le64_equal, ptr %equal, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le64_inc(ptr noundef %context, ptr noundef %value_le, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_tm_with_runs(ptr noundef %context, ptr noundef %value_le, i32 noundef %count, ptr noundef nonnull @dm_tm_inc_range) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le64_dec(ptr noundef %context, ptr noundef %value_le, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_tm_with_runs(ptr noundef %context, ptr noundef %value_le, i32 noundef %count, ptr noundef nonnull @dm_tm_dec_range) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @le64_equal(ptr nocapture noundef readnone %context, ptr nocapture noundef readonly %value1_le, ptr nocapture noundef readonly %value2_le) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value1_le to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %v1_le.0.copyload = load i64, ptr %value1_le, align 1
  %1 = ptrtoint ptr %value2_le to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %v2_le.0.copyload = load i64, ptr %value2_le, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %v1_le.0.copyload, i64 %v2_le.0.copyload)
  %cmp = icmp eq i64 %v1_le.0.copyload, %v2_le.0.copyload
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_shadow_block(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_children(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_with_runs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_inc_range(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_dec_range(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 84, i32 10}
!2 = !{ptr @btree_node_validator, !3, !"btree_node_validator", i1 false, i1 false}
!3 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 83, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 42, i32 3}
!6 = !{ptr @node_check._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.node_check, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @node_check._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @node_check._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @node_check._rs.4, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 51, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @node_check._entry.5, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @node_check._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @node_check._rs.8, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 62, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @node_check._entry.9, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @node_check._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @node_check._rs.12, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 67, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @node_check._entry.13, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @node_check._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @node_check._rs.16, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/md/persistent-data/dm-btree-spine.c", i32 76, i32 3}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @node_check._entry.17, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @node_check._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2154323831, i64 2154324339, i64 2154323868, i64 2154323924, i64 2154323958, i64 2154323982, i64 2154324023, i64 2154324044, i64 2154324072, i64 2154324106}
!43 = !{i64 2154329538, i64 2154330046, i64 2154329575, i64 2154329631, i64 2154329665, i64 2154329689, i64 2154329730, i64 2154329751, i64 2154329779, i64 2154329813}
!44 = !{!"auto-init"}
!45 = !{i64 2154331184, i64 2154331692, i64 2154331221, i64 2154331277, i64 2154331311, i64 2154331335, i64 2154331376, i64 2154331397, i64 2154331425, i64 2154331459}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2154332838, i64 2154333346, i64 2154332875, i64 2154332931, i64 2154332965, i64 2154332989, i64 2154333030, i64 2154333051, i64 2154333079, i64 2154333113}
