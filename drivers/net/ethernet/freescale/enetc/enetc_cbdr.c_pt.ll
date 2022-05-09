; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_cbdr.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbd = type { %union.anon.122, i16, i16, i8, i8, i8, i8 }
%union.anon.122 = type { %struct.sfi_conf }
%struct.sfi_conf = type { i32, i8, [2 x i8], i8, i16, i16, i16, [2 x i8], i32, [3 x i8], i8 }
%struct.anon.123 = type { [2 x i32], %union.anon.124 }
%union.anon.124 = type { [4 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@enetc_set_fs_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA mapping of RFS entry failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_set_fs_entry\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_cbdr.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_set_fs_entry._entry_ptr = internal global ptr @enetc_set_fs_entry._entry, section ".printk_index", align 4
@enetc_set_fs_entry._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FS entry add failed (%d)!\00", [38 x i8] zeroinitializer }, align 32
@enetc_set_fs_entry._entry_ptr.7 = internal global ptr @enetc_set_fs_entry._entry.5, section ".printk_index", align 4
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@enetc_clean_cbdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 73, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CMD err %04x for cmd %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enetc_clean_cbdr\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@enetc_clean_cbdr._entry_ptr = internal global ptr @enetc_clean_cbdr._entry, section ".printk_index", align 4
@enetc_cmd_rss_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA mapping of RSS table failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enetc_cmd_rss_table\00", [44 x i8] zeroinitializer }, align 32
@enetc_cmd_rss_table._entry_ptr = internal global ptr @enetc_cmd_rss_table._entry, section ".printk_index", align 4
@enetc_cmd_rss_table._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RSS cmd failed (%d)!\00", [43 x i8] zeroinitializer }, align 32
@enetc_cmd_rss_table._entry_ptr.15 = internal global ptr @enetc_cmd_rss_table._entry.13, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 190, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 203, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 72, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 228, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [53 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 248, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @enetc_clean_cbdr._entry, ptr @enetc_clean_cbdr._entry_ptr, ptr @enetc_cmd_rss_table._entry, ptr @enetc_cmd_rss_table._entry.13, ptr @enetc_cmd_rss_table._entry_ptr, ptr @enetc_cmd_rss_table._entry_ptr.15, ptr @enetc_set_fs_entry._entry, ptr @enetc_set_fs_entry._entry.5, ptr @enetc_set_fs_entry._entry_ptr, ptr @enetc_set_fs_entry._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_set_fs_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_set_fs_entry._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_clean_cbdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_cmd_rss_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_cmd_rss_table._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_setup_cbdr(ptr noundef %dev, ptr nocapture noundef readonly %hw, i32 noundef %bd_count, ptr noundef %cbdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %bd_count, 5
  %bd_dma_base = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %bd_dma_base, i32 noundef 3264, i32 noundef 0) #5
  %0 = ptrtoint ptr %cbdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %cbdr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bd_dma_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bd_dma_base, align 4
  %and = and i32 %2, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %2, i32 noundef 0) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %next_to_clean = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 6
  %3 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 5
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %next_to_use, align 4
  %dma_dev = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 8
  %5 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dma_dev, align 4
  %bd_count7 = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 4
  %6 = ptrtoint ptr %bd_count7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bd_count, ptr %bd_count7, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 2072
  %pir = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 1
  %9 = ptrtoint ptr %pir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %pir, align 4
  %10 = load ptr, ptr %hw, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 2076
  %cir = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 2
  %11 = ptrtoint ptr %cir to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr9, ptr %cir, align 4
  %12 = load ptr, ptr %hw, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 2048
  %mr = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 3
  %13 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr11, ptr %mr, align 4
  %14 = load ptr, ptr %hw, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 72
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 661072683) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 2064
  %17 = ptrtoint ptr %bd_dma_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bd_dma_base, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %19) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr19 = getelementptr i8, ptr %21, i32 2068
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 2080
  %24 = ptrtoint ptr %bd_count7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bd_count7, align 4
  %and25 = and i32 %25, -8
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %and25) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %26) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %27 = ptrtoint ptr %pir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pir, align 4
  %29 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_to_clean, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %31) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %32 = ptrtoint ptr %cir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cir, align 4
  %34 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next_to_use, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %36) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %37 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mr, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 128) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_teardown_cbdr(ptr nocapture noundef %cbdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_count = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 4
  %0 = ptrtoint ptr %bd_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_count, align 4
  %mul = shl i32 %1, 5
  %mr = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 3
  %2 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %dma_dev = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 8
  %4 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_dev, align 4
  %6 = ptrtoint ptr %cbdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cbdr, align 4
  %bd_dma_base = getelementptr inbounds %struct.enetc_cbdr, ptr %cbdr, i32 0, i32 7
  %8 = ptrtoint ptr %bd_dma_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %mul, ptr noundef %7, i32 noundef %9, i32 noundef 0) #5
  %10 = ptrtoint ptr %cbdr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cbdr, align 4
  %11 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dma_dev, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_send_cmd(ptr nocapture noundef %si, ptr nocapture noundef %cbd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cbd_ring = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4
  %0 = ptrtoint ptr %cbd_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbd_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_to_clean.i = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use.i, align 4
  %6 = xor i32 %5, -1
  %sub1.i = add i32 %3, %6
  %bd_count.i = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_count.i, align 4
  %add.i = add i32 %sub1.i, %8
  %rem.i = srem i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not, label %if.then13, label %if.end.if.end14_crit_edge, !prof !38

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @enetc_clean_cbdr(ptr noundef %cbd_ring)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %9 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_to_use.i, align 4
  %11 = ptrtoint ptr %cbd_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbd_ring, align 4
  %arrayidx = getelementptr %struct.enetc_cbd, ptr %12, i32 %10
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %cbd, i32 32)
  %add = add i32 %10, 1
  %14 = ptrtoint ptr %bd_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_count.i, align 4
  %rem = srem i32 %add, %15
  store i32 %rem, ptr %next_to_use.i, align 4
  %pir = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %pir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pir, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %rem) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %18) #5, !srcloc !37
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %cir = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %if.end14
  %timeout.0 = phi i32 [ 1000, %if.end14 ], [ %sub, %if.end19.do.body_crit_edge ]
  %19 = ptrtoint ptr %cir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cir, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !39
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %rem)
  %cmp = icmp eq i32 %22, %rem
  br i1 %cmp, label %if.end23, label %if.end19

if.end19:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #5
  %sub = add nsw i32 %timeout.0, -10
  %tobool20.not = icmp eq i32 %sub, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %24 = call ptr @memcpy(ptr %cbd, ptr %arrayidx, i32 32)
  tail call fastcc void @enetc_clean_cbdr(ptr noundef %cbd_ring)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -5, %entry.cleanup_crit_edge ], [ -16, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enetc_clean_cbdr(ptr nocapture noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.enetc_cbdr, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_to_clean, align 4
  %cir = getelementptr inbounds %struct.enetc_cbdr, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %cir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cir, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !39
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.not14 = icmp eq i32 %5, %1
  br i1 %cmp.not14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dma_dev = getelementptr inbounds %struct.enetc_cbdr, ptr %ring, i32 0, i32 8
  %bd_count = getelementptr inbounds %struct.enetc_cbdr, ptr %ring, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %i.015 = phi i32 [ %1, %while.body.lr.ph ], [ %rem, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  %arrayidx = getelementptr %struct.enetc_cbd, ptr %7, i32 %i.015
  %status_flags = getelementptr %struct.enetc_cbd, ptr %7, i32 %i.015, i32 6
  %8 = ptrtoint ptr %status_flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status_flags, align 1
  %10 = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %do.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = zext i8 %10 to i32
  %11 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_dev, align 4
  %cmd = getelementptr %struct.enetc_cbd, ptr %7, i32 %i.015, i32 3
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 4
  %conv1 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %and, i32 noundef %conv1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %15 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  %add = add i32 %i.015, 1
  %16 = ptrtoint ptr %bd_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_count, align 4
  %rem = srem i32 %add, %17
  %18 = ptrtoint ptr %cir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cir, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !39
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #5
  %cmp.not = icmp eq i32 %21, %rem
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %rem, %if.end.while.end_crit_edge ]
  %22 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0.lcssa, ptr %next_to_clean, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_clear_mac_flt_entry(ptr nocapture noundef %si, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %cbd = alloca %struct.enetc_cbd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd) #5
  %0 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 4
  %2 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 6
  %3 = call ptr @memset(ptr %cbd, i32 0, i32 32)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %2, align 1
  %conv = trunc i32 %index to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  %call = call i32 @enetc_send_cmd(ptr noundef %si, ptr noundef nonnull %cbd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_set_mac_flt_entry(ptr nocapture noundef %si, i32 noundef %index, ptr nocapture noundef readonly %mac_addr, i32 noundef %si_map) local_unnamed_addr #0 align 64 {
entry:
  %cbd = alloca %struct.enetc_cbd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd) #5
  %0 = getelementptr inbounds %struct.sfi_conf, ptr %cbd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sfi_conf, ptr %cbd, i32 0, i32 4
  %2 = getelementptr inbounds %struct.sfi_conf, ptr %cbd, i32 0, i32 9
  %3 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 1
  %4 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %cbd, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %5, align 1
  %conv = trunc i32 %index to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %3, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %si_map)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %2, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %1, align 4
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_addr, align 4
  %add.ptr = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %16)
  %20 = ptrtoint ptr %cbd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cbd, align 4
  %conv4 = zext i16 %18 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv4)
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %0, align 4
  %call = call i32 @enetc_send_cmd(ptr noundef %si, ptr noundef nonnull %cbd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_set_fs_entry(ptr nocapture noundef %si, ptr nocapture noundef readonly %rfse, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %cbd = alloca %struct.enetc_cbd, align 4
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd) #5
  %0 = getelementptr inbounds i8, ptr %cbd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #5
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 4, !annotation !41
  %cmd = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 3
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cmd, align 4
  %cls = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 4
  %4 = ptrtoint ptr %cls to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %cls, align 1
  %conv = trunc i32 %index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %index1 = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 1
  %6 = ptrtoint ptr %index1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %index1, align 4
  %length = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 29696, ptr %length, align 2
  %arrayidx = getelementptr inbounds %struct.anon.123, ptr %cbd, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %dma_dev = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_dev, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef 180, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %add = add i32 %14, 63
  %and = and i32 %add, -64
  %15 = ptrtoint ptr %call.i to i32
  %add3 = add i32 %15, 63
  %and4 = and i32 %add3, -64
  %16 = inttoptr i32 %and4 to ptr
  %17 = call ptr @memcpy(ptr %16, ptr %rfse, i32 116)
  %18 = call i32 @llvm.bswap.i32(i32 %and)
  %19 = ptrtoint ptr %cbd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cbd, align 4
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %cbd, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx9, align 4
  %call10 = call i32 @enetc_send_cmd(ptr noundef %si, ptr noundef nonnull %cbd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %do.end15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %call10) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end.if.end17_crit_edge
  %23 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_dev, align 4
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  call void @dma_free_attrs(ptr noundef %24, i32 noundef 180, ptr noundef nonnull %call.i, i32 noundef %26, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  %retval.0 = phi i32 [ %call10, %if.end17 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_get_rss_table(ptr nocapture noundef %si, ptr nocapture noundef %table, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @enetc_cmd_rss_table(ptr noundef %si, ptr noundef %table, i32 noundef %count, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_cmd_rss_table(ptr nocapture noundef %si, ptr nocapture noundef %table, i32 noundef %count, i1 noundef zeroext %read) unnamed_addr #0 align 64 {
entry:
  %cbd = alloca %struct.enetc_cbd, align 4
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cbd) #5
  %0 = getelementptr inbounds i8, ptr %cbd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #5
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 4, !annotation !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp = icmp slt i32 %count, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dev = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_dev, align 4
  %add = add nuw i32 %count, 64
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma, align 4
  %add4 = add i32 %8, 63
  %and = and i32 %add4, -64
  %9 = ptrtoint ptr %call.i to i32
  %add5 = add i32 %9, 63
  %and6 = and i32 %add5, -64
  %10 = inttoptr i32 %and6 to ptr
  br i1 %read, label %if.end3.if.end11_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %table, i32 %i.077
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %12 to i8
  %arrayidx10 = getelementptr i8, ptr %10, i32 %i.077
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx10, align 1
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.if.end11_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %cond = phi i8 [ 2, %if.end3.if.end11_crit_edge ], [ 1, %for.body.if.end11_crit_edge ]
  %cmd = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 3
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cond, ptr %cmd, align 4
  %cls = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 4
  %15 = ptrtoint ptr %cls to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %cls, align 1
  %conv15 = trunc i32 %count to i16
  %16 = call i16 @llvm.bswap.i16(i16 %conv15)
  %length = getelementptr inbounds %struct.enetc_cbd, ptr %cbd, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %length, align 2
  %18 = call i32 @llvm.bswap.i32(i32 %and)
  %19 = ptrtoint ptr %cbd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cbd, align 4
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %cbd, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx20, align 4
  %call21 = call i32 @enetc_send_cmd(ptr noundef %si, ptr noundef nonnull %cbd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end11.if.end28_crit_edge, label %do.end26

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %call21) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end26, %if.end11.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3278 = icmp sgt i32 %count, 0
  %or.cond = and i1 %cmp3278, %read
  br i1 %or.cond, label %if.end28.for.body34_crit_edge, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end28.for.body34_crit_edge:                    ; preds = %if.end28
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %if.end28.for.body34_crit_edge
  %i.179 = phi i32 [ %inc39, %for.body34.for.body34_crit_edge ], [ 0, %if.end28.for.body34_crit_edge ]
  %arrayidx35 = getelementptr i8, ptr %10, i32 %i.179
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %arrayidx37 = getelementptr i32, ptr %table, i32 %i.179
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv36, ptr %arrayidx37, align 4
  %inc39 = add nuw nsw i32 %i.179, 1
  %exitcond80.not = icmp eq i32 %inc39, %count
  br i1 %exitcond80.not, label %for.body34.if.end41_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.body34.if.end41_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %for.body34.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  %26 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_dev, align 4
  %28 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma, align 4
  call void @dma_free_attrs(ptr noundef %27, i32 noundef %add, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end41 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cbd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_set_rss_table(ptr nocapture noundef %si, ptr nocapture noundef %table, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @enetc_cmd_rss_table(ptr noundef %si, ptr noundef %table, i32 noundef %count, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

declare void @__asan_store2_noabort(i32)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c", i32 190, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @enetc_set_fs_entry._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @enetc_set_fs_entry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c", i32 203, i32 3}
!10 = !{ptr @enetc_set_fs_entry._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @enetc_set_fs_entry._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c", i32 72, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @enetc_clean_cbdr._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @enetc_clean_cbdr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c", i32 228, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @enetc_cmd_rss_table._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @enetc_cmd_rss_table._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_cbdr.c", i32 248, i32 3}
!25 = !{ptr @enetc_cmd_rss_table._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @enetc_cmd_rss_table._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2152539712}
!37 = !{i64 4997590}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 4998008}
!40 = !{i64 2152538357}
!41 = !{!"auto-init"}
