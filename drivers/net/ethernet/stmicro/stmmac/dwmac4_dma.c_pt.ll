; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac4_dma_ops = dso_local constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @dwmac4_dma_reset, ptr @dwmac4_dma_init, ptr @dwmac4_dma_init_channel, ptr @dwmac4_dma_init_rx_chan, ptr @dwmac4_dma_init_tx_chan, ptr @dwmac4_dma_axi, ptr @dwmac4_dump_dma_regs, ptr @dwmac4_dma_rx_chan_op_mode, ptr @dwmac4_dma_tx_chan_op_mode, ptr null, ptr null, ptr @dwmac4_enable_dma_irq, ptr @dwmac4_disable_dma_irq, ptr @dwmac4_dma_start_tx, ptr @dwmac4_dma_stop_tx, ptr @dwmac4_dma_start_rx, ptr @dwmac4_dma_stop_rx, ptr @dwmac4_dma_interrupt, ptr @dwmac4_get_hw_feature, ptr @dwmac4_rx_watchdog, ptr @dwmac4_set_tx_ring_len, ptr @dwmac4_set_rx_ring_len, ptr @dwmac4_set_rx_tail_ptr, ptr @dwmac4_set_tx_tail_ptr, ptr @dwmac4_enable_tso, ptr @dwmac4_qmode, ptr @dwmac4_set_bfsize, ptr @dwmac4_enable_sph, ptr null }, [44 x i8] zeroinitializer }, align 32
@dwmac410_dma_ops = dso_local constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @dwmac4_dma_reset, ptr @dwmac4_dma_init, ptr @dwmac410_dma_init_channel, ptr @dwmac4_dma_init_rx_chan, ptr @dwmac4_dma_init_tx_chan, ptr @dwmac4_dma_axi, ptr @dwmac4_dump_dma_regs, ptr @dwmac4_dma_rx_chan_op_mode, ptr @dwmac4_dma_tx_chan_op_mode, ptr null, ptr null, ptr @dwmac410_enable_dma_irq, ptr @dwmac4_disable_dma_irq, ptr @dwmac4_dma_start_tx, ptr @dwmac4_dma_stop_tx, ptr @dwmac4_dma_start_rx, ptr @dwmac4_dma_stop_rx, ptr @dwmac4_dma_interrupt, ptr @dwmac4_get_hw_feature, ptr @dwmac4_rx_watchdog, ptr @dwmac4_set_tx_ring_len, ptr @dwmac4_set_rx_ring_len, ptr @dwmac4_set_rx_tail_ptr, ptr @dwmac4_set_tx_tail_ptr, ptr @dwmac4_enable_tso, ptr @dwmac4_qmode, ptr @dwmac4_set_bfsize, ptr @dwmac4_enable_sph, ptr @dwmac4_enable_tbs }, [44 x i8] zeroinitializer }, align 32
@dwmac4_dma_axi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016dwmac4: Master AXI performs %s burst length\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmac4_dma_axi\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c\00", [47 x i8] zeroinitializer }, align 32
@dwmac4_dma_axi._entry_ptr = internal global ptr @dwmac4_dma_axi._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwmac4_dma_rx_chan_op_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GMAC: enable RX store and forward mode\0A\00", [56 x i8] zeroinitializer }, align 32
@dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GMAC: disable RX SF mode (threshold %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwmac4_dma_tx_chan_op_mode\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GMAC: enable TX store and forward mode\0A\00", [56 x i8] zeroinitializer }, align 32
@dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GMAC: disabling TX SF (threshold %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.12 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"dwmac4_dma_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 520, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"dwmac410_dma_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 549, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 22, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 240, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 243, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 305, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 309, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @dwmac4_dma_axi._entry, ptr @dwmac4_dma_axi._entry_ptr, ptr @dwmac4_dma_ops, ptr @dwmac410_dma_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac410_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_dma_axi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_init(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %atds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4100
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %fixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 4
  %2 = ptrtoint ptr %fixed_burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %1, %or
  %mixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 5
  %4 = ptrtoint ptr %mixed_burst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mixed_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %or4 = or i32 %spec.select, 16384
  %value.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 6
  %6 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aal, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %or8 = or i32 %value.1, 4096
  %value.2 = select i1 %tobool6.not, i32 %value.1, i32 %or8
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 7
  %8 = ptrtoint ptr %eame to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eame, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  %or12 = or i32 %value.2, 2048
  %value.3 = select i1 %tobool10.not, i32 %value.2, i32 %or12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %value.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #4, !srcloc !40
  %add.ptr17 = getelementptr i8, ptr %ioaddr, i32 4096
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #4, !srcloc !36
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %multi_msi_en = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 8
  %13 = ptrtoint ptr %multi_msi_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %multi_msi_en, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %and = and i32 %12, -196609
  %or23 = or i32 %and, 65536
  %value.4 = select i1 %tobool21.not, i32 %12, i32 %or23
  %dche = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 9
  %15 = ptrtoint ptr %dche to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dche, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool25.not = icmp eq i8 %16, 0
  %or27 = or i32 %value.4, 524288
  %value.5 = select i1 %tobool25.not, i32 %value.4, i32 %or27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %value.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %17) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_channel(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 3
  %2 = ptrtoint ptr %pblx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pblx8, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %or = or i32 %1, 65536
  %spec.select = select i1 %tobool.not, i32 %1, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %add10 = add i32 %mul, 4404
  %add.ptr11 = getelementptr i8, ptr %ioaddr, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1099956480) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_rx_chan(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %dma_rx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rxpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 2
  %0 = ptrtoint ptr %rxpbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxpbl1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4360
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %shl = shl i32 %cond, 16
  %or = or i32 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %dma_rx_phy)
  %add13 = add i32 %mul, 4380
  %add.ptr14 = getelementptr i8, ptr %ioaddr, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %7) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_tx_chan(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %dma_tx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %txpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %txpbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txpbl1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4356
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %shl = shl i32 %cond, 16
  %or = or i32 %shl, %5
  %or4 = or i32 %or, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %dma_tx_phy)
  %add14 = add i32 %mul, 4372
  %add.ptr15 = getelementptr i8, ptr %ioaddr, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %7) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_axi(ptr noundef %ioaddr, ptr nocapture noundef readonly %axi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4100
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond) #7
  %2 = ptrtoint ptr %axi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %axi, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %or = or i32 %1, -2147483648
  %spec.select = select i1 %tobool4.not, i32 %1, i32 %or
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 1
  %4 = ptrtoint ptr %axi_xit_frm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %axi_xit_frm, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %or7 = or i32 %spec.select, 1073741824
  %value.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or7
  %and9 = and i32 %value.1, -252641281
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 2
  %6 = ptrtoint ptr %axi_wr_osr_lmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %axi_wr_osr_lmt, align 4
  %and10 = shl i32 %7, 24
  %shl = and i32 %and10, 251658240
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
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
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
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.13)
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
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.14)
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
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.15)
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
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.16)
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
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %value.3.6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dump_dma_regs(ptr noundef %ioaddr, ptr nocapture noundef writeonly %reg_space) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 4352
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %arrayidx.i = getelementptr i32, ptr %reg_space, i32 1088
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %ioaddr, i32 4356
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #4, !srcloc !36
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %arrayidx17.i = getelementptr i32, ptr %reg_space, i32 1089
  %5 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx17.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %ioaddr, i32 4360
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #4, !srcloc !36
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %arrayidx31.i = getelementptr i32, ptr %reg_space, i32 1090
  %8 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx31.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %ioaddr, i32 4372
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #4, !srcloc !36
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %arrayidx45.i = getelementptr i32, ptr %reg_space, i32 1093
  %11 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx45.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %ioaddr, i32 4380
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #4, !srcloc !36
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %arrayidx59.i = getelementptr i32, ptr %reg_space, i32 1095
  %14 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx59.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %ioaddr, i32 4384
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #4, !srcloc !36
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %arrayidx73.i = getelementptr i32, ptr %reg_space, i32 1096
  %17 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx73.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %ioaddr, i32 4392
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79.i) #4, !srcloc !36
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %arrayidx87.i = getelementptr i32, ptr %reg_space, i32 1098
  %20 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx87.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %ioaddr, i32 4396
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #4, !srcloc !36
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %arrayidx101.i = getelementptr i32, ptr %reg_space, i32 1099
  %23 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx101.i, align 4
  %add.ptr107.i = getelementptr i8, ptr %ioaddr, i32 4400
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107.i) #4, !srcloc !36
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %arrayidx115.i = getelementptr i32, ptr %reg_space, i32 1100
  %26 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx115.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %ioaddr, i32 4404
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121.i) #4, !srcloc !36
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %arrayidx129.i = getelementptr i32, ptr %reg_space, i32 1101
  %29 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx129.i, align 4
  %add.ptr135.i = getelementptr i8, ptr %ioaddr, i32 4408
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135.i) #4, !srcloc !36
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %arrayidx143.i = getelementptr i32, ptr %reg_space, i32 1102
  %32 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx143.i, align 4
  %add.ptr149.i = getelementptr i8, ptr %ioaddr, i32 4412
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149.i) #4, !srcloc !36
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %arrayidx157.i = getelementptr i32, ptr %reg_space, i32 1103
  %35 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx157.i, align 4
  %add.ptr163.i = getelementptr i8, ptr %ioaddr, i32 4420
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163.i) #4, !srcloc !36
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %arrayidx171.i = getelementptr i32, ptr %reg_space, i32 1105
  %38 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx171.i, align 4
  %add.ptr177.i = getelementptr i8, ptr %ioaddr, i32 4428
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177.i) #4, !srcloc !36
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %arrayidx185.i = getelementptr i32, ptr %reg_space, i32 1107
  %41 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx185.i, align 4
  %add.ptr191.i = getelementptr i8, ptr %ioaddr, i32 4436
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191.i) #4, !srcloc !36
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %arrayidx199.i = getelementptr i32, ptr %reg_space, i32 1109
  %44 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx199.i, align 4
  %add.ptr205.i = getelementptr i8, ptr %ioaddr, i32 4444
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205.i) #4, !srcloc !36
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %arrayidx213.i = getelementptr i32, ptr %reg_space, i32 1111
  %47 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx213.i, align 4
  %add.ptr219.i = getelementptr i8, ptr %ioaddr, i32 4448
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219.i) #4, !srcloc !36
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %arrayidx227.i = getelementptr i32, ptr %reg_space, i32 1112
  %50 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx227.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_rx_chan_op_mode(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 6
  %add1 = add i32 %mul, 3376
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_dma_rx_chan_op_mode, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !72

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %or = or i32 %1, 32
  br label %if.end41

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_dma_rx_chan_op_mode, %if.then20)) #4
          to label %do.end23 [label %if.then20], !srcloc !72

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.8, i32 noundef %mode) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body8
  %and24 = and i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %mode)
  %cmp25 = icmp slt i32 %mode, 33
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  %or27 = or i32 %and24, 8
  br label %if.end41

if.else28:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp29 = icmp ult i32 %mode, 65
  br i1 %cmp29, label %if.else28.if.end41_crit_edge, label %if.else32

if.else28.if.end41_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.else32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %mode)
  %cmp33 = icmp ult i32 %mode, 97
  %or35 = or i32 %and24, 16
  %spec.select = select i1 %cmp33, i32 %or35, i32 24
  br label %if.end41

if.end41:                                         ; preds = %if.else32, %if.else28.if.end41_crit_edge, %if.then26, %do.end
  %mtl_rx_op.0 = phi i32 [ %or, %do.end ], [ %or27, %if.then26 ], [ %and24, %if.else28.if.end41_crit_edge ], [ %spec.select, %if.else32 ]
  %div = sdiv i32 %fifosz, 256
  %and42 = and i32 %mtl_rx_op.0, -1072693249
  %sub = shl i32 %div, 20
  %shl = add i32 %sub, -1048576
  %or43 = or i32 %and42, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %fifosz)
  %cmp44 = icmp slt i32 %fifosz, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp45.not = icmp eq i8 %qmode, 0
  %or.cond = or i1 %cmp44, %cmp45.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %fifosz)
  %cond = icmp eq i32 %fifosz, 4096
  %or48 = and i32 %or43, -1048449
  %or51 = select i1 %cond, i32 49536, i32 115840
  %or54 = or i32 %or51, %or48
  %mtl_rx_op.1 = select i1 %or.cond, i32 %or43, i32 %or54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %mtl_rx_op.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dma_tx_chan_op_mode(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 6
  %add = add i32 %mul, 3328
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_dma_tx_chan_op_mode, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !72

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.10) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %or = or i32 %1, 2
  br label %if.end60

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_dma_tx_chan_op_mode, %if.then19)) #4
          to label %do.end22 [label %if.then19], !srcloc !72

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.11, i32 noundef %mode) #4
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %and23 = and i32 %1, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %mode)
  %cmp24 = icmp slt i32 %mode, 33
  br i1 %cmp24, label %do.end22.if.end60_crit_edge, label %if.else27

do.end22.if.end60_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp28 = icmp ult i32 %mode, 65
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %or30 = or i32 %and23, 16
  br label %if.end60

if.else31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %mode)
  %cmp32 = icmp ult i32 %mode, 97
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  %or34 = or i32 %and23, 32
  br label %if.end60

if.else35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %mode)
  %cmp36 = icmp ult i32 %mode, 129
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  %or38 = or i32 %and23, 48
  br label %if.end60

if.else39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %mode)
  %cmp40 = icmp ult i32 %mode, 193
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  %or42 = or i32 %and23, 64
  br label %if.end60

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mode)
  %cmp44 = icmp ult i32 %mode, 257
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  %or46 = or i32 %and23, 80
  br label %if.end60

if.else47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 385, i32 %mode)
  %cmp48 = icmp ult i32 %mode, 385
  %or50 = or i32 %and23, 96
  %spec.select = select i1 %cmp48, i32 %or50, i32 112
  br label %if.end60

if.end60:                                         ; preds = %if.else47, %if.then45, %if.then41, %if.then37, %if.then33, %if.then29, %do.end22.if.end60_crit_edge, %do.end
  %mtl_tx_op.0 = phi i32 [ %or, %do.end ], [ %or30, %if.then29 ], [ %or34, %if.then33 ], [ %or38, %if.then37 ], [ %or42, %if.then41 ], [ %or46, %if.then45 ], [ %and23, %do.end22.if.end60_crit_edge ], [ %spec.select, %if.else47 ]
  %and61 = and i32 %mtl_tx_op.0, -33488909
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp62.not = icmp eq i8 %qmode, 0
  %mtl_tx_op.1.v = select i1 %cmp62.not, i32 4, i32 8
  %div = sdiv i32 %fifosz, 256
  %sub = shl i32 %div, 16
  %shl = add i32 %sub, -65536
  %mtl_tx_op.1 = or i32 %shl, %mtl_tx_op.1.v
  %or70 = or i32 %mtl_tx_op.1, %and61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or70)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_disable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_start_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_stop_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_start_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_stop_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_dma_interrupt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_get_hw_feature(ptr noundef %ioaddr, ptr noundef writeonly %dma_cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 284
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
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
  %vlhash = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 35
  %5 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr6, ptr %vlhash, align 4
  %and7 = lshr i32 %1, 18
  %shr8 = and i32 %and7, 1
  %multi_addr = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 4
  %6 = ptrtoint ptr %multi_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr8, ptr %multi_addr, align 4
  %and9 = lshr i32 %1, 3
  %shr10 = and i32 %and9, 1
  %pcs = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 5
  %7 = ptrtoint ptr %pcs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr10, ptr %pcs, align 4
  %and11 = lshr i32 %1, 5
  %shr12 = and i32 %and11, 1
  %sma_mdio = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 6
  %8 = ptrtoint ptr %sma_mdio to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr12, ptr %sma_mdio, align 4
  %and13 = lshr i32 %1, 6
  %shr14 = and i32 %and13, 1
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 7
  %9 = ptrtoint ptr %pmt_remote_wake_up to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr14, ptr %pmt_remote_wake_up, align 4
  %and15 = lshr i32 %1, 7
  %shr16 = and i32 %and15, 1
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 8
  %10 = ptrtoint ptr %pmt_magic_frame to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr16, ptr %pmt_magic_frame, align 4
  %and17 = lshr i32 %1, 8
  %shr18 = and i32 %and17, 1
  %rmon = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 9
  %11 = ptrtoint ptr %rmon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr18, ptr %rmon, align 4
  %and19 = lshr i32 %1, 12
  %shr20 = and i32 %and19, 1
  %atime_stamp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 11
  %12 = ptrtoint ptr %atime_stamp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr20, ptr %atime_stamp, align 4
  %and21 = lshr i32 %1, 13
  %shr22 = and i32 %and21, 1
  %eee = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 12
  %13 = ptrtoint ptr %eee to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr22, ptr %eee, align 4
  %and23 = lshr i32 %1, 14
  %shr24 = and i32 %and23, 1
  %tx_coe = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 16
  %14 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr24, ptr %tx_coe, align 4
  %and25 = lshr i32 %1, 16
  %shr26 = and i32 %and25, 1
  %rx_coe = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 17
  %15 = ptrtoint ptr %rx_coe to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr26, ptr %rx_coe, align 4
  %and27 = lshr i32 %1, 27
  %shr28 = and i32 %and27, 1
  %vlins = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 37
  %16 = ptrtoint ptr %vlins to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr28, ptr %vlins, align 4
  %and29 = lshr i32 %1, 9
  %shr30 = and i32 %and29, 1
  %arpoffsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 40
  %17 = ptrtoint ptr %arpoffsel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr30, ptr %arpoffsel, align 4
  %add.ptr33 = getelementptr i8, ptr %ioaddr, i32 288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !36
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %and37 = lshr i32 %19, 27
  %shr38 = and i32 %and37, 15
  %l3l4fnum = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 39
  %20 = ptrtoint ptr %l3l4fnum to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr38, ptr %l3l4fnum, align 4
  %and39 = lshr i32 %19, 24
  %shr40 = and i32 %and39, 3
  %hash_tb_sz = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 14
  %21 = ptrtoint ptr %hash_tb_sz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr40, ptr %hash_tb_sz, align 4
  %and41 = lshr i32 %19, 20
  %shr42 = and i32 %and41, 1
  %av = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 13
  %22 = ptrtoint ptr %av to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr42, ptr %av, align 4
  %and43 = lshr i32 %19, 18
  %shr44 = and i32 %and43, 1
  %tsoen = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 15
  %23 = ptrtoint ptr %tsoen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr44, ptr %tsoen, align 4
  %and45 = lshr i32 %19, 17
  %shr46 = and i32 %and45, 1
  %sphen = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 36
  %24 = ptrtoint ptr %sphen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr46, ptr %sphen, align 4
  %and47 = lshr i32 %19, 14
  %shr48 = and i32 %and47, 3
  %addr64 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr48)
  %switch.selectcmp = icmp eq i32 %shr48, 1
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr48)
  %switch.selectcmp195 = icmp eq i32 %shr48, 2
  %switch.select196 = select i1 %switch.selectcmp195, i32 48, i32 %switch.select
  %25 = ptrtoint ptr %addr64 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.select196, ptr %addr64, align 4
  %and56 = lshr i32 %19, 6
  %shr57 = and i32 %and56, 31
  %shl = shl i32 128, %shr57
  %tx_fifo_size = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 27
  %26 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl, ptr %tx_fifo_size, align 4
  %and58 = and i32 %19, 31
  %shl60 = shl i32 128, %and58
  %rx_fifo_size = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 28
  %27 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl60, ptr %rx_fifo_size, align 4
  %add.ptr63 = getelementptr i8, ptr %ioaddr, i32 292
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #4, !srcloc !36
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %and67 = lshr i32 %29, 12
  %shr68 = and i32 %and67, 15
  %add = add nuw nsw i32 %shr68, 1
  %number_rx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 21
  %30 = ptrtoint ptr %number_rx_channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %number_rx_channel, align 4
  %and69 = lshr i32 %29, 18
  %shr70 = and i32 %and69, 15
  %add71 = add nuw nsw i32 %shr70, 1
  %number_tx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 22
  %31 = ptrtoint ptr %number_tx_channel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add71, ptr %number_tx_channel, align 4
  %and72 = and i32 %29, 15
  %add74 = add nuw nsw i32 %and72, 1
  %number_rx_queues = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 23
  %32 = ptrtoint ptr %number_rx_queues to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add74, ptr %number_rx_queues, align 4
  %and75 = lshr i32 %29, 6
  %shr76 = and i32 %and75, 15
  %add77 = add nuw nsw i32 %shr76, 1
  %number_tx_queues = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 24
  %33 = ptrtoint ptr %number_tx_queues to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add77, ptr %number_tx_queues, align 4
  %and78 = lshr i32 %29, 24
  %shr79 = and i32 %and78, 7
  %pps_out_num = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 25
  %34 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr79, ptr %pps_out_num, align 4
  %time_stamp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 10
  %35 = ptrtoint ptr %time_stamp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %time_stamp, align 4
  %and80 = lshr i32 %29, 28
  %shr81 = and i32 %and80, 7
  %aux_snapshot_n = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 46
  %36 = ptrtoint ptr %aux_snapshot_n to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr81, ptr %aux_snapshot_n, align 4
  %add.ptr84 = getelementptr i8, ptr %ioaddr, i32 296
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #4, !srcloc !36
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %and88 = lshr i32 %38, 28
  %shr89 = and i32 %and88, 3
  %asp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 29
  %39 = ptrtoint ptr %asp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr89, ptr %asp, align 4
  %and90 = lshr i32 %38, 27
  %shr91 = and i32 %and90, 1
  %tbssel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 45
  %40 = ptrtoint ptr %tbssel to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr91, ptr %tbssel, align 4
  %and92 = lshr i32 %38, 26
  %shr93 = and i32 %and92, 1
  %fpesel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 44
  %41 = ptrtoint ptr %fpesel to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr93, ptr %fpesel, align 4
  %and94 = lshr i32 %38, 20
  %shr95 = and i32 %and94, 3
  %estwid = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 41
  %42 = ptrtoint ptr %estwid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr95, ptr %estwid, align 4
  %and96 = lshr i32 %38, 17
  %shr97 = and i32 %and96, 7
  %estdep = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 42
  %43 = ptrtoint ptr %estdep to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr97, ptr %estdep, align 4
  %and98 = lshr i32 %38, 16
  %shr99 = and i32 %and98, 1
  %estsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 43
  %44 = ptrtoint ptr %estsel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr99, ptr %estsel, align 4
  %and100 = lshr i32 %38, 13
  %shr101 = and i32 %and100, 3
  %frpes = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 32
  %45 = ptrtoint ptr %frpes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr101, ptr %frpes, align 4
  %and102 = lshr i32 %38, 11
  %shr103 = and i32 %and102, 3
  %frpbs = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 31
  %46 = ptrtoint ptr %frpbs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr103, ptr %frpbs, align 4
  %and104 = lshr i32 %38, 10
  %shr105 = and i32 %and104, 1
  %frpsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 30
  %47 = ptrtoint ptr %frpsel to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr105, ptr %frpsel, align 4
  %and106 = lshr i32 %38, 5
  %shr107 = and i32 %and106, 1
  %dvlan = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 38
  %48 = ptrtoint ptr %dvlan to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr107, ptr %dvlan, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rx_watchdog(ptr noundef %ioaddr, i32 noundef %riwt, i32 noundef %queue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %riwt)
  %mul = shl i32 %queue, 7
  %add1 = add i32 %mul, 4408
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_tx_ring_len(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_rx_ring_len(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_rx_tail_ptr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_tx_tail_ptr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_enable_tso(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4356
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = or i32 %0, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !40
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = and i32 %0, -1048577
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_qmode(ptr noundef %ioaddr, i32 noundef %channel, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 6
  %add = add i32 %mul, 3328
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  %1 = and i32 %0, -201326593
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp.not = icmp eq i8 %qmode, 0
  %mtl_tx_op.0.v = select i1 %cmp.not, i32 4, i32 8
  %mtl_tx_op.0 = or i32 %2, %mtl_tx_op.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %mtl_tx_op.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_bfsize(ptr noundef %ioaddr, i32 noundef %bfsize, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4360
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  %1 = and i32 %0, 25231359
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %bfsize, 1
  %and3 = and i32 %shl, 32766
  %or = or i32 %2, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_enable_sph(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  %1 = and i32 %0, -28673
  %2 = or i32 %1, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !40
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 4352
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  %4 = and i32 %3, -2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %en, i32 16777216, i32 0
  %value.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #4, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac410_dma_init_channel(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 3
  %2 = ptrtoint ptr %pblx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pblx8, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %or = or i32 %1, 65536
  %spec.select = select i1 %tobool.not, i32 %1, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %add10 = add i32 %mul, 4404
  %add.ptr11 = getelementptr i8, ptr %ioaddr, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1104150528) #4, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac410_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_enable_tbs(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4356
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %1 = and i32 %0, -17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %en, i32 268435456, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  %or.cond = select i1 %en, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %add.ptr24 = getelementptr i8, ptr %ioaddr, i32 4176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 33554431) #4, !srcloc !40
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body21 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @dwmac4_dma_ops, !1, !"dwmac4_dma_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 520, i32 29}
!2 = !{ptr @dwmac410_dma_ops, !3, !"dwmac410_dma_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 549, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 22, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwmac4_dma_axi._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwmac4_dma_axi._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 240, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug351, !13, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 243, i32 3}
!19 = !{ptr @dwmac4_dma_rx_chan_op_mode.__UNIQUE_ID_ddebug352, !18, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 305, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug353, !21, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c", i32 309, i32 3}
!26 = !{ptr @dwmac4_dma_tx_chan_op_mode.__UNIQUE_ID_ddebug354, !25, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 701111}
!37 = !{i64 2156665136}
!38 = !{i8 0, i8 2}
!39 = !{i64 2156665699}
!40 = !{i64 700693}
!41 = !{i64 2156666387}
!42 = !{i64 2156667399}
!43 = !{i64 2156658933}
!44 = !{i64 2156659369}
!45 = !{i64 2156660724}
!46 = !{i64 2156651261}
!47 = !{i64 2156651633}
!48 = !{i64 2156654008}
!49 = !{i64 2156655078}
!50 = !{i64 2156655532}
!51 = !{i64 2156657907}
!52 = !{i64 2156646037}
!53 = !{i64 2156650322}
!54 = !{i64 2156668424}
!55 = !{i64 2156669318}
!56 = !{i64 2156670212}
!57 = !{i64 2156671112}
!58 = !{i64 2156672012}
!59 = !{i64 2156672912}
!60 = !{i64 2156673812}
!61 = !{i64 2156674712}
!62 = !{i64 2156675612}
!63 = !{i64 2156676512}
!64 = !{i64 2156677412}
!65 = !{i64 2156678312}
!66 = !{i64 2156679212}
!67 = !{i64 2156680112}
!68 = !{i64 2156681012}
!69 = !{i64 2156681912}
!70 = !{i64 2156682812}
!71 = !{i64 2156684185}
!72 = !{i64 2148167850, i64 2148167855, i64 2148167868, i64 2148167912, i64 2148167946, i64 2148167967}
!73 = !{i64 2156691793}
!74 = !{i64 2156692759}
!75 = !{i64 2156699821}
!76 = !{i64 2156700552}
!77 = !{i64 2156702381}
!78 = !{i64 2156706571}
!79 = !{i64 2156711192}
!80 = !{i64 2156683187}
!81 = !{i64 2156718914}
!82 = !{i64 2156720121}
!83 = !{i64 2156721103}
!84 = !{i64 2156722840}
!85 = !{i64 2156723565}
!86 = !{i64 2156724522}
!87 = !{i64 2156725417}
!88 = !{i64 2156725937}
!89 = !{i64 2156662128}
!90 = !{i64 2156662564}
!91 = !{i64 2156663939}
!92 = !{i64 2156726904}
!93 = !{i64 2156727441}
!94 = !{i64 2156728417}
!95 = !{i64 2156729843}
