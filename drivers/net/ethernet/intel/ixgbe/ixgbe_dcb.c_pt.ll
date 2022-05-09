; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }

@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_calculate_tc_credits(ptr nocapture noundef readonly %hw, ptr noundef %dcb_config, i32 noundef %max_frame, i8 noundef zeroext %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dcb_config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %max_frame, 2
  %sub = add nsw i32 %div, 63
  %idxprom3 = zext i8 %direction to i32
  %arrayidx = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 0
  %arrayidx4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx, i32 0, i32 %idxprom3
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx4, align 4
  %idxprom7 = zext i8 %1 to i32
  %arrayidx8 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %bwg_percent = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx, i32 0, i32 %idxprom3, i32 1
  %4 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bwg_percent, align 1
  %conv10 = zext i8 %5 to i16
  %conv11 = zext i8 %3 to i16
  %mul = mul nuw i16 %conv10, %conv11
  %div12 = udiv i16 %mul, 100
  %6 = add i16 %mul, -100
  call void @__sanitizer_cov_trace_const_cmp2(i16 9900, i16 %6)
  %7 = icmp ult i16 %6, 9900
  %narrow = select i1 %7, i16 %div12, i16 100
  %arrayidx.1 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1
  %arrayidx4.1 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.1, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.1, align 4
  %idxprom7.1 = zext i8 %9 to i32
  %arrayidx8.1 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.1
  %10 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8.1, align 1
  %bwg_percent.1 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.1, i32 0, i32 %idxprom3, i32 1
  %12 = ptrtoint ptr %bwg_percent.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bwg_percent.1, align 1
  %conv10.1 = zext i8 %13 to i16
  %conv11.1 = zext i8 %11 to i16
  %mul.1 = mul nuw i16 %conv10.1, %conv11.1
  %div12.1 = udiv i16 %mul.1, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.1)
  %14 = icmp ugt i16 %mul.1, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow, i16 %div12.1)
  %cmp17.1 = icmp ugt i16 %narrow, %div12.1
  %or.cond.1 = select i1 %14, i1 %cmp17.1, i1 false
  %min_percent.1.1.v = select i1 %or.cond.1, i16 %div12.1, i16 %narrow
  %arrayidx.2 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2
  %arrayidx4.2 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.2, i32 0, i32 %idxprom3
  %15 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.2, align 4
  %idxprom7.2 = zext i8 %16 to i32
  %arrayidx8.2 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.2
  %17 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8.2, align 1
  %bwg_percent.2 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.2, i32 0, i32 %idxprom3, i32 1
  %19 = ptrtoint ptr %bwg_percent.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bwg_percent.2, align 1
  %conv10.2 = zext i8 %20 to i16
  %conv11.2 = zext i8 %18 to i16
  %mul.2 = mul nuw i16 %conv10.2, %conv11.2
  %div12.2 = udiv i16 %mul.2, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.2)
  %21 = icmp ugt i16 %mul.2, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.1.v, i16 %div12.2)
  %cmp17.2 = icmp ugt i16 %min_percent.1.1.v, %div12.2
  %or.cond.2 = select i1 %21, i1 %cmp17.2, i1 false
  %min_percent.1.2.v = select i1 %or.cond.2, i16 %div12.2, i16 %min_percent.1.1.v
  %arrayidx.3 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3
  %arrayidx4.3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.3, i32 0, i32 %idxprom3
  %22 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.3, align 4
  %idxprom7.3 = zext i8 %23 to i32
  %arrayidx8.3 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.3
  %24 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.3, align 1
  %bwg_percent.3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.3, i32 0, i32 %idxprom3, i32 1
  %26 = ptrtoint ptr %bwg_percent.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bwg_percent.3, align 1
  %conv10.3 = zext i8 %27 to i16
  %conv11.3 = zext i8 %25 to i16
  %mul.3 = mul nuw i16 %conv10.3, %conv11.3
  %div12.3 = udiv i16 %mul.3, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.3)
  %28 = icmp ugt i16 %mul.3, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.2.v, i16 %div12.3)
  %cmp17.3 = icmp ugt i16 %min_percent.1.2.v, %div12.3
  %or.cond.3 = select i1 %28, i1 %cmp17.3, i1 false
  %min_percent.1.3.v = select i1 %or.cond.3, i16 %div12.3, i16 %min_percent.1.2.v
  %arrayidx.4 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4
  %arrayidx4.4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.4, i32 0, i32 %idxprom3
  %29 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.4, align 4
  %idxprom7.4 = zext i8 %30 to i32
  %arrayidx8.4 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.4
  %31 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.4, align 1
  %bwg_percent.4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.4, i32 0, i32 %idxprom3, i32 1
  %33 = ptrtoint ptr %bwg_percent.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bwg_percent.4, align 1
  %conv10.4 = zext i8 %34 to i16
  %conv11.4 = zext i8 %32 to i16
  %mul.4 = mul nuw i16 %conv10.4, %conv11.4
  %div12.4 = udiv i16 %mul.4, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.4)
  %35 = icmp ugt i16 %mul.4, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.3.v, i16 %div12.4)
  %cmp17.4 = icmp ugt i16 %min_percent.1.3.v, %div12.4
  %or.cond.4 = select i1 %35, i1 %cmp17.4, i1 false
  %min_percent.1.4.v = select i1 %or.cond.4, i16 %div12.4, i16 %min_percent.1.3.v
  %arrayidx.5 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5
  %arrayidx4.5 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.5, i32 0, i32 %idxprom3
  %36 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.5, align 4
  %idxprom7.5 = zext i8 %37 to i32
  %arrayidx8.5 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.5
  %38 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.5, align 1
  %bwg_percent.5 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.5, i32 0, i32 %idxprom3, i32 1
  %40 = ptrtoint ptr %bwg_percent.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bwg_percent.5, align 1
  %conv10.5 = zext i8 %41 to i16
  %conv11.5 = zext i8 %39 to i16
  %mul.5 = mul nuw i16 %conv10.5, %conv11.5
  %div12.5 = udiv i16 %mul.5, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.5)
  %42 = icmp ugt i16 %mul.5, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.4.v, i16 %div12.5)
  %cmp17.5 = icmp ugt i16 %min_percent.1.4.v, %div12.5
  %or.cond.5 = select i1 %42, i1 %cmp17.5, i1 false
  %min_percent.1.5.v = select i1 %or.cond.5, i16 %div12.5, i16 %min_percent.1.4.v
  %arrayidx.6 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6
  %arrayidx4.6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.6, i32 0, i32 %idxprom3
  %43 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx4.6, align 4
  %idxprom7.6 = zext i8 %44 to i32
  %arrayidx8.6 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.6
  %45 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.6, align 1
  %bwg_percent.6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.6, i32 0, i32 %idxprom3, i32 1
  %47 = ptrtoint ptr %bwg_percent.6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bwg_percent.6, align 1
  %conv10.6 = zext i8 %48 to i16
  %conv11.6 = zext i8 %46 to i16
  %mul.6 = mul nuw i16 %conv10.6, %conv11.6
  %div12.6 = udiv i16 %mul.6, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.6)
  %49 = icmp ugt i16 %mul.6, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.5.v, i16 %div12.6)
  %cmp17.6 = icmp ugt i16 %min_percent.1.5.v, %div12.6
  %or.cond.6 = select i1 %49, i1 %cmp17.6, i1 false
  %min_percent.1.6.v = select i1 %or.cond.6, i16 %div12.6, i16 %min_percent.1.5.v
  %arrayidx.7 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7
  %arrayidx4.7 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.7, i32 0, i32 %idxprom3
  %50 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.7, align 4
  %idxprom7.7 = zext i8 %51 to i32
  %arrayidx8.7 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom7.7
  %52 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx8.7, align 1
  %bwg_percent.7 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.7, i32 0, i32 %idxprom3, i32 1
  %54 = ptrtoint ptr %bwg_percent.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bwg_percent.7, align 1
  %conv10.7 = zext i8 %55 to i16
  %conv11.7 = zext i8 %53 to i16
  %mul.7 = mul nuw i16 %conv10.7, %conv11.7
  %div12.7 = udiv i16 %mul.7, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %mul.7)
  %56 = icmp ugt i16 %mul.7, 99
  call void @__sanitizer_cov_trace_cmp2(i16 %min_percent.1.6.v, i16 %div12.7)
  %cmp17.7 = icmp ugt i16 %min_percent.1.6.v, %div12.7
  %or.cond.7 = select i1 %56, i1 %cmp17.7, i1 false
  %min_percent.1.7.v = select i1 %or.cond.7, i16 %div12.7, i16 %min_percent.1.6.v
  %min_percent.1.7 = zext i16 %min_percent.1.7.v to i32
  %div1 = sdiv i32 %sub, 64
  %div22 = sdiv i32 %div1, %min_percent.1.7
  %add23 = add nsw i32 %div22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direction)
  %cmp76 = icmp eq i8 %direction, 0
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  br label %for.body28

for.body28:                                       ; preds = %if.end92.for.body28_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %if.end92.for.body28_crit_edge ]
  %arrayidx31 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 %indvars.iv
  %arrayidx34 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx31, i32 0, i32 %idxprom3
  %57 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx34, align 4
  %idxprom39 = zext i8 %58 to i32
  %arrayidx40 = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 3, i32 %idxprom3, i32 %idxprom39
  %59 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx40, align 1
  %bwg_percent41 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx31, i32 0, i32 %idxprom3, i32 1
  %61 = ptrtoint ptr %bwg_percent41 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bwg_percent41, align 1
  %conv43 = zext i8 %62 to i16
  %conv44 = zext i8 %60 to i16
  %mul45 = mul nuw i16 %conv43, %conv44
  %div46 = udiv i16 %mul45, 100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp50.not = icmp eq i8 %62, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %mul45)
  %63 = icmp ult i16 %mul45, 100
  %spec.store.select = select i1 %63, i16 1, i16 %div46
  %link_percentage.0 = select i1 %cmp50.not, i16 %div46, i16 %spec.store.select
  %conv58 = trunc i16 %link_percentage.0 to i8
  %link_percent = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx31, i32 0, i32 %idxprom3, i32 2
  %64 = ptrtoint ptr %link_percent to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv58, ptr %link_percent, align 2
  %conv59 = zext i16 %link_percentage.0 to i32
  %mul60 = mul i32 %add23, %conv59
  %65 = tail call i32 @llvm.smin.i32(i32 %mul60, i32 511)
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 %div1)
  %conv67 = trunc i32 %66 to i16
  %data_credits_refill = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx31, i32 0, i32 %idxprom3, i32 4
  %67 = ptrtoint ptr %data_credits_refill to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv67, ptr %data_credits_refill, align 4
  %mul69 = mul nuw nsw i32 %conv59, 4095
  %div70 = udiv i32 %mul69, 100
  %68 = tail call i32 @llvm.umax.i32(i32 %div70, i32 %div1)
  br i1 %cmp76, label %if.then78, label %for.body28.if.end92_crit_edge

for.body28.if.end92_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = trunc i32 %68 to i16
  br label %if.end92

if.then78:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp79 = icmp eq i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool82.not = icmp eq i32 %68, 0
  %71 = tail call i32 @llvm.umax.i32(i32 %68, i32 513)
  %spec.select = select i1 %tobool82.not, i32 0, i32 %71
  %credit_max.1 = select i1 %cmp79, i32 %spec.select, i32 %68
  %conv88 = trunc i32 %credit_max.1 to i16
  %desc_credits_max = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 %indvars.iv, i32 2
  %72 = ptrtoint ptr %desc_credits_max to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv88, ptr %desc_credits_max, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then78, %for.body28.if.end92_crit_edge
  %conv93.pre-phi = phi i16 [ %.pre, %for.body28.if.end92_crit_edge ], [ %conv88, %if.then78 ]
  %data_credits_max = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx31, i32 0, i32 %idxprom3, i32 5
  %73 = ptrtoint ptr %data_credits_max to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv93.pre-phi, ptr %data_credits_max, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %if.end92.cleanup_crit_edge, label %if.end92.for.body28_crit_edge

if.end92.for.body28_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end92.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_pfc(ptr nocapture noundef readonly %cfg, ptr nocapture noundef %pfc_en) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pfc_en, align 1
  %dcb_pfc = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %dcb_pfc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dcb_pfc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.not = icmp eq i32 %2, 0
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfc_en, align 1
  %conv4 = or i8 %4, 1
  store i8 %conv4, ptr %pfc_en, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %dcb_pfc.1 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 1, i32 1
  %5 = ptrtoint ptr %dcb_pfc.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcb_pfc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not.1 = icmp eq i32 %6, 0
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc_en, align 1
  %conv4.1 = or i8 %8, 2
  store i8 %conv4.1, ptr %pfc_en, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %dcb_pfc.2 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %dcb_pfc.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcb_pfc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.not.2 = icmp eq i32 %10, 0
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pfc_en, align 1
  %conv4.2 = or i8 %12, 4
  store i8 %conv4.2, ptr %pfc_en, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %dcb_pfc.3 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 3, i32 1
  %13 = ptrtoint ptr %dcb_pfc.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dcb_pfc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.not.3 = icmp eq i32 %14, 0
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfc_en, align 1
  %conv4.3 = or i8 %16, 8
  store i8 %conv4.3, ptr %pfc_en, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %dcb_pfc.4 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 4, i32 1
  %17 = ptrtoint ptr %dcb_pfc.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dcb_pfc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.not.4 = icmp eq i32 %18, 0
  br i1 %cmp3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pfc_en, align 1
  %conv4.4 = or i8 %20, 16
  store i8 %conv4.4, ptr %pfc_en, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %dcb_pfc.5 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 5, i32 1
  %21 = ptrtoint ptr %dcb_pfc.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dcb_pfc.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3.not.5 = icmp eq i32 %22, 0
  br i1 %cmp3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pfc_en, align 1
  %conv4.5 = or i8 %24, 32
  store i8 %conv4.5, ptr %pfc_en, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %dcb_pfc.6 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 6, i32 1
  %25 = ptrtoint ptr %dcb_pfc.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dcb_pfc.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.not.6 = icmp eq i32 %26, 0
  br i1 %cmp3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pfc_en, align 1
  %conv4.6 = or i8 %28, 64
  store i8 %conv4.6, ptr %pfc_en, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %dcb_pfc.7 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 7, i32 1
  %29 = ptrtoint ptr %dcb_pfc.7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dcb_pfc.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.not.7 = icmp eq i32 %30, 0
  br i1 %cmp3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pfc_en, align 1
  %conv4.7 = or i8 %32, -128
  store i8 %conv4.7, ptr %pfc_en, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_refill(ptr nocapture noundef readonly %cfg, i32 noundef %direction, ptr nocapture noundef writeonly %refill) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_config1 = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2
  %data_credits_refill = getelementptr [2 x %struct.tc_bw_alloc], ptr %tc_config1, i32 0, i32 %direction, i32 4
  %0 = ptrtoint ptr %data_credits_refill to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data_credits_refill, align 4
  %2 = ptrtoint ptr %refill to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %refill, align 2
  %arrayidx2.1 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 1
  %data_credits_refill.1 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.1, i32 0, i32 %direction, i32 4
  %3 = ptrtoint ptr %data_credits_refill.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data_credits_refill.1, align 4
  %arrayidx4.1 = getelementptr i16, ptr %refill, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx4.1, align 2
  %arrayidx2.2 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 2
  %data_credits_refill.2 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.2, i32 0, i32 %direction, i32 4
  %6 = ptrtoint ptr %data_credits_refill.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_credits_refill.2, align 4
  %arrayidx4.2 = getelementptr i16, ptr %refill, i32 2
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx4.2, align 2
  %arrayidx2.3 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 3
  %data_credits_refill.3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.3, i32 0, i32 %direction, i32 4
  %9 = ptrtoint ptr %data_credits_refill.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_credits_refill.3, align 4
  %arrayidx4.3 = getelementptr i16, ptr %refill, i32 3
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx4.3, align 2
  %arrayidx2.4 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 4
  %data_credits_refill.4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.4, i32 0, i32 %direction, i32 4
  %12 = ptrtoint ptr %data_credits_refill.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_credits_refill.4, align 4
  %arrayidx4.4 = getelementptr i16, ptr %refill, i32 4
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx4.4, align 2
  %arrayidx2.5 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 5
  %data_credits_refill.5 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.5, i32 0, i32 %direction, i32 4
  %15 = ptrtoint ptr %data_credits_refill.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_credits_refill.5, align 4
  %arrayidx4.5 = getelementptr i16, ptr %refill, i32 5
  %17 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx4.5, align 2
  %arrayidx2.6 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 6
  %data_credits_refill.6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.6, i32 0, i32 %direction, i32 4
  %18 = ptrtoint ptr %data_credits_refill.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_credits_refill.6, align 4
  %arrayidx4.6 = getelementptr i16, ptr %refill, i32 6
  %20 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx4.6, align 2
  %arrayidx2.7 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 7
  %data_credits_refill.7 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.7, i32 0, i32 %direction, i32 4
  %21 = ptrtoint ptr %data_credits_refill.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data_credits_refill.7, align 4
  %arrayidx4.7 = getelementptr i16, ptr %refill, i32 7
  %23 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx4.7, align 2
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_max(ptr nocapture noundef readonly %cfg, ptr nocapture noundef writeonly %max) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_credits_max = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %desc_credits_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %desc_credits_max, align 4
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %max, align 2
  %desc_credits_max.1 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 1, i32 2
  %3 = ptrtoint ptr %desc_credits_max.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc_credits_max.1, align 4
  %arrayidx3.1 = getelementptr i16, ptr %max, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx3.1, align 2
  %desc_credits_max.2 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 2, i32 2
  %6 = ptrtoint ptr %desc_credits_max.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc_credits_max.2, align 4
  %arrayidx3.2 = getelementptr i16, ptr %max, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx3.2, align 2
  %desc_credits_max.3 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 3, i32 2
  %9 = ptrtoint ptr %desc_credits_max.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %desc_credits_max.3, align 4
  %arrayidx3.3 = getelementptr i16, ptr %max, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx3.3, align 2
  %desc_credits_max.4 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 4, i32 2
  %12 = ptrtoint ptr %desc_credits_max.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %desc_credits_max.4, align 4
  %arrayidx3.4 = getelementptr i16, ptr %max, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx3.4, align 2
  %desc_credits_max.5 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 5, i32 2
  %15 = ptrtoint ptr %desc_credits_max.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc_credits_max.5, align 4
  %arrayidx3.5 = getelementptr i16, ptr %max, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx3.5, align 2
  %desc_credits_max.6 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 6, i32 2
  %18 = ptrtoint ptr %desc_credits_max.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %desc_credits_max.6, align 4
  %arrayidx3.6 = getelementptr i16, ptr %max, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx3.6, align 2
  %desc_credits_max.7 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 7, i32 2
  %21 = ptrtoint ptr %desc_credits_max.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %desc_credits_max.7, align 4
  %arrayidx3.7 = getelementptr i16, ptr %max, i32 7
  %23 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx3.7, align 2
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_bwgid(ptr nocapture noundef readonly %cfg, i32 noundef %direction, ptr nocapture noundef writeonly %bwgid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_config1 = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2
  %arrayidx3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %tc_config1, i32 0, i32 %direction
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx3, align 4
  %2 = ptrtoint ptr %bwgid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %bwgid, align 1
  %arrayidx2.1 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 1
  %arrayidx3.1 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.1, i32 0, i32 %direction
  %3 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.1, align 4
  %arrayidx4.1 = getelementptr i8, ptr %bwgid, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx4.1, align 1
  %arrayidx2.2 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 2
  %arrayidx3.2 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.2, i32 0, i32 %direction
  %6 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.2, align 4
  %arrayidx4.2 = getelementptr i8, ptr %bwgid, i32 2
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx4.2, align 1
  %arrayidx2.3 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 3
  %arrayidx3.3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.3, i32 0, i32 %direction
  %9 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.3, align 4
  %arrayidx4.3 = getelementptr i8, ptr %bwgid, i32 3
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx4.3, align 1
  %arrayidx2.4 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 4
  %arrayidx3.4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.4, i32 0, i32 %direction
  %12 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.4, align 4
  %arrayidx4.4 = getelementptr i8, ptr %bwgid, i32 4
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx4.4, align 1
  %arrayidx2.5 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 5
  %arrayidx3.5 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.5, i32 0, i32 %direction
  %15 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx3.5, align 4
  %arrayidx4.5 = getelementptr i8, ptr %bwgid, i32 5
  %17 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx4.5, align 1
  %arrayidx2.6 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 6
  %arrayidx3.6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.6, i32 0, i32 %direction
  %18 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.6, align 4
  %arrayidx4.6 = getelementptr i8, ptr %bwgid, i32 6
  %20 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx4.6, align 1
  %arrayidx2.7 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 7
  %arrayidx3.7 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.7, i32 0, i32 %direction
  %21 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3.7, align 4
  %arrayidx4.7 = getelementptr i8, ptr %bwgid, i32 7
  %23 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx4.7, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_prio(ptr nocapture noundef readonly %cfg, i32 noundef %direction, ptr nocapture noundef writeonly %ptype) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_config1 = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2
  %prio_type = getelementptr [2 x %struct.tc_bw_alloc], ptr %tc_config1, i32 0, i32 %direction, i32 6
  %0 = ptrtoint ptr %prio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_type, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %ptype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %ptype, align 1
  %arrayidx2.1 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 1
  %prio_type.1 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.1, i32 0, i32 %direction, i32 6
  %3 = ptrtoint ptr %prio_type.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prio_type.1, align 4
  %conv.1 = trunc i32 %4 to i8
  %arrayidx4.1 = getelementptr i8, ptr %ptype, i32 1
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.1, ptr %arrayidx4.1, align 1
  %arrayidx2.2 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 2
  %prio_type.2 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.2, i32 0, i32 %direction, i32 6
  %6 = ptrtoint ptr %prio_type.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prio_type.2, align 4
  %conv.2 = trunc i32 %7 to i8
  %arrayidx4.2 = getelementptr i8, ptr %ptype, i32 2
  %8 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.2, ptr %arrayidx4.2, align 1
  %arrayidx2.3 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 3
  %prio_type.3 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.3, i32 0, i32 %direction, i32 6
  %9 = ptrtoint ptr %prio_type.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio_type.3, align 4
  %conv.3 = trunc i32 %10 to i8
  %arrayidx4.3 = getelementptr i8, ptr %ptype, i32 3
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.3, ptr %arrayidx4.3, align 1
  %arrayidx2.4 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 4
  %prio_type.4 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.4, i32 0, i32 %direction, i32 6
  %12 = ptrtoint ptr %prio_type.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prio_type.4, align 4
  %conv.4 = trunc i32 %13 to i8
  %arrayidx4.4 = getelementptr i8, ptr %ptype, i32 4
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.4, ptr %arrayidx4.4, align 1
  %arrayidx2.5 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 5
  %prio_type.5 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.5, i32 0, i32 %direction, i32 6
  %15 = ptrtoint ptr %prio_type.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prio_type.5, align 4
  %conv.5 = trunc i32 %16 to i8
  %arrayidx4.5 = getelementptr i8, ptr %ptype, i32 5
  %17 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.5, ptr %arrayidx4.5, align 1
  %arrayidx2.6 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 6
  %prio_type.6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.6, i32 0, i32 %direction, i32 6
  %18 = ptrtoint ptr %prio_type.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio_type.6, align 4
  %conv.6 = trunc i32 %19 to i8
  %arrayidx4.6 = getelementptr i8, ptr %ptype, i32 6
  %20 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.6, ptr %arrayidx4.6, align 1
  %arrayidx2.7 = getelementptr %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2, i32 7
  %prio_type.7 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx2.7, i32 0, i32 %direction, i32 6
  %21 = ptrtoint ptr %prio_type.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prio_type.7, align 4
  %conv.7 = trunc i32 %22 to i8
  %arrayidx4.7 = getelementptr i8, ptr %ptype, i32 7
  %23 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.7, ptr %arrayidx4.7, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ixgbe_dcb_get_tc_from_up(ptr nocapture noundef readonly %cfg, i32 noundef %direction, i8 noundef zeroext %up) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_config1 = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2
  %conv = zext i8 %up to i32
  %shl = shl nuw i32 1, %conv
  %num_tcs = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = zext i8 %1 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ %2, %for.cond.preheader ], [ %indvars.iv.next, %for.body.for.cond_crit_edge ]
  %3 = trunc i32 %indvars.iv to i8
  %tc.0 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0)
  %tobool3.not = icmp eq i8 %tc.0, 0
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %idxprom = zext i8 %tc.0 to i32
  %arrayidx5 = getelementptr %struct.tc_configuration, ptr %tc_config1, i32 %idxprom
  %arrayidx6 = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx5, i32 0, i32 %direction
  %up_to_tc_bitmap = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx6, i32 0, i32 3
  %4 = ptrtoint ptr %up_to_tc_bitmap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up_to_tc_bitmap, align 1
  %conv7 = zext i8 %5 to i32
  %and = and i32 %shl, %conv7
  %tobool8.not = icmp eq i32 %and, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %tobool8.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %tc.0, %for.body.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_unpack_map(ptr nocapture noundef readonly %cfg, i32 noundef %direction, ptr nocapture noundef writeonly %map) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_config1.i = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 2
  %num_tcs.i = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %cfg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ixgbe_dcb_get_tc_from_up.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %ixgbe_dcb_get_tc_from_up.exit.for.body_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %indvars.iv
  %0 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.body.ixgbe_dcb_get_tc_from_up.exit_crit_edge, label %for.cond.preheader.i

for.body.ixgbe_dcb_get_tc_from_up.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit

for.cond.preheader.i:                             ; preds = %for.body
  %2 = zext i8 %1 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ %2, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = trunc i32 %indvars.iv.i to i8
  %tc.0.i = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i)
  %tobool3.not.i = icmp eq i8 %tc.0.i, 0
  br i1 %tobool3.not.i, label %for.cond.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge, label %for.body.i

for.cond.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit

for.body.i:                                       ; preds = %for.cond.i
  %idxprom.i = zext i8 %tc.0.i to i32
  %arrayidx5.i = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i
  %arrayidx6.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx5.i, i32 0, i32 %direction
  %up_to_tc_bitmap.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx6.i, i32 0, i32 3
  %4 = ptrtoint ptr %up_to_tc_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up_to_tc_bitmap.i, align 1
  %conv7.i = zext i8 %5 to i32
  %and.i = and i32 %shl.i, %conv7.i
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  br i1 %tobool8.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge

for.body.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ixgbe_dcb_get_tc_from_up.exit:                    ; preds = %for.body.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge, %for.cond.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge, %for.body.ixgbe_dcb_get_tc_from_up.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %for.body.ixgbe_dcb_get_tc_from_up.exit_crit_edge ], [ %tc.0.i, %for.body.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge ], [ 0, %for.cond.i.ixgbe_dcb_get_tc_from_up.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %map, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %ixgbe_dcb_get_tc_from_up.exit.for.body_crit_edge

ixgbe_dcb_get_tc_from_up.exit.for.body_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ixgbe_dcb_get_tc_from_up.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_config(ptr noundef %hw, ptr noundef readonly %dcb_config) local_unnamed_addr #4 align 64 {
entry:
  %ptype = alloca [8 x i8], align 1
  %bwgid = alloca [8 x i8], align 1
  %prio_tc = alloca [8 x i8], align 8
  %refill = alloca [8 x i16], align 2
  %max = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptype) #7
  %0 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %ptype, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bwgid) #7
  %7 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 2
  %9 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 4
  %11 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 5
  %12 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 6
  %13 = getelementptr inbounds [8 x i8], ptr %bwgid, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prio_tc) #7
  %14 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 1
  %15 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 2
  %16 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 3
  %17 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 4
  %18 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 5
  %19 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 6
  %20 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 7
  %21 = ptrtoint ptr %prio_tc to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %prio_tc, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %refill) #7
  %22 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 1
  %23 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 2
  %24 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 3
  %25 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 4
  %26 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 5
  %27 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 6
  %28 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max) #7
  %29 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 1
  %30 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 2
  %31 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 3
  %32 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 4
  %33 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 5
  %34 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 6
  %35 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 7
  %dcb_pfc.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %dcb_pfc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dcb_pfc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3.not.i = icmp ne i32 %37, 0
  %spec.select = zext i1 %cmp3.not.i to i8
  %dcb_pfc.1.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1, i32 1
  %38 = ptrtoint ptr %dcb_pfc.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dcb_pfc.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp3.not.1.i = icmp eq i32 %39, 0
  %conv4.1.i = or i8 %spec.select, 2
  %pfc_en.1 = select i1 %cmp3.not.1.i, i8 %spec.select, i8 %conv4.1.i
  %dcb_pfc.2.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2, i32 1
  %40 = ptrtoint ptr %dcb_pfc.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dcb_pfc.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3.not.2.i = icmp eq i32 %41, 0
  %conv4.2.i = or i8 %pfc_en.1, 4
  %pfc_en.2 = select i1 %cmp3.not.2.i, i8 %pfc_en.1, i8 %conv4.2.i
  %dcb_pfc.3.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3, i32 1
  %42 = ptrtoint ptr %dcb_pfc.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dcb_pfc.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3.not.3.i = icmp eq i32 %43, 0
  %conv4.3.i = or i8 %pfc_en.2, 8
  %pfc_en.3 = select i1 %cmp3.not.3.i, i8 %pfc_en.2, i8 %conv4.3.i
  %dcb_pfc.4.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4, i32 1
  %44 = ptrtoint ptr %dcb_pfc.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dcb_pfc.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3.not.4.i = icmp eq i32 %45, 0
  %conv4.4.i = or i8 %pfc_en.3, 16
  %pfc_en.4 = select i1 %cmp3.not.4.i, i8 %pfc_en.3, i8 %conv4.4.i
  %dcb_pfc.5.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5, i32 1
  %46 = ptrtoint ptr %dcb_pfc.5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dcb_pfc.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp3.not.5.i = icmp eq i32 %47, 0
  %conv4.5.i = or i8 %pfc_en.4, 32
  %pfc_en.5 = select i1 %cmp3.not.5.i, i8 %pfc_en.4, i8 %conv4.5.i
  %dcb_pfc.6.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6, i32 1
  %48 = ptrtoint ptr %dcb_pfc.6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dcb_pfc.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp3.not.6.i = icmp eq i32 %49, 0
  %conv4.6.i = or i8 %pfc_en.5, 64
  %pfc_en.6 = select i1 %cmp3.not.6.i, i8 %pfc_en.5, i8 %conv4.6.i
  %dcb_pfc.7.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7, i32 1
  %50 = ptrtoint ptr %dcb_pfc.7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dcb_pfc.7.i, align 4
  %conv4.7.i = or i8 %pfc_en.6, -128
  %tc_config1.i = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2
  %data_credits_refill.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4
  %52 = ptrtoint ptr %data_credits_refill.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %data_credits_refill.i, align 4
  %54 = ptrtoint ptr %refill to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %refill, align 2
  %arrayidx2.1.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1
  %data_credits_refill.1.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1, i32 0, i32 0, i32 4
  %55 = ptrtoint ptr %data_credits_refill.1.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %data_credits_refill.1.i, align 4
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %22, align 2
  %arrayidx2.2.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2
  %data_credits_refill.2.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %data_credits_refill.2.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %data_credits_refill.2.i, align 4
  %60 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %23, align 2
  %arrayidx2.3.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3
  %data_credits_refill.3.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3, i32 0, i32 0, i32 4
  %61 = ptrtoint ptr %data_credits_refill.3.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %data_credits_refill.3.i, align 4
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %24, align 2
  %arrayidx2.4.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4
  %data_credits_refill.4.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4, i32 0, i32 0, i32 4
  %64 = ptrtoint ptr %data_credits_refill.4.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %data_credits_refill.4.i, align 4
  %66 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %25, align 2
  %arrayidx2.5.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5
  %data_credits_refill.5.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5, i32 0, i32 0, i32 4
  %67 = ptrtoint ptr %data_credits_refill.5.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %data_credits_refill.5.i, align 4
  %69 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %26, align 2
  %arrayidx2.6.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6
  %data_credits_refill.6.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %70 = ptrtoint ptr %data_credits_refill.6.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %data_credits_refill.6.i, align 4
  %72 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %27, align 2
  %arrayidx2.7.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7
  %data_credits_refill.7.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7, i32 0, i32 0, i32 4
  %73 = ptrtoint ptr %data_credits_refill.7.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data_credits_refill.7.i, align 4
  %75 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %28, align 2
  %desc_credits_max.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 0, i32 2
  %76 = ptrtoint ptr %desc_credits_max.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %desc_credits_max.i, align 4
  %78 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %max, align 2
  %desc_credits_max.1.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1, i32 2
  %79 = ptrtoint ptr %desc_credits_max.1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %desc_credits_max.1.i, align 4
  %81 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %29, align 2
  %desc_credits_max.2.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2, i32 2
  %82 = ptrtoint ptr %desc_credits_max.2.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %desc_credits_max.2.i, align 4
  %84 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %30, align 2
  %desc_credits_max.3.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3, i32 2
  %85 = ptrtoint ptr %desc_credits_max.3.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %desc_credits_max.3.i, align 4
  %87 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %31, align 2
  %desc_credits_max.4.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4, i32 2
  %88 = ptrtoint ptr %desc_credits_max.4.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %desc_credits_max.4.i, align 4
  %90 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %32, align 2
  %desc_credits_max.5.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5, i32 2
  %91 = ptrtoint ptr %desc_credits_max.5.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %desc_credits_max.5.i, align 4
  %93 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %33, align 2
  %desc_credits_max.6.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6, i32 2
  %94 = ptrtoint ptr %desc_credits_max.6.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %desc_credits_max.6.i, align 4
  %96 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %34, align 2
  %desc_credits_max.7.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7, i32 2
  %97 = ptrtoint ptr %desc_credits_max.7.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %desc_credits_max.7.i, align 4
  %99 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %35, align 2
  %100 = ptrtoint ptr %tc_config1.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tc_config1.i, align 4
  %102 = ptrtoint ptr %bwgid to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %bwgid, align 1
  %103 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx2.1.i, align 4
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %7, align 1
  %106 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx2.2.i, align 4
  %108 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %8, align 1
  %109 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx2.3.i, align 4
  %111 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %9, align 1
  %112 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx2.4.i, align 4
  %114 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %10, align 1
  %115 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx2.5.i, align 4
  %117 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %11, align 1
  %118 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx2.6.i, align 4
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %12, align 1
  %121 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx2.7.i, align 4
  %123 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %13, align 1
  %prio_type.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 0, i32 0, i32 0, i32 6
  %124 = ptrtoint ptr %prio_type.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %prio_type.i, align 4
  %conv.i = trunc i32 %125 to i8
  %126 = ptrtoint ptr %ptype to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.i, ptr %ptype, align 1
  %prio_type.1.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 1, i32 0, i32 0, i32 6
  %127 = ptrtoint ptr %prio_type.1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %prio_type.1.i, align 4
  %conv.1.i = trunc i32 %128 to i8
  %129 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.1.i, ptr %0, align 1
  %prio_type.2.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 2, i32 0, i32 0, i32 6
  %130 = ptrtoint ptr %prio_type.2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %prio_type.2.i, align 4
  %conv.2.i = trunc i32 %131 to i8
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.2.i, ptr %1, align 1
  %prio_type.3.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 3, i32 0, i32 0, i32 6
  %133 = ptrtoint ptr %prio_type.3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %prio_type.3.i, align 4
  %conv.3.i = trunc i32 %134 to i8
  %135 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv.3.i, ptr %2, align 1
  %prio_type.4.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 4, i32 0, i32 0, i32 6
  %136 = ptrtoint ptr %prio_type.4.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %prio_type.4.i, align 4
  %conv.4.i = trunc i32 %137 to i8
  %138 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv.4.i, ptr %3, align 1
  %prio_type.5.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 5, i32 0, i32 0, i32 6
  %139 = ptrtoint ptr %prio_type.5.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %prio_type.5.i, align 4
  %conv.5.i = trunc i32 %140 to i8
  %141 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.5.i, ptr %4, align 1
  %prio_type.6.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 6, i32 0, i32 0, i32 6
  %142 = ptrtoint ptr %prio_type.6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %prio_type.6.i, align 4
  %conv.6.i = trunc i32 %143 to i8
  %144 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv.6.i, ptr %5, align 1
  %prio_type.7.i = getelementptr %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 2, i32 7, i32 0, i32 0, i32 6
  %145 = ptrtoint ptr %prio_type.7.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %prio_type.7.i, align 4
  %conv.7.i = trunc i32 %146 to i8
  %147 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv.7.i, ptr %6, align 1
  %num_tcs.i.i = getelementptr inbounds %struct.ixgbe_dcb_config, ptr %dcb_config, i32 0, i32 1
  %148 = ptrtoint ptr %num_tcs.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %num_tcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i.i = icmp eq i8 %149, 0
  %150 = zext i8 %149 to i32
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.thread, label %entry.for.cond.i.i_crit_edge

entry.for.cond.i.i_crit_edge:                     ; preds = %entry
  br label %for.cond.i.i

ixgbe_dcb_get_tc_from_up.exit.i.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %prio_tc to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %prio_tc, align 8
  br label %ixgbe_dcb_get_tc_from_up.exit.i.1.thread

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry.for.cond.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %150, %entry.for.cond.i.i_crit_edge ]
  %152 = trunc i32 %indvars.iv.i.i to i8
  %tc.0.i.i = add i8 %152, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i)
  %tobool3.not.i.i = icmp eq i8 %tc.0.i.i, 0
  br i1 %tobool3.not.i.i, label %for.cond.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %idxprom.i.i = zext i8 %tc.0.i.i to i32
  %up_to_tc_bitmap.i.i = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i, i32 0, i32 0, i32 3
  %153 = ptrtoint ptr %up_to_tc_bitmap.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %up_to_tc_bitmap.i.i, align 1
  %155 = and i8 %154, 1
  %tobool8.not.i.i = icmp eq i8 %155, 0
  %indvars.iv.next.i.i = add nsw i32 %indvars.iv.i.i, -1
  br i1 %tobool8.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge

for.body.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

ixgbe_dcb_get_tc_from_up.exit.i:                  ; preds = %for.body.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge, %for.cond.i.i.ixgbe_dcb_get_tc_from_up.exit.i_crit_edge
  %156 = ptrtoint ptr %prio_tc to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %tc.0.i.i, ptr %prio_tc, align 8
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.ixgbe_dcb_get_tc_from_up.exit.i.1.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.for.cond.i.i.1_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.for.cond.i.i.1_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i
  br label %for.cond.i.i.1

ixgbe_dcb_get_tc_from_up.exit.i.ixgbe_dcb_get_tc_from_up.exit.i.1.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.1.thread

for.cond.i.i.1:                                   ; preds = %for.body.i.i.1.for.cond.i.i.1_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.for.cond.i.i.1_crit_edge
  %indvars.iv.i.i.1 = phi i32 [ %indvars.iv.next.i.i.1, %for.body.i.i.1.for.cond.i.i.1_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.for.cond.i.i.1_crit_edge ]
  %157 = trunc i32 %indvars.iv.i.i.1 to i8
  %tc.0.i.i.1 = add i8 %157, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.1)
  %tobool3.not.i.i.1 = icmp eq i8 %tc.0.i.i.1, 0
  br i1 %tobool3.not.i.i.1, label %for.cond.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge, label %for.body.i.i.1

for.cond.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.1

for.body.i.i.1:                                   ; preds = %for.cond.i.i.1
  %idxprom.i.i.1 = zext i8 %tc.0.i.i.1 to i32
  %up_to_tc_bitmap.i.i.1 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.1, i32 0, i32 0, i32 3
  %158 = ptrtoint ptr %up_to_tc_bitmap.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %up_to_tc_bitmap.i.i.1, align 1
  %160 = and i8 %159, 2
  %tobool8.not.i.i.1 = icmp eq i8 %160, 0
  %indvars.iv.next.i.i.1 = add nsw i32 %indvars.iv.i.i.1, -1
  br i1 %tobool8.not.i.i.1, label %for.body.i.i.1.for.cond.i.i.1_crit_edge, label %for.body.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge

for.body.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.1

for.body.i.i.1.for.cond.i.i.1_crit_edge:          ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.1

ixgbe_dcb_get_tc_from_up.exit.i.1.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.ixgbe_dcb_get_tc_from_up.exit.i.1.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.thread
  %161 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %14, align 1
  br label %ixgbe_dcb_get_tc_from_up.exit.i.2.thread

ixgbe_dcb_get_tc_from_up.exit.i.1:                ; preds = %for.body.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge, %for.cond.i.i.1.ixgbe_dcb_get_tc_from_up.exit.i.1_crit_edge
  %162 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %tc.0.i.i.1, ptr %14, align 1
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.1.ixgbe_dcb_get_tc_from_up.exit.i.2.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.1.for.cond.i.i.2_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.1.for.cond.i.i.2_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.1
  br label %for.cond.i.i.2

ixgbe_dcb_get_tc_from_up.exit.i.1.ixgbe_dcb_get_tc_from_up.exit.i.2.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.2.thread

for.cond.i.i.2:                                   ; preds = %for.body.i.i.2.for.cond.i.i.2_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.1.for.cond.i.i.2_crit_edge
  %indvars.iv.i.i.2 = phi i32 [ %indvars.iv.next.i.i.2, %for.body.i.i.2.for.cond.i.i.2_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.1.for.cond.i.i.2_crit_edge ]
  %163 = trunc i32 %indvars.iv.i.i.2 to i8
  %tc.0.i.i.2 = add i8 %163, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.2)
  %tobool3.not.i.i.2 = icmp eq i8 %tc.0.i.i.2, 0
  br i1 %tobool3.not.i.i.2, label %for.cond.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge, label %for.body.i.i.2

for.cond.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.2

for.body.i.i.2:                                   ; preds = %for.cond.i.i.2
  %idxprom.i.i.2 = zext i8 %tc.0.i.i.2 to i32
  %up_to_tc_bitmap.i.i.2 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.2, i32 0, i32 0, i32 3
  %164 = ptrtoint ptr %up_to_tc_bitmap.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %up_to_tc_bitmap.i.i.2, align 1
  %166 = and i8 %165, 4
  %tobool8.not.i.i.2 = icmp eq i8 %166, 0
  %indvars.iv.next.i.i.2 = add nsw i32 %indvars.iv.i.i.2, -1
  br i1 %tobool8.not.i.i.2, label %for.body.i.i.2.for.cond.i.i.2_crit_edge, label %for.body.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge

for.body.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.2

for.body.i.i.2.for.cond.i.i.2_crit_edge:          ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.2

ixgbe_dcb_get_tc_from_up.exit.i.2.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.1.ixgbe_dcb_get_tc_from_up.exit.i.2.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.1.thread
  %167 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %15, align 2
  br label %ixgbe_dcb_get_tc_from_up.exit.i.3.thread

ixgbe_dcb_get_tc_from_up.exit.i.2:                ; preds = %for.body.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge, %for.cond.i.i.2.ixgbe_dcb_get_tc_from_up.exit.i.2_crit_edge
  %168 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %tc.0.i.i.2, ptr %15, align 2
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.2.ixgbe_dcb_get_tc_from_up.exit.i.3.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.2.for.cond.i.i.3_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.2.for.cond.i.i.3_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.2
  br label %for.cond.i.i.3

ixgbe_dcb_get_tc_from_up.exit.i.2.ixgbe_dcb_get_tc_from_up.exit.i.3.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.3.thread

for.cond.i.i.3:                                   ; preds = %for.body.i.i.3.for.cond.i.i.3_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.2.for.cond.i.i.3_crit_edge
  %indvars.iv.i.i.3 = phi i32 [ %indvars.iv.next.i.i.3, %for.body.i.i.3.for.cond.i.i.3_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.2.for.cond.i.i.3_crit_edge ]
  %169 = trunc i32 %indvars.iv.i.i.3 to i8
  %tc.0.i.i.3 = add i8 %169, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.3)
  %tobool3.not.i.i.3 = icmp eq i8 %tc.0.i.i.3, 0
  br i1 %tobool3.not.i.i.3, label %for.cond.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge, label %for.body.i.i.3

for.cond.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.3

for.body.i.i.3:                                   ; preds = %for.cond.i.i.3
  %idxprom.i.i.3 = zext i8 %tc.0.i.i.3 to i32
  %up_to_tc_bitmap.i.i.3 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.3, i32 0, i32 0, i32 3
  %170 = ptrtoint ptr %up_to_tc_bitmap.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %up_to_tc_bitmap.i.i.3, align 1
  %172 = and i8 %171, 8
  %tobool8.not.i.i.3 = icmp eq i8 %172, 0
  %indvars.iv.next.i.i.3 = add nsw i32 %indvars.iv.i.i.3, -1
  br i1 %tobool8.not.i.i.3, label %for.body.i.i.3.for.cond.i.i.3_crit_edge, label %for.body.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge

for.body.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge: ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.3

for.body.i.i.3.for.cond.i.i.3_crit_edge:          ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.3

ixgbe_dcb_get_tc_from_up.exit.i.3.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.2.ixgbe_dcb_get_tc_from_up.exit.i.3.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.2.thread
  %173 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %16, align 1
  br label %ixgbe_dcb_get_tc_from_up.exit.i.4.thread

ixgbe_dcb_get_tc_from_up.exit.i.3:                ; preds = %for.body.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge, %for.cond.i.i.3.ixgbe_dcb_get_tc_from_up.exit.i.3_crit_edge
  %174 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %tc.0.i.i.3, ptr %16, align 1
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.3.ixgbe_dcb_get_tc_from_up.exit.i.4.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.3.for.cond.i.i.4_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.3.for.cond.i.i.4_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.3
  br label %for.cond.i.i.4

ixgbe_dcb_get_tc_from_up.exit.i.3.ixgbe_dcb_get_tc_from_up.exit.i.4.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.4.thread

for.cond.i.i.4:                                   ; preds = %for.body.i.i.4.for.cond.i.i.4_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.3.for.cond.i.i.4_crit_edge
  %indvars.iv.i.i.4 = phi i32 [ %indvars.iv.next.i.i.4, %for.body.i.i.4.for.cond.i.i.4_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.3.for.cond.i.i.4_crit_edge ]
  %175 = trunc i32 %indvars.iv.i.i.4 to i8
  %tc.0.i.i.4 = add i8 %175, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.4)
  %tobool3.not.i.i.4 = icmp eq i8 %tc.0.i.i.4, 0
  br i1 %tobool3.not.i.i.4, label %for.cond.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge, label %for.body.i.i.4

for.cond.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge: ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.4

for.body.i.i.4:                                   ; preds = %for.cond.i.i.4
  %idxprom.i.i.4 = zext i8 %tc.0.i.i.4 to i32
  %up_to_tc_bitmap.i.i.4 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.4, i32 0, i32 0, i32 3
  %176 = ptrtoint ptr %up_to_tc_bitmap.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %up_to_tc_bitmap.i.i.4, align 1
  %178 = and i8 %177, 16
  %tobool8.not.i.i.4 = icmp eq i8 %178, 0
  %indvars.iv.next.i.i.4 = add nsw i32 %indvars.iv.i.i.4, -1
  br i1 %tobool8.not.i.i.4, label %for.body.i.i.4.for.cond.i.i.4_crit_edge, label %for.body.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge

for.body.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge: ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.4

for.body.i.i.4.for.cond.i.i.4_crit_edge:          ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.4

ixgbe_dcb_get_tc_from_up.exit.i.4.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.3.ixgbe_dcb_get_tc_from_up.exit.i.4.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.3.thread
  %179 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %17, align 4
  br label %ixgbe_dcb_get_tc_from_up.exit.i.5.thread

ixgbe_dcb_get_tc_from_up.exit.i.4:                ; preds = %for.body.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge, %for.cond.i.i.4.ixgbe_dcb_get_tc_from_up.exit.i.4_crit_edge
  %180 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %tc.0.i.i.4, ptr %17, align 4
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.4.ixgbe_dcb_get_tc_from_up.exit.i.5.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.4.for.cond.i.i.5_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.4.for.cond.i.i.5_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.4
  br label %for.cond.i.i.5

ixgbe_dcb_get_tc_from_up.exit.i.4.ixgbe_dcb_get_tc_from_up.exit.i.5.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.5.thread

for.cond.i.i.5:                                   ; preds = %for.body.i.i.5.for.cond.i.i.5_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.4.for.cond.i.i.5_crit_edge
  %indvars.iv.i.i.5 = phi i32 [ %indvars.iv.next.i.i.5, %for.body.i.i.5.for.cond.i.i.5_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.4.for.cond.i.i.5_crit_edge ]
  %181 = trunc i32 %indvars.iv.i.i.5 to i8
  %tc.0.i.i.5 = add i8 %181, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.5)
  %tobool3.not.i.i.5 = icmp eq i8 %tc.0.i.i.5, 0
  br i1 %tobool3.not.i.i.5, label %for.cond.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge, label %for.body.i.i.5

for.cond.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge: ; preds = %for.cond.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.5

for.body.i.i.5:                                   ; preds = %for.cond.i.i.5
  %idxprom.i.i.5 = zext i8 %tc.0.i.i.5 to i32
  %up_to_tc_bitmap.i.i.5 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.5, i32 0, i32 0, i32 3
  %182 = ptrtoint ptr %up_to_tc_bitmap.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %up_to_tc_bitmap.i.i.5, align 1
  %184 = and i8 %183, 32
  %tobool8.not.i.i.5 = icmp eq i8 %184, 0
  %indvars.iv.next.i.i.5 = add nsw i32 %indvars.iv.i.i.5, -1
  br i1 %tobool8.not.i.i.5, label %for.body.i.i.5.for.cond.i.i.5_crit_edge, label %for.body.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge

for.body.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge: ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.5

for.body.i.i.5.for.cond.i.i.5_crit_edge:          ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.5

ixgbe_dcb_get_tc_from_up.exit.i.5.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.4.ixgbe_dcb_get_tc_from_up.exit.i.5.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.4.thread
  %185 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %18, align 1
  br label %ixgbe_dcb_get_tc_from_up.exit.i.6.thread

ixgbe_dcb_get_tc_from_up.exit.i.5:                ; preds = %for.body.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge, %for.cond.i.i.5.ixgbe_dcb_get_tc_from_up.exit.i.5_crit_edge
  %186 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %tc.0.i.i.5, ptr %18, align 1
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.5.ixgbe_dcb_get_tc_from_up.exit.i.6.thread_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.5.for.cond.i.i.6_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.5.for.cond.i.i.6_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.5
  br label %for.cond.i.i.6

ixgbe_dcb_get_tc_from_up.exit.i.5.ixgbe_dcb_get_tc_from_up.exit.i.6.thread_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.6.thread

for.cond.i.i.6:                                   ; preds = %for.body.i.i.6.for.cond.i.i.6_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.5.for.cond.i.i.6_crit_edge
  %indvars.iv.i.i.6 = phi i32 [ %indvars.iv.next.i.i.6, %for.body.i.i.6.for.cond.i.i.6_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.5.for.cond.i.i.6_crit_edge ]
  %187 = trunc i32 %indvars.iv.i.i.6 to i8
  %tc.0.i.i.6 = add i8 %187, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.6)
  %tobool3.not.i.i.6 = icmp eq i8 %tc.0.i.i.6, 0
  br i1 %tobool3.not.i.i.6, label %for.cond.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge, label %for.body.i.i.6

for.cond.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge: ; preds = %for.cond.i.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.6

for.body.i.i.6:                                   ; preds = %for.cond.i.i.6
  %idxprom.i.i.6 = zext i8 %tc.0.i.i.6 to i32
  %up_to_tc_bitmap.i.i.6 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.6, i32 0, i32 0, i32 3
  %188 = ptrtoint ptr %up_to_tc_bitmap.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %up_to_tc_bitmap.i.i.6, align 1
  %190 = and i8 %189, 64
  %tobool8.not.i.i.6 = icmp eq i8 %190, 0
  %indvars.iv.next.i.i.6 = add nsw i32 %indvars.iv.i.i.6, -1
  br i1 %tobool8.not.i.i.6, label %for.body.i.i.6.for.cond.i.i.6_crit_edge, label %for.body.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge

for.body.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge: ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.6

for.body.i.i.6.for.cond.i.i.6_crit_edge:          ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.6

ixgbe_dcb_get_tc_from_up.exit.i.6.thread:         ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.5.ixgbe_dcb_get_tc_from_up.exit.i.6.thread_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.5.thread
  %191 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %19, align 2
  br label %ixgbe_dcb_get_tc_from_up.exit.i.7

ixgbe_dcb_get_tc_from_up.exit.i.6:                ; preds = %for.body.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge, %for.cond.i.i.6.ixgbe_dcb_get_tc_from_up.exit.i.6_crit_edge
  %192 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %tc.0.i.i.6, ptr %19, align 2
  br i1 %tobool.not.i.i, label %ixgbe_dcb_get_tc_from_up.exit.i.6.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge, label %ixgbe_dcb_get_tc_from_up.exit.i.6.for.cond.i.i.7_crit_edge

ixgbe_dcb_get_tc_from_up.exit.i.6.for.cond.i.i.7_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.6
  br label %for.cond.i.i.7

ixgbe_dcb_get_tc_from_up.exit.i.6.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.7

for.cond.i.i.7:                                   ; preds = %for.body.i.i.7.for.cond.i.i.7_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.6.for.cond.i.i.7_crit_edge
  %indvars.iv.i.i.7 = phi i32 [ %indvars.iv.next.i.i.7, %for.body.i.i.7.for.cond.i.i.7_crit_edge ], [ %150, %ixgbe_dcb_get_tc_from_up.exit.i.6.for.cond.i.i.7_crit_edge ]
  %193 = trunc i32 %indvars.iv.i.i.7 to i8
  %tc.0.i.i.7 = add i8 %193, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc.0.i.i.7)
  %tobool3.not.i.i.7 = icmp eq i8 %tc.0.i.i.7, 0
  br i1 %tobool3.not.i.i.7, label %for.cond.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge, label %for.body.i.i.7

for.cond.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge: ; preds = %for.cond.i.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.7

for.body.i.i.7:                                   ; preds = %for.cond.i.i.7
  %idxprom.i.i.7 = zext i8 %tc.0.i.i.7 to i32
  %up_to_tc_bitmap.i.i.7 = getelementptr %struct.tc_configuration, ptr %tc_config1.i, i32 %idxprom.i.i.7, i32 0, i32 0, i32 3
  %194 = ptrtoint ptr %up_to_tc_bitmap.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %up_to_tc_bitmap.i.i.7, align 1
  %tobool8.not.i.i.7 = icmp sgt i8 %195, -1
  %indvars.iv.next.i.i.7 = add nsw i32 %indvars.iv.i.i.7, -1
  br i1 %tobool8.not.i.i.7, label %for.body.i.i.7.for.cond.i.i.7_crit_edge, label %for.body.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge

for.body.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge: ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_dcb_get_tc_from_up.exit.i.7

for.body.i.i.7.for.cond.i.i.7_crit_edge:          ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.7

ixgbe_dcb_get_tc_from_up.exit.i.7:                ; preds = %for.body.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge, %for.cond.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.6.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.6.thread
  %retval.0.i.i.7 = phi i8 [ 0, %ixgbe_dcb_get_tc_from_up.exit.i.6.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge ], [ 0, %ixgbe_dcb_get_tc_from_up.exit.i.6.thread ], [ 0, %for.cond.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge ], [ %tc.0.i.i.7, %for.body.i.i.7.ixgbe_dcb_get_tc_from_up.exit.i.7_crit_edge ]
  %196 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %retval.0.i.i.7, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.not.7.i = icmp eq i32 %51, 0
  %pfc_en.7 = select i1 %cmp3.not.7.i, i8 %pfc_en.6, i8 %conv4.7.i
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %197 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %type, align 4
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values)
  switch i32 %198, label %ixgbe_dcb_get_tc_from_up.exit.i.7.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge
    i32 3, label %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge74
    i32 4, label %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge75
    i32 5, label %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge76
    i32 6, label %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge77
  ]

ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge77: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge76: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge75: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge74: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

ixgbe_dcb_get_tc_from_up.exit.i.7.cleanup_crit_edge: ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @ixgbe_dcb_hw_config_82598(ptr noundef %hw, i8 noundef zeroext %pfc_en.7, ptr noundef nonnull %refill, ptr noundef nonnull %max, ptr noundef nonnull %bwgid, ptr noundef nonnull %ptype) #7
  br label %cleanup

sw.bb9:                                           ; preds = %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge, %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge74, %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge75, %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge76, %ixgbe_dcb_get_tc_from_up.exit.i.7.sw.bb9_crit_edge77
  %call15 = call i32 @ixgbe_dcb_hw_config_82599(ptr noundef %hw, i8 noundef zeroext %pfc_en.7, ptr noundef nonnull %refill, ptr noundef nonnull %max, ptr noundef nonnull %bwgid, ptr noundef nonnull %ptype, ptr noundef nonnull %prio_tc) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb, %ixgbe_dcb_get_tc_from_up.exit.i.7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.bb9 ], [ %call, %sw.bb ], [ 0, %ixgbe_dcb_get_tc_from_up.exit.i.7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %refill) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prio_tc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bwgid) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptype) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_hw_config_82598(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_hw_config_82599(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_pfc_config(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr noundef %prio_tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge6
    i32 4, label %entry.sw.bb1_crit_edge7
    i32 5, label %entry.sw.bb1_crit_edge8
    i32 6, label %entry.sw.bb1_crit_edge9
  ]

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ixgbe_dcb_config_pfc_82598(ptr noundef %hw, i8 noundef zeroext %pfc_en) #7
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge6, %entry.sw.bb1_crit_edge7, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9
  %call2 = tail call i32 @ixgbe_dcb_config_pfc_82599(ptr noundef %hw, i8 noundef zeroext %pfc_en, ptr noundef %prio_tc) #7
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_pfc_82598(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_pfc_82599(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_ets(ptr noundef %hw, ptr noundef %ets, i32 noundef %max_frame) local_unnamed_addr #4 align 64 {
entry:
  %refill = alloca [8 x i16], align 2
  %max = alloca [8 x i16], align 2
  %prio_type = alloca [8 x i8], align 1
  %bwg_id = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %refill) #7
  %0 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i16], ptr %refill, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max) #7
  %7 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 2
  %9 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 4
  %11 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 5
  %12 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 6
  %13 = getelementptr inbounds [8 x i16], ptr %max, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prio_type) #7
  %14 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 1
  %15 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 2
  %16 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 3
  %17 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 4
  %18 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 5
  %19 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 6
  %20 = getelementptr inbounds [8 x i8], ptr %prio_type, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bwg_id) #7
  %21 = ptrtoint ptr %bwg_id to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 283686952306183, ptr %bwg_id, align 8
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %23, label %entry.cleanup_crit_edge [
    i8 0, label %entry.for.inc_crit_edge
    i8 2, label %sw.bb2
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb2, %entry.for.inc_crit_edge
  %storemerge = phi i8 [ 0, %sw.bb2 ], [ 2, %entry.for.inc_crit_edge ]
  %25 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %prio_type, align 1
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.1, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %27, label %for.inc.cleanup_crit_edge [
    i8 0, label %sw.bb.1
    i8 2, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %for.inc.for.inc.1_crit_edge
  %storemerge24 = phi i8 [ 2, %sw.bb.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge24, ptr %14, align 1
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %31, label %for.inc.1.cleanup_crit_edge [
    i8 0, label %sw.bb.2
    i8 2, label %for.inc.1.for.inc.2_crit_edge
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %for.inc.1.for.inc.2_crit_edge
  %storemerge25 = phi i8 [ 2, %sw.bb.2 ], [ 0, %for.inc.1.for.inc.2_crit_edge ]
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %storemerge25, ptr %15, align 1
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %35, label %for.inc.2.cleanup_crit_edge [
    i8 0, label %sw.bb.3
    i8 2, label %for.inc.2.for.inc.3_crit_edge
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %for.inc.2.for.inc.3_crit_edge
  %storemerge26 = phi i8 [ 2, %sw.bb.3 ], [ 0, %for.inc.2.for.inc.3_crit_edge ]
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge26, ptr %16, align 1
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.4, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %39, label %for.inc.3.cleanup_crit_edge [
    i8 0, label %sw.bb.4
    i8 2, label %for.inc.3.for.inc.4_crit_edge
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %for.inc.3.for.inc.4_crit_edge
  %storemerge27 = phi i8 [ 2, %sw.bb.4 ], [ 0, %for.inc.3.for.inc.4_crit_edge ]
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %storemerge27, ptr %17, align 1
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.5, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %43, label %for.inc.4.cleanup_crit_edge [
    i8 0, label %sw.bb.5
    i8 2, label %for.inc.4.for.inc.5_crit_edge
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %for.inc.4.for.inc.5_crit_edge
  %storemerge28 = phi i8 [ 2, %sw.bb.5 ], [ 0, %for.inc.4.for.inc.5_crit_edge ]
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge28, ptr %18, align 1
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.6, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %47, label %for.inc.5.cleanup_crit_edge [
    i8 0, label %sw.bb.6
    i8 2, label %for.inc.5.for.inc.6_crit_edge
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %for.inc.5.for.inc.6_crit_edge
  %storemerge29 = phi i8 [ 2, %sw.bb.6 ], [ 0, %for.inc.5.for.inc.6_crit_edge ]
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %storemerge29, ptr %19, align 1
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %50 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.7, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %51, label %for.inc.6.cleanup_crit_edge [
    i8 0, label %sw.bb.7
    i8 2, label %for.inc.6.for.inc.7_crit_edge
  ]

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.7:                                          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %for.inc.6.for.inc.7_crit_edge
  %storemerge30 = phi i8 [ 2, %sw.bb.7 ], [ 0, %for.inc.6.for.inc.7_crit_edge ]
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge30, ptr %20, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %div.i = sdiv i32 %max_frame, 2
  %sub.i = add nsw i32 %div.i, 63
  %54 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tc_tx_bw, align 1
  %conv.i = zext i8 %55 to i32
  %56 = add i8 %55, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 -99, i8 %56)
  %57 = icmp ult i8 %56, -99
  %min_percent.1.i = select i1 %57, i32 100, i32 %conv.i
  %arrayidx.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.i, i32 %conv.1.i)
  %cmp2.1.i = icmp ule i32 %min_percent.1.i, %conv.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.1.i = icmp eq i8 %59, 0
  %or.cond.1.i = or i1 %tobool.not.1.i, %cmp2.1.i
  %min_percent.1.1.i = select i1 %or.cond.1.i, i32 %min_percent.1.i, i32 %conv.1.i
  %arrayidx.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.1.i, i32 %conv.2.i)
  %cmp2.2.i = icmp ule i32 %min_percent.1.1.i, %conv.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.2.i = icmp eq i8 %61, 0
  %or.cond.2.i = or i1 %tobool.not.2.i, %cmp2.2.i
  %min_percent.1.2.i = select i1 %or.cond.2.i, i32 %min_percent.1.1.i, i32 %conv.2.i
  %arrayidx.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.2.i, i32 %conv.3.i)
  %cmp2.3.i = icmp ule i32 %min_percent.1.2.i, %conv.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.3.i = icmp eq i8 %63, 0
  %or.cond.3.i = or i1 %tobool.not.3.i, %cmp2.3.i
  %min_percent.1.3.i = select i1 %or.cond.3.i, i32 %min_percent.1.2.i, i32 %conv.3.i
  %arrayidx.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.3.i, i32 %conv.4.i)
  %cmp2.4.i = icmp ule i32 %min_percent.1.3.i, %conv.4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.4.i = icmp eq i8 %65, 0
  %or.cond.4.i = or i1 %tobool.not.4.i, %cmp2.4.i
  %min_percent.1.4.i = select i1 %or.cond.4.i, i32 %min_percent.1.3.i, i32 %conv.4.i
  %arrayidx.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %66 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.4.i, i32 %conv.5.i)
  %cmp2.5.i = icmp ule i32 %min_percent.1.4.i, %conv.5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.5.i = icmp eq i8 %67, 0
  %or.cond.5.i = or i1 %tobool.not.5.i, %cmp2.5.i
  %min_percent.1.5.i = select i1 %or.cond.5.i, i32 %min_percent.1.4.i, i32 %conv.5.i
  %arrayidx.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %68 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.5.i, i32 %conv.6.i)
  %cmp2.6.i = icmp ule i32 %min_percent.1.5.i, %conv.6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.6.i = icmp eq i8 %69, 0
  %or.cond.6.i = or i1 %tobool.not.6.i, %cmp2.6.i
  %min_percent.1.6.i = select i1 %or.cond.6.i, i32 %min_percent.1.5.i, i32 %conv.6.i
  %arrayidx.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %70 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_percent.1.6.i, i32 %conv.7.i)
  %cmp2.7.i = icmp ule i32 %min_percent.1.6.i, %conv.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.7.i = icmp eq i8 %71, 0
  %or.cond.7.i = or i1 %tobool.not.7.i, %cmp2.7.i
  %min_percent.1.7.i = select i1 %or.cond.7.i, i32 %min_percent.1.6.i, i32 %conv.7.i
  %div1.i = sdiv i32 %sub.i, 64
  %div8.i = sdiv i32 %div1.i, %min_percent.1.7.i
  %add9.i = add nsw i32 %div8.i, 1
  %mul.i = mul i32 %add9.i, %conv.i
  %72 = tail call i32 @llvm.smin.i32(i32 %mul.i, i32 511) #7
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 %div1.i) #7
  %conv22.i = trunc i32 %73 to i16
  %74 = ptrtoint ptr %refill to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv22.i, ptr %refill, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool26.not.i = icmp eq i8 %55, 0
  %mul30.i = mul nuw nsw i32 %conv.i, 4095
  %div31.i = udiv i32 %mul30.i, 100
  %cond34.i = select i1 %tobool26.not.i, i32 %div1.i, i32 %div31.i
  %conv35.i = trunc i32 %cond34.i to i16
  %75 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv35.i, ptr %max, align 2
  %mul.1.i = mul i32 %add9.i, %conv.1.i
  %76 = tail call i32 @llvm.smin.i32(i32 %mul.1.i, i32 511) #7
  %77 = tail call i32 @llvm.smax.i32(i32 %76, i32 %div1.i) #7
  %conv22.1.i = trunc i32 %77 to i16
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv22.1.i, ptr %0, align 2
  %mul30.1.i = mul nuw nsw i32 %conv.1.i, 4095
  %div31.1.i = udiv i32 %mul30.1.i, 100
  %cond34.1.i = select i1 %tobool.not.1.i, i32 %div1.i, i32 %div31.1.i
  %conv35.1.i = trunc i32 %cond34.1.i to i16
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv35.1.i, ptr %7, align 2
  %mul.2.i = mul i32 %add9.i, %conv.2.i
  %80 = tail call i32 @llvm.smin.i32(i32 %mul.2.i, i32 511) #7
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 %div1.i) #7
  %conv22.2.i = trunc i32 %81 to i16
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv22.2.i, ptr %1, align 2
  %mul30.2.i = mul nuw nsw i32 %conv.2.i, 4095
  %div31.2.i = udiv i32 %mul30.2.i, 100
  %cond34.2.i = select i1 %tobool.not.2.i, i32 %div1.i, i32 %div31.2.i
  %conv35.2.i = trunc i32 %cond34.2.i to i16
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv35.2.i, ptr %8, align 2
  %mul.3.i = mul i32 %add9.i, %conv.3.i
  %84 = tail call i32 @llvm.smin.i32(i32 %mul.3.i, i32 511) #7
  %85 = tail call i32 @llvm.smax.i32(i32 %84, i32 %div1.i) #7
  %conv22.3.i = trunc i32 %85 to i16
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv22.3.i, ptr %2, align 2
  %mul30.3.i = mul nuw nsw i32 %conv.3.i, 4095
  %div31.3.i = udiv i32 %mul30.3.i, 100
  %cond34.3.i = select i1 %tobool.not.3.i, i32 %div1.i, i32 %div31.3.i
  %conv35.3.i = trunc i32 %cond34.3.i to i16
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv35.3.i, ptr %9, align 2
  %mul.4.i = mul i32 %add9.i, %conv.4.i
  %88 = tail call i32 @llvm.smin.i32(i32 %mul.4.i, i32 511) #7
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 %div1.i) #7
  %conv22.4.i = trunc i32 %89 to i16
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv22.4.i, ptr %3, align 2
  %mul30.4.i = mul nuw nsw i32 %conv.4.i, 4095
  %div31.4.i = udiv i32 %mul30.4.i, 100
  %cond34.4.i = select i1 %tobool.not.4.i, i32 %div1.i, i32 %div31.4.i
  %conv35.4.i = trunc i32 %cond34.4.i to i16
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv35.4.i, ptr %10, align 2
  %mul.5.i = mul i32 %add9.i, %conv.5.i
  %92 = tail call i32 @llvm.smin.i32(i32 %mul.5.i, i32 511) #7
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 %div1.i) #7
  %conv22.5.i = trunc i32 %93 to i16
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv22.5.i, ptr %4, align 2
  %mul30.5.i = mul nuw nsw i32 %conv.5.i, 4095
  %div31.5.i = udiv i32 %mul30.5.i, 100
  %cond34.5.i = select i1 %tobool.not.5.i, i32 %div1.i, i32 %div31.5.i
  %conv35.5.i = trunc i32 %cond34.5.i to i16
  %95 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv35.5.i, ptr %11, align 2
  %mul.6.i = mul i32 %add9.i, %conv.6.i
  %96 = tail call i32 @llvm.smin.i32(i32 %mul.6.i, i32 511) #7
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 %div1.i) #7
  %conv22.6.i = trunc i32 %97 to i16
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv22.6.i, ptr %5, align 2
  %mul30.6.i = mul nuw nsw i32 %conv.6.i, 4095
  %div31.6.i = udiv i32 %mul30.6.i, 100
  %cond34.6.i = select i1 %tobool.not.6.i, i32 %div1.i, i32 %div31.6.i
  %conv35.6.i = trunc i32 %cond34.6.i to i16
  %99 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv35.6.i, ptr %12, align 2
  %mul.7.i = mul i32 %add9.i, %conv.7.i
  %100 = tail call i32 @llvm.smin.i32(i32 %mul.7.i, i32 511) #7
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 %div1.i) #7
  %conv22.7.i = trunc i32 %101 to i16
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv22.7.i, ptr %6, align 2
  %mul30.7.i = mul nuw nsw i32 %conv.7.i, 4095
  %div31.7.i = udiv i32 %mul30.7.i, 100
  %cond34.7.i = select i1 %tobool.not.7.i, i32 %div1.i, i32 %div31.7.i
  %conv35.7.i = trunc i32 %cond34.7.i to i16
  %103 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv35.7.i, ptr %13, align 2
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %call11 = call i32 @ixgbe_dcb_hw_ets_config(ptr noundef %hw, ptr noundef nonnull %refill, ptr noundef nonnull %max, ptr noundef nonnull %bwg_id, ptr noundef nonnull %prio_type, ptr noundef %prio_tc)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.7 ], [ -22, %for.inc.6.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ], [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bwg_id) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prio_type) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %refill) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_dcb_hw_ets_config(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type, ptr noundef %prio_tc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.bb3_crit_edge33
    i32 4, label %entry.sw.bb3_crit_edge34
    i32 5, label %entry.sw.bb3_crit_edge35
    i32 6, label %entry.sw.bb3_crit_edge36
  ]

entry.sw.bb3_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ixgbe_dcb_config_rx_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %prio_type) #7
  %call1 = tail call i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type) #7
  %call2 = tail call i32 @ixgbe_dcb_config_tx_data_arbiter_82598(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge33, %entry.sw.bb3_crit_edge34, %entry.sw.bb3_crit_edge35, %entry.sw.bb3_crit_edge36
  %call4 = tail call i32 @ixgbe_dcb_config_rx_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type, ptr noundef %prio_tc) #7
  %call5 = tail call i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type) #7
  %call6 = tail call i32 @ixgbe_dcb_config_tx_data_arbiter_82599(ptr noundef %hw, ptr noundef %refill, ptr noundef %max, ptr noundef %bwg_id, ptr noundef %prio_type, ptr noundef %prio_tc) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_rx_arbiter_82598(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82598(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82598(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_rx_arbiter_82599(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82599(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dcb_read_rtrup2tc(ptr noundef %hw, ptr nocapture noundef writeonly %map) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12320) #7
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, 7
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %map, align 1
  %4 = lshr i8 %2, 3
  %conv.1.i = and i8 %4, 7
  %arrayidx.1.i = getelementptr i8, ptr %map, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.1.i, ptr %arrayidx.1.i, align 1
  %shr.2.i = lshr i32 %call.i, 6
  %6 = trunc i32 %shr.2.i to i8
  %conv.2.i = and i8 %6, 7
  %arrayidx.2.i = getelementptr i8, ptr %map, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.2.i, ptr %arrayidx.2.i, align 1
  %shr.3.i = lshr i32 %call.i, 9
  %8 = trunc i32 %shr.3.i to i8
  %conv.3.i = and i8 %8, 7
  %arrayidx.3.i = getelementptr i8, ptr %map, i32 3
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.3.i, ptr %arrayidx.3.i, align 1
  %shr.4.i = lshr i32 %call.i, 12
  %10 = trunc i32 %shr.4.i to i8
  %conv.4.i = and i8 %10, 7
  %arrayidx.4.i = getelementptr i8, ptr %map, i32 4
  %11 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.4.i, ptr %arrayidx.4.i, align 1
  %shr.5.i = lshr i32 %call.i, 15
  %12 = trunc i32 %shr.5.i to i8
  %conv.5.i = and i8 %12, 7
  %arrayidx.5.i = getelementptr i8, ptr %map, i32 5
  %13 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.5.i, ptr %arrayidx.5.i, align 1
  %shr.6.i = lshr i32 %call.i, 18
  %14 = trunc i32 %shr.6.i to i8
  %conv.6.i = and i8 %14, 7
  %arrayidx.6.i = getelementptr i8, ptr %map, i32 6
  %15 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.6.i, ptr %arrayidx.6.i, align 1
  %shr.7.i = lshr i32 %call.i, 21
  %16 = trunc i32 %shr.7.i to i8
  %conv.7.i = and i8 %16, 7
  %arrayidx.7.i = getelementptr i8, ptr %map, i32 7
  %17 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.7.i, ptr %arrayidx.7.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
