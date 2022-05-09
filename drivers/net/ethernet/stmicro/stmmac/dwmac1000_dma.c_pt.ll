; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac1000_dma_ops = dso_local constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @dwmac_dma_reset, ptr @dwmac1000_dma_init, ptr null, ptr @dwmac1000_dma_init_rx, ptr @dwmac1000_dma_init_tx, ptr @dwmac1000_dma_axi, ptr @dwmac1000_dump_dma_regs, ptr @dwmac1000_dma_operation_mode_rx, ptr @dwmac1000_dma_operation_mode_tx, ptr null, ptr @dwmac_enable_dma_transmission, ptr @dwmac_enable_dma_irq, ptr @dwmac_disable_dma_irq, ptr @dwmac_dma_start_tx, ptr @dwmac_dma_stop_tx, ptr @dwmac_dma_start_rx, ptr @dwmac_dma_stop_rx, ptr @dwmac_dma_interrupt, ptr @dwmac1000_get_hw_feature, ptr @dwmac1000_rx_watchdog, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dwmac1000_dma_axi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016dwmac1000: Master AXI performs %s burst length\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwmac1000_dma_axi\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c\00", [44 x i8] zeroinitializer }, align 32
@dwmac1000_dma_axi._entry_ptr = internal global ptr @dwmac1000_dma_axi._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dwmac1000_dma_operation_mode_rx\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GMAC: enable RX store and forward mode\0A\00", [56 x i8] zeroinitializer }, align 32
@dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GMAC: disable RX SF mode (threshold %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@dwmac1000_configure_fc.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwmac1000_configure_fc\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"GMAC: disabling flow control, rxfifo too small(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dwmac1000_dma_operation_mode_tx\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GMAC: enable TX store and forward mode\0A\00", [56 x i8] zeroinitializer }, align 32
@dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GMAC: disabling TX SF (threshold %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.18 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"dwmac1000_dma_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 272, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 24, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 159, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 140, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 184, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 192, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @dwmac1000_dma_axi._entry, ptr @dwmac1000_dma_axi._entry_ptr, ptr @dwmac1000_dma_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_dma_axi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %atds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %txpbl2 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 1
  %1 = ptrtoint ptr %txpbl2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %txpbl2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.false ], [ %2, %entry.cond.end_crit_edge ]
  %rxpbl3 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 2
  %5 = ptrtoint ptr %rxpbl3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxpbl3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %cond.false6, label %cond.end.cond.end8_crit_edge

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_cfg, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %8, %cond.false6 ], [ %6, %cond.end.cond.end8_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %0)
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 3
  %10 = ptrtoint ptr %pblx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pblx8, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %or = or i32 %9, 16777216
  %spec.select = select i1 %tobool10.not, i32 %9, i32 %or
  %or11 = and i32 %spec.select, -16662273
  %shl = shl i32 %cond, 8
  %shl13 = shl i32 %cond9, 17
  %fixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 4
  %12 = ptrtoint ptr %fixed_burst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fixed_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  %value.1.v = select i1 %tobool15.not, i32 8388608, i32 8454144
  %and = or i32 %shl13, %shl
  %or12 = or i32 %and, %or11
  %value.1 = or i32 %or12, %value.1.v
  %mixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 5
  %14 = ptrtoint ptr %mixed_burst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mixed_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  %or21 = or i32 %value.1, 67108864
  %value.2 = select i1 %tobool19.not, i32 %value.1, i32 %or21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atds)
  %tobool23.not = icmp eq i32 %atds, 0
  %or25 = or i32 %value.2, 128
  %value.3 = select i1 %tobool23.not, i32 %value.2, i32 %or25
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 6
  %16 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %aal, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  %or29 = or i32 %value.3, 33554432
  %value.4 = select i1 %tobool27.not, i32 %value.3, i32 %or29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %value.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %add.ptr35 = getelementptr i8, ptr %ioaddr, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 1637875968) #4, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init_rx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_rx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_rx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init_tx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_tx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_tx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_axi(ptr noundef %ioaddr, ptr nocapture noundef readonly %axi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4136
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !38
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond) #7
  %2 = ptrtoint ptr %axi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %axi, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %or = or i32 %1, -2147483648
  %spec.select = select i1 %tobool4.not, i32 %1, i32 %or
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 1
  %4 = ptrtoint ptr %axi_xit_frm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %axi_xit_frm, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %or7 = or i32 %spec.select, 1073741824
  %value.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or7
  %and9 = and i32 %value.1, -16711681
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 2
  %6 = ptrtoint ptr %axi_wr_osr_lmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %axi_wr_osr_lmt, align 4
  %and10 = shl i32 %7, 20
  %shl = and i32 %and10, 15728640
  %or11 = or i32 %and9, %shl
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 3
  %8 = ptrtoint ptr %axi_rd_osr_lmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %axi_rd_osr_lmt, align 4
  %and13 = shl i32 %9, 16
  %shl14 = and i32 %and13, 983040
  %or15 = or i32 %or11, %shl14
  %arrayidx = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.for.inc_crit_edge [
    i32 256, label %sw.bb
    i32 128, label %sw.bb17
    i32 64, label %sw.bb19
    i32 32, label %sw.bb21
    i32 16, label %sw.bb23
    i32 8, label %sw.bb25
    i32 4, label %sw.bb27
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = or i32 %or15, 128
  br label %for.inc

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or18 = or i32 %or15, 64
  br label %for.inc

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or20 = or i32 %or15, 32
  br label %for.inc

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or22 = or i32 %or15, 16
  br label %for.inc

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or24 = or i32 %or15, 8
  br label %for.inc

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or26 = or i32 %or15, 4
  br label %for.inc

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or28 = or i32 %or15, 2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb, %entry.for.inc_crit_edge
  %value.3 = phi i32 [ %or15, %entry.for.inc_crit_edge ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb25 ], [ %or24, %sw.bb23 ], [ %or22, %sw.bb21 ], [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb ]
  %arrayidx.1 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %14, label %for.inc.for.inc.1_crit_edge [
    i32 256, label %sw.bb.1
    i32 128, label %sw.bb17.1
    i32 64, label %sw.bb19.1
    i32 32, label %sw.bb21.1
    i32 16, label %sw.bb23.1
    i32 8, label %sw.bb25.1
    i32 4, label %sw.bb27.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

sw.bb27.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or28.1 = or i32 %value.3, 2
  br label %for.inc.1

sw.bb25.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or26.1 = or i32 %value.3, 4
  br label %for.inc.1

sw.bb23.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or24.1 = or i32 %value.3, 8
  br label %for.inc.1

sw.bb21.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or22.1 = or i32 %value.3, 16
  br label %for.inc.1

sw.bb19.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or20.1 = or i32 %value.3, 32
  br label %for.inc.1

sw.bb17.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or18.1 = or i32 %value.3, 64
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %or16.1 = or i32 %value.3, 128
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb17.1, %sw.bb19.1, %sw.bb21.1, %sw.bb23.1, %sw.bb25.1, %sw.bb27.1, %for.inc.for.inc.1_crit_edge
  %value.3.1 = phi i32 [ %value.3, %for.inc.for.inc.1_crit_edge ], [ %or28.1, %sw.bb27.1 ], [ %or26.1, %sw.bb25.1 ], [ %or24.1, %sw.bb23.1 ], [ %or22.1, %sw.bb21.1 ], [ %or20.1, %sw.bb19.1 ], [ %or18.1, %sw.bb17.1 ], [ %or16.1, %sw.bb.1 ]
  %arrayidx.2 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %17, label %for.inc.1.for.inc.2_crit_edge [
    i32 256, label %sw.bb.2
    i32 128, label %sw.bb17.2
    i32 64, label %sw.bb19.2
    i32 32, label %sw.bb21.2
    i32 16, label %sw.bb23.2
    i32 8, label %sw.bb25.2
    i32 4, label %sw.bb27.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

sw.bb27.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or28.2 = or i32 %value.3.1, 2
  br label %for.inc.2

sw.bb25.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or26.2 = or i32 %value.3.1, 4
  br label %for.inc.2

sw.bb23.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or24.2 = or i32 %value.3.1, 8
  br label %for.inc.2

sw.bb21.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or22.2 = or i32 %value.3.1, 16
  br label %for.inc.2

sw.bb19.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or20.2 = or i32 %value.3.1, 32
  br label %for.inc.2

sw.bb17.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or18.2 = or i32 %value.3.1, 64
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %or16.2 = or i32 %value.3.1, 128
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb17.2, %sw.bb19.2, %sw.bb21.2, %sw.bb23.2, %sw.bb25.2, %sw.bb27.2, %for.inc.1.for.inc.2_crit_edge
  %value.3.2 = phi i32 [ %value.3.1, %for.inc.1.for.inc.2_crit_edge ], [ %or28.2, %sw.bb27.2 ], [ %or26.2, %sw.bb25.2 ], [ %or24.2, %sw.bb23.2 ], [ %or22.2, %sw.bb21.2 ], [ %or20.2, %sw.bb19.2 ], [ %or18.2, %sw.bb17.2 ], [ %or16.2, %sw.bb.2 ]
  %arrayidx.3 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %20, label %for.inc.2.for.inc.3_crit_edge [
    i32 256, label %sw.bb.3
    i32 128, label %sw.bb17.3
    i32 64, label %sw.bb19.3
    i32 32, label %sw.bb21.3
    i32 16, label %sw.bb23.3
    i32 8, label %sw.bb25.3
    i32 4, label %sw.bb27.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

sw.bb27.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or28.3 = or i32 %value.3.2, 2
  br label %for.inc.3

sw.bb25.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or26.3 = or i32 %value.3.2, 4
  br label %for.inc.3

sw.bb23.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or24.3 = or i32 %value.3.2, 8
  br label %for.inc.3

sw.bb21.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or22.3 = or i32 %value.3.2, 16
  br label %for.inc.3

sw.bb19.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or20.3 = or i32 %value.3.2, 32
  br label %for.inc.3

sw.bb17.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or18.3 = or i32 %value.3.2, 64
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %or16.3 = or i32 %value.3.2, 128
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %sw.bb17.3, %sw.bb19.3, %sw.bb21.3, %sw.bb23.3, %sw.bb25.3, %sw.bb27.3, %for.inc.2.for.inc.3_crit_edge
  %value.3.3 = phi i32 [ %value.3.2, %for.inc.2.for.inc.3_crit_edge ], [ %or28.3, %sw.bb27.3 ], [ %or26.3, %sw.bb25.3 ], [ %or24.3, %sw.bb23.3 ], [ %or22.3, %sw.bb21.3 ], [ %or20.3, %sw.bb19.3 ], [ %or18.3, %sw.bb17.3 ], [ %or16.3, %sw.bb.3 ]
  %arrayidx.4 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %23, label %for.inc.3.for.inc.4_crit_edge [
    i32 256, label %sw.bb.4
    i32 128, label %sw.bb17.4
    i32 64, label %sw.bb19.4
    i32 32, label %sw.bb21.4
    i32 16, label %sw.bb23.4
    i32 8, label %sw.bb25.4
    i32 4, label %sw.bb27.4
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

sw.bb27.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or28.4 = or i32 %value.3.3, 2
  br label %for.inc.4

sw.bb25.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or26.4 = or i32 %value.3.3, 4
  br label %for.inc.4

sw.bb23.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or24.4 = or i32 %value.3.3, 8
  br label %for.inc.4

sw.bb21.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or22.4 = or i32 %value.3.3, 16
  br label %for.inc.4

sw.bb19.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or20.4 = or i32 %value.3.3, 32
  br label %for.inc.4

sw.bb17.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or18.4 = or i32 %value.3.3, 64
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %or16.4 = or i32 %value.3.3, 128
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb17.4, %sw.bb19.4, %sw.bb21.4, %sw.bb23.4, %sw.bb25.4, %sw.bb27.4, %for.inc.3.for.inc.4_crit_edge
  %value.3.4 = phi i32 [ %value.3.3, %for.inc.3.for.inc.4_crit_edge ], [ %or28.4, %sw.bb27.4 ], [ %or26.4, %sw.bb25.4 ], [ %or24.4, %sw.bb23.4 ], [ %or22.4, %sw.bb21.4 ], [ %or20.4, %sw.bb19.4 ], [ %or18.4, %sw.bb17.4 ], [ %or16.4, %sw.bb.4 ]
  %arrayidx.5 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %26, label %for.inc.4.for.inc.5_crit_edge [
    i32 256, label %sw.bb.5
    i32 128, label %sw.bb17.5
    i32 64, label %sw.bb19.5
    i32 32, label %sw.bb21.5
    i32 16, label %sw.bb23.5
    i32 8, label %sw.bb25.5
    i32 4, label %sw.bb27.5
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

sw.bb27.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or28.5 = or i32 %value.3.4, 2
  br label %for.inc.5

sw.bb25.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or26.5 = or i32 %value.3.4, 4
  br label %for.inc.5

sw.bb23.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or24.5 = or i32 %value.3.4, 8
  br label %for.inc.5

sw.bb21.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or22.5 = or i32 %value.3.4, 16
  br label %for.inc.5

sw.bb19.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or20.5 = or i32 %value.3.4, 32
  br label %for.inc.5

sw.bb17.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or18.5 = or i32 %value.3.4, 64
  br label %for.inc.5

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %or16.5 = or i32 %value.3.4, 128
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %sw.bb17.5, %sw.bb19.5, %sw.bb21.5, %sw.bb23.5, %sw.bb25.5, %sw.bb27.5, %for.inc.4.for.inc.5_crit_edge
  %value.3.5 = phi i32 [ %value.3.4, %for.inc.4.for.inc.5_crit_edge ], [ %or28.5, %sw.bb27.5 ], [ %or26.5, %sw.bb25.5 ], [ %or24.5, %sw.bb23.5 ], [ %or22.5, %sw.bb21.5 ], [ %or20.5, %sw.bb19.5 ], [ %or18.5, %sw.bb17.5 ], [ %or16.5, %sw.bb.5 ]
  %arrayidx.6 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.6, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %29, label %for.inc.5.for.inc.6_crit_edge [
    i32 256, label %sw.bb.6
    i32 128, label %sw.bb17.6
    i32 64, label %sw.bb19.6
    i32 32, label %sw.bb21.6
    i32 16, label %sw.bb23.6
    i32 8, label %sw.bb25.6
    i32 4, label %sw.bb27.6
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

sw.bb27.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or28.6 = or i32 %value.3.5, 2
  br label %for.inc.6

sw.bb25.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or26.6 = or i32 %value.3.5, 4
  br label %for.inc.6

sw.bb23.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or24.6 = or i32 %value.3.5, 8
  br label %for.inc.6

sw.bb21.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or22.6 = or i32 %value.3.5, 16
  br label %for.inc.6

sw.bb19.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or20.6 = or i32 %value.3.5, 32
  br label %for.inc.6

sw.bb17.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or18.6 = or i32 %value.3.5, 64
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %or16.6 = or i32 %value.3.5, 128
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %sw.bb17.6, %sw.bb19.6, %sw.bb21.6, %sw.bb23.6, %sw.bb25.6, %sw.bb27.6, %for.inc.5.for.inc.6_crit_edge
  %value.3.6 = phi i32 [ %value.3.5, %for.inc.5.for.inc.6_crit_edge ], [ %or28.6, %sw.bb27.6 ], [ %or26.6, %sw.bb25.6 ], [ %or24.6, %sw.bb23.6 ], [ %or22.6, %sw.bb21.6 ], [ %or20.6, %sw.bb19.6 ], [ %or18.6, %sw.bb17.6 ], [ %or16.6, %sw.bb.6 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %value.3.6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #4, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dump_dma_regs(ptr noundef %ioaddr, ptr nocapture noundef writeonly %reg_space) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = add nsw i32 %i.010, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %i.010, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %add = add nuw nsw i32 %i.010, 1024
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_operation_mode_rx(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !38
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_dma_operation_mode_rx, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !50

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %or = or i32 %1, 33554432
  br label %if.end40

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_dma_operation_mode_rx, %if.then19)) #4
          to label %do.end22 [label %if.then19], !srcloc !50

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.8, i32 noundef %mode) #4
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %and23 = and i32 %1, -33554457
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %mode)
  %cmp24 = icmp slt i32 %mode, 33
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  %or26 = or i32 %and23, 8
  br label %if.end40

if.else27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp28 = icmp ult i32 %mode, 65
  br i1 %cmp28, label %if.else27.if.end40_crit_edge, label %if.else31

if.else27.if.end40_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.else31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %mode)
  %cmp32 = icmp ult i32 %mode, 97
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  %or34 = or i32 %and23, 16
  br label %if.end40

if.else35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  %or36 = or i32 %and23, 24
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then33, %if.else27.if.end40_crit_edge, %if.then25, %do.end
  %csr6.0 = phi i32 [ %or, %do.end ], [ %or26, %if.then25 ], [ %or34, %if.then33 ], [ %or36, %if.else35 ], [ %and23, %if.else27.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %fifosz)
  %cmp.i = icmp slt i32 %fifosz, 4096
  %and2.i = and i32 %csr6.0, -12590849
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_configure_fc.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_dma_operation_mode_rx, %if.then5.i)) #4
          to label %dwmac1000_configure_fc.exit [label %if.then5.i], !srcloc !50

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_configure_fc.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.10, i32 noundef %fifosz) #4
  br label %dwmac1000_configure_fc.exit

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %or7.i = or i32 %and2.i, 2304
  br label %dwmac1000_configure_fc.exit

dwmac1000_configure_fc.exit:                      ; preds = %if.else.i, %if.then5.i, %if.then.i
  %csr6.addr.0.i = phi i32 [ %and2.i, %if.then5.i ], [ %or7.i, %if.else.i ], [ %and2.i, %if.then.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %csr6.addr.0.i)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dma_operation_mode_tx(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !38
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_dma_operation_mode_tx, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !50

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.12) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %or7 = or i32 %1, 2097156
  br label %do.body47

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_dma_operation_mode_tx, %if.then20)) #4
          to label %do.end23 [label %if.then20], !srcloc !50

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.13, i32 noundef %mode) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body8
  %and24 = and i32 %1, -2211841
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %mode)
  %cmp25 = icmp slt i32 %mode, 33
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  %or27 = or i32 %and24, 81920
  br label %do.body47

if.else28:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp29 = icmp ult i32 %mode, 65
  br i1 %cmp29, label %if.else28.do.body47_crit_edge, label %if.else32

if.else28.do.body47_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body47

if.else32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %mode)
  %cmp33 = icmp ult i32 %mode, 129
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  %or35 = or i32 %and24, 16384
  br label %do.body47

if.else36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %mode)
  %cmp37 = icmp ult i32 %mode, 193
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  %or39 = or i32 %and24, 32768
  br label %do.body47

if.else40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  %or41 = or i32 %and24, 49152
  br label %do.body47

do.body47:                                        ; preds = %if.else40, %if.then38, %if.then34, %if.else28.do.body47_crit_edge, %if.then26, %do.end
  %csr6.0 = phi i32 [ %or7, %do.end ], [ %or27, %if.then26 ], [ %or35, %if.then34 ], [ %or39, %if.then38 ], [ %or41, %if.else40 ], [ %and24, %if.else28.do.body47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %csr6.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_transmission(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_disable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_interrupt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac1000_get_hw_feature(ptr noundef %ioaddr, ptr noundef writeonly %dma_cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4184
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %and = and i32 %1, 1
  %2 = ptrtoint ptr %dma_cap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %dma_cap, align 4
  %and2 = lshr i32 %1, 1
  %shr = and i32 %and2, 1
  %mbps_1000 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 1
  %3 = ptrtoint ptr %mbps_1000 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %mbps_1000, align 4
  %and3 = lshr i32 %1, 2
  %shr4 = and i32 %and3, 1
  %half_duplex = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 2
  %4 = ptrtoint ptr %half_duplex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr4, ptr %half_duplex, align 4
  %and5 = lshr i32 %1, 4
  %shr6 = and i32 %and5, 1
  %hash_filter = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 3
  %5 = ptrtoint ptr %hash_filter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr6, ptr %hash_filter, align 4
  %and7 = lshr i32 %1, 5
  %shr8 = and i32 %and7, 1
  %multi_addr = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 4
  %6 = ptrtoint ptr %multi_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr8, ptr %multi_addr, align 4
  %and9 = lshr i32 %1, 6
  %shr10 = and i32 %and9, 1
  %pcs = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 5
  %7 = ptrtoint ptr %pcs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr10, ptr %pcs, align 4
  %and11 = lshr i32 %1, 8
  %shr12 = and i32 %and11, 1
  %sma_mdio = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 6
  %8 = ptrtoint ptr %sma_mdio to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr12, ptr %sma_mdio, align 4
  %and13 = lshr i32 %1, 9
  %shr14 = and i32 %and13, 1
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 7
  %9 = ptrtoint ptr %pmt_remote_wake_up to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr14, ptr %pmt_remote_wake_up, align 4
  %and15 = lshr i32 %1, 10
  %shr16 = and i32 %and15, 1
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 8
  %10 = ptrtoint ptr %pmt_magic_frame to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr16, ptr %pmt_magic_frame, align 4
  %and17 = lshr i32 %1, 11
  %shr18 = and i32 %and17, 1
  %rmon = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 9
  %11 = ptrtoint ptr %rmon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr18, ptr %rmon, align 4
  %and19 = lshr i32 %1, 12
  %shr20 = and i32 %and19, 1
  %time_stamp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 10
  %12 = ptrtoint ptr %time_stamp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr20, ptr %time_stamp, align 4
  %and21 = lshr i32 %1, 13
  %shr22 = and i32 %and21, 1
  %atime_stamp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 11
  %13 = ptrtoint ptr %atime_stamp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr22, ptr %atime_stamp, align 4
  %and23 = lshr i32 %1, 14
  %shr24 = and i32 %and23, 1
  %eee = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 12
  %14 = ptrtoint ptr %eee to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr24, ptr %eee, align 4
  %and25 = lshr i32 %1, 15
  %shr26 = and i32 %and25, 1
  %av = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 13
  %15 = ptrtoint ptr %av to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr26, ptr %av, align 4
  %and27 = lshr i32 %1, 16
  %shr28 = and i32 %and27, 1
  %tx_coe = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 16
  %16 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr28, ptr %tx_coe, align 4
  %and29 = lshr i32 %1, 17
  %shr30 = and i32 %and29, 1
  %rx_coe_type1 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 18
  %17 = ptrtoint ptr %rx_coe_type1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr30, ptr %rx_coe_type1, align 4
  %and31 = lshr i32 %1, 18
  %shr32 = and i32 %and31, 1
  %rx_coe_type2 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 19
  %18 = ptrtoint ptr %rx_coe_type2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr32, ptr %rx_coe_type2, align 4
  %and33 = lshr i32 %1, 19
  %shr34 = and i32 %and33, 1
  %rxfifo_over_2048 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 20
  %19 = ptrtoint ptr %rxfifo_over_2048 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr34, ptr %rxfifo_over_2048, align 4
  %and35 = lshr i32 %1, 20
  %shr36 = and i32 %and35, 3
  %number_rx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 21
  %20 = ptrtoint ptr %number_rx_channel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr36, ptr %number_rx_channel, align 4
  %and37 = lshr i32 %1, 22
  %shr38 = and i32 %and37, 3
  %number_tx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 22
  %21 = ptrtoint ptr %number_tx_channel to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr38, ptr %number_tx_channel, align 4
  %and39 = lshr i32 %1, 24
  %shr40 = and i32 %and39, 1
  %enh_desc = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 26
  %22 = ptrtoint ptr %enh_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr40, ptr %enh_desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_rx_watchdog(ptr noundef %ioaddr, i32 noundef %riwt, i32 noundef %queue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %riwt)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @dwmac1000_dma_ops, !1, !"dwmac1000_dma_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 272, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 24, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwmac1000_dma_axi._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwmac1000_dma_axi._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 156, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug352, !11, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 159, i32 3}
!17 = !{ptr @dwmac1000_dma_operation_mode_rx.__UNIQUE_ID_ddebug353, !16, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 140, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dwmac1000_configure_fc.__UNIQUE_ID_ddebug351, !19, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 184, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug354, !23, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c", i32 192, i32 3}
!28 = !{ptr @dwmac1000_dma_operation_mode_tx.__UNIQUE_ID_ddebug355, !27, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 475285}
!39 = !{i64 2156635782}
!40 = !{i8 0, i8 2}
!41 = !{i64 2156636104}
!42 = !{i64 474867}
!43 = !{i64 2156636827}
!44 = !{i64 2156637553}
!45 = !{i64 2156638126}
!46 = !{i64 2156630782}
!47 = !{i64 2156635094}
!48 = !{i64 2156653037}
!49 = !{i64 2156641505}
!50 = !{i64 2148919235, i64 2148919240, i64 2148919253, i64 2148919297, i64 2148919331, i64 2148919352}
!51 = !{i64 2156646571}
!52 = !{i64 2156647256}
!53 = !{i64 2156652306}
!54 = !{i64 2156653542}
!55 = !{i64 2156654004}
