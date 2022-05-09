; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/goya/goya_security.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/goya/goya_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.76, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.76 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.goya_device = type { %struct.spinlock, ptr, i64, i64, i64, i64, [1024 x i32], [1024 x i32], i32, i8, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @goya_init_security(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_specific = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 35
  %0 = ptrtoint ptr %asic_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_specific, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wreg, align 4
  tail call void %5(ptr noundef %hdev, i32 noundef 4915200, i32 noundef 65535) #2
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %wreg2 = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %wreg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wreg2, align 4
  tail call void %9(ptr noundef %hdev, i32 noundef 4915332, i32 noundef 255) #2
  %hw_cap_initialized = getelementptr inbounds %struct.goya_device, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %hw_cap_initialized to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_cap_initialized, align 8
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %wreg4 = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %wreg4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wreg4, align 4
  tail call void %15(ptr noundef %hdev, i32 noundef 4915332, i32 noundef 254) #2
  %16 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %17, i32 0, i32 58
  %18 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wreg6, align 4
  tail call void %19(ptr noundef %hdev, i32 noundef 4915464, i32 noundef 0) #2
  %20 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs, align 8
  %wreg8 = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 58
  %22 = ptrtoint ptr %wreg8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wreg8, align 4
  tail call void %23(ptr noundef %hdev, i32 noundef 4915432, i32 noundef 0) #2
  %24 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs, align 8
  %wreg10 = getelementptr inbounds %struct.hl_asic_funcs, ptr %25, i32 0, i32 58
  %26 = ptrtoint ptr %wreg10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wreg10, align 4
  tail call void %27(ptr noundef %hdev, i32 noundef 4915400, i32 noundef 0) #2
  %28 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic_funcs, align 8
  %wreg12 = getelementptr inbounds %struct.hl_asic_funcs, ptr %29, i32 0, i32 58
  %30 = ptrtoint ptr %wreg12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wreg12, align 4
  tail call void %31(ptr noundef %hdev, i32 noundef 4915368, i32 noundef 1048448) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs, align 8
  %wreg14 = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 58
  %34 = ptrtoint ptr %wreg14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wreg14, align 4
  tail call void %35(ptr noundef %hdev, i32 noundef 4915468, i32 noundef 0) #2
  %36 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic_funcs, align 8
  %wreg16 = getelementptr inbounds %struct.hl_asic_funcs, ptr %37, i32 0, i32 58
  %38 = ptrtoint ptr %wreg16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wreg16, align 4
  tail call void %39(ptr noundef %hdev, i32 noundef 4915436, i32 noundef 0) #2
  %40 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic_funcs, align 8
  %wreg18 = getelementptr inbounds %struct.hl_asic_funcs, ptr %41, i32 0, i32 58
  %42 = ptrtoint ptr %wreg18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wreg18, align 4
  tail call void %43(ptr noundef %hdev, i32 noundef 4915404, i32 noundef -536870912) #2
  %44 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asic_funcs, align 8
  %wreg20 = getelementptr inbounds %struct.hl_asic_funcs, ptr %45, i32 0, i32 58
  %46 = ptrtoint ptr %wreg20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wreg20, align 4
  tail call void %47(ptr noundef %hdev, i32 noundef 4915372, i32 noundef 262143) #2
  %48 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %asic_funcs, align 8
  %wreg22 = getelementptr inbounds %struct.hl_asic_funcs, ptr %49, i32 0, i32 58
  %50 = ptrtoint ptr %wreg22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wreg22, align 4
  tail call void %51(ptr noundef %hdev, i32 noundef 4915268, i32 noundef 4456448) #2
  %52 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic_funcs, align 8
  %wreg24 = getelementptr inbounds %struct.hl_asic_funcs, ptr %53, i32 0, i32 58
  %54 = ptrtoint ptr %wreg24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wreg24, align 4
  tail call void %55(ptr noundef %hdev, i32 noundef 4915204, i32 noundef 67043328) #2
  %56 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asic_funcs, align 8
  %wreg26 = getelementptr inbounds %struct.hl_asic_funcs, ptr %57, i32 0, i32 58
  %58 = ptrtoint ptr %wreg26 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wreg26, align 4
  tail call void %59(ptr noundef %hdev, i32 noundef 4915272, i32 noundef 4718592) #2
  %60 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asic_funcs, align 8
  %wreg28 = getelementptr inbounds %struct.hl_asic_funcs, ptr %61, i32 0, i32 58
  %62 = ptrtoint ptr %wreg28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wreg28, align 4
  tail call void %63(ptr noundef %hdev, i32 noundef 4915208, i32 noundef 66584576) #2
  %64 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %asic_funcs, align 8
  %wreg30 = getelementptr inbounds %struct.hl_asic_funcs, ptr %65, i32 0, i32 58
  %66 = ptrtoint ptr %wreg30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wreg30, align 4
  tail call void %67(ptr noundef %hdev, i32 noundef 4915276, i32 noundef 6291456) #2
  %68 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %asic_funcs, align 8
  %wreg32 = getelementptr inbounds %struct.hl_asic_funcs, ptr %69, i32 0, i32 58
  %70 = ptrtoint ptr %wreg32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wreg32, align 4
  tail call void %71(ptr noundef %hdev, i32 noundef 4915212, i32 noundef 65011712) #2
  %72 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %asic_funcs, align 8
  %wreg34 = getelementptr inbounds %struct.hl_asic_funcs, ptr %73, i32 0, i32 58
  %74 = ptrtoint ptr %wreg34 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wreg34, align 4
  tail call void %75(ptr noundef %hdev, i32 noundef 4915280, i32 noundef 8388608) #2
  %76 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %asic_funcs, align 8
  %wreg36 = getelementptr inbounds %struct.hl_asic_funcs, ptr %77, i32 0, i32 58
  %78 = ptrtoint ptr %wreg36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wreg36, align 4
  tail call void %79(ptr noundef %hdev, i32 noundef 4915216, i32 noundef 66060288) #2
  %80 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %asic_funcs, align 8
  %wreg38 = getelementptr inbounds %struct.hl_asic_funcs, ptr %81, i32 0, i32 58
  %82 = ptrtoint ptr %wreg38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wreg38, align 4
  tail call void %83(ptr noundef %hdev, i32 noundef 4915284, i32 noundef 12591104) #2
  %84 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %asic_funcs, align 8
  %wreg40 = getelementptr inbounds %struct.hl_asic_funcs, ptr %85, i32 0, i32 58
  %86 = ptrtoint ptr %wreg40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wreg40, align 4
  tail call void %87(ptr noundef %hdev, i32 noundef 4915220, i32 noundef 67104768) #2
  %88 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %asic_funcs, align 8
  %wreg42 = getelementptr inbounds %struct.hl_asic_funcs, ptr %89, i32 0, i32 58
  %90 = ptrtoint ptr %wreg42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wreg42, align 4
  tail call void %91(ptr noundef %hdev, i32 noundef 4915288, i32 noundef 12845056) #2
  %92 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic_funcs, align 8
  %wreg44 = getelementptr inbounds %struct.hl_asic_funcs, ptr %93, i32 0, i32 58
  %94 = ptrtoint ptr %wreg44 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wreg44, align 4
  tail call void %95(ptr noundef %hdev, i32 noundef 4915224, i32 noundef 67076096) #2
  %96 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %asic_funcs, align 8
  %wreg46 = getelementptr inbounds %struct.hl_asic_funcs, ptr %97, i32 0, i32 58
  %98 = ptrtoint ptr %wreg46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wreg46, align 4
  tail call void %99(ptr noundef %hdev, i32 noundef 4915292, i32 noundef 12877824) #2
  %100 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %asic_funcs, align 8
  %wreg48 = getelementptr inbounds %struct.hl_asic_funcs, ptr %101, i32 0, i32 58
  %102 = ptrtoint ptr %wreg48 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wreg48, align 4
  tail call void %103(ptr noundef %hdev, i32 noundef 4915228, i32 noundef 67104768) #2
  %104 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %asic_funcs, align 8
  %wreg50 = getelementptr inbounds %struct.hl_asic_funcs, ptr %105, i32 0, i32 58
  %106 = ptrtoint ptr %wreg50 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wreg50, align 4
  tail call void %107(ptr noundef %hdev, i32 noundef 4915296, i32 noundef 12886016) #2
  %108 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %asic_funcs, align 8
  %wreg52 = getelementptr inbounds %struct.hl_asic_funcs, ptr %109, i32 0, i32 58
  %110 = ptrtoint ptr %wreg52 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wreg52, align 4
  tail call void %111(ptr noundef %hdev, i32 noundef 4915232, i32 noundef 67100672) #2
  %112 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %asic_funcs, align 8
  %wreg54 = getelementptr inbounds %struct.hl_asic_funcs, ptr %113, i32 0, i32 58
  %114 = ptrtoint ptr %wreg54 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wreg54, align 4
  tail call void %115(ptr noundef %hdev, i32 noundef 4915300, i32 noundef 12894208) #2
  %116 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %asic_funcs, align 8
  %wreg56 = getelementptr inbounds %struct.hl_asic_funcs, ptr %117, i32 0, i32 58
  %118 = ptrtoint ptr %wreg56 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wreg56, align 4
  tail call void %119(ptr noundef %hdev, i32 noundef 4915236, i32 noundef 67092480) #2
  %120 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %asic_funcs, align 8
  %wreg58 = getelementptr inbounds %struct.hl_asic_funcs, ptr %121, i32 0, i32 58
  %122 = ptrtoint ptr %wreg58 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wreg58, align 4
  tail call void %123(ptr noundef %hdev, i32 noundef 4915304, i32 noundef 12910592) #2
  %124 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %asic_funcs, align 8
  %wreg60 = getelementptr inbounds %struct.hl_asic_funcs, ptr %125, i32 0, i32 58
  %126 = ptrtoint ptr %wreg60 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wreg60, align 4
  tail call void %127(ptr noundef %hdev, i32 noundef 4915240, i32 noundef 67043328) #2
  %128 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %asic_funcs, align 8
  %wreg62 = getelementptr inbounds %struct.hl_asic_funcs, ptr %129, i32 0, i32 58
  %130 = ptrtoint ptr %wreg62 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wreg62, align 4
  tail call void %131(ptr noundef %hdev, i32 noundef 4915308, i32 noundef 12976128) #2
  %132 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %asic_funcs, align 8
  %wreg64 = getelementptr inbounds %struct.hl_asic_funcs, ptr %133, i32 0, i32 58
  %134 = ptrtoint ptr %wreg64 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wreg64, align 4
  tail call void %135(ptr noundef %hdev, i32 noundef 4915244, i32 noundef 66977792) #2
  %136 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %asic_funcs, align 8
  %wreg66 = getelementptr inbounds %struct.hl_asic_funcs, ptr %137, i32 0, i32 58
  %138 = ptrtoint ptr %wreg66 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wreg66, align 4
  tail call void %139(ptr noundef %hdev, i32 noundef 4915312, i32 noundef 14688256) #2
  %140 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asic_funcs, align 8
  %wreg68 = getelementptr inbounds %struct.hl_asic_funcs, ptr %141, i32 0, i32 58
  %142 = ptrtoint ptr %wreg68 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wreg68, align 4
  tail call void %143(ptr noundef %hdev, i32 noundef 4915248, i32 noundef 67100672) #2
  %144 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %asic_funcs, align 8
  %wreg70 = getelementptr inbounds %struct.hl_asic_funcs, ptr %145, i32 0, i32 58
  %146 = ptrtoint ptr %wreg70 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wreg70, align 4
  tail call void %147(ptr noundef %hdev, i32 noundef 4915316, i32 noundef 38289408) #2
  %148 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %asic_funcs, align 8
  %wreg72 = getelementptr inbounds %struct.hl_asic_funcs, ptr %149, i32 0, i32 58
  %150 = ptrtoint ptr %wreg72 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wreg72, align 4
  tail call void %151(ptr noundef %hdev, i32 noundef 4915252, i32 noundef 67104768) #2
  %152 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %asic_funcs, align 8
  %wreg74 = getelementptr inbounds %struct.hl_asic_funcs, ptr %153, i32 0, i32 58
  %154 = ptrtoint ptr %wreg74 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wreg74, align 4
  tail call void %155(ptr noundef %hdev, i32 noundef 4915320, i32 noundef 46411776) #2
  %156 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %asic_funcs, align 8
  %wreg76 = getelementptr inbounds %struct.hl_asic_funcs, ptr %157, i32 0, i32 58
  %158 = ptrtoint ptr %wreg76 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wreg76, align 4
  tail call void %159(ptr noundef %hdev, i32 noundef 4915256, i32 noundef 67104768) #2
  %160 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %asic_funcs, align 8
  %wreg78 = getelementptr inbounds %struct.hl_asic_funcs, ptr %161, i32 0, i32 58
  %162 = ptrtoint ptr %wreg78 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wreg78, align 4
  tail call void %163(ptr noundef %hdev, i32 noundef 263424, i32 noundef 65535) #2
  %164 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %asic_funcs, align 8
  %wreg80 = getelementptr inbounds %struct.hl_asic_funcs, ptr %165, i32 0, i32 58
  %166 = ptrtoint ptr %wreg80 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wreg80, align 4
  tail call void %167(ptr noundef %hdev, i32 noundef 525568, i32 noundef 65535) #2
  %168 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %asic_funcs, align 8
  %wreg82 = getelementptr inbounds %struct.hl_asic_funcs, ptr %169, i32 0, i32 58
  %170 = ptrtoint ptr %wreg82 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wreg82, align 4
  tail call void %171(ptr noundef %hdev, i32 noundef 787712, i32 noundef 65535) #2
  %172 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %asic_funcs, align 8
  %wreg84 = getelementptr inbounds %struct.hl_asic_funcs, ptr %173, i32 0, i32 58
  %174 = ptrtoint ptr %wreg84 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wreg84, align 4
  tail call void %175(ptr noundef %hdev, i32 noundef 1049856, i32 noundef 65535) #2
  %176 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %asic_funcs, align 8
  %wreg86 = getelementptr inbounds %struct.hl_asic_funcs, ptr %177, i32 0, i32 58
  %178 = ptrtoint ptr %wreg86 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wreg86, align 4
  tail call void %179(ptr noundef %hdev, i32 noundef 1312000, i32 noundef 65535) #2
  %180 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %asic_funcs, align 8
  %wreg88 = getelementptr inbounds %struct.hl_asic_funcs, ptr %181, i32 0, i32 58
  %182 = ptrtoint ptr %wreg88 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wreg88, align 4
  tail call void %183(ptr noundef %hdev, i32 noundef 1574144, i32 noundef 65535) #2
  %184 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %asic_funcs, align 8
  %wreg90 = getelementptr inbounds %struct.hl_asic_funcs, ptr %185, i32 0, i32 58
  %186 = ptrtoint ptr %wreg90 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wreg90, align 4
  tail call void %187(ptr noundef %hdev, i32 noundef 263280, i32 noundef 254) #2
  %188 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %asic_funcs, align 8
  %wreg92 = getelementptr inbounds %struct.hl_asic_funcs, ptr %189, i32 0, i32 58
  %190 = ptrtoint ptr %wreg92 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wreg92, align 4
  tail call void %191(ptr noundef %hdev, i32 noundef 525424, i32 noundef 254) #2
  %192 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %asic_funcs, align 8
  %wreg94 = getelementptr inbounds %struct.hl_asic_funcs, ptr %193, i32 0, i32 58
  %194 = ptrtoint ptr %wreg94 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wreg94, align 4
  tail call void %195(ptr noundef %hdev, i32 noundef 787568, i32 noundef 254) #2
  %196 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %asic_funcs, align 8
  %wreg96 = getelementptr inbounds %struct.hl_asic_funcs, ptr %197, i32 0, i32 58
  %198 = ptrtoint ptr %wreg96 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wreg96, align 4
  tail call void %199(ptr noundef %hdev, i32 noundef 1049712, i32 noundef 254) #2
  %200 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %asic_funcs, align 8
  %wreg98 = getelementptr inbounds %struct.hl_asic_funcs, ptr %201, i32 0, i32 58
  %202 = ptrtoint ptr %wreg98 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wreg98, align 4
  tail call void %203(ptr noundef %hdev, i32 noundef 1311856, i32 noundef 254) #2
  %204 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %asic_funcs, align 8
  %wreg100 = getelementptr inbounds %struct.hl_asic_funcs, ptr %205, i32 0, i32 58
  %206 = ptrtoint ptr %wreg100 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wreg100, align 4
  tail call void %207(ptr noundef %hdev, i32 noundef 1574000, i32 noundef 254) #2
  %208 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %asic_funcs, align 8
  %wreg102 = getelementptr inbounds %struct.hl_asic_funcs, ptr %209, i32 0, i32 58
  %210 = ptrtoint ptr %wreg102 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %wreg102, align 4
  tail call void %211(ptr noundef %hdev, i32 noundef 263360, i32 noundef 0) #2
  %212 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %asic_funcs, align 8
  %wreg104 = getelementptr inbounds %struct.hl_asic_funcs, ptr %213, i32 0, i32 58
  %214 = ptrtoint ptr %wreg104 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %wreg104, align 4
  tail call void %215(ptr noundef %hdev, i32 noundef 263392, i32 noundef 0) #2
  %216 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %asic_funcs, align 8
  %wreg106 = getelementptr inbounds %struct.hl_asic_funcs, ptr %217, i32 0, i32 58
  %218 = ptrtoint ptr %wreg106 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wreg106, align 4
  tail call void %219(ptr noundef %hdev, i32 noundef 263296, i32 noundef 0) #2
  %220 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %asic_funcs, align 8
  %wreg108 = getelementptr inbounds %struct.hl_asic_funcs, ptr %221, i32 0, i32 58
  %222 = ptrtoint ptr %wreg108 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wreg108, align 4
  tail call void %223(ptr noundef %hdev, i32 noundef 263328, i32 noundef 1048448) #2
  %224 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %asic_funcs, align 8
  %wreg110 = getelementptr inbounds %struct.hl_asic_funcs, ptr %225, i32 0, i32 58
  %226 = ptrtoint ptr %wreg110 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %wreg110, align 4
  tail call void %227(ptr noundef %hdev, i32 noundef 525504, i32 noundef 0) #2
  %228 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %asic_funcs, align 8
  %wreg112 = getelementptr inbounds %struct.hl_asic_funcs, ptr %229, i32 0, i32 58
  %230 = ptrtoint ptr %wreg112 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %wreg112, align 4
  tail call void %231(ptr noundef %hdev, i32 noundef 525536, i32 noundef 0) #2
  %232 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %asic_funcs, align 8
  %wreg114 = getelementptr inbounds %struct.hl_asic_funcs, ptr %233, i32 0, i32 58
  %234 = ptrtoint ptr %wreg114 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wreg114, align 4
  tail call void %235(ptr noundef %hdev, i32 noundef 525440, i32 noundef 0) #2
  %236 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %asic_funcs, align 8
  %wreg116 = getelementptr inbounds %struct.hl_asic_funcs, ptr %237, i32 0, i32 58
  %238 = ptrtoint ptr %wreg116 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %wreg116, align 4
  tail call void %239(ptr noundef %hdev, i32 noundef 525472, i32 noundef 1048448) #2
  %240 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %asic_funcs, align 8
  %wreg118 = getelementptr inbounds %struct.hl_asic_funcs, ptr %241, i32 0, i32 58
  %242 = ptrtoint ptr %wreg118 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wreg118, align 4
  tail call void %243(ptr noundef %hdev, i32 noundef 787648, i32 noundef 0) #2
  %244 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %asic_funcs, align 8
  %wreg120 = getelementptr inbounds %struct.hl_asic_funcs, ptr %245, i32 0, i32 58
  %246 = ptrtoint ptr %wreg120 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wreg120, align 4
  tail call void %247(ptr noundef %hdev, i32 noundef 787680, i32 noundef 0) #2
  %248 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %asic_funcs, align 8
  %wreg122 = getelementptr inbounds %struct.hl_asic_funcs, ptr %249, i32 0, i32 58
  %250 = ptrtoint ptr %wreg122 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wreg122, align 4
  tail call void %251(ptr noundef %hdev, i32 noundef 787584, i32 noundef 0) #2
  %252 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %asic_funcs, align 8
  %wreg124 = getelementptr inbounds %struct.hl_asic_funcs, ptr %253, i32 0, i32 58
  %254 = ptrtoint ptr %wreg124 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wreg124, align 4
  tail call void %255(ptr noundef %hdev, i32 noundef 787616, i32 noundef 1048448) #2
  %256 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %asic_funcs, align 8
  %wreg126 = getelementptr inbounds %struct.hl_asic_funcs, ptr %257, i32 0, i32 58
  %258 = ptrtoint ptr %wreg126 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wreg126, align 4
  tail call void %259(ptr noundef %hdev, i32 noundef 1049792, i32 noundef 0) #2
  %260 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %asic_funcs, align 8
  %wreg128 = getelementptr inbounds %struct.hl_asic_funcs, ptr %261, i32 0, i32 58
  %262 = ptrtoint ptr %wreg128 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %wreg128, align 4
  tail call void %263(ptr noundef %hdev, i32 noundef 1049824, i32 noundef 0) #2
  %264 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %asic_funcs, align 8
  %wreg130 = getelementptr inbounds %struct.hl_asic_funcs, ptr %265, i32 0, i32 58
  %266 = ptrtoint ptr %wreg130 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wreg130, align 4
  tail call void %267(ptr noundef %hdev, i32 noundef 1049728, i32 noundef 0) #2
  %268 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %asic_funcs, align 8
  %wreg132 = getelementptr inbounds %struct.hl_asic_funcs, ptr %269, i32 0, i32 58
  %270 = ptrtoint ptr %wreg132 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wreg132, align 4
  tail call void %271(ptr noundef %hdev, i32 noundef 1049760, i32 noundef 1048448) #2
  %272 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %asic_funcs, align 8
  %wreg134 = getelementptr inbounds %struct.hl_asic_funcs, ptr %273, i32 0, i32 58
  %274 = ptrtoint ptr %wreg134 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %wreg134, align 4
  tail call void %275(ptr noundef %hdev, i32 noundef 1311936, i32 noundef 0) #2
  %276 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %asic_funcs, align 8
  %wreg136 = getelementptr inbounds %struct.hl_asic_funcs, ptr %277, i32 0, i32 58
  %278 = ptrtoint ptr %wreg136 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wreg136, align 4
  tail call void %279(ptr noundef %hdev, i32 noundef 1311968, i32 noundef 0) #2
  %280 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %asic_funcs, align 8
  %wreg138 = getelementptr inbounds %struct.hl_asic_funcs, ptr %281, i32 0, i32 58
  %282 = ptrtoint ptr %wreg138 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wreg138, align 4
  tail call void %283(ptr noundef %hdev, i32 noundef 1311872, i32 noundef 0) #2
  %284 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %asic_funcs, align 8
  %wreg140 = getelementptr inbounds %struct.hl_asic_funcs, ptr %285, i32 0, i32 58
  %286 = ptrtoint ptr %wreg140 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %wreg140, align 4
  tail call void %287(ptr noundef %hdev, i32 noundef 1311904, i32 noundef 1048448) #2
  %288 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %asic_funcs, align 8
  %wreg142 = getelementptr inbounds %struct.hl_asic_funcs, ptr %289, i32 0, i32 58
  %290 = ptrtoint ptr %wreg142 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wreg142, align 4
  tail call void %291(ptr noundef %hdev, i32 noundef 1574080, i32 noundef 0) #2
  %292 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %asic_funcs, align 8
  %wreg144 = getelementptr inbounds %struct.hl_asic_funcs, ptr %293, i32 0, i32 58
  %294 = ptrtoint ptr %wreg144 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %wreg144, align 4
  tail call void %295(ptr noundef %hdev, i32 noundef 1574112, i32 noundef 0) #2
  %296 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %asic_funcs, align 8
  %wreg146 = getelementptr inbounds %struct.hl_asic_funcs, ptr %297, i32 0, i32 58
  %298 = ptrtoint ptr %wreg146 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %wreg146, align 4
  tail call void %299(ptr noundef %hdev, i32 noundef 1574016, i32 noundef 0) #2
  %300 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %asic_funcs, align 8
  %wreg148 = getelementptr inbounds %struct.hl_asic_funcs, ptr %301, i32 0, i32 58
  %302 = ptrtoint ptr %wreg148 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wreg148, align 4
  tail call void %303(ptr noundef %hdev, i32 noundef 1574048, i32 noundef 1048448) #2
  %304 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %asic_funcs, align 8
  %wreg150 = getelementptr inbounds %struct.hl_asic_funcs, ptr %305, i32 0, i32 58
  %306 = ptrtoint ptr %wreg150 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %wreg150, align 4
  tail call void %307(ptr noundef %hdev, i32 noundef 263364, i32 noundef 0) #2
  %308 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %asic_funcs, align 8
  %wreg152 = getelementptr inbounds %struct.hl_asic_funcs, ptr %309, i32 0, i32 58
  %310 = ptrtoint ptr %wreg152 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %wreg152, align 4
  tail call void %311(ptr noundef %hdev, i32 noundef 263396, i32 noundef 0) #2
  %312 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %asic_funcs, align 8
  %wreg154 = getelementptr inbounds %struct.hl_asic_funcs, ptr %313, i32 0, i32 58
  %314 = ptrtoint ptr %wreg154 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %wreg154, align 4
  tail call void %315(ptr noundef %hdev, i32 noundef 263300, i32 noundef -536870912) #2
  %316 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %asic_funcs, align 8
  %wreg156 = getelementptr inbounds %struct.hl_asic_funcs, ptr %317, i32 0, i32 58
  %318 = ptrtoint ptr %wreg156 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %wreg156, align 4
  tail call void %319(ptr noundef %hdev, i32 noundef 263332, i32 noundef 262143) #2
  %320 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %asic_funcs, align 8
  %wreg158 = getelementptr inbounds %struct.hl_asic_funcs, ptr %321, i32 0, i32 58
  %322 = ptrtoint ptr %wreg158 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %wreg158, align 4
  tail call void %323(ptr noundef %hdev, i32 noundef 525508, i32 noundef 0) #2
  %324 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %asic_funcs, align 8
  %wreg160 = getelementptr inbounds %struct.hl_asic_funcs, ptr %325, i32 0, i32 58
  %326 = ptrtoint ptr %wreg160 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %wreg160, align 4
  tail call void %327(ptr noundef %hdev, i32 noundef 525540, i32 noundef 0) #2
  %328 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %asic_funcs, align 8
  %wreg162 = getelementptr inbounds %struct.hl_asic_funcs, ptr %329, i32 0, i32 58
  %330 = ptrtoint ptr %wreg162 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %wreg162, align 4
  tail call void %331(ptr noundef %hdev, i32 noundef 525444, i32 noundef -536870912) #2
  %332 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %asic_funcs, align 8
  %wreg164 = getelementptr inbounds %struct.hl_asic_funcs, ptr %333, i32 0, i32 58
  %334 = ptrtoint ptr %wreg164 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %wreg164, align 4
  tail call void %335(ptr noundef %hdev, i32 noundef 525476, i32 noundef 262143) #2
  %336 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %asic_funcs, align 8
  %wreg166 = getelementptr inbounds %struct.hl_asic_funcs, ptr %337, i32 0, i32 58
  %338 = ptrtoint ptr %wreg166 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %wreg166, align 4
  tail call void %339(ptr noundef %hdev, i32 noundef 787652, i32 noundef 0) #2
  %340 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %asic_funcs, align 8
  %wreg168 = getelementptr inbounds %struct.hl_asic_funcs, ptr %341, i32 0, i32 58
  %342 = ptrtoint ptr %wreg168 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %wreg168, align 4
  tail call void %343(ptr noundef %hdev, i32 noundef 787684, i32 noundef 0) #2
  %344 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %asic_funcs, align 8
  %wreg170 = getelementptr inbounds %struct.hl_asic_funcs, ptr %345, i32 0, i32 58
  %346 = ptrtoint ptr %wreg170 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %wreg170, align 4
  tail call void %347(ptr noundef %hdev, i32 noundef 787588, i32 noundef -536870912) #2
  %348 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %asic_funcs, align 8
  %wreg172 = getelementptr inbounds %struct.hl_asic_funcs, ptr %349, i32 0, i32 58
  %350 = ptrtoint ptr %wreg172 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %wreg172, align 4
  tail call void %351(ptr noundef %hdev, i32 noundef 787620, i32 noundef 262143) #2
  %352 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %asic_funcs, align 8
  %wreg174 = getelementptr inbounds %struct.hl_asic_funcs, ptr %353, i32 0, i32 58
  %354 = ptrtoint ptr %wreg174 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %wreg174, align 4
  tail call void %355(ptr noundef %hdev, i32 noundef 1049796, i32 noundef 0) #2
  %356 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %asic_funcs, align 8
  %wreg176 = getelementptr inbounds %struct.hl_asic_funcs, ptr %357, i32 0, i32 58
  %358 = ptrtoint ptr %wreg176 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %wreg176, align 4
  tail call void %359(ptr noundef %hdev, i32 noundef 1049828, i32 noundef 0) #2
  %360 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %asic_funcs, align 8
  %wreg178 = getelementptr inbounds %struct.hl_asic_funcs, ptr %361, i32 0, i32 58
  %362 = ptrtoint ptr %wreg178 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %wreg178, align 4
  tail call void %363(ptr noundef %hdev, i32 noundef 1049732, i32 noundef -536870912) #2
  %364 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %asic_funcs, align 8
  %wreg180 = getelementptr inbounds %struct.hl_asic_funcs, ptr %365, i32 0, i32 58
  %366 = ptrtoint ptr %wreg180 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %wreg180, align 4
  tail call void %367(ptr noundef %hdev, i32 noundef 1049764, i32 noundef 262143) #2
  %368 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %asic_funcs, align 8
  %wreg182 = getelementptr inbounds %struct.hl_asic_funcs, ptr %369, i32 0, i32 58
  %370 = ptrtoint ptr %wreg182 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %wreg182, align 4
  tail call void %371(ptr noundef %hdev, i32 noundef 1311940, i32 noundef 0) #2
  %372 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %asic_funcs, align 8
  %wreg184 = getelementptr inbounds %struct.hl_asic_funcs, ptr %373, i32 0, i32 58
  %374 = ptrtoint ptr %wreg184 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %wreg184, align 4
  tail call void %375(ptr noundef %hdev, i32 noundef 1311972, i32 noundef 0) #2
  %376 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %asic_funcs, align 8
  %wreg186 = getelementptr inbounds %struct.hl_asic_funcs, ptr %377, i32 0, i32 58
  %378 = ptrtoint ptr %wreg186 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %wreg186, align 4
  tail call void %379(ptr noundef %hdev, i32 noundef 1311876, i32 noundef -536870912) #2
  %380 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %asic_funcs, align 8
  %wreg188 = getelementptr inbounds %struct.hl_asic_funcs, ptr %381, i32 0, i32 58
  %382 = ptrtoint ptr %wreg188 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %wreg188, align 4
  tail call void %383(ptr noundef %hdev, i32 noundef 1311908, i32 noundef 262143) #2
  %384 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %asic_funcs, align 8
  %wreg190 = getelementptr inbounds %struct.hl_asic_funcs, ptr %385, i32 0, i32 58
  %386 = ptrtoint ptr %wreg190 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %wreg190, align 4
  tail call void %387(ptr noundef %hdev, i32 noundef 1574084, i32 noundef 0) #2
  %388 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %asic_funcs, align 8
  %wreg192 = getelementptr inbounds %struct.hl_asic_funcs, ptr %389, i32 0, i32 58
  %390 = ptrtoint ptr %wreg192 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %wreg192, align 4
  tail call void %391(ptr noundef %hdev, i32 noundef 1574116, i32 noundef 0) #2
  %392 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %asic_funcs, align 8
  %wreg194 = getelementptr inbounds %struct.hl_asic_funcs, ptr %393, i32 0, i32 58
  %394 = ptrtoint ptr %wreg194 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %wreg194, align 4
  tail call void %395(ptr noundef %hdev, i32 noundef 1574020, i32 noundef -536870912) #2
  %396 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %asic_funcs, align 8
  %wreg196 = getelementptr inbounds %struct.hl_asic_funcs, ptr %397, i32 0, i32 58
  %398 = ptrtoint ptr %wreg196 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %wreg196, align 4
  tail call void %399(ptr noundef %hdev, i32 noundef 1574052, i32 noundef 262143) #2
  %400 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %asic_funcs, align 8
  %wreg198 = getelementptr inbounds %struct.hl_asic_funcs, ptr %401, i32 0, i32 58
  %402 = ptrtoint ptr %wreg198 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %wreg198, align 4
  tail call void %403(ptr noundef %hdev, i32 noundef 263504, i32 noundef 4456448) #2
  %404 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %asic_funcs, align 8
  %wreg200 = getelementptr inbounds %struct.hl_asic_funcs, ptr %405, i32 0, i32 58
  %406 = ptrtoint ptr %wreg200 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %wreg200, align 4
  tail call void %407(ptr noundef %hdev, i32 noundef 263440, i32 noundef 67043328) #2
  %408 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %asic_funcs, align 8
  %wreg202 = getelementptr inbounds %struct.hl_asic_funcs, ptr %409, i32 0, i32 58
  %410 = ptrtoint ptr %wreg202 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %wreg202, align 4
  tail call void %411(ptr noundef %hdev, i32 noundef 263508, i32 noundef 4718592) #2
  %412 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %asic_funcs, align 8
  %wreg204 = getelementptr inbounds %struct.hl_asic_funcs, ptr %413, i32 0, i32 58
  %414 = ptrtoint ptr %wreg204 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %wreg204, align 4
  tail call void %415(ptr noundef %hdev, i32 noundef 263444, i32 noundef 66584576) #2
  %416 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %asic_funcs, align 8
  %wreg206 = getelementptr inbounds %struct.hl_asic_funcs, ptr %417, i32 0, i32 58
  %418 = ptrtoint ptr %wreg206 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %wreg206, align 4
  tail call void %419(ptr noundef %hdev, i32 noundef 263512, i32 noundef 6291456) #2
  %420 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %asic_funcs, align 8
  %wreg208 = getelementptr inbounds %struct.hl_asic_funcs, ptr %421, i32 0, i32 58
  %422 = ptrtoint ptr %wreg208 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %wreg208, align 4
  tail call void %423(ptr noundef %hdev, i32 noundef 263448, i32 noundef 65011712) #2
  %424 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %asic_funcs, align 8
  %wreg210 = getelementptr inbounds %struct.hl_asic_funcs, ptr %425, i32 0, i32 58
  %426 = ptrtoint ptr %wreg210 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %wreg210, align 4
  tail call void %427(ptr noundef %hdev, i32 noundef 263516, i32 noundef 8388608) #2
  %428 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %asic_funcs, align 8
  %wreg212 = getelementptr inbounds %struct.hl_asic_funcs, ptr %429, i32 0, i32 58
  %430 = ptrtoint ptr %wreg212 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %wreg212, align 4
  tail call void %431(ptr noundef %hdev, i32 noundef 263452, i32 noundef 66060288) #2
  %432 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %asic_funcs, align 8
  %wreg214 = getelementptr inbounds %struct.hl_asic_funcs, ptr %433, i32 0, i32 58
  %434 = ptrtoint ptr %wreg214 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %wreg214, align 4
  tail call void %435(ptr noundef %hdev, i32 noundef 263520, i32 noundef 12591104) #2
  %436 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %asic_funcs, align 8
  %wreg216 = getelementptr inbounds %struct.hl_asic_funcs, ptr %437, i32 0, i32 58
  %438 = ptrtoint ptr %wreg216 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %wreg216, align 4
  tail call void %439(ptr noundef %hdev, i32 noundef 263456, i32 noundef 67104768) #2
  %440 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %asic_funcs, align 8
  %wreg218 = getelementptr inbounds %struct.hl_asic_funcs, ptr %441, i32 0, i32 58
  %442 = ptrtoint ptr %wreg218 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %wreg218, align 4
  tail call void %443(ptr noundef %hdev, i32 noundef 263524, i32 noundef 12845056) #2
  %444 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %asic_funcs, align 8
  %wreg220 = getelementptr inbounds %struct.hl_asic_funcs, ptr %445, i32 0, i32 58
  %446 = ptrtoint ptr %wreg220 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %wreg220, align 4
  tail call void %447(ptr noundef %hdev, i32 noundef 263460, i32 noundef 67076096) #2
  %448 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %asic_funcs, align 8
  %wreg222 = getelementptr inbounds %struct.hl_asic_funcs, ptr %449, i32 0, i32 58
  %450 = ptrtoint ptr %wreg222 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %wreg222, align 4
  tail call void %451(ptr noundef %hdev, i32 noundef 263528, i32 noundef 12877824) #2
  %452 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %asic_funcs, align 8
  %wreg224 = getelementptr inbounds %struct.hl_asic_funcs, ptr %453, i32 0, i32 58
  %454 = ptrtoint ptr %wreg224 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %wreg224, align 4
  tail call void %455(ptr noundef %hdev, i32 noundef 263464, i32 noundef 67104768) #2
  %456 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %asic_funcs, align 8
  %wreg226 = getelementptr inbounds %struct.hl_asic_funcs, ptr %457, i32 0, i32 58
  %458 = ptrtoint ptr %wreg226 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %wreg226, align 4
  tail call void %459(ptr noundef %hdev, i32 noundef 263532, i32 noundef 12886016) #2
  %460 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %asic_funcs, align 8
  %wreg228 = getelementptr inbounds %struct.hl_asic_funcs, ptr %461, i32 0, i32 58
  %462 = ptrtoint ptr %wreg228 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %wreg228, align 4
  tail call void %463(ptr noundef %hdev, i32 noundef 263468, i32 noundef 67100672) #2
  %464 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %asic_funcs, align 8
  %wreg230 = getelementptr inbounds %struct.hl_asic_funcs, ptr %465, i32 0, i32 58
  %466 = ptrtoint ptr %wreg230 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %wreg230, align 4
  tail call void %467(ptr noundef %hdev, i32 noundef 263536, i32 noundef 12894208) #2
  %468 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %asic_funcs, align 8
  %wreg232 = getelementptr inbounds %struct.hl_asic_funcs, ptr %469, i32 0, i32 58
  %470 = ptrtoint ptr %wreg232 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %wreg232, align 4
  tail call void %471(ptr noundef %hdev, i32 noundef 263472, i32 noundef 67092480) #2
  %472 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %asic_funcs, align 8
  %wreg234 = getelementptr inbounds %struct.hl_asic_funcs, ptr %473, i32 0, i32 58
  %474 = ptrtoint ptr %wreg234 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %wreg234, align 4
  tail call void %475(ptr noundef %hdev, i32 noundef 263540, i32 noundef 12910592) #2
  %476 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %asic_funcs, align 8
  %wreg236 = getelementptr inbounds %struct.hl_asic_funcs, ptr %477, i32 0, i32 58
  %478 = ptrtoint ptr %wreg236 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %wreg236, align 4
  tail call void %479(ptr noundef %hdev, i32 noundef 263476, i32 noundef 67043328) #2
  %480 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %asic_funcs, align 8
  %wreg238 = getelementptr inbounds %struct.hl_asic_funcs, ptr %481, i32 0, i32 58
  %482 = ptrtoint ptr %wreg238 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %wreg238, align 4
  tail call void %483(ptr noundef %hdev, i32 noundef 263544, i32 noundef 12976128) #2
  %484 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %asic_funcs, align 8
  %wreg240 = getelementptr inbounds %struct.hl_asic_funcs, ptr %485, i32 0, i32 58
  %486 = ptrtoint ptr %wreg240 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %wreg240, align 4
  tail call void %487(ptr noundef %hdev, i32 noundef 263480, i32 noundef 66977792) #2
  %488 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %asic_funcs, align 8
  %wreg242 = getelementptr inbounds %struct.hl_asic_funcs, ptr %489, i32 0, i32 58
  %490 = ptrtoint ptr %wreg242 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %wreg242, align 4
  tail call void %491(ptr noundef %hdev, i32 noundef 263548, i32 noundef 14688256) #2
  %492 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %asic_funcs, align 8
  %wreg244 = getelementptr inbounds %struct.hl_asic_funcs, ptr %493, i32 0, i32 58
  %494 = ptrtoint ptr %wreg244 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %wreg244, align 4
  tail call void %495(ptr noundef %hdev, i32 noundef 263484, i32 noundef 67100672) #2
  %496 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %asic_funcs, align 8
  %wreg246 = getelementptr inbounds %struct.hl_asic_funcs, ptr %497, i32 0, i32 58
  %498 = ptrtoint ptr %wreg246 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %wreg246, align 4
  tail call void %499(ptr noundef %hdev, i32 noundef 263552, i32 noundef 38289408) #2
  %500 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %asic_funcs, align 8
  %wreg248 = getelementptr inbounds %struct.hl_asic_funcs, ptr %501, i32 0, i32 58
  %502 = ptrtoint ptr %wreg248 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %wreg248, align 4
  tail call void %503(ptr noundef %hdev, i32 noundef 263488, i32 noundef 67104768) #2
  %504 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %asic_funcs, align 8
  %wreg250 = getelementptr inbounds %struct.hl_asic_funcs, ptr %505, i32 0, i32 58
  %506 = ptrtoint ptr %wreg250 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %wreg250, align 4
  tail call void %507(ptr noundef %hdev, i32 noundef 263556, i32 noundef 46411776) #2
  %508 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %asic_funcs, align 8
  %wreg252 = getelementptr inbounds %struct.hl_asic_funcs, ptr %509, i32 0, i32 58
  %510 = ptrtoint ptr %wreg252 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %wreg252, align 4
  tail call void %511(ptr noundef %hdev, i32 noundef 263492, i32 noundef 67104768) #2
  %512 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %asic_funcs, align 8
  %wreg254 = getelementptr inbounds %struct.hl_asic_funcs, ptr %513, i32 0, i32 58
  %514 = ptrtoint ptr %wreg254 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %wreg254, align 4
  tail call void %515(ptr noundef %hdev, i32 noundef 525648, i32 noundef 4456448) #2
  %516 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %asic_funcs, align 8
  %wreg256 = getelementptr inbounds %struct.hl_asic_funcs, ptr %517, i32 0, i32 58
  %518 = ptrtoint ptr %wreg256 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %wreg256, align 4
  tail call void %519(ptr noundef %hdev, i32 noundef 525584, i32 noundef 67043328) #2
  %520 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %asic_funcs, align 8
  %wreg258 = getelementptr inbounds %struct.hl_asic_funcs, ptr %521, i32 0, i32 58
  %522 = ptrtoint ptr %wreg258 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %wreg258, align 4
  tail call void %523(ptr noundef %hdev, i32 noundef 525652, i32 noundef 4718592) #2
  %524 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %asic_funcs, align 8
  %wreg260 = getelementptr inbounds %struct.hl_asic_funcs, ptr %525, i32 0, i32 58
  %526 = ptrtoint ptr %wreg260 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %wreg260, align 4
  tail call void %527(ptr noundef %hdev, i32 noundef 525588, i32 noundef 66584576) #2
  %528 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %asic_funcs, align 8
  %wreg262 = getelementptr inbounds %struct.hl_asic_funcs, ptr %529, i32 0, i32 58
  %530 = ptrtoint ptr %wreg262 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %wreg262, align 4
  tail call void %531(ptr noundef %hdev, i32 noundef 525656, i32 noundef 6291456) #2
  %532 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %asic_funcs, align 8
  %wreg264 = getelementptr inbounds %struct.hl_asic_funcs, ptr %533, i32 0, i32 58
  %534 = ptrtoint ptr %wreg264 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %wreg264, align 4
  tail call void %535(ptr noundef %hdev, i32 noundef 525592, i32 noundef 65011712) #2
  %536 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %asic_funcs, align 8
  %wreg266 = getelementptr inbounds %struct.hl_asic_funcs, ptr %537, i32 0, i32 58
  %538 = ptrtoint ptr %wreg266 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %wreg266, align 4
  tail call void %539(ptr noundef %hdev, i32 noundef 525660, i32 noundef 8388608) #2
  %540 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %asic_funcs, align 8
  %wreg268 = getelementptr inbounds %struct.hl_asic_funcs, ptr %541, i32 0, i32 58
  %542 = ptrtoint ptr %wreg268 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %wreg268, align 4
  tail call void %543(ptr noundef %hdev, i32 noundef 525596, i32 noundef 66060288) #2
  %544 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %asic_funcs, align 8
  %wreg270 = getelementptr inbounds %struct.hl_asic_funcs, ptr %545, i32 0, i32 58
  %546 = ptrtoint ptr %wreg270 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %wreg270, align 4
  tail call void %547(ptr noundef %hdev, i32 noundef 525664, i32 noundef 12591104) #2
  %548 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %asic_funcs, align 8
  %wreg272 = getelementptr inbounds %struct.hl_asic_funcs, ptr %549, i32 0, i32 58
  %550 = ptrtoint ptr %wreg272 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %wreg272, align 4
  tail call void %551(ptr noundef %hdev, i32 noundef 525600, i32 noundef 67104768) #2
  %552 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %asic_funcs, align 8
  %wreg274 = getelementptr inbounds %struct.hl_asic_funcs, ptr %553, i32 0, i32 58
  %554 = ptrtoint ptr %wreg274 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %wreg274, align 4
  tail call void %555(ptr noundef %hdev, i32 noundef 525668, i32 noundef 12845056) #2
  %556 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %asic_funcs, align 8
  %wreg276 = getelementptr inbounds %struct.hl_asic_funcs, ptr %557, i32 0, i32 58
  %558 = ptrtoint ptr %wreg276 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %wreg276, align 4
  tail call void %559(ptr noundef %hdev, i32 noundef 525604, i32 noundef 67076096) #2
  %560 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %asic_funcs, align 8
  %wreg278 = getelementptr inbounds %struct.hl_asic_funcs, ptr %561, i32 0, i32 58
  %562 = ptrtoint ptr %wreg278 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %wreg278, align 4
  tail call void %563(ptr noundef %hdev, i32 noundef 525672, i32 noundef 12877824) #2
  %564 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %asic_funcs, align 8
  %wreg280 = getelementptr inbounds %struct.hl_asic_funcs, ptr %565, i32 0, i32 58
  %566 = ptrtoint ptr %wreg280 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %wreg280, align 4
  tail call void %567(ptr noundef %hdev, i32 noundef 525608, i32 noundef 67104768) #2
  %568 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %asic_funcs, align 8
  %wreg282 = getelementptr inbounds %struct.hl_asic_funcs, ptr %569, i32 0, i32 58
  %570 = ptrtoint ptr %wreg282 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %wreg282, align 4
  tail call void %571(ptr noundef %hdev, i32 noundef 525676, i32 noundef 12886016) #2
  %572 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %asic_funcs, align 8
  %wreg284 = getelementptr inbounds %struct.hl_asic_funcs, ptr %573, i32 0, i32 58
  %574 = ptrtoint ptr %wreg284 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %wreg284, align 4
  tail call void %575(ptr noundef %hdev, i32 noundef 525612, i32 noundef 67100672) #2
  %576 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %asic_funcs, align 8
  %wreg286 = getelementptr inbounds %struct.hl_asic_funcs, ptr %577, i32 0, i32 58
  %578 = ptrtoint ptr %wreg286 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %wreg286, align 4
  tail call void %579(ptr noundef %hdev, i32 noundef 525680, i32 noundef 12894208) #2
  %580 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %asic_funcs, align 8
  %wreg288 = getelementptr inbounds %struct.hl_asic_funcs, ptr %581, i32 0, i32 58
  %582 = ptrtoint ptr %wreg288 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %wreg288, align 4
  tail call void %583(ptr noundef %hdev, i32 noundef 525616, i32 noundef 67092480) #2
  %584 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %asic_funcs, align 8
  %wreg290 = getelementptr inbounds %struct.hl_asic_funcs, ptr %585, i32 0, i32 58
  %586 = ptrtoint ptr %wreg290 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %wreg290, align 4
  tail call void %587(ptr noundef %hdev, i32 noundef 525684, i32 noundef 12910592) #2
  %588 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %asic_funcs, align 8
  %wreg292 = getelementptr inbounds %struct.hl_asic_funcs, ptr %589, i32 0, i32 58
  %590 = ptrtoint ptr %wreg292 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %wreg292, align 4
  tail call void %591(ptr noundef %hdev, i32 noundef 525620, i32 noundef 67043328) #2
  %592 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %asic_funcs, align 8
  %wreg294 = getelementptr inbounds %struct.hl_asic_funcs, ptr %593, i32 0, i32 58
  %594 = ptrtoint ptr %wreg294 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %wreg294, align 4
  tail call void %595(ptr noundef %hdev, i32 noundef 525688, i32 noundef 12976128) #2
  %596 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %asic_funcs, align 8
  %wreg296 = getelementptr inbounds %struct.hl_asic_funcs, ptr %597, i32 0, i32 58
  %598 = ptrtoint ptr %wreg296 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %wreg296, align 4
  tail call void %599(ptr noundef %hdev, i32 noundef 525624, i32 noundef 66977792) #2
  %600 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %asic_funcs, align 8
  %wreg298 = getelementptr inbounds %struct.hl_asic_funcs, ptr %601, i32 0, i32 58
  %602 = ptrtoint ptr %wreg298 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %wreg298, align 4
  tail call void %603(ptr noundef %hdev, i32 noundef 525692, i32 noundef 14688256) #2
  %604 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %asic_funcs, align 8
  %wreg300 = getelementptr inbounds %struct.hl_asic_funcs, ptr %605, i32 0, i32 58
  %606 = ptrtoint ptr %wreg300 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %wreg300, align 4
  tail call void %607(ptr noundef %hdev, i32 noundef 525628, i32 noundef 67100672) #2
  %608 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %asic_funcs, align 8
  %wreg302 = getelementptr inbounds %struct.hl_asic_funcs, ptr %609, i32 0, i32 58
  %610 = ptrtoint ptr %wreg302 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %wreg302, align 4
  tail call void %611(ptr noundef %hdev, i32 noundef 525696, i32 noundef 38289408) #2
  %612 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %asic_funcs, align 8
  %wreg304 = getelementptr inbounds %struct.hl_asic_funcs, ptr %613, i32 0, i32 58
  %614 = ptrtoint ptr %wreg304 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %wreg304, align 4
  tail call void %615(ptr noundef %hdev, i32 noundef 525632, i32 noundef 67104768) #2
  %616 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %asic_funcs, align 8
  %wreg306 = getelementptr inbounds %struct.hl_asic_funcs, ptr %617, i32 0, i32 58
  %618 = ptrtoint ptr %wreg306 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %wreg306, align 4
  tail call void %619(ptr noundef %hdev, i32 noundef 525700, i32 noundef 46411776) #2
  %620 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %asic_funcs, align 8
  %wreg308 = getelementptr inbounds %struct.hl_asic_funcs, ptr %621, i32 0, i32 58
  %622 = ptrtoint ptr %wreg308 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %wreg308, align 4
  tail call void %623(ptr noundef %hdev, i32 noundef 525636, i32 noundef 67104768) #2
  %624 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %asic_funcs, align 8
  %wreg310 = getelementptr inbounds %struct.hl_asic_funcs, ptr %625, i32 0, i32 58
  %626 = ptrtoint ptr %wreg310 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %wreg310, align 4
  tail call void %627(ptr noundef %hdev, i32 noundef 787792, i32 noundef 4456448) #2
  %628 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %asic_funcs, align 8
  %wreg312 = getelementptr inbounds %struct.hl_asic_funcs, ptr %629, i32 0, i32 58
  %630 = ptrtoint ptr %wreg312 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %wreg312, align 4
  tail call void %631(ptr noundef %hdev, i32 noundef 787728, i32 noundef 67043328) #2
  %632 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %asic_funcs, align 8
  %wreg314 = getelementptr inbounds %struct.hl_asic_funcs, ptr %633, i32 0, i32 58
  %634 = ptrtoint ptr %wreg314 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %wreg314, align 4
  tail call void %635(ptr noundef %hdev, i32 noundef 787796, i32 noundef 4718592) #2
  %636 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %asic_funcs, align 8
  %wreg316 = getelementptr inbounds %struct.hl_asic_funcs, ptr %637, i32 0, i32 58
  %638 = ptrtoint ptr %wreg316 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %wreg316, align 4
  tail call void %639(ptr noundef %hdev, i32 noundef 787732, i32 noundef 66584576) #2
  %640 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %asic_funcs, align 8
  %wreg318 = getelementptr inbounds %struct.hl_asic_funcs, ptr %641, i32 0, i32 58
  %642 = ptrtoint ptr %wreg318 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %wreg318, align 4
  tail call void %643(ptr noundef %hdev, i32 noundef 787800, i32 noundef 6291456) #2
  %644 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %asic_funcs, align 8
  %wreg320 = getelementptr inbounds %struct.hl_asic_funcs, ptr %645, i32 0, i32 58
  %646 = ptrtoint ptr %wreg320 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %wreg320, align 4
  tail call void %647(ptr noundef %hdev, i32 noundef 787736, i32 noundef 65011712) #2
  %648 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %asic_funcs, align 8
  %wreg322 = getelementptr inbounds %struct.hl_asic_funcs, ptr %649, i32 0, i32 58
  %650 = ptrtoint ptr %wreg322 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %wreg322, align 4
  tail call void %651(ptr noundef %hdev, i32 noundef 787804, i32 noundef 8388608) #2
  %652 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %asic_funcs, align 8
  %wreg324 = getelementptr inbounds %struct.hl_asic_funcs, ptr %653, i32 0, i32 58
  %654 = ptrtoint ptr %wreg324 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %wreg324, align 4
  tail call void %655(ptr noundef %hdev, i32 noundef 787740, i32 noundef 66060288) #2
  %656 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %asic_funcs, align 8
  %wreg326 = getelementptr inbounds %struct.hl_asic_funcs, ptr %657, i32 0, i32 58
  %658 = ptrtoint ptr %wreg326 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %wreg326, align 4
  tail call void %659(ptr noundef %hdev, i32 noundef 787808, i32 noundef 12591104) #2
  %660 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %asic_funcs, align 8
  %wreg328 = getelementptr inbounds %struct.hl_asic_funcs, ptr %661, i32 0, i32 58
  %662 = ptrtoint ptr %wreg328 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %wreg328, align 4
  tail call void %663(ptr noundef %hdev, i32 noundef 787744, i32 noundef 67104768) #2
  %664 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %asic_funcs, align 8
  %wreg330 = getelementptr inbounds %struct.hl_asic_funcs, ptr %665, i32 0, i32 58
  %666 = ptrtoint ptr %wreg330 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %wreg330, align 4
  tail call void %667(ptr noundef %hdev, i32 noundef 787812, i32 noundef 12845056) #2
  %668 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %asic_funcs, align 8
  %wreg332 = getelementptr inbounds %struct.hl_asic_funcs, ptr %669, i32 0, i32 58
  %670 = ptrtoint ptr %wreg332 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %wreg332, align 4
  tail call void %671(ptr noundef %hdev, i32 noundef 787748, i32 noundef 67076096) #2
  %672 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %asic_funcs, align 8
  %wreg334 = getelementptr inbounds %struct.hl_asic_funcs, ptr %673, i32 0, i32 58
  %674 = ptrtoint ptr %wreg334 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %wreg334, align 4
  tail call void %675(ptr noundef %hdev, i32 noundef 787816, i32 noundef 12877824) #2
  %676 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %asic_funcs, align 8
  %wreg336 = getelementptr inbounds %struct.hl_asic_funcs, ptr %677, i32 0, i32 58
  %678 = ptrtoint ptr %wreg336 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %wreg336, align 4
  tail call void %679(ptr noundef %hdev, i32 noundef 787752, i32 noundef 67104768) #2
  %680 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %asic_funcs, align 8
  %wreg338 = getelementptr inbounds %struct.hl_asic_funcs, ptr %681, i32 0, i32 58
  %682 = ptrtoint ptr %wreg338 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %wreg338, align 4
  tail call void %683(ptr noundef %hdev, i32 noundef 787820, i32 noundef 12886016) #2
  %684 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %asic_funcs, align 8
  %wreg340 = getelementptr inbounds %struct.hl_asic_funcs, ptr %685, i32 0, i32 58
  %686 = ptrtoint ptr %wreg340 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %wreg340, align 4
  tail call void %687(ptr noundef %hdev, i32 noundef 787756, i32 noundef 67100672) #2
  %688 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %asic_funcs, align 8
  %wreg342 = getelementptr inbounds %struct.hl_asic_funcs, ptr %689, i32 0, i32 58
  %690 = ptrtoint ptr %wreg342 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %wreg342, align 4
  tail call void %691(ptr noundef %hdev, i32 noundef 787824, i32 noundef 12894208) #2
  %692 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %asic_funcs, align 8
  %wreg344 = getelementptr inbounds %struct.hl_asic_funcs, ptr %693, i32 0, i32 58
  %694 = ptrtoint ptr %wreg344 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %wreg344, align 4
  tail call void %695(ptr noundef %hdev, i32 noundef 787760, i32 noundef 67092480) #2
  %696 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %asic_funcs, align 8
  %wreg346 = getelementptr inbounds %struct.hl_asic_funcs, ptr %697, i32 0, i32 58
  %698 = ptrtoint ptr %wreg346 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %wreg346, align 4
  tail call void %699(ptr noundef %hdev, i32 noundef 787828, i32 noundef 12910592) #2
  %700 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %asic_funcs, align 8
  %wreg348 = getelementptr inbounds %struct.hl_asic_funcs, ptr %701, i32 0, i32 58
  %702 = ptrtoint ptr %wreg348 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %wreg348, align 4
  tail call void %703(ptr noundef %hdev, i32 noundef 787764, i32 noundef 67043328) #2
  %704 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %asic_funcs, align 8
  %wreg350 = getelementptr inbounds %struct.hl_asic_funcs, ptr %705, i32 0, i32 58
  %706 = ptrtoint ptr %wreg350 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %wreg350, align 4
  tail call void %707(ptr noundef %hdev, i32 noundef 787832, i32 noundef 12976128) #2
  %708 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %asic_funcs, align 8
  %wreg352 = getelementptr inbounds %struct.hl_asic_funcs, ptr %709, i32 0, i32 58
  %710 = ptrtoint ptr %wreg352 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %wreg352, align 4
  tail call void %711(ptr noundef %hdev, i32 noundef 787768, i32 noundef 66977792) #2
  %712 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %asic_funcs, align 8
  %wreg354 = getelementptr inbounds %struct.hl_asic_funcs, ptr %713, i32 0, i32 58
  %714 = ptrtoint ptr %wreg354 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %wreg354, align 4
  tail call void %715(ptr noundef %hdev, i32 noundef 787836, i32 noundef 14688256) #2
  %716 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %asic_funcs, align 8
  %wreg356 = getelementptr inbounds %struct.hl_asic_funcs, ptr %717, i32 0, i32 58
  %718 = ptrtoint ptr %wreg356 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %wreg356, align 4
  tail call void %719(ptr noundef %hdev, i32 noundef 787772, i32 noundef 67100672) #2
  %720 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %asic_funcs, align 8
  %wreg358 = getelementptr inbounds %struct.hl_asic_funcs, ptr %721, i32 0, i32 58
  %722 = ptrtoint ptr %wreg358 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %wreg358, align 4
  tail call void %723(ptr noundef %hdev, i32 noundef 787840, i32 noundef 38289408) #2
  %724 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %asic_funcs, align 8
  %wreg360 = getelementptr inbounds %struct.hl_asic_funcs, ptr %725, i32 0, i32 58
  %726 = ptrtoint ptr %wreg360 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %wreg360, align 4
  tail call void %727(ptr noundef %hdev, i32 noundef 787776, i32 noundef 67104768) #2
  %728 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %asic_funcs, align 8
  %wreg362 = getelementptr inbounds %struct.hl_asic_funcs, ptr %729, i32 0, i32 58
  %730 = ptrtoint ptr %wreg362 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %wreg362, align 4
  tail call void %731(ptr noundef %hdev, i32 noundef 787844, i32 noundef 46411776) #2
  %732 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %asic_funcs, align 8
  %wreg364 = getelementptr inbounds %struct.hl_asic_funcs, ptr %733, i32 0, i32 58
  %734 = ptrtoint ptr %wreg364 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %wreg364, align 4
  tail call void %735(ptr noundef %hdev, i32 noundef 787780, i32 noundef 67104768) #2
  %736 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %asic_funcs, align 8
  %wreg366 = getelementptr inbounds %struct.hl_asic_funcs, ptr %737, i32 0, i32 58
  %738 = ptrtoint ptr %wreg366 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %wreg366, align 4
  tail call void %739(ptr noundef %hdev, i32 noundef 1049936, i32 noundef 4456448) #2
  %740 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %asic_funcs, align 8
  %wreg368 = getelementptr inbounds %struct.hl_asic_funcs, ptr %741, i32 0, i32 58
  %742 = ptrtoint ptr %wreg368 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %wreg368, align 4
  tail call void %743(ptr noundef %hdev, i32 noundef 1049872, i32 noundef 67043328) #2
  %744 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %asic_funcs, align 8
  %wreg370 = getelementptr inbounds %struct.hl_asic_funcs, ptr %745, i32 0, i32 58
  %746 = ptrtoint ptr %wreg370 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %wreg370, align 4
  tail call void %747(ptr noundef %hdev, i32 noundef 1049940, i32 noundef 4718592) #2
  %748 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %asic_funcs, align 8
  %wreg372 = getelementptr inbounds %struct.hl_asic_funcs, ptr %749, i32 0, i32 58
  %750 = ptrtoint ptr %wreg372 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %wreg372, align 4
  tail call void %751(ptr noundef %hdev, i32 noundef 1049876, i32 noundef 66584576) #2
  %752 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %asic_funcs, align 8
  %wreg374 = getelementptr inbounds %struct.hl_asic_funcs, ptr %753, i32 0, i32 58
  %754 = ptrtoint ptr %wreg374 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %wreg374, align 4
  tail call void %755(ptr noundef %hdev, i32 noundef 1049944, i32 noundef 6291456) #2
  %756 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %asic_funcs, align 8
  %wreg376 = getelementptr inbounds %struct.hl_asic_funcs, ptr %757, i32 0, i32 58
  %758 = ptrtoint ptr %wreg376 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %wreg376, align 4
  tail call void %759(ptr noundef %hdev, i32 noundef 1049880, i32 noundef 65011712) #2
  %760 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %asic_funcs, align 8
  %wreg378 = getelementptr inbounds %struct.hl_asic_funcs, ptr %761, i32 0, i32 58
  %762 = ptrtoint ptr %wreg378 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %wreg378, align 4
  tail call void %763(ptr noundef %hdev, i32 noundef 1049948, i32 noundef 8388608) #2
  %764 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %asic_funcs, align 8
  %wreg380 = getelementptr inbounds %struct.hl_asic_funcs, ptr %765, i32 0, i32 58
  %766 = ptrtoint ptr %wreg380 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %wreg380, align 4
  tail call void %767(ptr noundef %hdev, i32 noundef 1049884, i32 noundef 66060288) #2
  %768 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %asic_funcs, align 8
  %wreg382 = getelementptr inbounds %struct.hl_asic_funcs, ptr %769, i32 0, i32 58
  %770 = ptrtoint ptr %wreg382 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %wreg382, align 4
  tail call void %771(ptr noundef %hdev, i32 noundef 1049952, i32 noundef 12591104) #2
  %772 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %asic_funcs, align 8
  %wreg384 = getelementptr inbounds %struct.hl_asic_funcs, ptr %773, i32 0, i32 58
  %774 = ptrtoint ptr %wreg384 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %wreg384, align 4
  tail call void %775(ptr noundef %hdev, i32 noundef 1049888, i32 noundef 67104768) #2
  %776 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %asic_funcs, align 8
  %wreg386 = getelementptr inbounds %struct.hl_asic_funcs, ptr %777, i32 0, i32 58
  %778 = ptrtoint ptr %wreg386 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %wreg386, align 4
  tail call void %779(ptr noundef %hdev, i32 noundef 1049956, i32 noundef 12845056) #2
  %780 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %asic_funcs, align 8
  %wreg388 = getelementptr inbounds %struct.hl_asic_funcs, ptr %781, i32 0, i32 58
  %782 = ptrtoint ptr %wreg388 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %wreg388, align 4
  tail call void %783(ptr noundef %hdev, i32 noundef 1049892, i32 noundef 67076096) #2
  %784 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %asic_funcs, align 8
  %wreg390 = getelementptr inbounds %struct.hl_asic_funcs, ptr %785, i32 0, i32 58
  %786 = ptrtoint ptr %wreg390 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %wreg390, align 4
  tail call void %787(ptr noundef %hdev, i32 noundef 1049960, i32 noundef 12877824) #2
  %788 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %asic_funcs, align 8
  %wreg392 = getelementptr inbounds %struct.hl_asic_funcs, ptr %789, i32 0, i32 58
  %790 = ptrtoint ptr %wreg392 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %wreg392, align 4
  tail call void %791(ptr noundef %hdev, i32 noundef 1049896, i32 noundef 67104768) #2
  %792 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %asic_funcs, align 8
  %wreg394 = getelementptr inbounds %struct.hl_asic_funcs, ptr %793, i32 0, i32 58
  %794 = ptrtoint ptr %wreg394 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %wreg394, align 4
  tail call void %795(ptr noundef %hdev, i32 noundef 1049964, i32 noundef 12886016) #2
  %796 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %asic_funcs, align 8
  %wreg396 = getelementptr inbounds %struct.hl_asic_funcs, ptr %797, i32 0, i32 58
  %798 = ptrtoint ptr %wreg396 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %wreg396, align 4
  tail call void %799(ptr noundef %hdev, i32 noundef 1049900, i32 noundef 67100672) #2
  %800 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %asic_funcs, align 8
  %wreg398 = getelementptr inbounds %struct.hl_asic_funcs, ptr %801, i32 0, i32 58
  %802 = ptrtoint ptr %wreg398 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %wreg398, align 4
  tail call void %803(ptr noundef %hdev, i32 noundef 1049968, i32 noundef 12894208) #2
  %804 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %asic_funcs, align 8
  %wreg400 = getelementptr inbounds %struct.hl_asic_funcs, ptr %805, i32 0, i32 58
  %806 = ptrtoint ptr %wreg400 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %wreg400, align 4
  tail call void %807(ptr noundef %hdev, i32 noundef 1049904, i32 noundef 67092480) #2
  %808 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %asic_funcs, align 8
  %wreg402 = getelementptr inbounds %struct.hl_asic_funcs, ptr %809, i32 0, i32 58
  %810 = ptrtoint ptr %wreg402 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %wreg402, align 4
  tail call void %811(ptr noundef %hdev, i32 noundef 1049972, i32 noundef 12910592) #2
  %812 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %asic_funcs, align 8
  %wreg404 = getelementptr inbounds %struct.hl_asic_funcs, ptr %813, i32 0, i32 58
  %814 = ptrtoint ptr %wreg404 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %wreg404, align 4
  tail call void %815(ptr noundef %hdev, i32 noundef 1049908, i32 noundef 67043328) #2
  %816 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %asic_funcs, align 8
  %wreg406 = getelementptr inbounds %struct.hl_asic_funcs, ptr %817, i32 0, i32 58
  %818 = ptrtoint ptr %wreg406 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %wreg406, align 4
  tail call void %819(ptr noundef %hdev, i32 noundef 1049976, i32 noundef 12976128) #2
  %820 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %asic_funcs, align 8
  %wreg408 = getelementptr inbounds %struct.hl_asic_funcs, ptr %821, i32 0, i32 58
  %822 = ptrtoint ptr %wreg408 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %wreg408, align 4
  tail call void %823(ptr noundef %hdev, i32 noundef 1049912, i32 noundef 66977792) #2
  %824 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %asic_funcs, align 8
  %wreg410 = getelementptr inbounds %struct.hl_asic_funcs, ptr %825, i32 0, i32 58
  %826 = ptrtoint ptr %wreg410 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %wreg410, align 4
  tail call void %827(ptr noundef %hdev, i32 noundef 1049980, i32 noundef 14688256) #2
  %828 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %asic_funcs, align 8
  %wreg412 = getelementptr inbounds %struct.hl_asic_funcs, ptr %829, i32 0, i32 58
  %830 = ptrtoint ptr %wreg412 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %wreg412, align 4
  tail call void %831(ptr noundef %hdev, i32 noundef 1049916, i32 noundef 67100672) #2
  %832 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %asic_funcs, align 8
  %wreg414 = getelementptr inbounds %struct.hl_asic_funcs, ptr %833, i32 0, i32 58
  %834 = ptrtoint ptr %wreg414 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %wreg414, align 4
  tail call void %835(ptr noundef %hdev, i32 noundef 1049984, i32 noundef 38289408) #2
  %836 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %asic_funcs, align 8
  %wreg416 = getelementptr inbounds %struct.hl_asic_funcs, ptr %837, i32 0, i32 58
  %838 = ptrtoint ptr %wreg416 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %wreg416, align 4
  tail call void %839(ptr noundef %hdev, i32 noundef 1049920, i32 noundef 67104768) #2
  %840 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %asic_funcs, align 8
  %wreg418 = getelementptr inbounds %struct.hl_asic_funcs, ptr %841, i32 0, i32 58
  %842 = ptrtoint ptr %wreg418 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %wreg418, align 4
  tail call void %843(ptr noundef %hdev, i32 noundef 1049988, i32 noundef 46411776) #2
  %844 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %asic_funcs, align 8
  %wreg420 = getelementptr inbounds %struct.hl_asic_funcs, ptr %845, i32 0, i32 58
  %846 = ptrtoint ptr %wreg420 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %wreg420, align 4
  tail call void %847(ptr noundef %hdev, i32 noundef 1049924, i32 noundef 67104768) #2
  %848 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %asic_funcs, align 8
  %wreg422 = getelementptr inbounds %struct.hl_asic_funcs, ptr %849, i32 0, i32 58
  %850 = ptrtoint ptr %wreg422 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %wreg422, align 4
  tail call void %851(ptr noundef %hdev, i32 noundef 1312080, i32 noundef 4456448) #2
  %852 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %asic_funcs, align 8
  %wreg424 = getelementptr inbounds %struct.hl_asic_funcs, ptr %853, i32 0, i32 58
  %854 = ptrtoint ptr %wreg424 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %wreg424, align 4
  tail call void %855(ptr noundef %hdev, i32 noundef 1312016, i32 noundef 67043328) #2
  %856 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %asic_funcs, align 8
  %wreg426 = getelementptr inbounds %struct.hl_asic_funcs, ptr %857, i32 0, i32 58
  %858 = ptrtoint ptr %wreg426 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %wreg426, align 4
  tail call void %859(ptr noundef %hdev, i32 noundef 1312084, i32 noundef 4718592) #2
  %860 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %asic_funcs, align 8
  %wreg428 = getelementptr inbounds %struct.hl_asic_funcs, ptr %861, i32 0, i32 58
  %862 = ptrtoint ptr %wreg428 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %wreg428, align 4
  tail call void %863(ptr noundef %hdev, i32 noundef 1312020, i32 noundef 66584576) #2
  %864 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %asic_funcs, align 8
  %wreg430 = getelementptr inbounds %struct.hl_asic_funcs, ptr %865, i32 0, i32 58
  %866 = ptrtoint ptr %wreg430 to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %wreg430, align 4
  tail call void %867(ptr noundef %hdev, i32 noundef 1312088, i32 noundef 6291456) #2
  %868 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %asic_funcs, align 8
  %wreg432 = getelementptr inbounds %struct.hl_asic_funcs, ptr %869, i32 0, i32 58
  %870 = ptrtoint ptr %wreg432 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %wreg432, align 4
  tail call void %871(ptr noundef %hdev, i32 noundef 1312024, i32 noundef 65011712) #2
  %872 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %asic_funcs, align 8
  %wreg434 = getelementptr inbounds %struct.hl_asic_funcs, ptr %873, i32 0, i32 58
  %874 = ptrtoint ptr %wreg434 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %wreg434, align 4
  tail call void %875(ptr noundef %hdev, i32 noundef 1312092, i32 noundef 8388608) #2
  %876 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %asic_funcs, align 8
  %wreg436 = getelementptr inbounds %struct.hl_asic_funcs, ptr %877, i32 0, i32 58
  %878 = ptrtoint ptr %wreg436 to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %wreg436, align 4
  tail call void %879(ptr noundef %hdev, i32 noundef 1312028, i32 noundef 66060288) #2
  %880 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %asic_funcs, align 8
  %wreg438 = getelementptr inbounds %struct.hl_asic_funcs, ptr %881, i32 0, i32 58
  %882 = ptrtoint ptr %wreg438 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %wreg438, align 4
  tail call void %883(ptr noundef %hdev, i32 noundef 1312096, i32 noundef 12591104) #2
  %884 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %asic_funcs, align 8
  %wreg440 = getelementptr inbounds %struct.hl_asic_funcs, ptr %885, i32 0, i32 58
  %886 = ptrtoint ptr %wreg440 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %wreg440, align 4
  tail call void %887(ptr noundef %hdev, i32 noundef 1312032, i32 noundef 67104768) #2
  %888 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %asic_funcs, align 8
  %wreg442 = getelementptr inbounds %struct.hl_asic_funcs, ptr %889, i32 0, i32 58
  %890 = ptrtoint ptr %wreg442 to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %wreg442, align 4
  tail call void %891(ptr noundef %hdev, i32 noundef 1312100, i32 noundef 12845056) #2
  %892 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %asic_funcs, align 8
  %wreg444 = getelementptr inbounds %struct.hl_asic_funcs, ptr %893, i32 0, i32 58
  %894 = ptrtoint ptr %wreg444 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %wreg444, align 4
  tail call void %895(ptr noundef %hdev, i32 noundef 1312036, i32 noundef 67076096) #2
  %896 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %asic_funcs, align 8
  %wreg446 = getelementptr inbounds %struct.hl_asic_funcs, ptr %897, i32 0, i32 58
  %898 = ptrtoint ptr %wreg446 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %wreg446, align 4
  tail call void %899(ptr noundef %hdev, i32 noundef 1312104, i32 noundef 12877824) #2
  %900 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %asic_funcs, align 8
  %wreg448 = getelementptr inbounds %struct.hl_asic_funcs, ptr %901, i32 0, i32 58
  %902 = ptrtoint ptr %wreg448 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %wreg448, align 4
  tail call void %903(ptr noundef %hdev, i32 noundef 1312040, i32 noundef 67104768) #2
  %904 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %asic_funcs, align 8
  %wreg450 = getelementptr inbounds %struct.hl_asic_funcs, ptr %905, i32 0, i32 58
  %906 = ptrtoint ptr %wreg450 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %wreg450, align 4
  tail call void %907(ptr noundef %hdev, i32 noundef 1312108, i32 noundef 12886016) #2
  %908 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %asic_funcs, align 8
  %wreg452 = getelementptr inbounds %struct.hl_asic_funcs, ptr %909, i32 0, i32 58
  %910 = ptrtoint ptr %wreg452 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %wreg452, align 4
  tail call void %911(ptr noundef %hdev, i32 noundef 1312044, i32 noundef 67100672) #2
  %912 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %asic_funcs, align 8
  %wreg454 = getelementptr inbounds %struct.hl_asic_funcs, ptr %913, i32 0, i32 58
  %914 = ptrtoint ptr %wreg454 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %wreg454, align 4
  tail call void %915(ptr noundef %hdev, i32 noundef 1312112, i32 noundef 12894208) #2
  %916 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %asic_funcs, align 8
  %wreg456 = getelementptr inbounds %struct.hl_asic_funcs, ptr %917, i32 0, i32 58
  %918 = ptrtoint ptr %wreg456 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %wreg456, align 4
  tail call void %919(ptr noundef %hdev, i32 noundef 1312048, i32 noundef 67092480) #2
  %920 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %asic_funcs, align 8
  %wreg458 = getelementptr inbounds %struct.hl_asic_funcs, ptr %921, i32 0, i32 58
  %922 = ptrtoint ptr %wreg458 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %wreg458, align 4
  tail call void %923(ptr noundef %hdev, i32 noundef 1312116, i32 noundef 12910592) #2
  %924 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %asic_funcs, align 8
  %wreg460 = getelementptr inbounds %struct.hl_asic_funcs, ptr %925, i32 0, i32 58
  %926 = ptrtoint ptr %wreg460 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %wreg460, align 4
  tail call void %927(ptr noundef %hdev, i32 noundef 1312052, i32 noundef 67043328) #2
  %928 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %asic_funcs, align 8
  %wreg462 = getelementptr inbounds %struct.hl_asic_funcs, ptr %929, i32 0, i32 58
  %930 = ptrtoint ptr %wreg462 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %wreg462, align 4
  tail call void %931(ptr noundef %hdev, i32 noundef 1312120, i32 noundef 12976128) #2
  %932 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %asic_funcs, align 8
  %wreg464 = getelementptr inbounds %struct.hl_asic_funcs, ptr %933, i32 0, i32 58
  %934 = ptrtoint ptr %wreg464 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %wreg464, align 4
  tail call void %935(ptr noundef %hdev, i32 noundef 1312056, i32 noundef 66977792) #2
  %936 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %asic_funcs, align 8
  %wreg466 = getelementptr inbounds %struct.hl_asic_funcs, ptr %937, i32 0, i32 58
  %938 = ptrtoint ptr %wreg466 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %wreg466, align 4
  tail call void %939(ptr noundef %hdev, i32 noundef 1312124, i32 noundef 14688256) #2
  %940 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %asic_funcs, align 8
  %wreg468 = getelementptr inbounds %struct.hl_asic_funcs, ptr %941, i32 0, i32 58
  %942 = ptrtoint ptr %wreg468 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %wreg468, align 4
  tail call void %943(ptr noundef %hdev, i32 noundef 1312060, i32 noundef 67100672) #2
  %944 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %asic_funcs, align 8
  %wreg470 = getelementptr inbounds %struct.hl_asic_funcs, ptr %945, i32 0, i32 58
  %946 = ptrtoint ptr %wreg470 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %wreg470, align 4
  tail call void %947(ptr noundef %hdev, i32 noundef 1312128, i32 noundef 38289408) #2
  %948 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %asic_funcs, align 8
  %wreg472 = getelementptr inbounds %struct.hl_asic_funcs, ptr %949, i32 0, i32 58
  %950 = ptrtoint ptr %wreg472 to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %wreg472, align 4
  tail call void %951(ptr noundef %hdev, i32 noundef 1312064, i32 noundef 67104768) #2
  %952 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %asic_funcs, align 8
  %wreg474 = getelementptr inbounds %struct.hl_asic_funcs, ptr %953, i32 0, i32 58
  %954 = ptrtoint ptr %wreg474 to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %wreg474, align 4
  tail call void %955(ptr noundef %hdev, i32 noundef 1312132, i32 noundef 46411776) #2
  %956 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %asic_funcs, align 8
  %wreg476 = getelementptr inbounds %struct.hl_asic_funcs, ptr %957, i32 0, i32 58
  %958 = ptrtoint ptr %wreg476 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %wreg476, align 4
  tail call void %959(ptr noundef %hdev, i32 noundef 1312068, i32 noundef 67104768) #2
  %960 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %asic_funcs, align 8
  %wreg478 = getelementptr inbounds %struct.hl_asic_funcs, ptr %961, i32 0, i32 58
  %962 = ptrtoint ptr %wreg478 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %wreg478, align 4
  tail call void %963(ptr noundef %hdev, i32 noundef 1574224, i32 noundef 4456448) #2
  %964 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %asic_funcs, align 8
  %wreg480 = getelementptr inbounds %struct.hl_asic_funcs, ptr %965, i32 0, i32 58
  %966 = ptrtoint ptr %wreg480 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %wreg480, align 4
  tail call void %967(ptr noundef %hdev, i32 noundef 1574160, i32 noundef 67043328) #2
  %968 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %asic_funcs, align 8
  %wreg482 = getelementptr inbounds %struct.hl_asic_funcs, ptr %969, i32 0, i32 58
  %970 = ptrtoint ptr %wreg482 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %wreg482, align 4
  tail call void %971(ptr noundef %hdev, i32 noundef 1574228, i32 noundef 4718592) #2
  %972 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %asic_funcs, align 8
  %wreg484 = getelementptr inbounds %struct.hl_asic_funcs, ptr %973, i32 0, i32 58
  %974 = ptrtoint ptr %wreg484 to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %wreg484, align 4
  tail call void %975(ptr noundef %hdev, i32 noundef 1574164, i32 noundef 66584576) #2
  %976 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %asic_funcs, align 8
  %wreg486 = getelementptr inbounds %struct.hl_asic_funcs, ptr %977, i32 0, i32 58
  %978 = ptrtoint ptr %wreg486 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %wreg486, align 4
  tail call void %979(ptr noundef %hdev, i32 noundef 1574232, i32 noundef 6291456) #2
  %980 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %asic_funcs, align 8
  %wreg488 = getelementptr inbounds %struct.hl_asic_funcs, ptr %981, i32 0, i32 58
  %982 = ptrtoint ptr %wreg488 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %wreg488, align 4
  tail call void %983(ptr noundef %hdev, i32 noundef 1574168, i32 noundef 65011712) #2
  %984 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %asic_funcs, align 8
  %wreg490 = getelementptr inbounds %struct.hl_asic_funcs, ptr %985, i32 0, i32 58
  %986 = ptrtoint ptr %wreg490 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %wreg490, align 4
  tail call void %987(ptr noundef %hdev, i32 noundef 1574236, i32 noundef 8388608) #2
  %988 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %asic_funcs, align 8
  %wreg492 = getelementptr inbounds %struct.hl_asic_funcs, ptr %989, i32 0, i32 58
  %990 = ptrtoint ptr %wreg492 to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %wreg492, align 4
  tail call void %991(ptr noundef %hdev, i32 noundef 1574172, i32 noundef 66060288) #2
  %992 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %asic_funcs, align 8
  %wreg494 = getelementptr inbounds %struct.hl_asic_funcs, ptr %993, i32 0, i32 58
  %994 = ptrtoint ptr %wreg494 to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load ptr, ptr %wreg494, align 4
  tail call void %995(ptr noundef %hdev, i32 noundef 1574240, i32 noundef 12591104) #2
  %996 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %asic_funcs, align 8
  %wreg496 = getelementptr inbounds %struct.hl_asic_funcs, ptr %997, i32 0, i32 58
  %998 = ptrtoint ptr %wreg496 to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load ptr, ptr %wreg496, align 4
  tail call void %999(ptr noundef %hdev, i32 noundef 1574176, i32 noundef 67104768) #2
  %1000 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %asic_funcs, align 8
  %wreg498 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1001, i32 0, i32 58
  %1002 = ptrtoint ptr %wreg498 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %wreg498, align 4
  tail call void %1003(ptr noundef %hdev, i32 noundef 1574244, i32 noundef 12845056) #2
  %1004 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %asic_funcs, align 8
  %wreg500 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1005, i32 0, i32 58
  %1006 = ptrtoint ptr %wreg500 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %wreg500, align 4
  tail call void %1007(ptr noundef %hdev, i32 noundef 1574180, i32 noundef 67076096) #2
  %1008 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %asic_funcs, align 8
  %wreg502 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1009, i32 0, i32 58
  %1010 = ptrtoint ptr %wreg502 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %wreg502, align 4
  tail call void %1011(ptr noundef %hdev, i32 noundef 1574248, i32 noundef 12877824) #2
  %1012 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %asic_funcs, align 8
  %wreg504 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1013, i32 0, i32 58
  %1014 = ptrtoint ptr %wreg504 to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %wreg504, align 4
  tail call void %1015(ptr noundef %hdev, i32 noundef 1574184, i32 noundef 67104768) #2
  %1016 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %asic_funcs, align 8
  %wreg506 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1017, i32 0, i32 58
  %1018 = ptrtoint ptr %wreg506 to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %wreg506, align 4
  tail call void %1019(ptr noundef %hdev, i32 noundef 1574252, i32 noundef 12886016) #2
  %1020 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %asic_funcs, align 8
  %wreg508 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1021, i32 0, i32 58
  %1022 = ptrtoint ptr %wreg508 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %wreg508, align 4
  tail call void %1023(ptr noundef %hdev, i32 noundef 1574188, i32 noundef 67100672) #2
  %1024 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %asic_funcs, align 8
  %wreg510 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1025, i32 0, i32 58
  %1026 = ptrtoint ptr %wreg510 to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %wreg510, align 4
  tail call void %1027(ptr noundef %hdev, i32 noundef 1574256, i32 noundef 12894208) #2
  %1028 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %asic_funcs, align 8
  %wreg512 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1029, i32 0, i32 58
  %1030 = ptrtoint ptr %wreg512 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %wreg512, align 4
  tail call void %1031(ptr noundef %hdev, i32 noundef 1574192, i32 noundef 67092480) #2
  %1032 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %asic_funcs, align 8
  %wreg514 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1033, i32 0, i32 58
  %1034 = ptrtoint ptr %wreg514 to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %wreg514, align 4
  tail call void %1035(ptr noundef %hdev, i32 noundef 1574260, i32 noundef 12910592) #2
  %1036 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %asic_funcs, align 8
  %wreg516 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1037, i32 0, i32 58
  %1038 = ptrtoint ptr %wreg516 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %wreg516, align 4
  tail call void %1039(ptr noundef %hdev, i32 noundef 1574196, i32 noundef 67043328) #2
  %1040 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %asic_funcs, align 8
  %wreg518 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1041, i32 0, i32 58
  %1042 = ptrtoint ptr %wreg518 to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %wreg518, align 4
  tail call void %1043(ptr noundef %hdev, i32 noundef 1574264, i32 noundef 12976128) #2
  %1044 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %asic_funcs, align 8
  %wreg520 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1045, i32 0, i32 58
  %1046 = ptrtoint ptr %wreg520 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %wreg520, align 4
  tail call void %1047(ptr noundef %hdev, i32 noundef 1574200, i32 noundef 66977792) #2
  %1048 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %asic_funcs, align 8
  %wreg522 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1049, i32 0, i32 58
  %1050 = ptrtoint ptr %wreg522 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %wreg522, align 4
  tail call void %1051(ptr noundef %hdev, i32 noundef 1574268, i32 noundef 14688256) #2
  %1052 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %asic_funcs, align 8
  %wreg524 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1053, i32 0, i32 58
  %1054 = ptrtoint ptr %wreg524 to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %wreg524, align 4
  tail call void %1055(ptr noundef %hdev, i32 noundef 1574204, i32 noundef 67100672) #2
  %1056 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %asic_funcs, align 8
  %wreg526 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1057, i32 0, i32 58
  %1058 = ptrtoint ptr %wreg526 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %wreg526, align 4
  tail call void %1059(ptr noundef %hdev, i32 noundef 1574272, i32 noundef 38289408) #2
  %1060 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %asic_funcs, align 8
  %wreg528 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1061, i32 0, i32 58
  %1062 = ptrtoint ptr %wreg528 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %wreg528, align 4
  tail call void %1063(ptr noundef %hdev, i32 noundef 1574208, i32 noundef 67104768) #2
  %1064 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %asic_funcs, align 8
  %wreg530 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1065, i32 0, i32 58
  %1066 = ptrtoint ptr %wreg530 to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %wreg530, align 4
  tail call void %1067(ptr noundef %hdev, i32 noundef 1574276, i32 noundef 46411776) #2
  %1068 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %asic_funcs, align 8
  %wreg532 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1069, i32 0, i32 58
  %1070 = ptrtoint ptr %wreg532 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %wreg532, align 4
  tail call void %1071(ptr noundef %hdev, i32 noundef 1574212, i32 noundef 67104768) #2
  %1072 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %asic_funcs, align 8
  %wreg534 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1073, i32 0, i32 58
  %1074 = ptrtoint ptr %wreg534 to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %wreg534, align 4
  tail call void %1075(ptr noundef %hdev, i32 noundef 14681344, i32 noundef 65535) #2
  %1076 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %asic_funcs, align 8
  %wreg536 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1077, i32 0, i32 58
  %1078 = ptrtoint ptr %wreg536 to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %wreg536, align 4
  tail call void %1079(ptr noundef %hdev, i32 noundef 14681200, i32 noundef 254) #2
  %1080 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %asic_funcs, align 8
  %wreg538 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1081, i32 0, i32 58
  %1082 = ptrtoint ptr %wreg538 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %wreg538, align 4
  tail call void %1083(ptr noundef %hdev, i32 noundef 14681280, i32 noundef 0) #2
  %1084 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %asic_funcs, align 8
  %wreg540 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1085, i32 0, i32 58
  %1086 = ptrtoint ptr %wreg540 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %wreg540, align 4
  tail call void %1087(ptr noundef %hdev, i32 noundef 14681312, i32 noundef 0) #2
  %1088 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %asic_funcs, align 8
  %wreg542 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1089, i32 0, i32 58
  %1090 = ptrtoint ptr %wreg542 to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %wreg542, align 4
  tail call void %1091(ptr noundef %hdev, i32 noundef 14681216, i32 noundef 0) #2
  %1092 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load ptr, ptr %asic_funcs, align 8
  %wreg544 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1093, i32 0, i32 58
  %1094 = ptrtoint ptr %wreg544 to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %wreg544, align 4
  tail call void %1095(ptr noundef %hdev, i32 noundef 14681248, i32 noundef 1048448) #2
  %1096 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %asic_funcs, align 8
  %wreg546 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1097, i32 0, i32 58
  %1098 = ptrtoint ptr %wreg546 to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %wreg546, align 4
  tail call void %1099(ptr noundef %hdev, i32 noundef 14681284, i32 noundef 0) #2
  %1100 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %asic_funcs, align 8
  %wreg548 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1101, i32 0, i32 58
  %1102 = ptrtoint ptr %wreg548 to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %wreg548, align 4
  tail call void %1103(ptr noundef %hdev, i32 noundef 14681316, i32 noundef 0) #2
  %1104 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %asic_funcs, align 8
  %wreg550 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1105, i32 0, i32 58
  %1106 = ptrtoint ptr %wreg550 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %wreg550, align 4
  tail call void %1107(ptr noundef %hdev, i32 noundef 14681220, i32 noundef -536870912) #2
  %1108 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %asic_funcs, align 8
  %wreg552 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1109, i32 0, i32 58
  %1110 = ptrtoint ptr %wreg552 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %wreg552, align 4
  tail call void %1111(ptr noundef %hdev, i32 noundef 14681252, i32 noundef 262143) #2
  %1112 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %asic_funcs, align 8
  %wreg554 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1113, i32 0, i32 58
  %1114 = ptrtoint ptr %wreg554 to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %wreg554, align 4
  tail call void %1115(ptr noundef %hdev, i32 noundef 14681424, i32 noundef 4456448) #2
  %1116 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %asic_funcs, align 8
  %wreg556 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1117, i32 0, i32 58
  %1118 = ptrtoint ptr %wreg556 to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %wreg556, align 4
  tail call void %1119(ptr noundef %hdev, i32 noundef 14681360, i32 noundef 67043328) #2
  %1120 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %asic_funcs, align 8
  %wreg558 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1121, i32 0, i32 58
  %1122 = ptrtoint ptr %wreg558 to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %wreg558, align 4
  tail call void %1123(ptr noundef %hdev, i32 noundef 14681428, i32 noundef 4718592) #2
  %1124 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %asic_funcs, align 8
  %wreg560 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1125, i32 0, i32 58
  %1126 = ptrtoint ptr %wreg560 to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %wreg560, align 4
  tail call void %1127(ptr noundef %hdev, i32 noundef 14681364, i32 noundef 66584576) #2
  %1128 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %asic_funcs, align 8
  %wreg562 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1129, i32 0, i32 58
  %1130 = ptrtoint ptr %wreg562 to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %wreg562, align 4
  tail call void %1131(ptr noundef %hdev, i32 noundef 14681432, i32 noundef 6291456) #2
  %1132 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %asic_funcs, align 8
  %wreg564 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1133, i32 0, i32 58
  %1134 = ptrtoint ptr %wreg564 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %wreg564, align 4
  tail call void %1135(ptr noundef %hdev, i32 noundef 14681368, i32 noundef 65011712) #2
  %1136 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %asic_funcs, align 8
  %wreg566 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1137, i32 0, i32 58
  %1138 = ptrtoint ptr %wreg566 to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %wreg566, align 4
  tail call void %1139(ptr noundef %hdev, i32 noundef 14681436, i32 noundef 8388608) #2
  %1140 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %asic_funcs, align 8
  %wreg568 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1141, i32 0, i32 58
  %1142 = ptrtoint ptr %wreg568 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %wreg568, align 4
  tail call void %1143(ptr noundef %hdev, i32 noundef 14681372, i32 noundef 66060288) #2
  %1144 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %asic_funcs, align 8
  %wreg570 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1145, i32 0, i32 58
  %1146 = ptrtoint ptr %wreg570 to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %wreg570, align 4
  tail call void %1147(ptr noundef %hdev, i32 noundef 14681440, i32 noundef 12591104) #2
  %1148 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %asic_funcs, align 8
  %wreg572 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1149, i32 0, i32 58
  %1150 = ptrtoint ptr %wreg572 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %wreg572, align 4
  tail call void %1151(ptr noundef %hdev, i32 noundef 14681376, i32 noundef 67104768) #2
  %1152 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %asic_funcs, align 8
  %wreg574 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1153, i32 0, i32 58
  %1154 = ptrtoint ptr %wreg574 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %wreg574, align 4
  tail call void %1155(ptr noundef %hdev, i32 noundef 14681444, i32 noundef 12845056) #2
  %1156 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %asic_funcs, align 8
  %wreg576 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1157, i32 0, i32 58
  %1158 = ptrtoint ptr %wreg576 to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %wreg576, align 4
  tail call void %1159(ptr noundef %hdev, i32 noundef 14681380, i32 noundef 67076096) #2
  %1160 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %asic_funcs, align 8
  %wreg578 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1161, i32 0, i32 58
  %1162 = ptrtoint ptr %wreg578 to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %wreg578, align 4
  tail call void %1163(ptr noundef %hdev, i32 noundef 14681448, i32 noundef 12877824) #2
  %1164 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %asic_funcs, align 8
  %wreg580 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1165, i32 0, i32 58
  %1166 = ptrtoint ptr %wreg580 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %wreg580, align 4
  tail call void %1167(ptr noundef %hdev, i32 noundef 14681384, i32 noundef 67104768) #2
  %1168 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %asic_funcs, align 8
  %wreg582 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1169, i32 0, i32 58
  %1170 = ptrtoint ptr %wreg582 to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %wreg582, align 4
  tail call void %1171(ptr noundef %hdev, i32 noundef 14681452, i32 noundef 12886016) #2
  %1172 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %asic_funcs, align 8
  %wreg584 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1173, i32 0, i32 58
  %1174 = ptrtoint ptr %wreg584 to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %wreg584, align 4
  tail call void %1175(ptr noundef %hdev, i32 noundef 14681388, i32 noundef 67100672) #2
  %1176 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %asic_funcs, align 8
  %wreg586 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1177, i32 0, i32 58
  %1178 = ptrtoint ptr %wreg586 to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %wreg586, align 4
  tail call void %1179(ptr noundef %hdev, i32 noundef 14681456, i32 noundef 12894208) #2
  %1180 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %asic_funcs, align 8
  %wreg588 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1181, i32 0, i32 58
  %1182 = ptrtoint ptr %wreg588 to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %wreg588, align 4
  tail call void %1183(ptr noundef %hdev, i32 noundef 14681392, i32 noundef 67092480) #2
  %1184 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %asic_funcs, align 8
  %wreg590 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1185, i32 0, i32 58
  %1186 = ptrtoint ptr %wreg590 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %wreg590, align 4
  tail call void %1187(ptr noundef %hdev, i32 noundef 14681460, i32 noundef 12910592) #2
  %1188 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %asic_funcs, align 8
  %wreg592 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1189, i32 0, i32 58
  %1190 = ptrtoint ptr %wreg592 to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %wreg592, align 4
  tail call void %1191(ptr noundef %hdev, i32 noundef 14681396, i32 noundef 67043328) #2
  %1192 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %asic_funcs, align 8
  %wreg594 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1193, i32 0, i32 58
  %1194 = ptrtoint ptr %wreg594 to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %wreg594, align 4
  tail call void %1195(ptr noundef %hdev, i32 noundef 14681464, i32 noundef 12976128) #2
  %1196 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %asic_funcs, align 8
  %wreg596 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1197, i32 0, i32 58
  %1198 = ptrtoint ptr %wreg596 to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %wreg596, align 4
  tail call void %1199(ptr noundef %hdev, i32 noundef 14681400, i32 noundef 66977792) #2
  %1200 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %asic_funcs, align 8
  %wreg598 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1201, i32 0, i32 58
  %1202 = ptrtoint ptr %wreg598 to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %wreg598, align 4
  tail call void %1203(ptr noundef %hdev, i32 noundef 14681468, i32 noundef 14688256) #2
  %1204 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %asic_funcs, align 8
  %wreg600 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1205, i32 0, i32 58
  %1206 = ptrtoint ptr %wreg600 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %wreg600, align 4
  tail call void %1207(ptr noundef %hdev, i32 noundef 14681404, i32 noundef 67100672) #2
  %1208 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %asic_funcs, align 8
  %wreg602 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1209, i32 0, i32 58
  %1210 = ptrtoint ptr %wreg602 to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %wreg602, align 4
  tail call void %1211(ptr noundef %hdev, i32 noundef 14681472, i32 noundef 38289408) #2
  %1212 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %asic_funcs, align 8
  %wreg604 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1213, i32 0, i32 58
  %1214 = ptrtoint ptr %wreg604 to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %wreg604, align 4
  tail call void %1215(ptr noundef %hdev, i32 noundef 14681408, i32 noundef 67104768) #2
  %1216 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %asic_funcs, align 8
  %wreg606 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1217, i32 0, i32 58
  %1218 = ptrtoint ptr %wreg606 to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %wreg606, align 4
  tail call void %1219(ptr noundef %hdev, i32 noundef 14681476, i32 noundef 46411776) #2
  %1220 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %asic_funcs, align 8
  %wreg608 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1221, i32 0, i32 58
  %1222 = ptrtoint ptr %wreg608 to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %wreg608, align 4
  tail call void %1223(ptr noundef %hdev, i32 noundef 14681412, i32 noundef 67104768) #2
  %1224 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %asic_funcs, align 8
  %wreg610 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1225, i32 0, i32 58
  %1226 = ptrtoint ptr %wreg610 to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load ptr, ptr %wreg610, align 4
  tail call void %1227(ptr noundef %hdev, i32 noundef 14943488, i32 noundef 65535) #2
  %1228 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %asic_funcs, align 8
  %wreg612 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1229, i32 0, i32 58
  %1230 = ptrtoint ptr %wreg612 to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %wreg612, align 4
  tail call void %1231(ptr noundef %hdev, i32 noundef 14943344, i32 noundef 254) #2
  %1232 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %asic_funcs, align 8
  %wreg614 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1233, i32 0, i32 58
  %1234 = ptrtoint ptr %wreg614 to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %wreg614, align 4
  tail call void %1235(ptr noundef %hdev, i32 noundef 14943424, i32 noundef 0) #2
  %1236 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load ptr, ptr %asic_funcs, align 8
  %wreg616 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1237, i32 0, i32 58
  %1238 = ptrtoint ptr %wreg616 to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %wreg616, align 4
  tail call void %1239(ptr noundef %hdev, i32 noundef 14943456, i32 noundef 0) #2
  %1240 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %asic_funcs, align 8
  %wreg618 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1241, i32 0, i32 58
  %1242 = ptrtoint ptr %wreg618 to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load ptr, ptr %wreg618, align 4
  tail call void %1243(ptr noundef %hdev, i32 noundef 14943360, i32 noundef 0) #2
  %1244 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %asic_funcs, align 8
  %wreg620 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1245, i32 0, i32 58
  %1246 = ptrtoint ptr %wreg620 to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %wreg620, align 4
  tail call void %1247(ptr noundef %hdev, i32 noundef 14943392, i32 noundef 1048448) #2
  %1248 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %asic_funcs, align 8
  %wreg622 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1249, i32 0, i32 58
  %1250 = ptrtoint ptr %wreg622 to i32
  call void @__asan_load4_noabort(i32 %1250)
  %1251 = load ptr, ptr %wreg622, align 4
  tail call void %1251(ptr noundef %hdev, i32 noundef 14943428, i32 noundef 0) #2
  %1252 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %asic_funcs, align 8
  %wreg624 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1253, i32 0, i32 58
  %1254 = ptrtoint ptr %wreg624 to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %wreg624, align 4
  tail call void %1255(ptr noundef %hdev, i32 noundef 14943460, i32 noundef 0) #2
  %1256 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load ptr, ptr %asic_funcs, align 8
  %wreg626 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1257, i32 0, i32 58
  %1258 = ptrtoint ptr %wreg626 to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load ptr, ptr %wreg626, align 4
  tail call void %1259(ptr noundef %hdev, i32 noundef 14943364, i32 noundef -536870912) #2
  %1260 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %asic_funcs, align 8
  %wreg628 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1261, i32 0, i32 58
  %1262 = ptrtoint ptr %wreg628 to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %wreg628, align 4
  tail call void %1263(ptr noundef %hdev, i32 noundef 14943396, i32 noundef 262143) #2
  %1264 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %asic_funcs, align 8
  %wreg630 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1265, i32 0, i32 58
  %1266 = ptrtoint ptr %wreg630 to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %wreg630, align 4
  tail call void %1267(ptr noundef %hdev, i32 noundef 14943568, i32 noundef 4456448) #2
  %1268 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %asic_funcs, align 8
  %wreg632 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1269, i32 0, i32 58
  %1270 = ptrtoint ptr %wreg632 to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %wreg632, align 4
  tail call void %1271(ptr noundef %hdev, i32 noundef 14943504, i32 noundef 67043328) #2
  %1272 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %asic_funcs, align 8
  %wreg634 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1273, i32 0, i32 58
  %1274 = ptrtoint ptr %wreg634 to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load ptr, ptr %wreg634, align 4
  tail call void %1275(ptr noundef %hdev, i32 noundef 14943572, i32 noundef 4718592) #2
  %1276 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %asic_funcs, align 8
  %wreg636 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1277, i32 0, i32 58
  %1278 = ptrtoint ptr %wreg636 to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load ptr, ptr %wreg636, align 4
  tail call void %1279(ptr noundef %hdev, i32 noundef 14943508, i32 noundef 66584576) #2
  %1280 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1280)
  %1281 = load ptr, ptr %asic_funcs, align 8
  %wreg638 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1281, i32 0, i32 58
  %1282 = ptrtoint ptr %wreg638 to i32
  call void @__asan_load4_noabort(i32 %1282)
  %1283 = load ptr, ptr %wreg638, align 4
  tail call void %1283(ptr noundef %hdev, i32 noundef 14943576, i32 noundef 6291456) #2
  %1284 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load ptr, ptr %asic_funcs, align 8
  %wreg640 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1285, i32 0, i32 58
  %1286 = ptrtoint ptr %wreg640 to i32
  call void @__asan_load4_noabort(i32 %1286)
  %1287 = load ptr, ptr %wreg640, align 4
  tail call void %1287(ptr noundef %hdev, i32 noundef 14943512, i32 noundef 65011712) #2
  %1288 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load ptr, ptr %asic_funcs, align 8
  %wreg642 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1289, i32 0, i32 58
  %1290 = ptrtoint ptr %wreg642 to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load ptr, ptr %wreg642, align 4
  tail call void %1291(ptr noundef %hdev, i32 noundef 14943580, i32 noundef 8388608) #2
  %1292 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load ptr, ptr %asic_funcs, align 8
  %wreg644 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1293, i32 0, i32 58
  %1294 = ptrtoint ptr %wreg644 to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %wreg644, align 4
  tail call void %1295(ptr noundef %hdev, i32 noundef 14943516, i32 noundef 66060288) #2
  %1296 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load ptr, ptr %asic_funcs, align 8
  %wreg646 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1297, i32 0, i32 58
  %1298 = ptrtoint ptr %wreg646 to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load ptr, ptr %wreg646, align 4
  tail call void %1299(ptr noundef %hdev, i32 noundef 14943584, i32 noundef 12591104) #2
  %1300 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %asic_funcs, align 8
  %wreg648 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1301, i32 0, i32 58
  %1302 = ptrtoint ptr %wreg648 to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load ptr, ptr %wreg648, align 4
  tail call void %1303(ptr noundef %hdev, i32 noundef 14943520, i32 noundef 67104768) #2
  %1304 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %asic_funcs, align 8
  %wreg650 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1305, i32 0, i32 58
  %1306 = ptrtoint ptr %wreg650 to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %wreg650, align 4
  tail call void %1307(ptr noundef %hdev, i32 noundef 14943588, i32 noundef 12845056) #2
  %1308 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load ptr, ptr %asic_funcs, align 8
  %wreg652 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1309, i32 0, i32 58
  %1310 = ptrtoint ptr %wreg652 to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %wreg652, align 4
  tail call void %1311(ptr noundef %hdev, i32 noundef 14943524, i32 noundef 67076096) #2
  %1312 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load ptr, ptr %asic_funcs, align 8
  %wreg654 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1313, i32 0, i32 58
  %1314 = ptrtoint ptr %wreg654 to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load ptr, ptr %wreg654, align 4
  tail call void %1315(ptr noundef %hdev, i32 noundef 14943592, i32 noundef 12877824) #2
  %1316 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %asic_funcs, align 8
  %wreg656 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1317, i32 0, i32 58
  %1318 = ptrtoint ptr %wreg656 to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load ptr, ptr %wreg656, align 4
  tail call void %1319(ptr noundef %hdev, i32 noundef 14943528, i32 noundef 67104768) #2
  %1320 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1320)
  %1321 = load ptr, ptr %asic_funcs, align 8
  %wreg658 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1321, i32 0, i32 58
  %1322 = ptrtoint ptr %wreg658 to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %wreg658, align 4
  tail call void %1323(ptr noundef %hdev, i32 noundef 14943596, i32 noundef 12886016) #2
  %1324 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load ptr, ptr %asic_funcs, align 8
  %wreg660 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1325, i32 0, i32 58
  %1326 = ptrtoint ptr %wreg660 to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load ptr, ptr %wreg660, align 4
  tail call void %1327(ptr noundef %hdev, i32 noundef 14943532, i32 noundef 67100672) #2
  %1328 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load ptr, ptr %asic_funcs, align 8
  %wreg662 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1329, i32 0, i32 58
  %1330 = ptrtoint ptr %wreg662 to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %wreg662, align 4
  tail call void %1331(ptr noundef %hdev, i32 noundef 14943600, i32 noundef 12894208) #2
  %1332 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %asic_funcs, align 8
  %wreg664 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1333, i32 0, i32 58
  %1334 = ptrtoint ptr %wreg664 to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load ptr, ptr %wreg664, align 4
  tail call void %1335(ptr noundef %hdev, i32 noundef 14943536, i32 noundef 67092480) #2
  %1336 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load ptr, ptr %asic_funcs, align 8
  %wreg666 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1337, i32 0, i32 58
  %1338 = ptrtoint ptr %wreg666 to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %wreg666, align 4
  tail call void %1339(ptr noundef %hdev, i32 noundef 14943604, i32 noundef 12910592) #2
  %1340 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load ptr, ptr %asic_funcs, align 8
  %wreg668 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1341, i32 0, i32 58
  %1342 = ptrtoint ptr %wreg668 to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load ptr, ptr %wreg668, align 4
  tail call void %1343(ptr noundef %hdev, i32 noundef 14943540, i32 noundef 67043328) #2
  %1344 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1344)
  %1345 = load ptr, ptr %asic_funcs, align 8
  %wreg670 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1345, i32 0, i32 58
  %1346 = ptrtoint ptr %wreg670 to i32
  call void @__asan_load4_noabort(i32 %1346)
  %1347 = load ptr, ptr %wreg670, align 4
  tail call void %1347(ptr noundef %hdev, i32 noundef 14943608, i32 noundef 12976128) #2
  %1348 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %asic_funcs, align 8
  %wreg672 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1349, i32 0, i32 58
  %1350 = ptrtoint ptr %wreg672 to i32
  call void @__asan_load4_noabort(i32 %1350)
  %1351 = load ptr, ptr %wreg672, align 4
  tail call void %1351(ptr noundef %hdev, i32 noundef 14943544, i32 noundef 66977792) #2
  %1352 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1352)
  %1353 = load ptr, ptr %asic_funcs, align 8
  %wreg674 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1353, i32 0, i32 58
  %1354 = ptrtoint ptr %wreg674 to i32
  call void @__asan_load4_noabort(i32 %1354)
  %1355 = load ptr, ptr %wreg674, align 4
  tail call void %1355(ptr noundef %hdev, i32 noundef 14943612, i32 noundef 14688256) #2
  %1356 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1356)
  %1357 = load ptr, ptr %asic_funcs, align 8
  %wreg676 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1357, i32 0, i32 58
  %1358 = ptrtoint ptr %wreg676 to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load ptr, ptr %wreg676, align 4
  tail call void %1359(ptr noundef %hdev, i32 noundef 14943548, i32 noundef 67100672) #2
  %1360 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %asic_funcs, align 8
  %wreg678 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1361, i32 0, i32 58
  %1362 = ptrtoint ptr %wreg678 to i32
  call void @__asan_load4_noabort(i32 %1362)
  %1363 = load ptr, ptr %wreg678, align 4
  tail call void %1363(ptr noundef %hdev, i32 noundef 14943616, i32 noundef 38289408) #2
  %1364 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1364)
  %1365 = load ptr, ptr %asic_funcs, align 8
  %wreg680 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1365, i32 0, i32 58
  %1366 = ptrtoint ptr %wreg680 to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %wreg680, align 4
  tail call void %1367(ptr noundef %hdev, i32 noundef 14943552, i32 noundef 67104768) #2
  %1368 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1368)
  %1369 = load ptr, ptr %asic_funcs, align 8
  %wreg682 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1369, i32 0, i32 58
  %1370 = ptrtoint ptr %wreg682 to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load ptr, ptr %wreg682, align 4
  tail call void %1371(ptr noundef %hdev, i32 noundef 14943620, i32 noundef 46411776) #2
  %1372 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load ptr, ptr %asic_funcs, align 8
  %wreg684 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1373, i32 0, i32 58
  %1374 = ptrtoint ptr %wreg684 to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load ptr, ptr %wreg684, align 4
  tail call void %1375(ptr noundef %hdev, i32 noundef 14943556, i32 noundef 67104768) #2
  %1376 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %asic_funcs, align 8
  %wreg686 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1377, i32 0, i32 58
  %1378 = ptrtoint ptr %wreg686 to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %wreg686, align 4
  tail call void %1379(ptr noundef %hdev, i32 noundef 15205632, i32 noundef 65535) #2
  %1380 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1380)
  %1381 = load ptr, ptr %asic_funcs, align 8
  %wreg688 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1381, i32 0, i32 58
  %1382 = ptrtoint ptr %wreg688 to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %wreg688, align 4
  tail call void %1383(ptr noundef %hdev, i32 noundef 15205488, i32 noundef 254) #2
  %1384 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load ptr, ptr %asic_funcs, align 8
  %wreg690 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1385, i32 0, i32 58
  %1386 = ptrtoint ptr %wreg690 to i32
  call void @__asan_load4_noabort(i32 %1386)
  %1387 = load ptr, ptr %wreg690, align 4
  tail call void %1387(ptr noundef %hdev, i32 noundef 15205568, i32 noundef 0) #2
  %1388 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1388)
  %1389 = load ptr, ptr %asic_funcs, align 8
  %wreg692 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1389, i32 0, i32 58
  %1390 = ptrtoint ptr %wreg692 to i32
  call void @__asan_load4_noabort(i32 %1390)
  %1391 = load ptr, ptr %wreg692, align 4
  tail call void %1391(ptr noundef %hdev, i32 noundef 15205600, i32 noundef 0) #2
  %1392 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1392)
  %1393 = load ptr, ptr %asic_funcs, align 8
  %wreg694 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1393, i32 0, i32 58
  %1394 = ptrtoint ptr %wreg694 to i32
  call void @__asan_load4_noabort(i32 %1394)
  %1395 = load ptr, ptr %wreg694, align 4
  tail call void %1395(ptr noundef %hdev, i32 noundef 15205504, i32 noundef 0) #2
  %1396 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1396)
  %1397 = load ptr, ptr %asic_funcs, align 8
  %wreg696 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1397, i32 0, i32 58
  %1398 = ptrtoint ptr %wreg696 to i32
  call void @__asan_load4_noabort(i32 %1398)
  %1399 = load ptr, ptr %wreg696, align 4
  tail call void %1399(ptr noundef %hdev, i32 noundef 15205536, i32 noundef 1048448) #2
  %1400 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1400)
  %1401 = load ptr, ptr %asic_funcs, align 8
  %wreg698 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1401, i32 0, i32 58
  %1402 = ptrtoint ptr %wreg698 to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load ptr, ptr %wreg698, align 4
  tail call void %1403(ptr noundef %hdev, i32 noundef 15205572, i32 noundef 0) #2
  %1404 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1404)
  %1405 = load ptr, ptr %asic_funcs, align 8
  %wreg700 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1405, i32 0, i32 58
  %1406 = ptrtoint ptr %wreg700 to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load ptr, ptr %wreg700, align 4
  tail call void %1407(ptr noundef %hdev, i32 noundef 15205604, i32 noundef 0) #2
  %1408 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load ptr, ptr %asic_funcs, align 8
  %wreg702 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1409, i32 0, i32 58
  %1410 = ptrtoint ptr %wreg702 to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load ptr, ptr %wreg702, align 4
  tail call void %1411(ptr noundef %hdev, i32 noundef 15205508, i32 noundef -536870912) #2
  %1412 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load ptr, ptr %asic_funcs, align 8
  %wreg704 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1413, i32 0, i32 58
  %1414 = ptrtoint ptr %wreg704 to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %wreg704, align 4
  tail call void %1415(ptr noundef %hdev, i32 noundef 15205540, i32 noundef 262143) #2
  %1416 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1416)
  %1417 = load ptr, ptr %asic_funcs, align 8
  %wreg706 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1417, i32 0, i32 58
  %1418 = ptrtoint ptr %wreg706 to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load ptr, ptr %wreg706, align 4
  tail call void %1419(ptr noundef %hdev, i32 noundef 15205712, i32 noundef 4456448) #2
  %1420 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load ptr, ptr %asic_funcs, align 8
  %wreg708 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1421, i32 0, i32 58
  %1422 = ptrtoint ptr %wreg708 to i32
  call void @__asan_load4_noabort(i32 %1422)
  %1423 = load ptr, ptr %wreg708, align 4
  tail call void %1423(ptr noundef %hdev, i32 noundef 15205648, i32 noundef 67043328) #2
  %1424 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1424)
  %1425 = load ptr, ptr %asic_funcs, align 8
  %wreg710 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1425, i32 0, i32 58
  %1426 = ptrtoint ptr %wreg710 to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load ptr, ptr %wreg710, align 4
  tail call void %1427(ptr noundef %hdev, i32 noundef 15205716, i32 noundef 4718592) #2
  %1428 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load ptr, ptr %asic_funcs, align 8
  %wreg712 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1429, i32 0, i32 58
  %1430 = ptrtoint ptr %wreg712 to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load ptr, ptr %wreg712, align 4
  tail call void %1431(ptr noundef %hdev, i32 noundef 15205652, i32 noundef 66584576) #2
  %1432 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load ptr, ptr %asic_funcs, align 8
  %wreg714 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1433, i32 0, i32 58
  %1434 = ptrtoint ptr %wreg714 to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load ptr, ptr %wreg714, align 4
  tail call void %1435(ptr noundef %hdev, i32 noundef 15205720, i32 noundef 6291456) #2
  %1436 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %asic_funcs, align 8
  %wreg716 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1437, i32 0, i32 58
  %1438 = ptrtoint ptr %wreg716 to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %wreg716, align 4
  tail call void %1439(ptr noundef %hdev, i32 noundef 15205656, i32 noundef 65011712) #2
  %1440 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1440)
  %1441 = load ptr, ptr %asic_funcs, align 8
  %wreg718 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1441, i32 0, i32 58
  %1442 = ptrtoint ptr %wreg718 to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %wreg718, align 4
  tail call void %1443(ptr noundef %hdev, i32 noundef 15205724, i32 noundef 8388608) #2
  %1444 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %asic_funcs, align 8
  %wreg720 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1445, i32 0, i32 58
  %1446 = ptrtoint ptr %wreg720 to i32
  call void @__asan_load4_noabort(i32 %1446)
  %1447 = load ptr, ptr %wreg720, align 4
  tail call void %1447(ptr noundef %hdev, i32 noundef 15205660, i32 noundef 66060288) #2
  %1448 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %asic_funcs, align 8
  %wreg722 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1449, i32 0, i32 58
  %1450 = ptrtoint ptr %wreg722 to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %wreg722, align 4
  tail call void %1451(ptr noundef %hdev, i32 noundef 15205728, i32 noundef 12591104) #2
  %1452 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load ptr, ptr %asic_funcs, align 8
  %wreg724 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1453, i32 0, i32 58
  %1454 = ptrtoint ptr %wreg724 to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %wreg724, align 4
  tail call void %1455(ptr noundef %hdev, i32 noundef 15205664, i32 noundef 67104768) #2
  %1456 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load ptr, ptr %asic_funcs, align 8
  %wreg726 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1457, i32 0, i32 58
  %1458 = ptrtoint ptr %wreg726 to i32
  call void @__asan_load4_noabort(i32 %1458)
  %1459 = load ptr, ptr %wreg726, align 4
  tail call void %1459(ptr noundef %hdev, i32 noundef 15205732, i32 noundef 12845056) #2
  %1460 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load ptr, ptr %asic_funcs, align 8
  %wreg728 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1461, i32 0, i32 58
  %1462 = ptrtoint ptr %wreg728 to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load ptr, ptr %wreg728, align 4
  tail call void %1463(ptr noundef %hdev, i32 noundef 15205668, i32 noundef 67076096) #2
  %1464 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load ptr, ptr %asic_funcs, align 8
  %wreg730 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1465, i32 0, i32 58
  %1466 = ptrtoint ptr %wreg730 to i32
  call void @__asan_load4_noabort(i32 %1466)
  %1467 = load ptr, ptr %wreg730, align 4
  tail call void %1467(ptr noundef %hdev, i32 noundef 15205736, i32 noundef 12877824) #2
  %1468 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %asic_funcs, align 8
  %wreg732 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1469, i32 0, i32 58
  %1470 = ptrtoint ptr %wreg732 to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %wreg732, align 4
  tail call void %1471(ptr noundef %hdev, i32 noundef 15205672, i32 noundef 67104768) #2
  %1472 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %asic_funcs, align 8
  %wreg734 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1473, i32 0, i32 58
  %1474 = ptrtoint ptr %wreg734 to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %wreg734, align 4
  tail call void %1475(ptr noundef %hdev, i32 noundef 15205740, i32 noundef 12886016) #2
  %1476 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load ptr, ptr %asic_funcs, align 8
  %wreg736 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1477, i32 0, i32 58
  %1478 = ptrtoint ptr %wreg736 to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %wreg736, align 4
  tail call void %1479(ptr noundef %hdev, i32 noundef 15205676, i32 noundef 67100672) #2
  %1480 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %asic_funcs, align 8
  %wreg738 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1481, i32 0, i32 58
  %1482 = ptrtoint ptr %wreg738 to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load ptr, ptr %wreg738, align 4
  tail call void %1483(ptr noundef %hdev, i32 noundef 15205744, i32 noundef 12894208) #2
  %1484 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %asic_funcs, align 8
  %wreg740 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1485, i32 0, i32 58
  %1486 = ptrtoint ptr %wreg740 to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load ptr, ptr %wreg740, align 4
  tail call void %1487(ptr noundef %hdev, i32 noundef 15205680, i32 noundef 67092480) #2
  %1488 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %asic_funcs, align 8
  %wreg742 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1489, i32 0, i32 58
  %1490 = ptrtoint ptr %wreg742 to i32
  call void @__asan_load4_noabort(i32 %1490)
  %1491 = load ptr, ptr %wreg742, align 4
  tail call void %1491(ptr noundef %hdev, i32 noundef 15205748, i32 noundef 12910592) #2
  %1492 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load ptr, ptr %asic_funcs, align 8
  %wreg744 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1493, i32 0, i32 58
  %1494 = ptrtoint ptr %wreg744 to i32
  call void @__asan_load4_noabort(i32 %1494)
  %1495 = load ptr, ptr %wreg744, align 4
  tail call void %1495(ptr noundef %hdev, i32 noundef 15205684, i32 noundef 67043328) #2
  %1496 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load ptr, ptr %asic_funcs, align 8
  %wreg746 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1497, i32 0, i32 58
  %1498 = ptrtoint ptr %wreg746 to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %wreg746, align 4
  tail call void %1499(ptr noundef %hdev, i32 noundef 15205752, i32 noundef 12976128) #2
  %1500 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1500)
  %1501 = load ptr, ptr %asic_funcs, align 8
  %wreg748 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1501, i32 0, i32 58
  %1502 = ptrtoint ptr %wreg748 to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load ptr, ptr %wreg748, align 4
  tail call void %1503(ptr noundef %hdev, i32 noundef 15205688, i32 noundef 66977792) #2
  %1504 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %asic_funcs, align 8
  %wreg750 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1505, i32 0, i32 58
  %1506 = ptrtoint ptr %wreg750 to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load ptr, ptr %wreg750, align 4
  tail call void %1507(ptr noundef %hdev, i32 noundef 15205756, i32 noundef 14688256) #2
  %1508 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1508)
  %1509 = load ptr, ptr %asic_funcs, align 8
  %wreg752 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1509, i32 0, i32 58
  %1510 = ptrtoint ptr %wreg752 to i32
  call void @__asan_load4_noabort(i32 %1510)
  %1511 = load ptr, ptr %wreg752, align 4
  tail call void %1511(ptr noundef %hdev, i32 noundef 15205692, i32 noundef 67100672) #2
  %1512 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load ptr, ptr %asic_funcs, align 8
  %wreg754 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1513, i32 0, i32 58
  %1514 = ptrtoint ptr %wreg754 to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load ptr, ptr %wreg754, align 4
  tail call void %1515(ptr noundef %hdev, i32 noundef 15205760, i32 noundef 38289408) #2
  %1516 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load ptr, ptr %asic_funcs, align 8
  %wreg756 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1517, i32 0, i32 58
  %1518 = ptrtoint ptr %wreg756 to i32
  call void @__asan_load4_noabort(i32 %1518)
  %1519 = load ptr, ptr %wreg756, align 4
  tail call void %1519(ptr noundef %hdev, i32 noundef 15205696, i32 noundef 67104768) #2
  %1520 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load ptr, ptr %asic_funcs, align 8
  %wreg758 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1521, i32 0, i32 58
  %1522 = ptrtoint ptr %wreg758 to i32
  call void @__asan_load4_noabort(i32 %1522)
  %1523 = load ptr, ptr %wreg758, align 4
  tail call void %1523(ptr noundef %hdev, i32 noundef 15205764, i32 noundef 46411776) #2
  %1524 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1524)
  %1525 = load ptr, ptr %asic_funcs, align 8
  %wreg760 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1525, i32 0, i32 58
  %1526 = ptrtoint ptr %wreg760 to i32
  call void @__asan_load4_noabort(i32 %1526)
  %1527 = load ptr, ptr %wreg760, align 4
  tail call void %1527(ptr noundef %hdev, i32 noundef 15205700, i32 noundef 67104768) #2
  %1528 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load ptr, ptr %asic_funcs, align 8
  %wreg762 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1529, i32 0, i32 58
  %1530 = ptrtoint ptr %wreg762 to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load ptr, ptr %wreg762, align 4
  tail call void %1531(ptr noundef %hdev, i32 noundef 15467776, i32 noundef 65535) #2
  %1532 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %asic_funcs, align 8
  %wreg764 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1533, i32 0, i32 58
  %1534 = ptrtoint ptr %wreg764 to i32
  call void @__asan_load4_noabort(i32 %1534)
  %1535 = load ptr, ptr %wreg764, align 4
  tail call void %1535(ptr noundef %hdev, i32 noundef 15467632, i32 noundef 254) #2
  %1536 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %asic_funcs, align 8
  %wreg766 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1537, i32 0, i32 58
  %1538 = ptrtoint ptr %wreg766 to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %wreg766, align 4
  tail call void %1539(ptr noundef %hdev, i32 noundef 15467712, i32 noundef 0) #2
  %1540 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load ptr, ptr %asic_funcs, align 8
  %wreg768 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1541, i32 0, i32 58
  %1542 = ptrtoint ptr %wreg768 to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %wreg768, align 4
  tail call void %1543(ptr noundef %hdev, i32 noundef 15467744, i32 noundef 0) #2
  %1544 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %asic_funcs, align 8
  %wreg770 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1545, i32 0, i32 58
  %1546 = ptrtoint ptr %wreg770 to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load ptr, ptr %wreg770, align 4
  tail call void %1547(ptr noundef %hdev, i32 noundef 15467648, i32 noundef 0) #2
  %1548 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %asic_funcs, align 8
  %wreg772 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1549, i32 0, i32 58
  %1550 = ptrtoint ptr %wreg772 to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %wreg772, align 4
  tail call void %1551(ptr noundef %hdev, i32 noundef 15467680, i32 noundef 1048448) #2
  %1552 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load ptr, ptr %asic_funcs, align 8
  %wreg774 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1553, i32 0, i32 58
  %1554 = ptrtoint ptr %wreg774 to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load ptr, ptr %wreg774, align 4
  tail call void %1555(ptr noundef %hdev, i32 noundef 15467716, i32 noundef 0) #2
  %1556 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %asic_funcs, align 8
  %wreg776 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1557, i32 0, i32 58
  %1558 = ptrtoint ptr %wreg776 to i32
  call void @__asan_load4_noabort(i32 %1558)
  %1559 = load ptr, ptr %wreg776, align 4
  tail call void %1559(ptr noundef %hdev, i32 noundef 15467748, i32 noundef 0) #2
  %1560 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load ptr, ptr %asic_funcs, align 8
  %wreg778 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1561, i32 0, i32 58
  %1562 = ptrtoint ptr %wreg778 to i32
  call void @__asan_load4_noabort(i32 %1562)
  %1563 = load ptr, ptr %wreg778, align 4
  tail call void %1563(ptr noundef %hdev, i32 noundef 15467652, i32 noundef -536870912) #2
  %1564 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1564)
  %1565 = load ptr, ptr %asic_funcs, align 8
  %wreg780 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1565, i32 0, i32 58
  %1566 = ptrtoint ptr %wreg780 to i32
  call void @__asan_load4_noabort(i32 %1566)
  %1567 = load ptr, ptr %wreg780, align 4
  tail call void %1567(ptr noundef %hdev, i32 noundef 15467684, i32 noundef 262143) #2
  %1568 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1568)
  %1569 = load ptr, ptr %asic_funcs, align 8
  %wreg782 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1569, i32 0, i32 58
  %1570 = ptrtoint ptr %wreg782 to i32
  call void @__asan_load4_noabort(i32 %1570)
  %1571 = load ptr, ptr %wreg782, align 4
  tail call void %1571(ptr noundef %hdev, i32 noundef 15467856, i32 noundef 4456448) #2
  %1572 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1572)
  %1573 = load ptr, ptr %asic_funcs, align 8
  %wreg784 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1573, i32 0, i32 58
  %1574 = ptrtoint ptr %wreg784 to i32
  call void @__asan_load4_noabort(i32 %1574)
  %1575 = load ptr, ptr %wreg784, align 4
  tail call void %1575(ptr noundef %hdev, i32 noundef 15467792, i32 noundef 67043328) #2
  %1576 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1576)
  %1577 = load ptr, ptr %asic_funcs, align 8
  %wreg786 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1577, i32 0, i32 58
  %1578 = ptrtoint ptr %wreg786 to i32
  call void @__asan_load4_noabort(i32 %1578)
  %1579 = load ptr, ptr %wreg786, align 4
  tail call void %1579(ptr noundef %hdev, i32 noundef 15467860, i32 noundef 4718592) #2
  %1580 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1580)
  %1581 = load ptr, ptr %asic_funcs, align 8
  %wreg788 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1581, i32 0, i32 58
  %1582 = ptrtoint ptr %wreg788 to i32
  call void @__asan_load4_noabort(i32 %1582)
  %1583 = load ptr, ptr %wreg788, align 4
  tail call void %1583(ptr noundef %hdev, i32 noundef 15467796, i32 noundef 66584576) #2
  %1584 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %asic_funcs, align 8
  %wreg790 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1585, i32 0, i32 58
  %1586 = ptrtoint ptr %wreg790 to i32
  call void @__asan_load4_noabort(i32 %1586)
  %1587 = load ptr, ptr %wreg790, align 4
  tail call void %1587(ptr noundef %hdev, i32 noundef 15467864, i32 noundef 6291456) #2
  %1588 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load ptr, ptr %asic_funcs, align 8
  %wreg792 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1589, i32 0, i32 58
  %1590 = ptrtoint ptr %wreg792 to i32
  call void @__asan_load4_noabort(i32 %1590)
  %1591 = load ptr, ptr %wreg792, align 4
  tail call void %1591(ptr noundef %hdev, i32 noundef 15467800, i32 noundef 65011712) #2
  %1592 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1592)
  %1593 = load ptr, ptr %asic_funcs, align 8
  %wreg794 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1593, i32 0, i32 58
  %1594 = ptrtoint ptr %wreg794 to i32
  call void @__asan_load4_noabort(i32 %1594)
  %1595 = load ptr, ptr %wreg794, align 4
  tail call void %1595(ptr noundef %hdev, i32 noundef 15467868, i32 noundef 8388608) #2
  %1596 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1596)
  %1597 = load ptr, ptr %asic_funcs, align 8
  %wreg796 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1597, i32 0, i32 58
  %1598 = ptrtoint ptr %wreg796 to i32
  call void @__asan_load4_noabort(i32 %1598)
  %1599 = load ptr, ptr %wreg796, align 4
  tail call void %1599(ptr noundef %hdev, i32 noundef 15467804, i32 noundef 66060288) #2
  %1600 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1600)
  %1601 = load ptr, ptr %asic_funcs, align 8
  %wreg798 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1601, i32 0, i32 58
  %1602 = ptrtoint ptr %wreg798 to i32
  call void @__asan_load4_noabort(i32 %1602)
  %1603 = load ptr, ptr %wreg798, align 4
  tail call void %1603(ptr noundef %hdev, i32 noundef 15467872, i32 noundef 12591104) #2
  %1604 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %asic_funcs, align 8
  %wreg800 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1605, i32 0, i32 58
  %1606 = ptrtoint ptr %wreg800 to i32
  call void @__asan_load4_noabort(i32 %1606)
  %1607 = load ptr, ptr %wreg800, align 4
  tail call void %1607(ptr noundef %hdev, i32 noundef 15467808, i32 noundef 67104768) #2
  %1608 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1608)
  %1609 = load ptr, ptr %asic_funcs, align 8
  %wreg802 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1609, i32 0, i32 58
  %1610 = ptrtoint ptr %wreg802 to i32
  call void @__asan_load4_noabort(i32 %1610)
  %1611 = load ptr, ptr %wreg802, align 4
  tail call void %1611(ptr noundef %hdev, i32 noundef 15467876, i32 noundef 12845056) #2
  %1612 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1612)
  %1613 = load ptr, ptr %asic_funcs, align 8
  %wreg804 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1613, i32 0, i32 58
  %1614 = ptrtoint ptr %wreg804 to i32
  call void @__asan_load4_noabort(i32 %1614)
  %1615 = load ptr, ptr %wreg804, align 4
  tail call void %1615(ptr noundef %hdev, i32 noundef 15467812, i32 noundef 67076096) #2
  %1616 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1616)
  %1617 = load ptr, ptr %asic_funcs, align 8
  %wreg806 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1617, i32 0, i32 58
  %1618 = ptrtoint ptr %wreg806 to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load ptr, ptr %wreg806, align 4
  tail call void %1619(ptr noundef %hdev, i32 noundef 15467880, i32 noundef 12877824) #2
  %1620 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load ptr, ptr %asic_funcs, align 8
  %wreg808 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1621, i32 0, i32 58
  %1622 = ptrtoint ptr %wreg808 to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load ptr, ptr %wreg808, align 4
  tail call void %1623(ptr noundef %hdev, i32 noundef 15467816, i32 noundef 67104768) #2
  %1624 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1624)
  %1625 = load ptr, ptr %asic_funcs, align 8
  %wreg810 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1625, i32 0, i32 58
  %1626 = ptrtoint ptr %wreg810 to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load ptr, ptr %wreg810, align 4
  tail call void %1627(ptr noundef %hdev, i32 noundef 15467884, i32 noundef 12886016) #2
  %1628 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1628)
  %1629 = load ptr, ptr %asic_funcs, align 8
  %wreg812 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1629, i32 0, i32 58
  %1630 = ptrtoint ptr %wreg812 to i32
  call void @__asan_load4_noabort(i32 %1630)
  %1631 = load ptr, ptr %wreg812, align 4
  tail call void %1631(ptr noundef %hdev, i32 noundef 15467820, i32 noundef 67100672) #2
  %1632 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1632)
  %1633 = load ptr, ptr %asic_funcs, align 8
  %wreg814 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1633, i32 0, i32 58
  %1634 = ptrtoint ptr %wreg814 to i32
  call void @__asan_load4_noabort(i32 %1634)
  %1635 = load ptr, ptr %wreg814, align 4
  tail call void %1635(ptr noundef %hdev, i32 noundef 15467888, i32 noundef 12894208) #2
  %1636 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1636)
  %1637 = load ptr, ptr %asic_funcs, align 8
  %wreg816 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1637, i32 0, i32 58
  %1638 = ptrtoint ptr %wreg816 to i32
  call void @__asan_load4_noabort(i32 %1638)
  %1639 = load ptr, ptr %wreg816, align 4
  tail call void %1639(ptr noundef %hdev, i32 noundef 15467824, i32 noundef 67092480) #2
  %1640 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1640)
  %1641 = load ptr, ptr %asic_funcs, align 8
  %wreg818 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1641, i32 0, i32 58
  %1642 = ptrtoint ptr %wreg818 to i32
  call void @__asan_load4_noabort(i32 %1642)
  %1643 = load ptr, ptr %wreg818, align 4
  tail call void %1643(ptr noundef %hdev, i32 noundef 15467892, i32 noundef 12910592) #2
  %1644 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1644)
  %1645 = load ptr, ptr %asic_funcs, align 8
  %wreg820 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1645, i32 0, i32 58
  %1646 = ptrtoint ptr %wreg820 to i32
  call void @__asan_load4_noabort(i32 %1646)
  %1647 = load ptr, ptr %wreg820, align 4
  tail call void %1647(ptr noundef %hdev, i32 noundef 15467828, i32 noundef 67043328) #2
  %1648 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1648)
  %1649 = load ptr, ptr %asic_funcs, align 8
  %wreg822 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1649, i32 0, i32 58
  %1650 = ptrtoint ptr %wreg822 to i32
  call void @__asan_load4_noabort(i32 %1650)
  %1651 = load ptr, ptr %wreg822, align 4
  tail call void %1651(ptr noundef %hdev, i32 noundef 15467896, i32 noundef 12976128) #2
  %1652 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1652)
  %1653 = load ptr, ptr %asic_funcs, align 8
  %wreg824 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1653, i32 0, i32 58
  %1654 = ptrtoint ptr %wreg824 to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load ptr, ptr %wreg824, align 4
  tail call void %1655(ptr noundef %hdev, i32 noundef 15467832, i32 noundef 66977792) #2
  %1656 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1656)
  %1657 = load ptr, ptr %asic_funcs, align 8
  %wreg826 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1657, i32 0, i32 58
  %1658 = ptrtoint ptr %wreg826 to i32
  call void @__asan_load4_noabort(i32 %1658)
  %1659 = load ptr, ptr %wreg826, align 4
  tail call void %1659(ptr noundef %hdev, i32 noundef 15467900, i32 noundef 14688256) #2
  %1660 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1660)
  %1661 = load ptr, ptr %asic_funcs, align 8
  %wreg828 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1661, i32 0, i32 58
  %1662 = ptrtoint ptr %wreg828 to i32
  call void @__asan_load4_noabort(i32 %1662)
  %1663 = load ptr, ptr %wreg828, align 4
  tail call void %1663(ptr noundef %hdev, i32 noundef 15467836, i32 noundef 67100672) #2
  %1664 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1664)
  %1665 = load ptr, ptr %asic_funcs, align 8
  %wreg830 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1665, i32 0, i32 58
  %1666 = ptrtoint ptr %wreg830 to i32
  call void @__asan_load4_noabort(i32 %1666)
  %1667 = load ptr, ptr %wreg830, align 4
  tail call void %1667(ptr noundef %hdev, i32 noundef 15467904, i32 noundef 38289408) #2
  %1668 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1668)
  %1669 = load ptr, ptr %asic_funcs, align 8
  %wreg832 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1669, i32 0, i32 58
  %1670 = ptrtoint ptr %wreg832 to i32
  call void @__asan_load4_noabort(i32 %1670)
  %1671 = load ptr, ptr %wreg832, align 4
  tail call void %1671(ptr noundef %hdev, i32 noundef 15467840, i32 noundef 67104768) #2
  %1672 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1672)
  %1673 = load ptr, ptr %asic_funcs, align 8
  %wreg834 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1673, i32 0, i32 58
  %1674 = ptrtoint ptr %wreg834 to i32
  call void @__asan_load4_noabort(i32 %1674)
  %1675 = load ptr, ptr %wreg834, align 4
  tail call void %1675(ptr noundef %hdev, i32 noundef 15467908, i32 noundef 46411776) #2
  %1676 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1676)
  %1677 = load ptr, ptr %asic_funcs, align 8
  %wreg836 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1677, i32 0, i32 58
  %1678 = ptrtoint ptr %wreg836 to i32
  call void @__asan_load4_noabort(i32 %1678)
  %1679 = load ptr, ptr %wreg836, align 4
  tail call void %1679(ptr noundef %hdev, i32 noundef 15467844, i32 noundef 67104768) #2
  %1680 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1680)
  %1681 = load ptr, ptr %asic_funcs, align 8
  %wreg838 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1681, i32 0, i32 58
  %1682 = ptrtoint ptr %wreg838 to i32
  call void @__asan_load4_noabort(i32 %1682)
  %1683 = load ptr, ptr %wreg838, align 4
  tail call void %1683(ptr noundef %hdev, i32 noundef 15729920, i32 noundef 65535) #2
  %1684 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1684)
  %1685 = load ptr, ptr %asic_funcs, align 8
  %wreg840 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1685, i32 0, i32 58
  %1686 = ptrtoint ptr %wreg840 to i32
  call void @__asan_load4_noabort(i32 %1686)
  %1687 = load ptr, ptr %wreg840, align 4
  tail call void %1687(ptr noundef %hdev, i32 noundef 15729776, i32 noundef 254) #2
  %1688 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1688)
  %1689 = load ptr, ptr %asic_funcs, align 8
  %wreg842 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1689, i32 0, i32 58
  %1690 = ptrtoint ptr %wreg842 to i32
  call void @__asan_load4_noabort(i32 %1690)
  %1691 = load ptr, ptr %wreg842, align 4
  tail call void %1691(ptr noundef %hdev, i32 noundef 15729856, i32 noundef 0) #2
  %1692 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1692)
  %1693 = load ptr, ptr %asic_funcs, align 8
  %wreg844 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1693, i32 0, i32 58
  %1694 = ptrtoint ptr %wreg844 to i32
  call void @__asan_load4_noabort(i32 %1694)
  %1695 = load ptr, ptr %wreg844, align 4
  tail call void %1695(ptr noundef %hdev, i32 noundef 15729888, i32 noundef 0) #2
  %1696 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1696)
  %1697 = load ptr, ptr %asic_funcs, align 8
  %wreg846 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1697, i32 0, i32 58
  %1698 = ptrtoint ptr %wreg846 to i32
  call void @__asan_load4_noabort(i32 %1698)
  %1699 = load ptr, ptr %wreg846, align 4
  tail call void %1699(ptr noundef %hdev, i32 noundef 15729792, i32 noundef 0) #2
  %1700 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1700)
  %1701 = load ptr, ptr %asic_funcs, align 8
  %wreg848 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1701, i32 0, i32 58
  %1702 = ptrtoint ptr %wreg848 to i32
  call void @__asan_load4_noabort(i32 %1702)
  %1703 = load ptr, ptr %wreg848, align 4
  tail call void %1703(ptr noundef %hdev, i32 noundef 15729824, i32 noundef 1048448) #2
  %1704 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1704)
  %1705 = load ptr, ptr %asic_funcs, align 8
  %wreg850 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1705, i32 0, i32 58
  %1706 = ptrtoint ptr %wreg850 to i32
  call void @__asan_load4_noabort(i32 %1706)
  %1707 = load ptr, ptr %wreg850, align 4
  tail call void %1707(ptr noundef %hdev, i32 noundef 15729860, i32 noundef 0) #2
  %1708 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1708)
  %1709 = load ptr, ptr %asic_funcs, align 8
  %wreg852 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1709, i32 0, i32 58
  %1710 = ptrtoint ptr %wreg852 to i32
  call void @__asan_load4_noabort(i32 %1710)
  %1711 = load ptr, ptr %wreg852, align 4
  tail call void %1711(ptr noundef %hdev, i32 noundef 15729892, i32 noundef 0) #2
  %1712 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1712)
  %1713 = load ptr, ptr %asic_funcs, align 8
  %wreg854 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1713, i32 0, i32 58
  %1714 = ptrtoint ptr %wreg854 to i32
  call void @__asan_load4_noabort(i32 %1714)
  %1715 = load ptr, ptr %wreg854, align 4
  tail call void %1715(ptr noundef %hdev, i32 noundef 15729796, i32 noundef -536870912) #2
  %1716 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1716)
  %1717 = load ptr, ptr %asic_funcs, align 8
  %wreg856 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1717, i32 0, i32 58
  %1718 = ptrtoint ptr %wreg856 to i32
  call void @__asan_load4_noabort(i32 %1718)
  %1719 = load ptr, ptr %wreg856, align 4
  tail call void %1719(ptr noundef %hdev, i32 noundef 15729828, i32 noundef 262143) #2
  %1720 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1720)
  %1721 = load ptr, ptr %asic_funcs, align 8
  %wreg858 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1721, i32 0, i32 58
  %1722 = ptrtoint ptr %wreg858 to i32
  call void @__asan_load4_noabort(i32 %1722)
  %1723 = load ptr, ptr %wreg858, align 4
  tail call void %1723(ptr noundef %hdev, i32 noundef 15730000, i32 noundef 4456448) #2
  %1724 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1724)
  %1725 = load ptr, ptr %asic_funcs, align 8
  %wreg860 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1725, i32 0, i32 58
  %1726 = ptrtoint ptr %wreg860 to i32
  call void @__asan_load4_noabort(i32 %1726)
  %1727 = load ptr, ptr %wreg860, align 4
  tail call void %1727(ptr noundef %hdev, i32 noundef 15729936, i32 noundef 67043328) #2
  %1728 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1728)
  %1729 = load ptr, ptr %asic_funcs, align 8
  %wreg862 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1729, i32 0, i32 58
  %1730 = ptrtoint ptr %wreg862 to i32
  call void @__asan_load4_noabort(i32 %1730)
  %1731 = load ptr, ptr %wreg862, align 4
  tail call void %1731(ptr noundef %hdev, i32 noundef 15730004, i32 noundef 4718592) #2
  %1732 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1732)
  %1733 = load ptr, ptr %asic_funcs, align 8
  %wreg864 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1733, i32 0, i32 58
  %1734 = ptrtoint ptr %wreg864 to i32
  call void @__asan_load4_noabort(i32 %1734)
  %1735 = load ptr, ptr %wreg864, align 4
  tail call void %1735(ptr noundef %hdev, i32 noundef 15729940, i32 noundef 66584576) #2
  %1736 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1736)
  %1737 = load ptr, ptr %asic_funcs, align 8
  %wreg866 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1737, i32 0, i32 58
  %1738 = ptrtoint ptr %wreg866 to i32
  call void @__asan_load4_noabort(i32 %1738)
  %1739 = load ptr, ptr %wreg866, align 4
  tail call void %1739(ptr noundef %hdev, i32 noundef 15730008, i32 noundef 6291456) #2
  %1740 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1740)
  %1741 = load ptr, ptr %asic_funcs, align 8
  %wreg868 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1741, i32 0, i32 58
  %1742 = ptrtoint ptr %wreg868 to i32
  call void @__asan_load4_noabort(i32 %1742)
  %1743 = load ptr, ptr %wreg868, align 4
  tail call void %1743(ptr noundef %hdev, i32 noundef 15729944, i32 noundef 65011712) #2
  %1744 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1744)
  %1745 = load ptr, ptr %asic_funcs, align 8
  %wreg870 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1745, i32 0, i32 58
  %1746 = ptrtoint ptr %wreg870 to i32
  call void @__asan_load4_noabort(i32 %1746)
  %1747 = load ptr, ptr %wreg870, align 4
  tail call void %1747(ptr noundef %hdev, i32 noundef 15730012, i32 noundef 8388608) #2
  %1748 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1748)
  %1749 = load ptr, ptr %asic_funcs, align 8
  %wreg872 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1749, i32 0, i32 58
  %1750 = ptrtoint ptr %wreg872 to i32
  call void @__asan_load4_noabort(i32 %1750)
  %1751 = load ptr, ptr %wreg872, align 4
  tail call void %1751(ptr noundef %hdev, i32 noundef 15729948, i32 noundef 66060288) #2
  %1752 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1752)
  %1753 = load ptr, ptr %asic_funcs, align 8
  %wreg874 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1753, i32 0, i32 58
  %1754 = ptrtoint ptr %wreg874 to i32
  call void @__asan_load4_noabort(i32 %1754)
  %1755 = load ptr, ptr %wreg874, align 4
  tail call void %1755(ptr noundef %hdev, i32 noundef 15730016, i32 noundef 12591104) #2
  %1756 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1756)
  %1757 = load ptr, ptr %asic_funcs, align 8
  %wreg876 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1757, i32 0, i32 58
  %1758 = ptrtoint ptr %wreg876 to i32
  call void @__asan_load4_noabort(i32 %1758)
  %1759 = load ptr, ptr %wreg876, align 4
  tail call void %1759(ptr noundef %hdev, i32 noundef 15729952, i32 noundef 67104768) #2
  %1760 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1760)
  %1761 = load ptr, ptr %asic_funcs, align 8
  %wreg878 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1761, i32 0, i32 58
  %1762 = ptrtoint ptr %wreg878 to i32
  call void @__asan_load4_noabort(i32 %1762)
  %1763 = load ptr, ptr %wreg878, align 4
  tail call void %1763(ptr noundef %hdev, i32 noundef 15730020, i32 noundef 12845056) #2
  %1764 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1764)
  %1765 = load ptr, ptr %asic_funcs, align 8
  %wreg880 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1765, i32 0, i32 58
  %1766 = ptrtoint ptr %wreg880 to i32
  call void @__asan_load4_noabort(i32 %1766)
  %1767 = load ptr, ptr %wreg880, align 4
  tail call void %1767(ptr noundef %hdev, i32 noundef 15729956, i32 noundef 67076096) #2
  %1768 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1768)
  %1769 = load ptr, ptr %asic_funcs, align 8
  %wreg882 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1769, i32 0, i32 58
  %1770 = ptrtoint ptr %wreg882 to i32
  call void @__asan_load4_noabort(i32 %1770)
  %1771 = load ptr, ptr %wreg882, align 4
  tail call void %1771(ptr noundef %hdev, i32 noundef 15730024, i32 noundef 12877824) #2
  %1772 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1772)
  %1773 = load ptr, ptr %asic_funcs, align 8
  %wreg884 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1773, i32 0, i32 58
  %1774 = ptrtoint ptr %wreg884 to i32
  call void @__asan_load4_noabort(i32 %1774)
  %1775 = load ptr, ptr %wreg884, align 4
  tail call void %1775(ptr noundef %hdev, i32 noundef 15729960, i32 noundef 67104768) #2
  %1776 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1776)
  %1777 = load ptr, ptr %asic_funcs, align 8
  %wreg886 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1777, i32 0, i32 58
  %1778 = ptrtoint ptr %wreg886 to i32
  call void @__asan_load4_noabort(i32 %1778)
  %1779 = load ptr, ptr %wreg886, align 4
  tail call void %1779(ptr noundef %hdev, i32 noundef 15730028, i32 noundef 12886016) #2
  %1780 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1780)
  %1781 = load ptr, ptr %asic_funcs, align 8
  %wreg888 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1781, i32 0, i32 58
  %1782 = ptrtoint ptr %wreg888 to i32
  call void @__asan_load4_noabort(i32 %1782)
  %1783 = load ptr, ptr %wreg888, align 4
  tail call void %1783(ptr noundef %hdev, i32 noundef 15729964, i32 noundef 67100672) #2
  %1784 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1784)
  %1785 = load ptr, ptr %asic_funcs, align 8
  %wreg890 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1785, i32 0, i32 58
  %1786 = ptrtoint ptr %wreg890 to i32
  call void @__asan_load4_noabort(i32 %1786)
  %1787 = load ptr, ptr %wreg890, align 4
  tail call void %1787(ptr noundef %hdev, i32 noundef 15730032, i32 noundef 12894208) #2
  %1788 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1788)
  %1789 = load ptr, ptr %asic_funcs, align 8
  %wreg892 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1789, i32 0, i32 58
  %1790 = ptrtoint ptr %wreg892 to i32
  call void @__asan_load4_noabort(i32 %1790)
  %1791 = load ptr, ptr %wreg892, align 4
  tail call void %1791(ptr noundef %hdev, i32 noundef 15729968, i32 noundef 67092480) #2
  %1792 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1792)
  %1793 = load ptr, ptr %asic_funcs, align 8
  %wreg894 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1793, i32 0, i32 58
  %1794 = ptrtoint ptr %wreg894 to i32
  call void @__asan_load4_noabort(i32 %1794)
  %1795 = load ptr, ptr %wreg894, align 4
  tail call void %1795(ptr noundef %hdev, i32 noundef 15730036, i32 noundef 12910592) #2
  %1796 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1796)
  %1797 = load ptr, ptr %asic_funcs, align 8
  %wreg896 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1797, i32 0, i32 58
  %1798 = ptrtoint ptr %wreg896 to i32
  call void @__asan_load4_noabort(i32 %1798)
  %1799 = load ptr, ptr %wreg896, align 4
  tail call void %1799(ptr noundef %hdev, i32 noundef 15729972, i32 noundef 67043328) #2
  %1800 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1800)
  %1801 = load ptr, ptr %asic_funcs, align 8
  %wreg898 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1801, i32 0, i32 58
  %1802 = ptrtoint ptr %wreg898 to i32
  call void @__asan_load4_noabort(i32 %1802)
  %1803 = load ptr, ptr %wreg898, align 4
  tail call void %1803(ptr noundef %hdev, i32 noundef 15730040, i32 noundef 12976128) #2
  %1804 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1804)
  %1805 = load ptr, ptr %asic_funcs, align 8
  %wreg900 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1805, i32 0, i32 58
  %1806 = ptrtoint ptr %wreg900 to i32
  call void @__asan_load4_noabort(i32 %1806)
  %1807 = load ptr, ptr %wreg900, align 4
  tail call void %1807(ptr noundef %hdev, i32 noundef 15729976, i32 noundef 66977792) #2
  %1808 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1808)
  %1809 = load ptr, ptr %asic_funcs, align 8
  %wreg902 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1809, i32 0, i32 58
  %1810 = ptrtoint ptr %wreg902 to i32
  call void @__asan_load4_noabort(i32 %1810)
  %1811 = load ptr, ptr %wreg902, align 4
  tail call void %1811(ptr noundef %hdev, i32 noundef 15730044, i32 noundef 14688256) #2
  %1812 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1812)
  %1813 = load ptr, ptr %asic_funcs, align 8
  %wreg904 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1813, i32 0, i32 58
  %1814 = ptrtoint ptr %wreg904 to i32
  call void @__asan_load4_noabort(i32 %1814)
  %1815 = load ptr, ptr %wreg904, align 4
  tail call void %1815(ptr noundef %hdev, i32 noundef 15729980, i32 noundef 67100672) #2
  %1816 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1816)
  %1817 = load ptr, ptr %asic_funcs, align 8
  %wreg906 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1817, i32 0, i32 58
  %1818 = ptrtoint ptr %wreg906 to i32
  call void @__asan_load4_noabort(i32 %1818)
  %1819 = load ptr, ptr %wreg906, align 4
  tail call void %1819(ptr noundef %hdev, i32 noundef 15730048, i32 noundef 38289408) #2
  %1820 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1820)
  %1821 = load ptr, ptr %asic_funcs, align 8
  %wreg908 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1821, i32 0, i32 58
  %1822 = ptrtoint ptr %wreg908 to i32
  call void @__asan_load4_noabort(i32 %1822)
  %1823 = load ptr, ptr %wreg908, align 4
  tail call void %1823(ptr noundef %hdev, i32 noundef 15729984, i32 noundef 67104768) #2
  %1824 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1824)
  %1825 = load ptr, ptr %asic_funcs, align 8
  %wreg910 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1825, i32 0, i32 58
  %1826 = ptrtoint ptr %wreg910 to i32
  call void @__asan_load4_noabort(i32 %1826)
  %1827 = load ptr, ptr %wreg910, align 4
  tail call void %1827(ptr noundef %hdev, i32 noundef 15730052, i32 noundef 46411776) #2
  %1828 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1828)
  %1829 = load ptr, ptr %asic_funcs, align 8
  %wreg912 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1829, i32 0, i32 58
  %1830 = ptrtoint ptr %wreg912 to i32
  call void @__asan_load4_noabort(i32 %1830)
  %1831 = load ptr, ptr %wreg912, align 4
  tail call void %1831(ptr noundef %hdev, i32 noundef 15729988, i32 noundef 67104768) #2
  %1832 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1832)
  %1833 = load ptr, ptr %asic_funcs, align 8
  %wreg914 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1833, i32 0, i32 58
  %1834 = ptrtoint ptr %wreg914 to i32
  call void @__asan_load4_noabort(i32 %1834)
  %1835 = load ptr, ptr %wreg914, align 4
  tail call void %1835(ptr noundef %hdev, i32 noundef 15992064, i32 noundef 65535) #2
  %1836 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1836)
  %1837 = load ptr, ptr %asic_funcs, align 8
  %wreg916 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1837, i32 0, i32 58
  %1838 = ptrtoint ptr %wreg916 to i32
  call void @__asan_load4_noabort(i32 %1838)
  %1839 = load ptr, ptr %wreg916, align 4
  tail call void %1839(ptr noundef %hdev, i32 noundef 15991920, i32 noundef 254) #2
  %1840 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1840)
  %1841 = load ptr, ptr %asic_funcs, align 8
  %wreg918 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1841, i32 0, i32 58
  %1842 = ptrtoint ptr %wreg918 to i32
  call void @__asan_load4_noabort(i32 %1842)
  %1843 = load ptr, ptr %wreg918, align 4
  tail call void %1843(ptr noundef %hdev, i32 noundef 15992000, i32 noundef 0) #2
  %1844 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1844)
  %1845 = load ptr, ptr %asic_funcs, align 8
  %wreg920 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1845, i32 0, i32 58
  %1846 = ptrtoint ptr %wreg920 to i32
  call void @__asan_load4_noabort(i32 %1846)
  %1847 = load ptr, ptr %wreg920, align 4
  tail call void %1847(ptr noundef %hdev, i32 noundef 15992032, i32 noundef 0) #2
  %1848 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1848)
  %1849 = load ptr, ptr %asic_funcs, align 8
  %wreg922 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1849, i32 0, i32 58
  %1850 = ptrtoint ptr %wreg922 to i32
  call void @__asan_load4_noabort(i32 %1850)
  %1851 = load ptr, ptr %wreg922, align 4
  tail call void %1851(ptr noundef %hdev, i32 noundef 15991936, i32 noundef 0) #2
  %1852 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1852)
  %1853 = load ptr, ptr %asic_funcs, align 8
  %wreg924 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1853, i32 0, i32 58
  %1854 = ptrtoint ptr %wreg924 to i32
  call void @__asan_load4_noabort(i32 %1854)
  %1855 = load ptr, ptr %wreg924, align 4
  tail call void %1855(ptr noundef %hdev, i32 noundef 15991968, i32 noundef 1048448) #2
  %1856 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1856)
  %1857 = load ptr, ptr %asic_funcs, align 8
  %wreg926 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1857, i32 0, i32 58
  %1858 = ptrtoint ptr %wreg926 to i32
  call void @__asan_load4_noabort(i32 %1858)
  %1859 = load ptr, ptr %wreg926, align 4
  tail call void %1859(ptr noundef %hdev, i32 noundef 15992004, i32 noundef 0) #2
  %1860 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1860)
  %1861 = load ptr, ptr %asic_funcs, align 8
  %wreg928 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1861, i32 0, i32 58
  %1862 = ptrtoint ptr %wreg928 to i32
  call void @__asan_load4_noabort(i32 %1862)
  %1863 = load ptr, ptr %wreg928, align 4
  tail call void %1863(ptr noundef %hdev, i32 noundef 15992036, i32 noundef 0) #2
  %1864 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1864)
  %1865 = load ptr, ptr %asic_funcs, align 8
  %wreg930 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1865, i32 0, i32 58
  %1866 = ptrtoint ptr %wreg930 to i32
  call void @__asan_load4_noabort(i32 %1866)
  %1867 = load ptr, ptr %wreg930, align 4
  tail call void %1867(ptr noundef %hdev, i32 noundef 15991940, i32 noundef -536870912) #2
  %1868 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1868)
  %1869 = load ptr, ptr %asic_funcs, align 8
  %wreg932 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1869, i32 0, i32 58
  %1870 = ptrtoint ptr %wreg932 to i32
  call void @__asan_load4_noabort(i32 %1870)
  %1871 = load ptr, ptr %wreg932, align 4
  tail call void %1871(ptr noundef %hdev, i32 noundef 15991972, i32 noundef 262143) #2
  %1872 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1872)
  %1873 = load ptr, ptr %asic_funcs, align 8
  %wreg934 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1873, i32 0, i32 58
  %1874 = ptrtoint ptr %wreg934 to i32
  call void @__asan_load4_noabort(i32 %1874)
  %1875 = load ptr, ptr %wreg934, align 4
  tail call void %1875(ptr noundef %hdev, i32 noundef 15992144, i32 noundef 4456448) #2
  %1876 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1876)
  %1877 = load ptr, ptr %asic_funcs, align 8
  %wreg936 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1877, i32 0, i32 58
  %1878 = ptrtoint ptr %wreg936 to i32
  call void @__asan_load4_noabort(i32 %1878)
  %1879 = load ptr, ptr %wreg936, align 4
  tail call void %1879(ptr noundef %hdev, i32 noundef 15992080, i32 noundef 67043328) #2
  %1880 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1880)
  %1881 = load ptr, ptr %asic_funcs, align 8
  %wreg938 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1881, i32 0, i32 58
  %1882 = ptrtoint ptr %wreg938 to i32
  call void @__asan_load4_noabort(i32 %1882)
  %1883 = load ptr, ptr %wreg938, align 4
  tail call void %1883(ptr noundef %hdev, i32 noundef 15992148, i32 noundef 4718592) #2
  %1884 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1884)
  %1885 = load ptr, ptr %asic_funcs, align 8
  %wreg940 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1885, i32 0, i32 58
  %1886 = ptrtoint ptr %wreg940 to i32
  call void @__asan_load4_noabort(i32 %1886)
  %1887 = load ptr, ptr %wreg940, align 4
  tail call void %1887(ptr noundef %hdev, i32 noundef 15992084, i32 noundef 66584576) #2
  %1888 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1888)
  %1889 = load ptr, ptr %asic_funcs, align 8
  %wreg942 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1889, i32 0, i32 58
  %1890 = ptrtoint ptr %wreg942 to i32
  call void @__asan_load4_noabort(i32 %1890)
  %1891 = load ptr, ptr %wreg942, align 4
  tail call void %1891(ptr noundef %hdev, i32 noundef 15992152, i32 noundef 6291456) #2
  %1892 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1892)
  %1893 = load ptr, ptr %asic_funcs, align 8
  %wreg944 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1893, i32 0, i32 58
  %1894 = ptrtoint ptr %wreg944 to i32
  call void @__asan_load4_noabort(i32 %1894)
  %1895 = load ptr, ptr %wreg944, align 4
  tail call void %1895(ptr noundef %hdev, i32 noundef 15992088, i32 noundef 65011712) #2
  %1896 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1896)
  %1897 = load ptr, ptr %asic_funcs, align 8
  %wreg946 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1897, i32 0, i32 58
  %1898 = ptrtoint ptr %wreg946 to i32
  call void @__asan_load4_noabort(i32 %1898)
  %1899 = load ptr, ptr %wreg946, align 4
  tail call void %1899(ptr noundef %hdev, i32 noundef 15992156, i32 noundef 8388608) #2
  %1900 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1900)
  %1901 = load ptr, ptr %asic_funcs, align 8
  %wreg948 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1901, i32 0, i32 58
  %1902 = ptrtoint ptr %wreg948 to i32
  call void @__asan_load4_noabort(i32 %1902)
  %1903 = load ptr, ptr %wreg948, align 4
  tail call void %1903(ptr noundef %hdev, i32 noundef 15992092, i32 noundef 66060288) #2
  %1904 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1904)
  %1905 = load ptr, ptr %asic_funcs, align 8
  %wreg950 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1905, i32 0, i32 58
  %1906 = ptrtoint ptr %wreg950 to i32
  call void @__asan_load4_noabort(i32 %1906)
  %1907 = load ptr, ptr %wreg950, align 4
  tail call void %1907(ptr noundef %hdev, i32 noundef 15992160, i32 noundef 12591104) #2
  %1908 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1908)
  %1909 = load ptr, ptr %asic_funcs, align 8
  %wreg952 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1909, i32 0, i32 58
  %1910 = ptrtoint ptr %wreg952 to i32
  call void @__asan_load4_noabort(i32 %1910)
  %1911 = load ptr, ptr %wreg952, align 4
  tail call void %1911(ptr noundef %hdev, i32 noundef 15992096, i32 noundef 67104768) #2
  %1912 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1912)
  %1913 = load ptr, ptr %asic_funcs, align 8
  %wreg954 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1913, i32 0, i32 58
  %1914 = ptrtoint ptr %wreg954 to i32
  call void @__asan_load4_noabort(i32 %1914)
  %1915 = load ptr, ptr %wreg954, align 4
  tail call void %1915(ptr noundef %hdev, i32 noundef 15992164, i32 noundef 12845056) #2
  %1916 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1916)
  %1917 = load ptr, ptr %asic_funcs, align 8
  %wreg956 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1917, i32 0, i32 58
  %1918 = ptrtoint ptr %wreg956 to i32
  call void @__asan_load4_noabort(i32 %1918)
  %1919 = load ptr, ptr %wreg956, align 4
  tail call void %1919(ptr noundef %hdev, i32 noundef 15992100, i32 noundef 67076096) #2
  %1920 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1920)
  %1921 = load ptr, ptr %asic_funcs, align 8
  %wreg958 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1921, i32 0, i32 58
  %1922 = ptrtoint ptr %wreg958 to i32
  call void @__asan_load4_noabort(i32 %1922)
  %1923 = load ptr, ptr %wreg958, align 4
  tail call void %1923(ptr noundef %hdev, i32 noundef 15992168, i32 noundef 12877824) #2
  %1924 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1924)
  %1925 = load ptr, ptr %asic_funcs, align 8
  %wreg960 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1925, i32 0, i32 58
  %1926 = ptrtoint ptr %wreg960 to i32
  call void @__asan_load4_noabort(i32 %1926)
  %1927 = load ptr, ptr %wreg960, align 4
  tail call void %1927(ptr noundef %hdev, i32 noundef 15992104, i32 noundef 67104768) #2
  %1928 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1928)
  %1929 = load ptr, ptr %asic_funcs, align 8
  %wreg962 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1929, i32 0, i32 58
  %1930 = ptrtoint ptr %wreg962 to i32
  call void @__asan_load4_noabort(i32 %1930)
  %1931 = load ptr, ptr %wreg962, align 4
  tail call void %1931(ptr noundef %hdev, i32 noundef 15992172, i32 noundef 12886016) #2
  %1932 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1932)
  %1933 = load ptr, ptr %asic_funcs, align 8
  %wreg964 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1933, i32 0, i32 58
  %1934 = ptrtoint ptr %wreg964 to i32
  call void @__asan_load4_noabort(i32 %1934)
  %1935 = load ptr, ptr %wreg964, align 4
  tail call void %1935(ptr noundef %hdev, i32 noundef 15992108, i32 noundef 67100672) #2
  %1936 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1936)
  %1937 = load ptr, ptr %asic_funcs, align 8
  %wreg966 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1937, i32 0, i32 58
  %1938 = ptrtoint ptr %wreg966 to i32
  call void @__asan_load4_noabort(i32 %1938)
  %1939 = load ptr, ptr %wreg966, align 4
  tail call void %1939(ptr noundef %hdev, i32 noundef 15992176, i32 noundef 12894208) #2
  %1940 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1940)
  %1941 = load ptr, ptr %asic_funcs, align 8
  %wreg968 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1941, i32 0, i32 58
  %1942 = ptrtoint ptr %wreg968 to i32
  call void @__asan_load4_noabort(i32 %1942)
  %1943 = load ptr, ptr %wreg968, align 4
  tail call void %1943(ptr noundef %hdev, i32 noundef 15992112, i32 noundef 67092480) #2
  %1944 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1944)
  %1945 = load ptr, ptr %asic_funcs, align 8
  %wreg970 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1945, i32 0, i32 58
  %1946 = ptrtoint ptr %wreg970 to i32
  call void @__asan_load4_noabort(i32 %1946)
  %1947 = load ptr, ptr %wreg970, align 4
  tail call void %1947(ptr noundef %hdev, i32 noundef 15992180, i32 noundef 12910592) #2
  %1948 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1948)
  %1949 = load ptr, ptr %asic_funcs, align 8
  %wreg972 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1949, i32 0, i32 58
  %1950 = ptrtoint ptr %wreg972 to i32
  call void @__asan_load4_noabort(i32 %1950)
  %1951 = load ptr, ptr %wreg972, align 4
  tail call void %1951(ptr noundef %hdev, i32 noundef 15992116, i32 noundef 67043328) #2
  %1952 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1952)
  %1953 = load ptr, ptr %asic_funcs, align 8
  %wreg974 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1953, i32 0, i32 58
  %1954 = ptrtoint ptr %wreg974 to i32
  call void @__asan_load4_noabort(i32 %1954)
  %1955 = load ptr, ptr %wreg974, align 4
  tail call void %1955(ptr noundef %hdev, i32 noundef 15992184, i32 noundef 12976128) #2
  %1956 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1956)
  %1957 = load ptr, ptr %asic_funcs, align 8
  %wreg976 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1957, i32 0, i32 58
  %1958 = ptrtoint ptr %wreg976 to i32
  call void @__asan_load4_noabort(i32 %1958)
  %1959 = load ptr, ptr %wreg976, align 4
  tail call void %1959(ptr noundef %hdev, i32 noundef 15992120, i32 noundef 66977792) #2
  %1960 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1960)
  %1961 = load ptr, ptr %asic_funcs, align 8
  %wreg978 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1961, i32 0, i32 58
  %1962 = ptrtoint ptr %wreg978 to i32
  call void @__asan_load4_noabort(i32 %1962)
  %1963 = load ptr, ptr %wreg978, align 4
  tail call void %1963(ptr noundef %hdev, i32 noundef 15992188, i32 noundef 14688256) #2
  %1964 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1964)
  %1965 = load ptr, ptr %asic_funcs, align 8
  %wreg980 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1965, i32 0, i32 58
  %1966 = ptrtoint ptr %wreg980 to i32
  call void @__asan_load4_noabort(i32 %1966)
  %1967 = load ptr, ptr %wreg980, align 4
  tail call void %1967(ptr noundef %hdev, i32 noundef 15992124, i32 noundef 67100672) #2
  %1968 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1968)
  %1969 = load ptr, ptr %asic_funcs, align 8
  %wreg982 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1969, i32 0, i32 58
  %1970 = ptrtoint ptr %wreg982 to i32
  call void @__asan_load4_noabort(i32 %1970)
  %1971 = load ptr, ptr %wreg982, align 4
  tail call void %1971(ptr noundef %hdev, i32 noundef 15992192, i32 noundef 38289408) #2
  %1972 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1972)
  %1973 = load ptr, ptr %asic_funcs, align 8
  %wreg984 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1973, i32 0, i32 58
  %1974 = ptrtoint ptr %wreg984 to i32
  call void @__asan_load4_noabort(i32 %1974)
  %1975 = load ptr, ptr %wreg984, align 4
  tail call void %1975(ptr noundef %hdev, i32 noundef 15992128, i32 noundef 67104768) #2
  %1976 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1976)
  %1977 = load ptr, ptr %asic_funcs, align 8
  %wreg986 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1977, i32 0, i32 58
  %1978 = ptrtoint ptr %wreg986 to i32
  call void @__asan_load4_noabort(i32 %1978)
  %1979 = load ptr, ptr %wreg986, align 4
  tail call void %1979(ptr noundef %hdev, i32 noundef 15992196, i32 noundef 46411776) #2
  %1980 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1980)
  %1981 = load ptr, ptr %asic_funcs, align 8
  %wreg988 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1981, i32 0, i32 58
  %1982 = ptrtoint ptr %wreg988 to i32
  call void @__asan_load4_noabort(i32 %1982)
  %1983 = load ptr, ptr %wreg988, align 4
  tail call void %1983(ptr noundef %hdev, i32 noundef 15992132, i32 noundef 67104768) #2
  %1984 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1984)
  %1985 = load ptr, ptr %asic_funcs, align 8
  %wreg990 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1985, i32 0, i32 58
  %1986 = ptrtoint ptr %wreg990 to i32
  call void @__asan_load4_noabort(i32 %1986)
  %1987 = load ptr, ptr %wreg990, align 4
  tail call void %1987(ptr noundef %hdev, i32 noundef 16254208, i32 noundef 65535) #2
  %1988 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1988)
  %1989 = load ptr, ptr %asic_funcs, align 8
  %wreg992 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1989, i32 0, i32 58
  %1990 = ptrtoint ptr %wreg992 to i32
  call void @__asan_load4_noabort(i32 %1990)
  %1991 = load ptr, ptr %wreg992, align 4
  tail call void %1991(ptr noundef %hdev, i32 noundef 16254064, i32 noundef 254) #2
  %1992 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1992)
  %1993 = load ptr, ptr %asic_funcs, align 8
  %wreg994 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1993, i32 0, i32 58
  %1994 = ptrtoint ptr %wreg994 to i32
  call void @__asan_load4_noabort(i32 %1994)
  %1995 = load ptr, ptr %wreg994, align 4
  tail call void %1995(ptr noundef %hdev, i32 noundef 16254144, i32 noundef 0) #2
  %1996 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %1996)
  %1997 = load ptr, ptr %asic_funcs, align 8
  %wreg996 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1997, i32 0, i32 58
  %1998 = ptrtoint ptr %wreg996 to i32
  call void @__asan_load4_noabort(i32 %1998)
  %1999 = load ptr, ptr %wreg996, align 4
  tail call void %1999(ptr noundef %hdev, i32 noundef 16254176, i32 noundef 0) #2
  %2000 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2000)
  %2001 = load ptr, ptr %asic_funcs, align 8
  %wreg998 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2001, i32 0, i32 58
  %2002 = ptrtoint ptr %wreg998 to i32
  call void @__asan_load4_noabort(i32 %2002)
  %2003 = load ptr, ptr %wreg998, align 4
  tail call void %2003(ptr noundef %hdev, i32 noundef 16254080, i32 noundef 0) #2
  %2004 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2004)
  %2005 = load ptr, ptr %asic_funcs, align 8
  %wreg1000 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2005, i32 0, i32 58
  %2006 = ptrtoint ptr %wreg1000 to i32
  call void @__asan_load4_noabort(i32 %2006)
  %2007 = load ptr, ptr %wreg1000, align 4
  tail call void %2007(ptr noundef %hdev, i32 noundef 16254112, i32 noundef 1048448) #2
  %2008 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2008)
  %2009 = load ptr, ptr %asic_funcs, align 8
  %wreg1002 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2009, i32 0, i32 58
  %2010 = ptrtoint ptr %wreg1002 to i32
  call void @__asan_load4_noabort(i32 %2010)
  %2011 = load ptr, ptr %wreg1002, align 4
  tail call void %2011(ptr noundef %hdev, i32 noundef 16254148, i32 noundef 0) #2
  %2012 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2012)
  %2013 = load ptr, ptr %asic_funcs, align 8
  %wreg1004 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2013, i32 0, i32 58
  %2014 = ptrtoint ptr %wreg1004 to i32
  call void @__asan_load4_noabort(i32 %2014)
  %2015 = load ptr, ptr %wreg1004, align 4
  tail call void %2015(ptr noundef %hdev, i32 noundef 16254180, i32 noundef 0) #2
  %2016 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2016)
  %2017 = load ptr, ptr %asic_funcs, align 8
  %wreg1006 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2017, i32 0, i32 58
  %2018 = ptrtoint ptr %wreg1006 to i32
  call void @__asan_load4_noabort(i32 %2018)
  %2019 = load ptr, ptr %wreg1006, align 4
  tail call void %2019(ptr noundef %hdev, i32 noundef 16254084, i32 noundef -536870912) #2
  %2020 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2020)
  %2021 = load ptr, ptr %asic_funcs, align 8
  %wreg1008 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2021, i32 0, i32 58
  %2022 = ptrtoint ptr %wreg1008 to i32
  call void @__asan_load4_noabort(i32 %2022)
  %2023 = load ptr, ptr %wreg1008, align 4
  tail call void %2023(ptr noundef %hdev, i32 noundef 16254116, i32 noundef 262143) #2
  %2024 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2024)
  %2025 = load ptr, ptr %asic_funcs, align 8
  %wreg1010 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2025, i32 0, i32 58
  %2026 = ptrtoint ptr %wreg1010 to i32
  call void @__asan_load4_noabort(i32 %2026)
  %2027 = load ptr, ptr %wreg1010, align 4
  tail call void %2027(ptr noundef %hdev, i32 noundef 16254288, i32 noundef 4456448) #2
  %2028 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2028)
  %2029 = load ptr, ptr %asic_funcs, align 8
  %wreg1012 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2029, i32 0, i32 58
  %2030 = ptrtoint ptr %wreg1012 to i32
  call void @__asan_load4_noabort(i32 %2030)
  %2031 = load ptr, ptr %wreg1012, align 4
  tail call void %2031(ptr noundef %hdev, i32 noundef 16254224, i32 noundef 67043328) #2
  %2032 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2032)
  %2033 = load ptr, ptr %asic_funcs, align 8
  %wreg1014 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2033, i32 0, i32 58
  %2034 = ptrtoint ptr %wreg1014 to i32
  call void @__asan_load4_noabort(i32 %2034)
  %2035 = load ptr, ptr %wreg1014, align 4
  tail call void %2035(ptr noundef %hdev, i32 noundef 16254292, i32 noundef 4718592) #2
  %2036 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2036)
  %2037 = load ptr, ptr %asic_funcs, align 8
  %wreg1016 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2037, i32 0, i32 58
  %2038 = ptrtoint ptr %wreg1016 to i32
  call void @__asan_load4_noabort(i32 %2038)
  %2039 = load ptr, ptr %wreg1016, align 4
  tail call void %2039(ptr noundef %hdev, i32 noundef 16254228, i32 noundef 66584576) #2
  %2040 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2040)
  %2041 = load ptr, ptr %asic_funcs, align 8
  %wreg1018 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2041, i32 0, i32 58
  %2042 = ptrtoint ptr %wreg1018 to i32
  call void @__asan_load4_noabort(i32 %2042)
  %2043 = load ptr, ptr %wreg1018, align 4
  tail call void %2043(ptr noundef %hdev, i32 noundef 16254296, i32 noundef 6291456) #2
  %2044 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2044)
  %2045 = load ptr, ptr %asic_funcs, align 8
  %wreg1020 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2045, i32 0, i32 58
  %2046 = ptrtoint ptr %wreg1020 to i32
  call void @__asan_load4_noabort(i32 %2046)
  %2047 = load ptr, ptr %wreg1020, align 4
  tail call void %2047(ptr noundef %hdev, i32 noundef 16254232, i32 noundef 65011712) #2
  %2048 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2048)
  %2049 = load ptr, ptr %asic_funcs, align 8
  %wreg1022 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2049, i32 0, i32 58
  %2050 = ptrtoint ptr %wreg1022 to i32
  call void @__asan_load4_noabort(i32 %2050)
  %2051 = load ptr, ptr %wreg1022, align 4
  tail call void %2051(ptr noundef %hdev, i32 noundef 16254300, i32 noundef 8388608) #2
  %2052 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2052)
  %2053 = load ptr, ptr %asic_funcs, align 8
  %wreg1024 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2053, i32 0, i32 58
  %2054 = ptrtoint ptr %wreg1024 to i32
  call void @__asan_load4_noabort(i32 %2054)
  %2055 = load ptr, ptr %wreg1024, align 4
  tail call void %2055(ptr noundef %hdev, i32 noundef 16254236, i32 noundef 66060288) #2
  %2056 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2056)
  %2057 = load ptr, ptr %asic_funcs, align 8
  %wreg1026 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2057, i32 0, i32 58
  %2058 = ptrtoint ptr %wreg1026 to i32
  call void @__asan_load4_noabort(i32 %2058)
  %2059 = load ptr, ptr %wreg1026, align 4
  tail call void %2059(ptr noundef %hdev, i32 noundef 16254304, i32 noundef 12591104) #2
  %2060 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2060)
  %2061 = load ptr, ptr %asic_funcs, align 8
  %wreg1028 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2061, i32 0, i32 58
  %2062 = ptrtoint ptr %wreg1028 to i32
  call void @__asan_load4_noabort(i32 %2062)
  %2063 = load ptr, ptr %wreg1028, align 4
  tail call void %2063(ptr noundef %hdev, i32 noundef 16254240, i32 noundef 67104768) #2
  %2064 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2064)
  %2065 = load ptr, ptr %asic_funcs, align 8
  %wreg1030 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2065, i32 0, i32 58
  %2066 = ptrtoint ptr %wreg1030 to i32
  call void @__asan_load4_noabort(i32 %2066)
  %2067 = load ptr, ptr %wreg1030, align 4
  tail call void %2067(ptr noundef %hdev, i32 noundef 16254308, i32 noundef 12845056) #2
  %2068 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2068)
  %2069 = load ptr, ptr %asic_funcs, align 8
  %wreg1032 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2069, i32 0, i32 58
  %2070 = ptrtoint ptr %wreg1032 to i32
  call void @__asan_load4_noabort(i32 %2070)
  %2071 = load ptr, ptr %wreg1032, align 4
  tail call void %2071(ptr noundef %hdev, i32 noundef 16254244, i32 noundef 67076096) #2
  %2072 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2072)
  %2073 = load ptr, ptr %asic_funcs, align 8
  %wreg1034 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2073, i32 0, i32 58
  %2074 = ptrtoint ptr %wreg1034 to i32
  call void @__asan_load4_noabort(i32 %2074)
  %2075 = load ptr, ptr %wreg1034, align 4
  tail call void %2075(ptr noundef %hdev, i32 noundef 16254312, i32 noundef 12877824) #2
  %2076 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2076)
  %2077 = load ptr, ptr %asic_funcs, align 8
  %wreg1036 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2077, i32 0, i32 58
  %2078 = ptrtoint ptr %wreg1036 to i32
  call void @__asan_load4_noabort(i32 %2078)
  %2079 = load ptr, ptr %wreg1036, align 4
  tail call void %2079(ptr noundef %hdev, i32 noundef 16254248, i32 noundef 67104768) #2
  %2080 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2080)
  %2081 = load ptr, ptr %asic_funcs, align 8
  %wreg1038 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2081, i32 0, i32 58
  %2082 = ptrtoint ptr %wreg1038 to i32
  call void @__asan_load4_noabort(i32 %2082)
  %2083 = load ptr, ptr %wreg1038, align 4
  tail call void %2083(ptr noundef %hdev, i32 noundef 16254316, i32 noundef 12886016) #2
  %2084 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2084)
  %2085 = load ptr, ptr %asic_funcs, align 8
  %wreg1040 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2085, i32 0, i32 58
  %2086 = ptrtoint ptr %wreg1040 to i32
  call void @__asan_load4_noabort(i32 %2086)
  %2087 = load ptr, ptr %wreg1040, align 4
  tail call void %2087(ptr noundef %hdev, i32 noundef 16254252, i32 noundef 67100672) #2
  %2088 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2088)
  %2089 = load ptr, ptr %asic_funcs, align 8
  %wreg1042 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2089, i32 0, i32 58
  %2090 = ptrtoint ptr %wreg1042 to i32
  call void @__asan_load4_noabort(i32 %2090)
  %2091 = load ptr, ptr %wreg1042, align 4
  tail call void %2091(ptr noundef %hdev, i32 noundef 16254320, i32 noundef 12894208) #2
  %2092 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2092)
  %2093 = load ptr, ptr %asic_funcs, align 8
  %wreg1044 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2093, i32 0, i32 58
  %2094 = ptrtoint ptr %wreg1044 to i32
  call void @__asan_load4_noabort(i32 %2094)
  %2095 = load ptr, ptr %wreg1044, align 4
  tail call void %2095(ptr noundef %hdev, i32 noundef 16254256, i32 noundef 67092480) #2
  %2096 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2096)
  %2097 = load ptr, ptr %asic_funcs, align 8
  %wreg1046 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2097, i32 0, i32 58
  %2098 = ptrtoint ptr %wreg1046 to i32
  call void @__asan_load4_noabort(i32 %2098)
  %2099 = load ptr, ptr %wreg1046, align 4
  tail call void %2099(ptr noundef %hdev, i32 noundef 16254324, i32 noundef 12910592) #2
  %2100 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2100)
  %2101 = load ptr, ptr %asic_funcs, align 8
  %wreg1048 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2101, i32 0, i32 58
  %2102 = ptrtoint ptr %wreg1048 to i32
  call void @__asan_load4_noabort(i32 %2102)
  %2103 = load ptr, ptr %wreg1048, align 4
  tail call void %2103(ptr noundef %hdev, i32 noundef 16254260, i32 noundef 67043328) #2
  %2104 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2104)
  %2105 = load ptr, ptr %asic_funcs, align 8
  %wreg1050 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2105, i32 0, i32 58
  %2106 = ptrtoint ptr %wreg1050 to i32
  call void @__asan_load4_noabort(i32 %2106)
  %2107 = load ptr, ptr %wreg1050, align 4
  tail call void %2107(ptr noundef %hdev, i32 noundef 16254328, i32 noundef 12976128) #2
  %2108 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2108)
  %2109 = load ptr, ptr %asic_funcs, align 8
  %wreg1052 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2109, i32 0, i32 58
  %2110 = ptrtoint ptr %wreg1052 to i32
  call void @__asan_load4_noabort(i32 %2110)
  %2111 = load ptr, ptr %wreg1052, align 4
  tail call void %2111(ptr noundef %hdev, i32 noundef 16254264, i32 noundef 66977792) #2
  %2112 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2112)
  %2113 = load ptr, ptr %asic_funcs, align 8
  %wreg1054 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2113, i32 0, i32 58
  %2114 = ptrtoint ptr %wreg1054 to i32
  call void @__asan_load4_noabort(i32 %2114)
  %2115 = load ptr, ptr %wreg1054, align 4
  tail call void %2115(ptr noundef %hdev, i32 noundef 16254332, i32 noundef 14688256) #2
  %2116 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2116)
  %2117 = load ptr, ptr %asic_funcs, align 8
  %wreg1056 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2117, i32 0, i32 58
  %2118 = ptrtoint ptr %wreg1056 to i32
  call void @__asan_load4_noabort(i32 %2118)
  %2119 = load ptr, ptr %wreg1056, align 4
  tail call void %2119(ptr noundef %hdev, i32 noundef 16254268, i32 noundef 67100672) #2
  %2120 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2120)
  %2121 = load ptr, ptr %asic_funcs, align 8
  %wreg1058 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2121, i32 0, i32 58
  %2122 = ptrtoint ptr %wreg1058 to i32
  call void @__asan_load4_noabort(i32 %2122)
  %2123 = load ptr, ptr %wreg1058, align 4
  tail call void %2123(ptr noundef %hdev, i32 noundef 16254336, i32 noundef 38289408) #2
  %2124 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2124)
  %2125 = load ptr, ptr %asic_funcs, align 8
  %wreg1060 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2125, i32 0, i32 58
  %2126 = ptrtoint ptr %wreg1060 to i32
  call void @__asan_load4_noabort(i32 %2126)
  %2127 = load ptr, ptr %wreg1060, align 4
  tail call void %2127(ptr noundef %hdev, i32 noundef 16254272, i32 noundef 67104768) #2
  %2128 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2128)
  %2129 = load ptr, ptr %asic_funcs, align 8
  %wreg1062 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2129, i32 0, i32 58
  %2130 = ptrtoint ptr %wreg1062 to i32
  call void @__asan_load4_noabort(i32 %2130)
  %2131 = load ptr, ptr %wreg1062, align 4
  tail call void %2131(ptr noundef %hdev, i32 noundef 16254340, i32 noundef 46411776) #2
  %2132 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2132)
  %2133 = load ptr, ptr %asic_funcs, align 8
  %wreg1064 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2133, i32 0, i32 58
  %2134 = ptrtoint ptr %wreg1064 to i32
  call void @__asan_load4_noabort(i32 %2134)
  %2135 = load ptr, ptr %wreg1064, align 4
  tail call void %2135(ptr noundef %hdev, i32 noundef 16254276, i32 noundef 67104768) #2
  %2136 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2136)
  %2137 = load ptr, ptr %asic_funcs, align 8
  %wreg1066 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2137, i32 0, i32 58
  %2138 = ptrtoint ptr %wreg1066 to i32
  call void @__asan_load4_noabort(i32 %2138)
  %2139 = load ptr, ptr %wreg1066, align 4
  tail call void %2139(ptr noundef %hdev, i32 noundef 16516352, i32 noundef 65535) #2
  %2140 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2140)
  %2141 = load ptr, ptr %asic_funcs, align 8
  %wreg1068 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2141, i32 0, i32 58
  %2142 = ptrtoint ptr %wreg1068 to i32
  call void @__asan_load4_noabort(i32 %2142)
  %2143 = load ptr, ptr %wreg1068, align 4
  tail call void %2143(ptr noundef %hdev, i32 noundef 16516208, i32 noundef 254) #2
  %2144 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2144)
  %2145 = load ptr, ptr %asic_funcs, align 8
  %wreg1070 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2145, i32 0, i32 58
  %2146 = ptrtoint ptr %wreg1070 to i32
  call void @__asan_load4_noabort(i32 %2146)
  %2147 = load ptr, ptr %wreg1070, align 4
  tail call void %2147(ptr noundef %hdev, i32 noundef 16516288, i32 noundef 0) #2
  %2148 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2148)
  %2149 = load ptr, ptr %asic_funcs, align 8
  %wreg1072 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2149, i32 0, i32 58
  %2150 = ptrtoint ptr %wreg1072 to i32
  call void @__asan_load4_noabort(i32 %2150)
  %2151 = load ptr, ptr %wreg1072, align 4
  tail call void %2151(ptr noundef %hdev, i32 noundef 16516320, i32 noundef 0) #2
  %2152 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2152)
  %2153 = load ptr, ptr %asic_funcs, align 8
  %wreg1074 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2153, i32 0, i32 58
  %2154 = ptrtoint ptr %wreg1074 to i32
  call void @__asan_load4_noabort(i32 %2154)
  %2155 = load ptr, ptr %wreg1074, align 4
  tail call void %2155(ptr noundef %hdev, i32 noundef 16516224, i32 noundef 0) #2
  %2156 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2156)
  %2157 = load ptr, ptr %asic_funcs, align 8
  %wreg1076 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2157, i32 0, i32 58
  %2158 = ptrtoint ptr %wreg1076 to i32
  call void @__asan_load4_noabort(i32 %2158)
  %2159 = load ptr, ptr %wreg1076, align 4
  tail call void %2159(ptr noundef %hdev, i32 noundef 16516256, i32 noundef 1048448) #2
  %2160 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2160)
  %2161 = load ptr, ptr %asic_funcs, align 8
  %wreg1078 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2161, i32 0, i32 58
  %2162 = ptrtoint ptr %wreg1078 to i32
  call void @__asan_load4_noabort(i32 %2162)
  %2163 = load ptr, ptr %wreg1078, align 4
  tail call void %2163(ptr noundef %hdev, i32 noundef 16516292, i32 noundef 0) #2
  %2164 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2164)
  %2165 = load ptr, ptr %asic_funcs, align 8
  %wreg1080 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2165, i32 0, i32 58
  %2166 = ptrtoint ptr %wreg1080 to i32
  call void @__asan_load4_noabort(i32 %2166)
  %2167 = load ptr, ptr %wreg1080, align 4
  tail call void %2167(ptr noundef %hdev, i32 noundef 16516324, i32 noundef 0) #2
  %2168 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2168)
  %2169 = load ptr, ptr %asic_funcs, align 8
  %wreg1082 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2169, i32 0, i32 58
  %2170 = ptrtoint ptr %wreg1082 to i32
  call void @__asan_load4_noabort(i32 %2170)
  %2171 = load ptr, ptr %wreg1082, align 4
  tail call void %2171(ptr noundef %hdev, i32 noundef 16516228, i32 noundef -536870912) #2
  %2172 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2172)
  %2173 = load ptr, ptr %asic_funcs, align 8
  %wreg1084 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2173, i32 0, i32 58
  %2174 = ptrtoint ptr %wreg1084 to i32
  call void @__asan_load4_noabort(i32 %2174)
  %2175 = load ptr, ptr %wreg1084, align 4
  tail call void %2175(ptr noundef %hdev, i32 noundef 16516260, i32 noundef 262143) #2
  %2176 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2176)
  %2177 = load ptr, ptr %asic_funcs, align 8
  %wreg1086 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2177, i32 0, i32 58
  %2178 = ptrtoint ptr %wreg1086 to i32
  call void @__asan_load4_noabort(i32 %2178)
  %2179 = load ptr, ptr %wreg1086, align 4
  tail call void %2179(ptr noundef %hdev, i32 noundef 16516432, i32 noundef 4456448) #2
  %2180 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2180)
  %2181 = load ptr, ptr %asic_funcs, align 8
  %wreg1088 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2181, i32 0, i32 58
  %2182 = ptrtoint ptr %wreg1088 to i32
  call void @__asan_load4_noabort(i32 %2182)
  %2183 = load ptr, ptr %wreg1088, align 4
  tail call void %2183(ptr noundef %hdev, i32 noundef 16516368, i32 noundef 67043328) #2
  %2184 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2184)
  %2185 = load ptr, ptr %asic_funcs, align 8
  %wreg1090 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2185, i32 0, i32 58
  %2186 = ptrtoint ptr %wreg1090 to i32
  call void @__asan_load4_noabort(i32 %2186)
  %2187 = load ptr, ptr %wreg1090, align 4
  tail call void %2187(ptr noundef %hdev, i32 noundef 16516436, i32 noundef 4718592) #2
  %2188 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2188)
  %2189 = load ptr, ptr %asic_funcs, align 8
  %wreg1092 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2189, i32 0, i32 58
  %2190 = ptrtoint ptr %wreg1092 to i32
  call void @__asan_load4_noabort(i32 %2190)
  %2191 = load ptr, ptr %wreg1092, align 4
  tail call void %2191(ptr noundef %hdev, i32 noundef 16516372, i32 noundef 66584576) #2
  %2192 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2192)
  %2193 = load ptr, ptr %asic_funcs, align 8
  %wreg1094 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2193, i32 0, i32 58
  %2194 = ptrtoint ptr %wreg1094 to i32
  call void @__asan_load4_noabort(i32 %2194)
  %2195 = load ptr, ptr %wreg1094, align 4
  tail call void %2195(ptr noundef %hdev, i32 noundef 16516440, i32 noundef 6291456) #2
  %2196 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2196)
  %2197 = load ptr, ptr %asic_funcs, align 8
  %wreg1096 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2197, i32 0, i32 58
  %2198 = ptrtoint ptr %wreg1096 to i32
  call void @__asan_load4_noabort(i32 %2198)
  %2199 = load ptr, ptr %wreg1096, align 4
  tail call void %2199(ptr noundef %hdev, i32 noundef 16516376, i32 noundef 65011712) #2
  %2200 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2200)
  %2201 = load ptr, ptr %asic_funcs, align 8
  %wreg1098 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2201, i32 0, i32 58
  %2202 = ptrtoint ptr %wreg1098 to i32
  call void @__asan_load4_noabort(i32 %2202)
  %2203 = load ptr, ptr %wreg1098, align 4
  tail call void %2203(ptr noundef %hdev, i32 noundef 16516444, i32 noundef 8388608) #2
  %2204 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2204)
  %2205 = load ptr, ptr %asic_funcs, align 8
  %wreg1100 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2205, i32 0, i32 58
  %2206 = ptrtoint ptr %wreg1100 to i32
  call void @__asan_load4_noabort(i32 %2206)
  %2207 = load ptr, ptr %wreg1100, align 4
  tail call void %2207(ptr noundef %hdev, i32 noundef 16516380, i32 noundef 66060288) #2
  %2208 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2208)
  %2209 = load ptr, ptr %asic_funcs, align 8
  %wreg1102 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2209, i32 0, i32 58
  %2210 = ptrtoint ptr %wreg1102 to i32
  call void @__asan_load4_noabort(i32 %2210)
  %2211 = load ptr, ptr %wreg1102, align 4
  tail call void %2211(ptr noundef %hdev, i32 noundef 16516448, i32 noundef 12591104) #2
  %2212 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2212)
  %2213 = load ptr, ptr %asic_funcs, align 8
  %wreg1104 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2213, i32 0, i32 58
  %2214 = ptrtoint ptr %wreg1104 to i32
  call void @__asan_load4_noabort(i32 %2214)
  %2215 = load ptr, ptr %wreg1104, align 4
  tail call void %2215(ptr noundef %hdev, i32 noundef 16516384, i32 noundef 67104768) #2
  %2216 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2216)
  %2217 = load ptr, ptr %asic_funcs, align 8
  %wreg1106 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2217, i32 0, i32 58
  %2218 = ptrtoint ptr %wreg1106 to i32
  call void @__asan_load4_noabort(i32 %2218)
  %2219 = load ptr, ptr %wreg1106, align 4
  tail call void %2219(ptr noundef %hdev, i32 noundef 16516452, i32 noundef 12845056) #2
  %2220 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2220)
  %2221 = load ptr, ptr %asic_funcs, align 8
  %wreg1108 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2221, i32 0, i32 58
  %2222 = ptrtoint ptr %wreg1108 to i32
  call void @__asan_load4_noabort(i32 %2222)
  %2223 = load ptr, ptr %wreg1108, align 4
  tail call void %2223(ptr noundef %hdev, i32 noundef 16516388, i32 noundef 67076096) #2
  %2224 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2224)
  %2225 = load ptr, ptr %asic_funcs, align 8
  %wreg1110 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2225, i32 0, i32 58
  %2226 = ptrtoint ptr %wreg1110 to i32
  call void @__asan_load4_noabort(i32 %2226)
  %2227 = load ptr, ptr %wreg1110, align 4
  tail call void %2227(ptr noundef %hdev, i32 noundef 16516456, i32 noundef 12877824) #2
  %2228 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2228)
  %2229 = load ptr, ptr %asic_funcs, align 8
  %wreg1112 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2229, i32 0, i32 58
  %2230 = ptrtoint ptr %wreg1112 to i32
  call void @__asan_load4_noabort(i32 %2230)
  %2231 = load ptr, ptr %wreg1112, align 4
  tail call void %2231(ptr noundef %hdev, i32 noundef 16516392, i32 noundef 67104768) #2
  %2232 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2232)
  %2233 = load ptr, ptr %asic_funcs, align 8
  %wreg1114 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2233, i32 0, i32 58
  %2234 = ptrtoint ptr %wreg1114 to i32
  call void @__asan_load4_noabort(i32 %2234)
  %2235 = load ptr, ptr %wreg1114, align 4
  tail call void %2235(ptr noundef %hdev, i32 noundef 16516460, i32 noundef 12886016) #2
  %2236 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2236)
  %2237 = load ptr, ptr %asic_funcs, align 8
  %wreg1116 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2237, i32 0, i32 58
  %2238 = ptrtoint ptr %wreg1116 to i32
  call void @__asan_load4_noabort(i32 %2238)
  %2239 = load ptr, ptr %wreg1116, align 4
  tail call void %2239(ptr noundef %hdev, i32 noundef 16516396, i32 noundef 67100672) #2
  %2240 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2240)
  %2241 = load ptr, ptr %asic_funcs, align 8
  %wreg1118 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2241, i32 0, i32 58
  %2242 = ptrtoint ptr %wreg1118 to i32
  call void @__asan_load4_noabort(i32 %2242)
  %2243 = load ptr, ptr %wreg1118, align 4
  tail call void %2243(ptr noundef %hdev, i32 noundef 16516464, i32 noundef 12894208) #2
  %2244 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2244)
  %2245 = load ptr, ptr %asic_funcs, align 8
  %wreg1120 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2245, i32 0, i32 58
  %2246 = ptrtoint ptr %wreg1120 to i32
  call void @__asan_load4_noabort(i32 %2246)
  %2247 = load ptr, ptr %wreg1120, align 4
  tail call void %2247(ptr noundef %hdev, i32 noundef 16516400, i32 noundef 67092480) #2
  %2248 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2248)
  %2249 = load ptr, ptr %asic_funcs, align 8
  %wreg1122 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2249, i32 0, i32 58
  %2250 = ptrtoint ptr %wreg1122 to i32
  call void @__asan_load4_noabort(i32 %2250)
  %2251 = load ptr, ptr %wreg1122, align 4
  tail call void %2251(ptr noundef %hdev, i32 noundef 16516468, i32 noundef 12910592) #2
  %2252 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2252)
  %2253 = load ptr, ptr %asic_funcs, align 8
  %wreg1124 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2253, i32 0, i32 58
  %2254 = ptrtoint ptr %wreg1124 to i32
  call void @__asan_load4_noabort(i32 %2254)
  %2255 = load ptr, ptr %wreg1124, align 4
  tail call void %2255(ptr noundef %hdev, i32 noundef 16516404, i32 noundef 67043328) #2
  %2256 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2256)
  %2257 = load ptr, ptr %asic_funcs, align 8
  %wreg1126 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2257, i32 0, i32 58
  %2258 = ptrtoint ptr %wreg1126 to i32
  call void @__asan_load4_noabort(i32 %2258)
  %2259 = load ptr, ptr %wreg1126, align 4
  tail call void %2259(ptr noundef %hdev, i32 noundef 16516472, i32 noundef 12976128) #2
  %2260 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2260)
  %2261 = load ptr, ptr %asic_funcs, align 8
  %wreg1128 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2261, i32 0, i32 58
  %2262 = ptrtoint ptr %wreg1128 to i32
  call void @__asan_load4_noabort(i32 %2262)
  %2263 = load ptr, ptr %wreg1128, align 4
  tail call void %2263(ptr noundef %hdev, i32 noundef 16516408, i32 noundef 66977792) #2
  %2264 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2264)
  %2265 = load ptr, ptr %asic_funcs, align 8
  %wreg1130 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2265, i32 0, i32 58
  %2266 = ptrtoint ptr %wreg1130 to i32
  call void @__asan_load4_noabort(i32 %2266)
  %2267 = load ptr, ptr %wreg1130, align 4
  tail call void %2267(ptr noundef %hdev, i32 noundef 16516476, i32 noundef 14688256) #2
  %2268 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2268)
  %2269 = load ptr, ptr %asic_funcs, align 8
  %wreg1132 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2269, i32 0, i32 58
  %2270 = ptrtoint ptr %wreg1132 to i32
  call void @__asan_load4_noabort(i32 %2270)
  %2271 = load ptr, ptr %wreg1132, align 4
  tail call void %2271(ptr noundef %hdev, i32 noundef 16516412, i32 noundef 67100672) #2
  %2272 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2272)
  %2273 = load ptr, ptr %asic_funcs, align 8
  %wreg1134 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2273, i32 0, i32 58
  %2274 = ptrtoint ptr %wreg1134 to i32
  call void @__asan_load4_noabort(i32 %2274)
  %2275 = load ptr, ptr %wreg1134, align 4
  tail call void %2275(ptr noundef %hdev, i32 noundef 16516480, i32 noundef 38289408) #2
  %2276 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2276)
  %2277 = load ptr, ptr %asic_funcs, align 8
  %wreg1136 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2277, i32 0, i32 58
  %2278 = ptrtoint ptr %wreg1136 to i32
  call void @__asan_load4_noabort(i32 %2278)
  %2279 = load ptr, ptr %wreg1136, align 4
  tail call void %2279(ptr noundef %hdev, i32 noundef 16516416, i32 noundef 67104768) #2
  %2280 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2280)
  %2281 = load ptr, ptr %asic_funcs, align 8
  %wreg1138 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2281, i32 0, i32 58
  %2282 = ptrtoint ptr %wreg1138 to i32
  call void @__asan_load4_noabort(i32 %2282)
  %2283 = load ptr, ptr %wreg1138, align 4
  tail call void %2283(ptr noundef %hdev, i32 noundef 16516484, i32 noundef 46411776) #2
  %2284 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2284)
  %2285 = load ptr, ptr %asic_funcs, align 8
  %wreg1140 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2285, i32 0, i32 58
  %2286 = ptrtoint ptr %wreg1140 to i32
  call void @__asan_load4_noabort(i32 %2286)
  %2287 = load ptr, ptr %wreg1140, align 4
  tail call void %2287(ptr noundef %hdev, i32 noundef 16516420, i32 noundef 67104768) #2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end
  %pb_addr.07.i.i = phi i32 [ 3968, %if.end ], [ %add1.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %2288 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2288)
  %2289 = load ptr, ptr %asic_funcs, align 8
  %wreg.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2289, i32 0, i32 58
  %2290 = ptrtoint ptr %wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %2290)
  %2291 = load ptr, ptr %wreg.i.i, align 4
  tail call void %2291(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i, i32 noundef 0) #2
  %add1.i.i = add nuw nsw i32 %pb_addr.07.i.i, 4
  %and.i.i = and i32 %add1.i.i, 4092
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.body.i83.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i

while.body.i.i.while.body.i83.i_crit_edge:        ; preds = %while.body.i.i
  br label %while.body.i83.i

while.body.i83.i:                                 ; preds = %while.body.i83.i.while.body.i83.i_crit_edge, %while.body.i.i.while.body.i83.i_crit_edge
  %pb_addr.07.i78.i = phi i32 [ %add1.i80.i, %while.body.i83.i.while.body.i83.i_crit_edge ], [ 20352, %while.body.i.i.while.body.i83.i_crit_edge ]
  %2292 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2292)
  %2293 = load ptr, ptr %asic_funcs, align 8
  %wreg.i79.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2293, i32 0, i32 58
  %2294 = ptrtoint ptr %wreg.i79.i to i32
  call void @__asan_load4_noabort(i32 %2294)
  %2295 = load ptr, ptr %wreg.i79.i, align 4
  tail call void %2295(ptr noundef %hdev, i32 noundef %pb_addr.07.i78.i, i32 noundef 0) #2
  %add1.i80.i = add nuw nsw i32 %pb_addr.07.i78.i, 4
  %and.i81.i = and i32 %add1.i80.i, 4092
  %tobool.not.i82.i = icmp eq i32 %and.i81.i, 0
  br i1 %tobool.not.i82.i, label %while.body.i83.i.while.body.i91.i_crit_edge, label %while.body.i83.i.while.body.i83.i_crit_edge

while.body.i83.i.while.body.i83.i_crit_edge:      ; preds = %while.body.i83.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i83.i

while.body.i83.i.while.body.i91.i_crit_edge:      ; preds = %while.body.i83.i
  br label %while.body.i91.i

while.body.i91.i:                                 ; preds = %while.body.i91.i.while.body.i91.i_crit_edge, %while.body.i83.i.while.body.i91.i_crit_edge
  %pb_addr.07.i86.i = phi i32 [ %add1.i88.i, %while.body.i91.i.while.body.i91.i_crit_edge ], [ 24448, %while.body.i83.i.while.body.i91.i_crit_edge ]
  %2296 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2296)
  %2297 = load ptr, ptr %asic_funcs, align 8
  %wreg.i87.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2297, i32 0, i32 58
  %2298 = ptrtoint ptr %wreg.i87.i to i32
  call void @__asan_load4_noabort(i32 %2298)
  %2299 = load ptr, ptr %wreg.i87.i, align 4
  tail call void %2299(ptr noundef %hdev, i32 noundef %pb_addr.07.i86.i, i32 noundef 0) #2
  %add1.i88.i = add nuw nsw i32 %pb_addr.07.i86.i, 4
  %and.i89.i = and i32 %add1.i88.i, 4092
  %tobool.not.i90.i = icmp eq i32 %and.i89.i, 0
  br i1 %tobool.not.i90.i, label %while.body.i91.i.while.body.i99.i_crit_edge, label %while.body.i91.i.while.body.i91.i_crit_edge

while.body.i91.i.while.body.i91.i_crit_edge:      ; preds = %while.body.i91.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i91.i

while.body.i91.i.while.body.i99.i_crit_edge:      ; preds = %while.body.i91.i
  br label %while.body.i99.i

while.body.i99.i:                                 ; preds = %while.body.i99.i.while.body.i99.i_crit_edge, %while.body.i91.i.while.body.i99.i_crit_edge
  %pb_addr.07.i94.i = phi i32 [ %add1.i96.i, %while.body.i99.i.while.body.i99.i_crit_edge ], [ 2101120, %while.body.i91.i.while.body.i99.i_crit_edge ]
  %2300 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2300)
  %2301 = load ptr, ptr %asic_funcs, align 8
  %wreg.i95.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2301, i32 0, i32 58
  %2302 = ptrtoint ptr %wreg.i95.i to i32
  call void @__asan_load4_noabort(i32 %2302)
  %2303 = load ptr, ptr %wreg.i95.i, align 4
  tail call void %2303(ptr noundef %hdev, i32 noundef %pb_addr.07.i94.i, i32 noundef 0) #2
  %add1.i96.i = add nuw nsw i32 %pb_addr.07.i94.i, 4
  %and.i97.i = and i32 %add1.i96.i, 4092
  %tobool.not.i98.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool.not.i98.i, label %while.body.i99.i.while.body.i107.i_crit_edge, label %while.body.i99.i.while.body.i99.i_crit_edge

while.body.i99.i.while.body.i99.i_crit_edge:      ; preds = %while.body.i99.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i99.i

while.body.i99.i.while.body.i107.i_crit_edge:     ; preds = %while.body.i99.i
  br label %while.body.i107.i

while.body.i107.i:                                ; preds = %while.body.i107.i.while.body.i107.i_crit_edge, %while.body.i99.i.while.body.i107.i_crit_edge
  %pb_addr.07.i102.i = phi i32 [ %add1.i104.i, %while.body.i107.i.while.body.i107.i_crit_edge ], [ 2105216, %while.body.i99.i.while.body.i107.i_crit_edge ]
  %2304 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2304)
  %2305 = load ptr, ptr %asic_funcs, align 8
  %wreg.i103.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2305, i32 0, i32 58
  %2306 = ptrtoint ptr %wreg.i103.i to i32
  call void @__asan_load4_noabort(i32 %2306)
  %2307 = load ptr, ptr %wreg.i103.i, align 4
  tail call void %2307(ptr noundef %hdev, i32 noundef %pb_addr.07.i102.i, i32 noundef 0) #2
  %add1.i104.i = add nuw nsw i32 %pb_addr.07.i102.i, 4
  %and.i105.i = and i32 %add1.i104.i, 4092
  %tobool.not.i106.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool.not.i106.i, label %while.body.i107.i.while.body.i115.i_crit_edge, label %while.body.i107.i.while.body.i107.i_crit_edge

while.body.i107.i.while.body.i107.i_crit_edge:    ; preds = %while.body.i107.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i107.i

while.body.i107.i.while.body.i115.i_crit_edge:    ; preds = %while.body.i107.i
  br label %while.body.i115.i

while.body.i115.i:                                ; preds = %while.body.i115.i.while.body.i115.i_crit_edge, %while.body.i107.i.while.body.i115.i_crit_edge
  %pb_addr.07.i110.i = phi i32 [ %add1.i112.i, %while.body.i115.i.while.body.i115.i_crit_edge ], [ 2117504, %while.body.i107.i.while.body.i115.i_crit_edge ]
  %2308 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2308)
  %2309 = load ptr, ptr %asic_funcs, align 8
  %wreg.i111.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2309, i32 0, i32 58
  %2310 = ptrtoint ptr %wreg.i111.i to i32
  call void @__asan_load4_noabort(i32 %2310)
  %2311 = load ptr, ptr %wreg.i111.i, align 4
  tail call void %2311(ptr noundef %hdev, i32 noundef %pb_addr.07.i110.i, i32 noundef 0) #2
  %add1.i112.i = add nuw nsw i32 %pb_addr.07.i110.i, 4
  %and.i113.i = and i32 %add1.i112.i, 4092
  %tobool.not.i114.i = icmp eq i32 %and.i113.i, 0
  br i1 %tobool.not.i114.i, label %while.body.i115.i.while.body.i123.i_crit_edge, label %while.body.i115.i.while.body.i115.i_crit_edge

while.body.i115.i.while.body.i115.i_crit_edge:    ; preds = %while.body.i115.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i115.i

while.body.i115.i.while.body.i123.i_crit_edge:    ; preds = %while.body.i115.i
  br label %while.body.i123.i

while.body.i123.i:                                ; preds = %while.body.i123.i.while.body.i123.i_crit_edge, %while.body.i115.i.while.body.i123.i_crit_edge
  %pb_addr.07.i118.i = phi i32 [ %add1.i120.i, %while.body.i123.i.while.body.i123.i_crit_edge ], [ 2121600, %while.body.i115.i.while.body.i123.i_crit_edge ]
  %2312 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2312)
  %2313 = load ptr, ptr %asic_funcs, align 8
  %wreg.i119.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2313, i32 0, i32 58
  %2314 = ptrtoint ptr %wreg.i119.i to i32
  call void @__asan_load4_noabort(i32 %2314)
  %2315 = load ptr, ptr %wreg.i119.i, align 4
  tail call void %2315(ptr noundef %hdev, i32 noundef %pb_addr.07.i118.i, i32 noundef 0) #2
  %add1.i120.i = add nuw nsw i32 %pb_addr.07.i118.i, 4
  %and.i121.i = and i32 %add1.i120.i, 4092
  %tobool.not.i122.i = icmp eq i32 %and.i121.i, 0
  br i1 %tobool.not.i122.i, label %while.body.i123.i.while.body.i131.i_crit_edge, label %while.body.i123.i.while.body.i123.i_crit_edge

while.body.i123.i.while.body.i123.i_crit_edge:    ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i123.i

while.body.i123.i.while.body.i131.i_crit_edge:    ; preds = %while.body.i123.i
  br label %while.body.i131.i

while.body.i131.i:                                ; preds = %while.body.i131.i.while.body.i131.i_crit_edge, %while.body.i123.i.while.body.i131.i_crit_edge
  %pb_addr.07.i126.i = phi i32 [ %add1.i128.i, %while.body.i131.i.while.body.i131.i_crit_edge ], [ 2133888, %while.body.i123.i.while.body.i131.i_crit_edge ]
  %2316 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2316)
  %2317 = load ptr, ptr %asic_funcs, align 8
  %wreg.i127.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2317, i32 0, i32 58
  %2318 = ptrtoint ptr %wreg.i127.i to i32
  call void @__asan_load4_noabort(i32 %2318)
  %2319 = load ptr, ptr %wreg.i127.i, align 4
  tail call void %2319(ptr noundef %hdev, i32 noundef %pb_addr.07.i126.i, i32 noundef 0) #2
  %add1.i128.i = add nuw nsw i32 %pb_addr.07.i126.i, 4
  %and.i129.i = and i32 %add1.i128.i, 4092
  %tobool.not.i130.i = icmp eq i32 %and.i129.i, 0
  br i1 %tobool.not.i130.i, label %while.body.i131.i.while.body.i139.i_crit_edge, label %while.body.i131.i.while.body.i131.i_crit_edge

while.body.i131.i.while.body.i131.i_crit_edge:    ; preds = %while.body.i131.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i131.i

while.body.i131.i.while.body.i139.i_crit_edge:    ; preds = %while.body.i131.i
  br label %while.body.i139.i

while.body.i139.i:                                ; preds = %while.body.i139.i.while.body.i139.i_crit_edge, %while.body.i131.i.while.body.i139.i_crit_edge
  %pb_addr.07.i134.i = phi i32 [ %add1.i136.i, %while.body.i139.i.while.body.i139.i_crit_edge ], [ 2137984, %while.body.i131.i.while.body.i139.i_crit_edge ]
  %2320 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2320)
  %2321 = load ptr, ptr %asic_funcs, align 8
  %wreg.i135.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2321, i32 0, i32 58
  %2322 = ptrtoint ptr %wreg.i135.i to i32
  call void @__asan_load4_noabort(i32 %2322)
  %2323 = load ptr, ptr %wreg.i135.i, align 4
  tail call void %2323(ptr noundef %hdev, i32 noundef %pb_addr.07.i134.i, i32 noundef 0) #2
  %add1.i136.i = add nuw nsw i32 %pb_addr.07.i134.i, 4
  %and.i137.i = and i32 %add1.i136.i, 4092
  %tobool.not.i138.i = icmp eq i32 %and.i137.i, 0
  br i1 %tobool.not.i138.i, label %while.body.i139.i.while.body.i147.i_crit_edge, label %while.body.i139.i.while.body.i139.i_crit_edge

while.body.i139.i.while.body.i139.i_crit_edge:    ; preds = %while.body.i139.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i139.i

while.body.i139.i.while.body.i147.i_crit_edge:    ; preds = %while.body.i139.i
  br label %while.body.i147.i

while.body.i147.i:                                ; preds = %while.body.i147.i.while.body.i147.i_crit_edge, %while.body.i139.i.while.body.i147.i_crit_edge
  %pb_addr.07.i142.i = phi i32 [ %add1.i144.i, %while.body.i147.i.while.body.i147.i_crit_edge ], [ 2150272, %while.body.i139.i.while.body.i147.i_crit_edge ]
  %2324 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2324)
  %2325 = load ptr, ptr %asic_funcs, align 8
  %wreg.i143.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2325, i32 0, i32 58
  %2326 = ptrtoint ptr %wreg.i143.i to i32
  call void @__asan_load4_noabort(i32 %2326)
  %2327 = load ptr, ptr %wreg.i143.i, align 4
  tail call void %2327(ptr noundef %hdev, i32 noundef %pb_addr.07.i142.i, i32 noundef 0) #2
  %add1.i144.i = add nuw nsw i32 %pb_addr.07.i142.i, 4
  %and.i145.i = and i32 %add1.i144.i, 4092
  %tobool.not.i146.i = icmp eq i32 %and.i145.i, 0
  br i1 %tobool.not.i146.i, label %while.body.i147.i.while.body.i155.i_crit_edge, label %while.body.i147.i.while.body.i147.i_crit_edge

while.body.i147.i.while.body.i147.i_crit_edge:    ; preds = %while.body.i147.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i147.i

while.body.i147.i.while.body.i155.i_crit_edge:    ; preds = %while.body.i147.i
  br label %while.body.i155.i

while.body.i155.i:                                ; preds = %while.body.i155.i.while.body.i155.i_crit_edge, %while.body.i147.i.while.body.i155.i_crit_edge
  %pb_addr.07.i150.i = phi i32 [ %add1.i152.i, %while.body.i155.i.while.body.i155.i_crit_edge ], [ 2154368, %while.body.i147.i.while.body.i155.i_crit_edge ]
  %2328 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2328)
  %2329 = load ptr, ptr %asic_funcs, align 8
  %wreg.i151.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2329, i32 0, i32 58
  %2330 = ptrtoint ptr %wreg.i151.i to i32
  call void @__asan_load4_noabort(i32 %2330)
  %2331 = load ptr, ptr %wreg.i151.i, align 4
  tail call void %2331(ptr noundef %hdev, i32 noundef %pb_addr.07.i150.i, i32 noundef 0) #2
  %add1.i152.i = add nuw nsw i32 %pb_addr.07.i150.i, 4
  %and.i153.i = and i32 %add1.i152.i, 4092
  %tobool.not.i154.i = icmp eq i32 %and.i153.i, 0
  br i1 %tobool.not.i154.i, label %while.body.i155.i.while.body.i163.i_crit_edge, label %while.body.i155.i.while.body.i155.i_crit_edge

while.body.i155.i.while.body.i155.i_crit_edge:    ; preds = %while.body.i155.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i155.i

while.body.i155.i.while.body.i163.i_crit_edge:    ; preds = %while.body.i155.i
  br label %while.body.i163.i

while.body.i163.i:                                ; preds = %while.body.i163.i.while.body.i163.i_crit_edge, %while.body.i155.i.while.body.i163.i_crit_edge
  %pb_addr.07.i158.i = phi i32 [ %add1.i160.i, %while.body.i163.i.while.body.i163.i_crit_edge ], [ 2166656, %while.body.i155.i.while.body.i163.i_crit_edge ]
  %2332 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2332)
  %2333 = load ptr, ptr %asic_funcs, align 8
  %wreg.i159.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2333, i32 0, i32 58
  %2334 = ptrtoint ptr %wreg.i159.i to i32
  call void @__asan_load4_noabort(i32 %2334)
  %2335 = load ptr, ptr %wreg.i159.i, align 4
  tail call void %2335(ptr noundef %hdev, i32 noundef %pb_addr.07.i158.i, i32 noundef 0) #2
  %add1.i160.i = add nuw nsw i32 %pb_addr.07.i158.i, 4
  %and.i161.i = and i32 %add1.i160.i, 4092
  %tobool.not.i162.i = icmp eq i32 %and.i161.i, 0
  br i1 %tobool.not.i162.i, label %while.body.i163.i.while.body.i171.i_crit_edge, label %while.body.i163.i.while.body.i163.i_crit_edge

while.body.i163.i.while.body.i163.i_crit_edge:    ; preds = %while.body.i163.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i163.i

while.body.i163.i.while.body.i171.i_crit_edge:    ; preds = %while.body.i163.i
  br label %while.body.i171.i

while.body.i171.i:                                ; preds = %while.body.i171.i.while.body.i171.i_crit_edge, %while.body.i163.i.while.body.i171.i_crit_edge
  %pb_addr.07.i166.i = phi i32 [ %add1.i168.i, %while.body.i171.i.while.body.i171.i_crit_edge ], [ 2170752, %while.body.i163.i.while.body.i171.i_crit_edge ]
  %2336 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2336)
  %2337 = load ptr, ptr %asic_funcs, align 8
  %wreg.i167.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2337, i32 0, i32 58
  %2338 = ptrtoint ptr %wreg.i167.i to i32
  call void @__asan_load4_noabort(i32 %2338)
  %2339 = load ptr, ptr %wreg.i167.i, align 4
  tail call void %2339(ptr noundef %hdev, i32 noundef %pb_addr.07.i166.i, i32 noundef 0) #2
  %add1.i168.i = add nuw nsw i32 %pb_addr.07.i166.i, 4
  %and.i169.i = and i32 %add1.i168.i, 4092
  %tobool.not.i170.i = icmp eq i32 %and.i169.i, 0
  br i1 %tobool.not.i170.i, label %while.body.i171.i.while.body.i179.i_crit_edge, label %while.body.i171.i.while.body.i171.i_crit_edge

while.body.i171.i.while.body.i171.i_crit_edge:    ; preds = %while.body.i171.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i171.i

while.body.i171.i.while.body.i179.i_crit_edge:    ; preds = %while.body.i171.i
  br label %while.body.i179.i

while.body.i179.i:                                ; preds = %while.body.i179.i.while.body.i179.i_crit_edge, %while.body.i171.i.while.body.i179.i_crit_edge
  %pb_addr.07.i174.i = phi i32 [ %add1.i176.i, %while.body.i179.i.while.body.i179.i_crit_edge ], [ 2232192, %while.body.i171.i.while.body.i179.i_crit_edge ]
  %2340 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2340)
  %2341 = load ptr, ptr %asic_funcs, align 8
  %wreg.i175.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2341, i32 0, i32 58
  %2342 = ptrtoint ptr %wreg.i175.i to i32
  call void @__asan_load4_noabort(i32 %2342)
  %2343 = load ptr, ptr %wreg.i175.i, align 4
  tail call void %2343(ptr noundef %hdev, i32 noundef %pb_addr.07.i174.i, i32 noundef 0) #2
  %add1.i176.i = add nuw nsw i32 %pb_addr.07.i174.i, 4
  %and.i177.i = and i32 %add1.i176.i, 4092
  %tobool.not.i178.i = icmp eq i32 %and.i177.i, 0
  br i1 %tobool.not.i178.i, label %while.body.i179.i.while.body.i187.i_crit_edge, label %while.body.i179.i.while.body.i179.i_crit_edge

while.body.i179.i.while.body.i179.i_crit_edge:    ; preds = %while.body.i179.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i179.i

while.body.i179.i.while.body.i187.i_crit_edge:    ; preds = %while.body.i179.i
  br label %while.body.i187.i

while.body.i187.i:                                ; preds = %while.body.i187.i.while.body.i187.i_crit_edge, %while.body.i179.i.while.body.i187.i_crit_edge
  %pb_addr.07.i182.i = phi i32 [ %add1.i184.i, %while.body.i187.i.while.body.i187.i_crit_edge ], [ 2236288, %while.body.i179.i.while.body.i187.i_crit_edge ]
  %2344 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2344)
  %2345 = load ptr, ptr %asic_funcs, align 8
  %wreg.i183.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2345, i32 0, i32 58
  %2346 = ptrtoint ptr %wreg.i183.i to i32
  call void @__asan_load4_noabort(i32 %2346)
  %2347 = load ptr, ptr %wreg.i183.i, align 4
  tail call void %2347(ptr noundef %hdev, i32 noundef %pb_addr.07.i182.i, i32 noundef 0) #2
  %add1.i184.i = add nuw nsw i32 %pb_addr.07.i182.i, 4
  %and.i185.i = and i32 %add1.i184.i, 4092
  %tobool.not.i186.i = icmp eq i32 %and.i185.i, 0
  br i1 %tobool.not.i186.i, label %while.body.i187.i.while.body.i195.i_crit_edge, label %while.body.i187.i.while.body.i187.i_crit_edge

while.body.i187.i.while.body.i187.i_crit_edge:    ; preds = %while.body.i187.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i187.i

while.body.i187.i.while.body.i195.i_crit_edge:    ; preds = %while.body.i187.i
  br label %while.body.i195.i

while.body.i195.i:                                ; preds = %while.body.i195.i.while.body.i195.i_crit_edge, %while.body.i187.i.while.body.i195.i_crit_edge
  %pb_addr.07.i190.i = phi i32 [ %add1.i192.i, %while.body.i195.i.while.body.i195.i_crit_edge ], [ 2248576, %while.body.i187.i.while.body.i195.i_crit_edge ]
  %2348 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2348)
  %2349 = load ptr, ptr %asic_funcs, align 8
  %wreg.i191.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2349, i32 0, i32 58
  %2350 = ptrtoint ptr %wreg.i191.i to i32
  call void @__asan_load4_noabort(i32 %2350)
  %2351 = load ptr, ptr %wreg.i191.i, align 4
  tail call void %2351(ptr noundef %hdev, i32 noundef %pb_addr.07.i190.i, i32 noundef 0) #2
  %add1.i192.i = add nuw nsw i32 %pb_addr.07.i190.i, 4
  %and.i193.i = and i32 %add1.i192.i, 4092
  %tobool.not.i194.i = icmp eq i32 %and.i193.i, 0
  br i1 %tobool.not.i194.i, label %while.body.i195.i.while.body.i203.i_crit_edge, label %while.body.i195.i.while.body.i195.i_crit_edge

while.body.i195.i.while.body.i195.i_crit_edge:    ; preds = %while.body.i195.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i195.i

while.body.i195.i.while.body.i203.i_crit_edge:    ; preds = %while.body.i195.i
  br label %while.body.i203.i

while.body.i203.i:                                ; preds = %while.body.i203.i.while.body.i203.i_crit_edge, %while.body.i195.i.while.body.i203.i_crit_edge
  %pb_addr.07.i198.i = phi i32 [ %add1.i200.i, %while.body.i203.i.while.body.i203.i_crit_edge ], [ 2252672, %while.body.i195.i.while.body.i203.i_crit_edge ]
  %2352 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2352)
  %2353 = load ptr, ptr %asic_funcs, align 8
  %wreg.i199.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2353, i32 0, i32 58
  %2354 = ptrtoint ptr %wreg.i199.i to i32
  call void @__asan_load4_noabort(i32 %2354)
  %2355 = load ptr, ptr %wreg.i199.i, align 4
  tail call void %2355(ptr noundef %hdev, i32 noundef %pb_addr.07.i198.i, i32 noundef 0) #2
  %add1.i200.i = add nuw nsw i32 %pb_addr.07.i198.i, 4
  %and.i201.i = and i32 %add1.i200.i, 4092
  %tobool.not.i202.i = icmp eq i32 %and.i201.i, 0
  br i1 %tobool.not.i202.i, label %while.body.i203.i.while.body.i211.i_crit_edge, label %while.body.i203.i.while.body.i203.i_crit_edge

while.body.i203.i.while.body.i203.i_crit_edge:    ; preds = %while.body.i203.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i203.i

while.body.i203.i.while.body.i211.i_crit_edge:    ; preds = %while.body.i203.i
  br label %while.body.i211.i

while.body.i211.i:                                ; preds = %while.body.i211.i.while.body.i211.i_crit_edge, %while.body.i203.i.while.body.i211.i_crit_edge
  %pb_addr.07.i206.i = phi i32 [ %add1.i208.i, %while.body.i211.i.while.body.i211.i_crit_edge ], [ 2264960, %while.body.i203.i.while.body.i211.i_crit_edge ]
  %2356 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2356)
  %2357 = load ptr, ptr %asic_funcs, align 8
  %wreg.i207.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2357, i32 0, i32 58
  %2358 = ptrtoint ptr %wreg.i207.i to i32
  call void @__asan_load4_noabort(i32 %2358)
  %2359 = load ptr, ptr %wreg.i207.i, align 4
  tail call void %2359(ptr noundef %hdev, i32 noundef %pb_addr.07.i206.i, i32 noundef 0) #2
  %add1.i208.i = add nuw nsw i32 %pb_addr.07.i206.i, 4
  %and.i209.i = and i32 %add1.i208.i, 4092
  %tobool.not.i210.i = icmp eq i32 %and.i209.i, 0
  br i1 %tobool.not.i210.i, label %while.body.i211.i.while.body.i219.i_crit_edge, label %while.body.i211.i.while.body.i211.i_crit_edge

while.body.i211.i.while.body.i211.i_crit_edge:    ; preds = %while.body.i211.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i211.i

while.body.i211.i.while.body.i219.i_crit_edge:    ; preds = %while.body.i211.i
  br label %while.body.i219.i

while.body.i219.i:                                ; preds = %while.body.i219.i.while.body.i219.i_crit_edge, %while.body.i211.i.while.body.i219.i_crit_edge
  %pb_addr.07.i214.i = phi i32 [ %add1.i216.i, %while.body.i219.i.while.body.i219.i_crit_edge ], [ 2269056, %while.body.i211.i.while.body.i219.i_crit_edge ]
  %2360 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2360)
  %2361 = load ptr, ptr %asic_funcs, align 8
  %wreg.i215.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2361, i32 0, i32 58
  %2362 = ptrtoint ptr %wreg.i215.i to i32
  call void @__asan_load4_noabort(i32 %2362)
  %2363 = load ptr, ptr %wreg.i215.i, align 4
  tail call void %2363(ptr noundef %hdev, i32 noundef %pb_addr.07.i214.i, i32 noundef 0) #2
  %add1.i216.i = add nuw nsw i32 %pb_addr.07.i214.i, 4
  %and.i217.i = and i32 %add1.i216.i, 4092
  %tobool.not.i218.i = icmp eq i32 %and.i217.i, 0
  br i1 %tobool.not.i218.i, label %while.body.i219.i.while.body.i227.i_crit_edge, label %while.body.i219.i.while.body.i219.i_crit_edge

while.body.i219.i.while.body.i219.i_crit_edge:    ; preds = %while.body.i219.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i219.i

while.body.i219.i.while.body.i227.i_crit_edge:    ; preds = %while.body.i219.i
  br label %while.body.i227.i

while.body.i227.i:                                ; preds = %while.body.i227.i.while.body.i227.i_crit_edge, %while.body.i219.i.while.body.i227.i_crit_edge
  %pb_addr.07.i222.i = phi i32 [ %add1.i224.i, %while.body.i227.i.while.body.i227.i_crit_edge ], [ 2281344, %while.body.i219.i.while.body.i227.i_crit_edge ]
  %2364 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2364)
  %2365 = load ptr, ptr %asic_funcs, align 8
  %wreg.i223.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2365, i32 0, i32 58
  %2366 = ptrtoint ptr %wreg.i223.i to i32
  call void @__asan_load4_noabort(i32 %2366)
  %2367 = load ptr, ptr %wreg.i223.i, align 4
  tail call void %2367(ptr noundef %hdev, i32 noundef %pb_addr.07.i222.i, i32 noundef 0) #2
  %add1.i224.i = add nuw nsw i32 %pb_addr.07.i222.i, 4
  %and.i225.i = and i32 %add1.i224.i, 4092
  %tobool.not.i226.i = icmp eq i32 %and.i225.i, 0
  br i1 %tobool.not.i226.i, label %while.body.i227.i.while.body.i235.i_crit_edge, label %while.body.i227.i.while.body.i227.i_crit_edge

while.body.i227.i.while.body.i227.i_crit_edge:    ; preds = %while.body.i227.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i227.i

while.body.i227.i.while.body.i235.i_crit_edge:    ; preds = %while.body.i227.i
  br label %while.body.i235.i

while.body.i235.i:                                ; preds = %while.body.i235.i.while.body.i235.i_crit_edge, %while.body.i227.i.while.body.i235.i_crit_edge
  %pb_addr.07.i230.i = phi i32 [ %add1.i232.i, %while.body.i235.i.while.body.i235.i_crit_edge ], [ 2285440, %while.body.i227.i.while.body.i235.i_crit_edge ]
  %2368 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2368)
  %2369 = load ptr, ptr %asic_funcs, align 8
  %wreg.i231.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2369, i32 0, i32 58
  %2370 = ptrtoint ptr %wreg.i231.i to i32
  call void @__asan_load4_noabort(i32 %2370)
  %2371 = load ptr, ptr %wreg.i231.i, align 4
  tail call void %2371(ptr noundef %hdev, i32 noundef %pb_addr.07.i230.i, i32 noundef 0) #2
  %add1.i232.i = add nuw nsw i32 %pb_addr.07.i230.i, 4
  %and.i233.i = and i32 %add1.i232.i, 4092
  %tobool.not.i234.i = icmp eq i32 %and.i233.i, 0
  br i1 %tobool.not.i234.i, label %while.body.i235.i.while.body.i243.i_crit_edge, label %while.body.i235.i.while.body.i235.i_crit_edge

while.body.i235.i.while.body.i235.i_crit_edge:    ; preds = %while.body.i235.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i235.i

while.body.i235.i.while.body.i243.i_crit_edge:    ; preds = %while.body.i235.i
  br label %while.body.i243.i

while.body.i243.i:                                ; preds = %while.body.i243.i.while.body.i243.i_crit_edge, %while.body.i235.i.while.body.i243.i_crit_edge
  %pb_addr.07.i238.i = phi i32 [ %add1.i240.i, %while.body.i243.i.while.body.i243.i_crit_edge ], [ 2297728, %while.body.i235.i.while.body.i243.i_crit_edge ]
  %2372 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2372)
  %2373 = load ptr, ptr %asic_funcs, align 8
  %wreg.i239.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2373, i32 0, i32 58
  %2374 = ptrtoint ptr %wreg.i239.i to i32
  call void @__asan_load4_noabort(i32 %2374)
  %2375 = load ptr, ptr %wreg.i239.i, align 4
  tail call void %2375(ptr noundef %hdev, i32 noundef %pb_addr.07.i238.i, i32 noundef 0) #2
  %add1.i240.i = add nuw nsw i32 %pb_addr.07.i238.i, 4
  %and.i241.i = and i32 %add1.i240.i, 4092
  %tobool.not.i242.i = icmp eq i32 %and.i241.i, 0
  br i1 %tobool.not.i242.i, label %while.body.i243.i.while.body.i251.i_crit_edge, label %while.body.i243.i.while.body.i243.i_crit_edge

while.body.i243.i.while.body.i243.i_crit_edge:    ; preds = %while.body.i243.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i243.i

while.body.i243.i.while.body.i251.i_crit_edge:    ; preds = %while.body.i243.i
  br label %while.body.i251.i

while.body.i251.i:                                ; preds = %while.body.i251.i.while.body.i251.i_crit_edge, %while.body.i243.i.while.body.i251.i_crit_edge
  %pb_addr.07.i246.i = phi i32 [ %add1.i248.i, %while.body.i251.i.while.body.i251.i_crit_edge ], [ 2301824, %while.body.i243.i.while.body.i251.i_crit_edge ]
  %2376 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2376)
  %2377 = load ptr, ptr %asic_funcs, align 8
  %wreg.i247.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2377, i32 0, i32 58
  %2378 = ptrtoint ptr %wreg.i247.i to i32
  call void @__asan_load4_noabort(i32 %2378)
  %2379 = load ptr, ptr %wreg.i247.i, align 4
  tail call void %2379(ptr noundef %hdev, i32 noundef %pb_addr.07.i246.i, i32 noundef 0) #2
  %add1.i248.i = add nuw nsw i32 %pb_addr.07.i246.i, 4
  %and.i249.i = and i32 %add1.i248.i, 4092
  %tobool.not.i250.i = icmp eq i32 %and.i249.i, 0
  br i1 %tobool.not.i250.i, label %while.body.i251.i.while.body.i259.i_crit_edge, label %while.body.i251.i.while.body.i251.i_crit_edge

while.body.i251.i.while.body.i251.i_crit_edge:    ; preds = %while.body.i251.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i251.i

while.body.i251.i.while.body.i259.i_crit_edge:    ; preds = %while.body.i251.i
  br label %while.body.i259.i

while.body.i259.i:                                ; preds = %while.body.i259.i.while.body.i259.i_crit_edge, %while.body.i251.i.while.body.i259.i_crit_edge
  %pb_addr.07.i254.i = phi i32 [ %add1.i256.i, %while.body.i259.i.while.body.i259.i_crit_edge ], [ 2363264, %while.body.i251.i.while.body.i259.i_crit_edge ]
  %2380 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2380)
  %2381 = load ptr, ptr %asic_funcs, align 8
  %wreg.i255.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2381, i32 0, i32 58
  %2382 = ptrtoint ptr %wreg.i255.i to i32
  call void @__asan_load4_noabort(i32 %2382)
  %2383 = load ptr, ptr %wreg.i255.i, align 4
  tail call void %2383(ptr noundef %hdev, i32 noundef %pb_addr.07.i254.i, i32 noundef 0) #2
  %add1.i256.i = add nuw nsw i32 %pb_addr.07.i254.i, 4
  %and.i257.i = and i32 %add1.i256.i, 4092
  %tobool.not.i258.i = icmp eq i32 %and.i257.i, 0
  br i1 %tobool.not.i258.i, label %while.body.i259.i.while.body.i267.i_crit_edge, label %while.body.i259.i.while.body.i259.i_crit_edge

while.body.i259.i.while.body.i259.i_crit_edge:    ; preds = %while.body.i259.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i259.i

while.body.i259.i.while.body.i267.i_crit_edge:    ; preds = %while.body.i259.i
  br label %while.body.i267.i

while.body.i267.i:                                ; preds = %while.body.i267.i.while.body.i267.i_crit_edge, %while.body.i259.i.while.body.i267.i_crit_edge
  %pb_addr.07.i262.i = phi i32 [ %add1.i264.i, %while.body.i267.i.while.body.i267.i_crit_edge ], [ 2367360, %while.body.i259.i.while.body.i267.i_crit_edge ]
  %2384 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2384)
  %2385 = load ptr, ptr %asic_funcs, align 8
  %wreg.i263.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2385, i32 0, i32 58
  %2386 = ptrtoint ptr %wreg.i263.i to i32
  call void @__asan_load4_noabort(i32 %2386)
  %2387 = load ptr, ptr %wreg.i263.i, align 4
  tail call void %2387(ptr noundef %hdev, i32 noundef %pb_addr.07.i262.i, i32 noundef 0) #2
  %add1.i264.i = add nuw nsw i32 %pb_addr.07.i262.i, 4
  %and.i265.i = and i32 %add1.i264.i, 4092
  %tobool.not.i266.i = icmp eq i32 %and.i265.i, 0
  br i1 %tobool.not.i266.i, label %while.body.i267.i.while.body.i275.i_crit_edge, label %while.body.i267.i.while.body.i267.i_crit_edge

while.body.i267.i.while.body.i267.i_crit_edge:    ; preds = %while.body.i267.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i267.i

while.body.i267.i.while.body.i275.i_crit_edge:    ; preds = %while.body.i267.i
  br label %while.body.i275.i

while.body.i275.i:                                ; preds = %while.body.i275.i.while.body.i275.i_crit_edge, %while.body.i267.i.while.body.i275.i_crit_edge
  %pb_addr.07.i270.i = phi i32 [ %add1.i272.i, %while.body.i275.i.while.body.i275.i_crit_edge ], [ 2379648, %while.body.i267.i.while.body.i275.i_crit_edge ]
  %2388 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2388)
  %2389 = load ptr, ptr %asic_funcs, align 8
  %wreg.i271.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2389, i32 0, i32 58
  %2390 = ptrtoint ptr %wreg.i271.i to i32
  call void @__asan_load4_noabort(i32 %2390)
  %2391 = load ptr, ptr %wreg.i271.i, align 4
  tail call void %2391(ptr noundef %hdev, i32 noundef %pb_addr.07.i270.i, i32 noundef 0) #2
  %add1.i272.i = add nuw nsw i32 %pb_addr.07.i270.i, 4
  %and.i273.i = and i32 %add1.i272.i, 4092
  %tobool.not.i274.i = icmp eq i32 %and.i273.i, 0
  br i1 %tobool.not.i274.i, label %while.body.i275.i.while.body.i283.i_crit_edge, label %while.body.i275.i.while.body.i275.i_crit_edge

while.body.i275.i.while.body.i275.i_crit_edge:    ; preds = %while.body.i275.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i275.i

while.body.i275.i.while.body.i283.i_crit_edge:    ; preds = %while.body.i275.i
  br label %while.body.i283.i

while.body.i283.i:                                ; preds = %while.body.i283.i.while.body.i283.i_crit_edge, %while.body.i275.i.while.body.i283.i_crit_edge
  %pb_addr.07.i278.i = phi i32 [ %add1.i280.i, %while.body.i283.i.while.body.i283.i_crit_edge ], [ 2383744, %while.body.i275.i.while.body.i283.i_crit_edge ]
  %2392 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2392)
  %2393 = load ptr, ptr %asic_funcs, align 8
  %wreg.i279.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2393, i32 0, i32 58
  %2394 = ptrtoint ptr %wreg.i279.i to i32
  call void @__asan_load4_noabort(i32 %2394)
  %2395 = load ptr, ptr %wreg.i279.i, align 4
  tail call void %2395(ptr noundef %hdev, i32 noundef %pb_addr.07.i278.i, i32 noundef 0) #2
  %add1.i280.i = add nuw nsw i32 %pb_addr.07.i278.i, 4
  %and.i281.i = and i32 %add1.i280.i, 4092
  %tobool.not.i282.i = icmp eq i32 %and.i281.i, 0
  br i1 %tobool.not.i282.i, label %while.body.i283.i.while.body.i291.i_crit_edge, label %while.body.i283.i.while.body.i283.i_crit_edge

while.body.i283.i.while.body.i283.i_crit_edge:    ; preds = %while.body.i283.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i283.i

while.body.i283.i.while.body.i291.i_crit_edge:    ; preds = %while.body.i283.i
  br label %while.body.i291.i

while.body.i291.i:                                ; preds = %while.body.i291.i.while.body.i291.i_crit_edge, %while.body.i283.i.while.body.i291.i_crit_edge
  %pb_addr.07.i286.i = phi i32 [ %add1.i288.i, %while.body.i291.i.while.body.i291.i_crit_edge ], [ 2396032, %while.body.i283.i.while.body.i291.i_crit_edge ]
  %2396 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2396)
  %2397 = load ptr, ptr %asic_funcs, align 8
  %wreg.i287.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2397, i32 0, i32 58
  %2398 = ptrtoint ptr %wreg.i287.i to i32
  call void @__asan_load4_noabort(i32 %2398)
  %2399 = load ptr, ptr %wreg.i287.i, align 4
  tail call void %2399(ptr noundef %hdev, i32 noundef %pb_addr.07.i286.i, i32 noundef 0) #2
  %add1.i288.i = add nuw nsw i32 %pb_addr.07.i286.i, 4
  %and.i289.i = and i32 %add1.i288.i, 4092
  %tobool.not.i290.i = icmp eq i32 %and.i289.i, 0
  br i1 %tobool.not.i290.i, label %while.body.i291.i.while.body.i299.i_crit_edge, label %while.body.i291.i.while.body.i291.i_crit_edge

while.body.i291.i.while.body.i291.i_crit_edge:    ; preds = %while.body.i291.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i291.i

while.body.i291.i.while.body.i299.i_crit_edge:    ; preds = %while.body.i291.i
  br label %while.body.i299.i

while.body.i299.i:                                ; preds = %while.body.i299.i.while.body.i299.i_crit_edge, %while.body.i291.i.while.body.i299.i_crit_edge
  %pb_addr.07.i294.i = phi i32 [ %add1.i296.i, %while.body.i299.i.while.body.i299.i_crit_edge ], [ 2400128, %while.body.i291.i.while.body.i299.i_crit_edge ]
  %2400 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2400)
  %2401 = load ptr, ptr %asic_funcs, align 8
  %wreg.i295.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2401, i32 0, i32 58
  %2402 = ptrtoint ptr %wreg.i295.i to i32
  call void @__asan_load4_noabort(i32 %2402)
  %2403 = load ptr, ptr %wreg.i295.i, align 4
  tail call void %2403(ptr noundef %hdev, i32 noundef %pb_addr.07.i294.i, i32 noundef 0) #2
  %add1.i296.i = add nuw nsw i32 %pb_addr.07.i294.i, 4
  %and.i297.i = and i32 %add1.i296.i, 4092
  %tobool.not.i298.i = icmp eq i32 %and.i297.i, 0
  br i1 %tobool.not.i298.i, label %while.body.i299.i.while.body.i307.i_crit_edge, label %while.body.i299.i.while.body.i299.i_crit_edge

while.body.i299.i.while.body.i299.i_crit_edge:    ; preds = %while.body.i299.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i299.i

while.body.i299.i.while.body.i307.i_crit_edge:    ; preds = %while.body.i299.i
  br label %while.body.i307.i

while.body.i307.i:                                ; preds = %while.body.i307.i.while.body.i307.i_crit_edge, %while.body.i299.i.while.body.i307.i_crit_edge
  %pb_addr.07.i302.i = phi i32 [ %add1.i304.i, %while.body.i307.i.while.body.i307.i_crit_edge ], [ 2412416, %while.body.i299.i.while.body.i307.i_crit_edge ]
  %2404 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2404)
  %2405 = load ptr, ptr %asic_funcs, align 8
  %wreg.i303.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2405, i32 0, i32 58
  %2406 = ptrtoint ptr %wreg.i303.i to i32
  call void @__asan_load4_noabort(i32 %2406)
  %2407 = load ptr, ptr %wreg.i303.i, align 4
  tail call void %2407(ptr noundef %hdev, i32 noundef %pb_addr.07.i302.i, i32 noundef 0) #2
  %add1.i304.i = add nuw nsw i32 %pb_addr.07.i302.i, 4
  %and.i305.i = and i32 %add1.i304.i, 4092
  %tobool.not.i306.i = icmp eq i32 %and.i305.i, 0
  br i1 %tobool.not.i306.i, label %while.body.i307.i.while.body.i315.i_crit_edge, label %while.body.i307.i.while.body.i307.i_crit_edge

while.body.i307.i.while.body.i307.i_crit_edge:    ; preds = %while.body.i307.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i307.i

while.body.i307.i.while.body.i315.i_crit_edge:    ; preds = %while.body.i307.i
  br label %while.body.i315.i

while.body.i315.i:                                ; preds = %while.body.i315.i.while.body.i315.i_crit_edge, %while.body.i307.i.while.body.i315.i_crit_edge
  %pb_addr.07.i310.i = phi i32 [ %add1.i312.i, %while.body.i315.i.while.body.i315.i_crit_edge ], [ 2416512, %while.body.i307.i.while.body.i315.i_crit_edge ]
  %2408 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2408)
  %2409 = load ptr, ptr %asic_funcs, align 8
  %wreg.i311.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2409, i32 0, i32 58
  %2410 = ptrtoint ptr %wreg.i311.i to i32
  call void @__asan_load4_noabort(i32 %2410)
  %2411 = load ptr, ptr %wreg.i311.i, align 4
  tail call void %2411(ptr noundef %hdev, i32 noundef %pb_addr.07.i310.i, i32 noundef 0) #2
  %add1.i312.i = add nuw nsw i32 %pb_addr.07.i310.i, 4
  %and.i313.i = and i32 %add1.i312.i, 4092
  %tobool.not.i314.i = icmp eq i32 %and.i313.i, 0
  br i1 %tobool.not.i314.i, label %while.body.i315.i.while.body.i323.i_crit_edge, label %while.body.i315.i.while.body.i315.i_crit_edge

while.body.i315.i.while.body.i315.i_crit_edge:    ; preds = %while.body.i315.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i315.i

while.body.i315.i.while.body.i323.i_crit_edge:    ; preds = %while.body.i315.i
  br label %while.body.i323.i

while.body.i323.i:                                ; preds = %while.body.i323.i.while.body.i323.i_crit_edge, %while.body.i315.i.while.body.i323.i_crit_edge
  %pb_addr.07.i318.i = phi i32 [ %add1.i320.i, %while.body.i323.i.while.body.i323.i_crit_edge ], [ 2428800, %while.body.i315.i.while.body.i323.i_crit_edge ]
  %2412 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2412)
  %2413 = load ptr, ptr %asic_funcs, align 8
  %wreg.i319.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2413, i32 0, i32 58
  %2414 = ptrtoint ptr %wreg.i319.i to i32
  call void @__asan_load4_noabort(i32 %2414)
  %2415 = load ptr, ptr %wreg.i319.i, align 4
  tail call void %2415(ptr noundef %hdev, i32 noundef %pb_addr.07.i318.i, i32 noundef 0) #2
  %add1.i320.i = add nuw nsw i32 %pb_addr.07.i318.i, 4
  %and.i321.i = and i32 %add1.i320.i, 4092
  %tobool.not.i322.i = icmp eq i32 %and.i321.i, 0
  br i1 %tobool.not.i322.i, label %while.body.i323.i.while.body.i331.i_crit_edge, label %while.body.i323.i.while.body.i323.i_crit_edge

while.body.i323.i.while.body.i323.i_crit_edge:    ; preds = %while.body.i323.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i323.i

while.body.i323.i.while.body.i331.i_crit_edge:    ; preds = %while.body.i323.i
  br label %while.body.i331.i

while.body.i331.i:                                ; preds = %while.body.i331.i.while.body.i331.i_crit_edge, %while.body.i323.i.while.body.i331.i_crit_edge
  %pb_addr.07.i326.i = phi i32 [ %add1.i328.i, %while.body.i331.i.while.body.i331.i_crit_edge ], [ 2432896, %while.body.i323.i.while.body.i331.i_crit_edge ]
  %2416 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2416)
  %2417 = load ptr, ptr %asic_funcs, align 8
  %wreg.i327.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2417, i32 0, i32 58
  %2418 = ptrtoint ptr %wreg.i327.i to i32
  call void @__asan_load4_noabort(i32 %2418)
  %2419 = load ptr, ptr %wreg.i327.i, align 4
  tail call void %2419(ptr noundef %hdev, i32 noundef %pb_addr.07.i326.i, i32 noundef 0) #2
  %add1.i328.i = add nuw nsw i32 %pb_addr.07.i326.i, 4
  %and.i329.i = and i32 %add1.i328.i, 4092
  %tobool.not.i330.i = icmp eq i32 %and.i329.i, 0
  br i1 %tobool.not.i330.i, label %while.body.i331.i.while.body.i339.i_crit_edge, label %while.body.i331.i.while.body.i331.i_crit_edge

while.body.i331.i.while.body.i331.i_crit_edge:    ; preds = %while.body.i331.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i331.i

while.body.i331.i.while.body.i339.i_crit_edge:    ; preds = %while.body.i331.i
  br label %while.body.i339.i

while.body.i339.i:                                ; preds = %while.body.i339.i.while.body.i339.i_crit_edge, %while.body.i331.i.while.body.i339.i_crit_edge
  %pb_addr.07.i334.i = phi i32 [ %add1.i336.i, %while.body.i339.i.while.body.i339.i_crit_edge ], [ 2494336, %while.body.i331.i.while.body.i339.i_crit_edge ]
  %2420 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2420)
  %2421 = load ptr, ptr %asic_funcs, align 8
  %wreg.i335.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2421, i32 0, i32 58
  %2422 = ptrtoint ptr %wreg.i335.i to i32
  call void @__asan_load4_noabort(i32 %2422)
  %2423 = load ptr, ptr %wreg.i335.i, align 4
  tail call void %2423(ptr noundef %hdev, i32 noundef %pb_addr.07.i334.i, i32 noundef 0) #2
  %add1.i336.i = add nuw nsw i32 %pb_addr.07.i334.i, 4
  %and.i337.i = and i32 %add1.i336.i, 4092
  %tobool.not.i338.i = icmp eq i32 %and.i337.i, 0
  br i1 %tobool.not.i338.i, label %while.body.i339.i.while.body.i347.i_crit_edge, label %while.body.i339.i.while.body.i339.i_crit_edge

while.body.i339.i.while.body.i339.i_crit_edge:    ; preds = %while.body.i339.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i339.i

while.body.i339.i.while.body.i347.i_crit_edge:    ; preds = %while.body.i339.i
  br label %while.body.i347.i

while.body.i347.i:                                ; preds = %while.body.i347.i.while.body.i347.i_crit_edge, %while.body.i339.i.while.body.i347.i_crit_edge
  %pb_addr.07.i342.i = phi i32 [ %add1.i344.i, %while.body.i347.i.while.body.i347.i_crit_edge ], [ 2498432, %while.body.i339.i.while.body.i347.i_crit_edge ]
  %2424 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2424)
  %2425 = load ptr, ptr %asic_funcs, align 8
  %wreg.i343.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2425, i32 0, i32 58
  %2426 = ptrtoint ptr %wreg.i343.i to i32
  call void @__asan_load4_noabort(i32 %2426)
  %2427 = load ptr, ptr %wreg.i343.i, align 4
  tail call void %2427(ptr noundef %hdev, i32 noundef %pb_addr.07.i342.i, i32 noundef 0) #2
  %add1.i344.i = add nuw nsw i32 %pb_addr.07.i342.i, 4
  %and.i345.i = and i32 %add1.i344.i, 4092
  %tobool.not.i346.i = icmp eq i32 %and.i345.i, 0
  br i1 %tobool.not.i346.i, label %while.body.i347.i.while.body.i355.i_crit_edge, label %while.body.i347.i.while.body.i347.i_crit_edge

while.body.i347.i.while.body.i347.i_crit_edge:    ; preds = %while.body.i347.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i347.i

while.body.i347.i.while.body.i355.i_crit_edge:    ; preds = %while.body.i347.i
  br label %while.body.i355.i

while.body.i355.i:                                ; preds = %while.body.i355.i.while.body.i355.i_crit_edge, %while.body.i347.i.while.body.i355.i_crit_edge
  %pb_addr.07.i350.i = phi i32 [ %add1.i352.i, %while.body.i355.i.while.body.i355.i_crit_edge ], [ 2510720, %while.body.i347.i.while.body.i355.i_crit_edge ]
  %2428 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2428)
  %2429 = load ptr, ptr %asic_funcs, align 8
  %wreg.i351.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2429, i32 0, i32 58
  %2430 = ptrtoint ptr %wreg.i351.i to i32
  call void @__asan_load4_noabort(i32 %2430)
  %2431 = load ptr, ptr %wreg.i351.i, align 4
  tail call void %2431(ptr noundef %hdev, i32 noundef %pb_addr.07.i350.i, i32 noundef 0) #2
  %add1.i352.i = add nuw nsw i32 %pb_addr.07.i350.i, 4
  %and.i353.i = and i32 %add1.i352.i, 4092
  %tobool.not.i354.i = icmp eq i32 %and.i353.i, 0
  br i1 %tobool.not.i354.i, label %while.body.i355.i.while.body.i363.i_crit_edge, label %while.body.i355.i.while.body.i355.i_crit_edge

while.body.i355.i.while.body.i355.i_crit_edge:    ; preds = %while.body.i355.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i355.i

while.body.i355.i.while.body.i363.i_crit_edge:    ; preds = %while.body.i355.i
  br label %while.body.i363.i

while.body.i363.i:                                ; preds = %while.body.i363.i.while.body.i363.i_crit_edge, %while.body.i355.i.while.body.i363.i_crit_edge
  %pb_addr.07.i358.i = phi i32 [ %add1.i360.i, %while.body.i363.i.while.body.i363.i_crit_edge ], [ 2514816, %while.body.i355.i.while.body.i363.i_crit_edge ]
  %2432 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2432)
  %2433 = load ptr, ptr %asic_funcs, align 8
  %wreg.i359.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2433, i32 0, i32 58
  %2434 = ptrtoint ptr %wreg.i359.i to i32
  call void @__asan_load4_noabort(i32 %2434)
  %2435 = load ptr, ptr %wreg.i359.i, align 4
  tail call void %2435(ptr noundef %hdev, i32 noundef %pb_addr.07.i358.i, i32 noundef 0) #2
  %add1.i360.i = add nuw nsw i32 %pb_addr.07.i358.i, 4
  %and.i361.i = and i32 %add1.i360.i, 4092
  %tobool.not.i362.i = icmp eq i32 %and.i361.i, 0
  br i1 %tobool.not.i362.i, label %while.body.i363.i.while.body.i371.i_crit_edge, label %while.body.i363.i.while.body.i363.i_crit_edge

while.body.i363.i.while.body.i363.i_crit_edge:    ; preds = %while.body.i363.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i363.i

while.body.i363.i.while.body.i371.i_crit_edge:    ; preds = %while.body.i363.i
  br label %while.body.i371.i

while.body.i371.i:                                ; preds = %while.body.i371.i.while.body.i371.i_crit_edge, %while.body.i363.i.while.body.i371.i_crit_edge
  %pb_addr.07.i366.i = phi i32 [ %add1.i368.i, %while.body.i371.i.while.body.i371.i_crit_edge ], [ 2527104, %while.body.i363.i.while.body.i371.i_crit_edge ]
  %2436 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2436)
  %2437 = load ptr, ptr %asic_funcs, align 8
  %wreg.i367.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2437, i32 0, i32 58
  %2438 = ptrtoint ptr %wreg.i367.i to i32
  call void @__asan_load4_noabort(i32 %2438)
  %2439 = load ptr, ptr %wreg.i367.i, align 4
  tail call void %2439(ptr noundef %hdev, i32 noundef %pb_addr.07.i366.i, i32 noundef 0) #2
  %add1.i368.i = add nuw nsw i32 %pb_addr.07.i366.i, 4
  %and.i369.i = and i32 %add1.i368.i, 4092
  %tobool.not.i370.i = icmp eq i32 %and.i369.i, 0
  br i1 %tobool.not.i370.i, label %while.body.i371.i.while.body.i379.i_crit_edge, label %while.body.i371.i.while.body.i371.i_crit_edge

while.body.i371.i.while.body.i371.i_crit_edge:    ; preds = %while.body.i371.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i371.i

while.body.i371.i.while.body.i379.i_crit_edge:    ; preds = %while.body.i371.i
  br label %while.body.i379.i

while.body.i379.i:                                ; preds = %while.body.i379.i.while.body.i379.i_crit_edge, %while.body.i371.i.while.body.i379.i_crit_edge
  %pb_addr.07.i374.i = phi i32 [ %add1.i376.i, %while.body.i379.i.while.body.i379.i_crit_edge ], [ 2531200, %while.body.i371.i.while.body.i379.i_crit_edge ]
  %2440 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2440)
  %2441 = load ptr, ptr %asic_funcs, align 8
  %wreg.i375.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2441, i32 0, i32 58
  %2442 = ptrtoint ptr %wreg.i375.i to i32
  call void @__asan_load4_noabort(i32 %2442)
  %2443 = load ptr, ptr %wreg.i375.i, align 4
  tail call void %2443(ptr noundef %hdev, i32 noundef %pb_addr.07.i374.i, i32 noundef 0) #2
  %add1.i376.i = add nuw nsw i32 %pb_addr.07.i374.i, 4
  %and.i377.i = and i32 %add1.i376.i, 4092
  %tobool.not.i378.i = icmp eq i32 %and.i377.i, 0
  br i1 %tobool.not.i378.i, label %while.body.i379.i.while.body.i387.i_crit_edge, label %while.body.i379.i.while.body.i379.i_crit_edge

while.body.i379.i.while.body.i379.i_crit_edge:    ; preds = %while.body.i379.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i379.i

while.body.i379.i.while.body.i387.i_crit_edge:    ; preds = %while.body.i379.i
  br label %while.body.i387.i

while.body.i387.i:                                ; preds = %while.body.i387.i.while.body.i387.i_crit_edge, %while.body.i379.i.while.body.i387.i_crit_edge
  %pb_addr.07.i382.i = phi i32 [ %add1.i384.i, %while.body.i387.i.while.body.i387.i_crit_edge ], [ 2543488, %while.body.i379.i.while.body.i387.i_crit_edge ]
  %2444 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2444)
  %2445 = load ptr, ptr %asic_funcs, align 8
  %wreg.i383.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2445, i32 0, i32 58
  %2446 = ptrtoint ptr %wreg.i383.i to i32
  call void @__asan_load4_noabort(i32 %2446)
  %2447 = load ptr, ptr %wreg.i383.i, align 4
  tail call void %2447(ptr noundef %hdev, i32 noundef %pb_addr.07.i382.i, i32 noundef 0) #2
  %add1.i384.i = add nuw nsw i32 %pb_addr.07.i382.i, 4
  %and.i385.i = and i32 %add1.i384.i, 4092
  %tobool.not.i386.i = icmp eq i32 %and.i385.i, 0
  br i1 %tobool.not.i386.i, label %while.body.i387.i.while.body.i395.i_crit_edge, label %while.body.i387.i.while.body.i387.i_crit_edge

while.body.i387.i.while.body.i387.i_crit_edge:    ; preds = %while.body.i387.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i387.i

while.body.i387.i.while.body.i395.i_crit_edge:    ; preds = %while.body.i387.i
  br label %while.body.i395.i

while.body.i395.i:                                ; preds = %while.body.i395.i.while.body.i395.i_crit_edge, %while.body.i387.i.while.body.i395.i_crit_edge
  %pb_addr.07.i390.i = phi i32 [ %add1.i392.i, %while.body.i395.i.while.body.i395.i_crit_edge ], [ 2547584, %while.body.i387.i.while.body.i395.i_crit_edge ]
  %2448 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2448)
  %2449 = load ptr, ptr %asic_funcs, align 8
  %wreg.i391.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2449, i32 0, i32 58
  %2450 = ptrtoint ptr %wreg.i391.i to i32
  call void @__asan_load4_noabort(i32 %2450)
  %2451 = load ptr, ptr %wreg.i391.i, align 4
  tail call void %2451(ptr noundef %hdev, i32 noundef %pb_addr.07.i390.i, i32 noundef 0) #2
  %add1.i392.i = add nuw nsw i32 %pb_addr.07.i390.i, 4
  %and.i393.i = and i32 %add1.i392.i, 4092
  %tobool.not.i394.i = icmp eq i32 %and.i393.i, 0
  br i1 %tobool.not.i394.i, label %while.body.i395.i.while.body.i403.i_crit_edge, label %while.body.i395.i.while.body.i395.i_crit_edge

while.body.i395.i.while.body.i395.i_crit_edge:    ; preds = %while.body.i395.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i395.i

while.body.i395.i.while.body.i403.i_crit_edge:    ; preds = %while.body.i395.i
  br label %while.body.i403.i

while.body.i403.i:                                ; preds = %while.body.i403.i.while.body.i403.i_crit_edge, %while.body.i395.i.while.body.i403.i_crit_edge
  %pb_addr.07.i398.i = phi i32 [ %add1.i400.i, %while.body.i403.i.while.body.i403.i_crit_edge ], [ 2559872, %while.body.i395.i.while.body.i403.i_crit_edge ]
  %2452 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2452)
  %2453 = load ptr, ptr %asic_funcs, align 8
  %wreg.i399.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2453, i32 0, i32 58
  %2454 = ptrtoint ptr %wreg.i399.i to i32
  call void @__asan_load4_noabort(i32 %2454)
  %2455 = load ptr, ptr %wreg.i399.i, align 4
  tail call void %2455(ptr noundef %hdev, i32 noundef %pb_addr.07.i398.i, i32 noundef 0) #2
  %add1.i400.i = add nuw nsw i32 %pb_addr.07.i398.i, 4
  %and.i401.i = and i32 %add1.i400.i, 4092
  %tobool.not.i402.i = icmp eq i32 %and.i401.i, 0
  br i1 %tobool.not.i402.i, label %while.body.i403.i.while.body.i411.i_crit_edge, label %while.body.i403.i.while.body.i403.i_crit_edge

while.body.i403.i.while.body.i403.i_crit_edge:    ; preds = %while.body.i403.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i403.i

while.body.i403.i.while.body.i411.i_crit_edge:    ; preds = %while.body.i403.i
  br label %while.body.i411.i

while.body.i411.i:                                ; preds = %while.body.i411.i.while.body.i411.i_crit_edge, %while.body.i403.i.while.body.i411.i_crit_edge
  %pb_addr.07.i406.i = phi i32 [ %add1.i408.i, %while.body.i411.i.while.body.i411.i_crit_edge ], [ 2563968, %while.body.i403.i.while.body.i411.i_crit_edge ]
  %2456 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2456)
  %2457 = load ptr, ptr %asic_funcs, align 8
  %wreg.i407.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2457, i32 0, i32 58
  %2458 = ptrtoint ptr %wreg.i407.i to i32
  call void @__asan_load4_noabort(i32 %2458)
  %2459 = load ptr, ptr %wreg.i407.i, align 4
  tail call void %2459(ptr noundef %hdev, i32 noundef %pb_addr.07.i406.i, i32 noundef 0) #2
  %add1.i408.i = add nuw nsw i32 %pb_addr.07.i406.i, 4
  %and.i409.i = and i32 %add1.i408.i, 4092
  %tobool.not.i410.i = icmp eq i32 %and.i409.i, 0
  br i1 %tobool.not.i410.i, label %while.body.i411.i.while.body.i419.i_crit_edge, label %while.body.i411.i.while.body.i411.i_crit_edge

while.body.i411.i.while.body.i411.i_crit_edge:    ; preds = %while.body.i411.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i411.i

while.body.i411.i.while.body.i419.i_crit_edge:    ; preds = %while.body.i411.i
  br label %while.body.i419.i

while.body.i419.i:                                ; preds = %while.body.i419.i.while.body.i419.i_crit_edge, %while.body.i411.i.while.body.i419.i_crit_edge
  %pb_addr.07.i414.i = phi i32 [ %add1.i416.i, %while.body.i419.i.while.body.i419.i_crit_edge ], [ 2625408, %while.body.i411.i.while.body.i419.i_crit_edge ]
  %2460 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2460)
  %2461 = load ptr, ptr %asic_funcs, align 8
  %wreg.i415.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2461, i32 0, i32 58
  %2462 = ptrtoint ptr %wreg.i415.i to i32
  call void @__asan_load4_noabort(i32 %2462)
  %2463 = load ptr, ptr %wreg.i415.i, align 4
  tail call void %2463(ptr noundef %hdev, i32 noundef %pb_addr.07.i414.i, i32 noundef 0) #2
  %add1.i416.i = add nuw nsw i32 %pb_addr.07.i414.i, 4
  %and.i417.i = and i32 %add1.i416.i, 4092
  %tobool.not.i418.i = icmp eq i32 %and.i417.i, 0
  br i1 %tobool.not.i418.i, label %while.body.i419.i.while.body.i427.i_crit_edge, label %while.body.i419.i.while.body.i419.i_crit_edge

while.body.i419.i.while.body.i419.i_crit_edge:    ; preds = %while.body.i419.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i419.i

while.body.i419.i.while.body.i427.i_crit_edge:    ; preds = %while.body.i419.i
  br label %while.body.i427.i

while.body.i427.i:                                ; preds = %while.body.i427.i.while.body.i427.i_crit_edge, %while.body.i419.i.while.body.i427.i_crit_edge
  %pb_addr.07.i422.i = phi i32 [ %add1.i424.i, %while.body.i427.i.while.body.i427.i_crit_edge ], [ 2629504, %while.body.i419.i.while.body.i427.i_crit_edge ]
  %2464 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2464)
  %2465 = load ptr, ptr %asic_funcs, align 8
  %wreg.i423.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2465, i32 0, i32 58
  %2466 = ptrtoint ptr %wreg.i423.i to i32
  call void @__asan_load4_noabort(i32 %2466)
  %2467 = load ptr, ptr %wreg.i423.i, align 4
  tail call void %2467(ptr noundef %hdev, i32 noundef %pb_addr.07.i422.i, i32 noundef 0) #2
  %add1.i424.i = add nuw nsw i32 %pb_addr.07.i422.i, 4
  %and.i425.i = and i32 %add1.i424.i, 4092
  %tobool.not.i426.i = icmp eq i32 %and.i425.i, 0
  br i1 %tobool.not.i426.i, label %while.body.i427.i.while.body.i435.i_crit_edge, label %while.body.i427.i.while.body.i427.i_crit_edge

while.body.i427.i.while.body.i427.i_crit_edge:    ; preds = %while.body.i427.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i427.i

while.body.i427.i.while.body.i435.i_crit_edge:    ; preds = %while.body.i427.i
  br label %while.body.i435.i

while.body.i435.i:                                ; preds = %while.body.i435.i.while.body.i435.i_crit_edge, %while.body.i427.i.while.body.i435.i_crit_edge
  %pb_addr.07.i430.i = phi i32 [ %add1.i432.i, %while.body.i435.i.while.body.i435.i_crit_edge ], [ 2641792, %while.body.i427.i.while.body.i435.i_crit_edge ]
  %2468 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2468)
  %2469 = load ptr, ptr %asic_funcs, align 8
  %wreg.i431.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2469, i32 0, i32 58
  %2470 = ptrtoint ptr %wreg.i431.i to i32
  call void @__asan_load4_noabort(i32 %2470)
  %2471 = load ptr, ptr %wreg.i431.i, align 4
  tail call void %2471(ptr noundef %hdev, i32 noundef %pb_addr.07.i430.i, i32 noundef 0) #2
  %add1.i432.i = add nuw nsw i32 %pb_addr.07.i430.i, 4
  %and.i433.i = and i32 %add1.i432.i, 4092
  %tobool.not.i434.i = icmp eq i32 %and.i433.i, 0
  br i1 %tobool.not.i434.i, label %while.body.i435.i.while.body.i443.i_crit_edge, label %while.body.i435.i.while.body.i435.i_crit_edge

while.body.i435.i.while.body.i435.i_crit_edge:    ; preds = %while.body.i435.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i435.i

while.body.i435.i.while.body.i443.i_crit_edge:    ; preds = %while.body.i435.i
  br label %while.body.i443.i

while.body.i443.i:                                ; preds = %while.body.i443.i.while.body.i443.i_crit_edge, %while.body.i435.i.while.body.i443.i_crit_edge
  %pb_addr.07.i438.i = phi i32 [ %add1.i440.i, %while.body.i443.i.while.body.i443.i_crit_edge ], [ 2645888, %while.body.i435.i.while.body.i443.i_crit_edge ]
  %2472 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2472)
  %2473 = load ptr, ptr %asic_funcs, align 8
  %wreg.i439.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2473, i32 0, i32 58
  %2474 = ptrtoint ptr %wreg.i439.i to i32
  call void @__asan_load4_noabort(i32 %2474)
  %2475 = load ptr, ptr %wreg.i439.i, align 4
  tail call void %2475(ptr noundef %hdev, i32 noundef %pb_addr.07.i438.i, i32 noundef 0) #2
  %add1.i440.i = add nuw nsw i32 %pb_addr.07.i438.i, 4
  %and.i441.i = and i32 %add1.i440.i, 4092
  %tobool.not.i442.i = icmp eq i32 %and.i441.i, 0
  br i1 %tobool.not.i442.i, label %while.body.i443.i.while.body.i451.i_crit_edge, label %while.body.i443.i.while.body.i443.i_crit_edge

while.body.i443.i.while.body.i443.i_crit_edge:    ; preds = %while.body.i443.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i443.i

while.body.i443.i.while.body.i451.i_crit_edge:    ; preds = %while.body.i443.i
  br label %while.body.i451.i

while.body.i451.i:                                ; preds = %while.body.i451.i.while.body.i451.i_crit_edge, %while.body.i443.i.while.body.i451.i_crit_edge
  %pb_addr.07.i446.i = phi i32 [ %add1.i448.i, %while.body.i451.i.while.body.i451.i_crit_edge ], [ 2658176, %while.body.i443.i.while.body.i451.i_crit_edge ]
  %2476 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2476)
  %2477 = load ptr, ptr %asic_funcs, align 8
  %wreg.i447.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2477, i32 0, i32 58
  %2478 = ptrtoint ptr %wreg.i447.i to i32
  call void @__asan_load4_noabort(i32 %2478)
  %2479 = load ptr, ptr %wreg.i447.i, align 4
  tail call void %2479(ptr noundef %hdev, i32 noundef %pb_addr.07.i446.i, i32 noundef 0) #2
  %add1.i448.i = add nuw nsw i32 %pb_addr.07.i446.i, 4
  %and.i449.i = and i32 %add1.i448.i, 4092
  %tobool.not.i450.i = icmp eq i32 %and.i449.i, 0
  br i1 %tobool.not.i450.i, label %while.body.i451.i.while.body.i459.i_crit_edge, label %while.body.i451.i.while.body.i451.i_crit_edge

while.body.i451.i.while.body.i451.i_crit_edge:    ; preds = %while.body.i451.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i451.i

while.body.i451.i.while.body.i459.i_crit_edge:    ; preds = %while.body.i451.i
  br label %while.body.i459.i

while.body.i459.i:                                ; preds = %while.body.i459.i.while.body.i459.i_crit_edge, %while.body.i451.i.while.body.i459.i_crit_edge
  %pb_addr.07.i454.i = phi i32 [ %add1.i456.i, %while.body.i459.i.while.body.i459.i_crit_edge ], [ 2662272, %while.body.i451.i.while.body.i459.i_crit_edge ]
  %2480 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2480)
  %2481 = load ptr, ptr %asic_funcs, align 8
  %wreg.i455.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2481, i32 0, i32 58
  %2482 = ptrtoint ptr %wreg.i455.i to i32
  call void @__asan_load4_noabort(i32 %2482)
  %2483 = load ptr, ptr %wreg.i455.i, align 4
  tail call void %2483(ptr noundef %hdev, i32 noundef %pb_addr.07.i454.i, i32 noundef 0) #2
  %add1.i456.i = add nuw nsw i32 %pb_addr.07.i454.i, 4
  %and.i457.i = and i32 %add1.i456.i, 4092
  %tobool.not.i458.i = icmp eq i32 %and.i457.i, 0
  br i1 %tobool.not.i458.i, label %while.body.i459.i.while.body.i467.i_crit_edge, label %while.body.i459.i.while.body.i459.i_crit_edge

while.body.i459.i.while.body.i459.i_crit_edge:    ; preds = %while.body.i459.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i459.i

while.body.i459.i.while.body.i467.i_crit_edge:    ; preds = %while.body.i459.i
  br label %while.body.i467.i

while.body.i467.i:                                ; preds = %while.body.i467.i.while.body.i467.i_crit_edge, %while.body.i459.i.while.body.i467.i_crit_edge
  %pb_addr.07.i462.i = phi i32 [ %add1.i464.i, %while.body.i467.i.while.body.i467.i_crit_edge ], [ 2674560, %while.body.i459.i.while.body.i467.i_crit_edge ]
  %2484 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2484)
  %2485 = load ptr, ptr %asic_funcs, align 8
  %wreg.i463.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2485, i32 0, i32 58
  %2486 = ptrtoint ptr %wreg.i463.i to i32
  call void @__asan_load4_noabort(i32 %2486)
  %2487 = load ptr, ptr %wreg.i463.i, align 4
  tail call void %2487(ptr noundef %hdev, i32 noundef %pb_addr.07.i462.i, i32 noundef 0) #2
  %add1.i464.i = add nuw nsw i32 %pb_addr.07.i462.i, 4
  %and.i465.i = and i32 %add1.i464.i, 4092
  %tobool.not.i466.i = icmp eq i32 %and.i465.i, 0
  br i1 %tobool.not.i466.i, label %while.body.i467.i.while.body.i475.i_crit_edge, label %while.body.i467.i.while.body.i467.i_crit_edge

while.body.i467.i.while.body.i467.i_crit_edge:    ; preds = %while.body.i467.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i467.i

while.body.i467.i.while.body.i475.i_crit_edge:    ; preds = %while.body.i467.i
  br label %while.body.i475.i

while.body.i475.i:                                ; preds = %while.body.i475.i.while.body.i475.i_crit_edge, %while.body.i467.i.while.body.i475.i_crit_edge
  %pb_addr.07.i470.i = phi i32 [ %add1.i472.i, %while.body.i475.i.while.body.i475.i_crit_edge ], [ 2678656, %while.body.i467.i.while.body.i475.i_crit_edge ]
  %2488 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2488)
  %2489 = load ptr, ptr %asic_funcs, align 8
  %wreg.i471.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2489, i32 0, i32 58
  %2490 = ptrtoint ptr %wreg.i471.i to i32
  call void @__asan_load4_noabort(i32 %2490)
  %2491 = load ptr, ptr %wreg.i471.i, align 4
  tail call void %2491(ptr noundef %hdev, i32 noundef %pb_addr.07.i470.i, i32 noundef 0) #2
  %add1.i472.i = add nuw nsw i32 %pb_addr.07.i470.i, 4
  %and.i473.i = and i32 %add1.i472.i, 4092
  %tobool.not.i474.i = icmp eq i32 %and.i473.i, 0
  br i1 %tobool.not.i474.i, label %while.body.i475.i.while.body.i483.i_crit_edge, label %while.body.i475.i.while.body.i475.i_crit_edge

while.body.i475.i.while.body.i475.i_crit_edge:    ; preds = %while.body.i475.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i475.i

while.body.i475.i.while.body.i483.i_crit_edge:    ; preds = %while.body.i475.i
  br label %while.body.i483.i

while.body.i483.i:                                ; preds = %while.body.i483.i.while.body.i483.i_crit_edge, %while.body.i475.i.while.body.i483.i_crit_edge
  %pb_addr.07.i478.i = phi i32 [ %add1.i480.i, %while.body.i483.i.while.body.i483.i_crit_edge ], [ 2690944, %while.body.i475.i.while.body.i483.i_crit_edge ]
  %2492 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2492)
  %2493 = load ptr, ptr %asic_funcs, align 8
  %wreg.i479.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2493, i32 0, i32 58
  %2494 = ptrtoint ptr %wreg.i479.i to i32
  call void @__asan_load4_noabort(i32 %2494)
  %2495 = load ptr, ptr %wreg.i479.i, align 4
  tail call void %2495(ptr noundef %hdev, i32 noundef %pb_addr.07.i478.i, i32 noundef 0) #2
  %add1.i480.i = add nuw nsw i32 %pb_addr.07.i478.i, 4
  %and.i481.i = and i32 %add1.i480.i, 4092
  %tobool.not.i482.i = icmp eq i32 %and.i481.i, 0
  br i1 %tobool.not.i482.i, label %while.body.i483.i.while.body.i491.i_crit_edge, label %while.body.i483.i.while.body.i483.i_crit_edge

while.body.i483.i.while.body.i483.i_crit_edge:    ; preds = %while.body.i483.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i483.i

while.body.i483.i.while.body.i491.i_crit_edge:    ; preds = %while.body.i483.i
  br label %while.body.i491.i

while.body.i491.i:                                ; preds = %while.body.i491.i.while.body.i491.i_crit_edge, %while.body.i483.i.while.body.i491.i_crit_edge
  %pb_addr.07.i486.i = phi i32 [ %add1.i488.i, %while.body.i491.i.while.body.i491.i_crit_edge ], [ 2695040, %while.body.i483.i.while.body.i491.i_crit_edge ]
  %2496 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2496)
  %2497 = load ptr, ptr %asic_funcs, align 8
  %wreg.i487.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2497, i32 0, i32 58
  %2498 = ptrtoint ptr %wreg.i487.i to i32
  call void @__asan_load4_noabort(i32 %2498)
  %2499 = load ptr, ptr %wreg.i487.i, align 4
  tail call void %2499(ptr noundef %hdev, i32 noundef %pb_addr.07.i486.i, i32 noundef 0) #2
  %add1.i488.i = add nuw nsw i32 %pb_addr.07.i486.i, 4
  %and.i489.i = and i32 %add1.i488.i, 4092
  %tobool.not.i490.i = icmp eq i32 %and.i489.i, 0
  br i1 %tobool.not.i490.i, label %while.body.i491.i.while.body.i499.i_crit_edge, label %while.body.i491.i.while.body.i491.i_crit_edge

while.body.i491.i.while.body.i491.i_crit_edge:    ; preds = %while.body.i491.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i491.i

while.body.i491.i.while.body.i499.i_crit_edge:    ; preds = %while.body.i491.i
  br label %while.body.i499.i

while.body.i499.i:                                ; preds = %while.body.i499.i.while.body.i499.i_crit_edge, %while.body.i491.i.while.body.i499.i_crit_edge
  %pb_addr.07.i494.i = phi i32 [ %add1.i496.i, %while.body.i499.i.while.body.i499.i_crit_edge ], [ 2756480, %while.body.i491.i.while.body.i499.i_crit_edge ]
  %2500 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2500)
  %2501 = load ptr, ptr %asic_funcs, align 8
  %wreg.i495.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2501, i32 0, i32 58
  %2502 = ptrtoint ptr %wreg.i495.i to i32
  call void @__asan_load4_noabort(i32 %2502)
  %2503 = load ptr, ptr %wreg.i495.i, align 4
  tail call void %2503(ptr noundef %hdev, i32 noundef %pb_addr.07.i494.i, i32 noundef 0) #2
  %add1.i496.i = add nuw nsw i32 %pb_addr.07.i494.i, 4
  %and.i497.i = and i32 %add1.i496.i, 4092
  %tobool.not.i498.i = icmp eq i32 %and.i497.i, 0
  br i1 %tobool.not.i498.i, label %while.body.i499.i.while.body.i507.i_crit_edge, label %while.body.i499.i.while.body.i499.i_crit_edge

while.body.i499.i.while.body.i499.i_crit_edge:    ; preds = %while.body.i499.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i499.i

while.body.i499.i.while.body.i507.i_crit_edge:    ; preds = %while.body.i499.i
  br label %while.body.i507.i

while.body.i507.i:                                ; preds = %while.body.i507.i.while.body.i507.i_crit_edge, %while.body.i499.i.while.body.i507.i_crit_edge
  %pb_addr.07.i502.i = phi i32 [ %add1.i504.i, %while.body.i507.i.while.body.i507.i_crit_edge ], [ 2760576, %while.body.i499.i.while.body.i507.i_crit_edge ]
  %2504 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2504)
  %2505 = load ptr, ptr %asic_funcs, align 8
  %wreg.i503.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2505, i32 0, i32 58
  %2506 = ptrtoint ptr %wreg.i503.i to i32
  call void @__asan_load4_noabort(i32 %2506)
  %2507 = load ptr, ptr %wreg.i503.i, align 4
  tail call void %2507(ptr noundef %hdev, i32 noundef %pb_addr.07.i502.i, i32 noundef 0) #2
  %add1.i504.i = add nuw nsw i32 %pb_addr.07.i502.i, 4
  %and.i505.i = and i32 %add1.i504.i, 4092
  %tobool.not.i506.i = icmp eq i32 %and.i505.i, 0
  br i1 %tobool.not.i506.i, label %while.body.i507.i.while.body.i515.i_crit_edge, label %while.body.i507.i.while.body.i507.i_crit_edge

while.body.i507.i.while.body.i507.i_crit_edge:    ; preds = %while.body.i507.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i507.i

while.body.i507.i.while.body.i515.i_crit_edge:    ; preds = %while.body.i507.i
  br label %while.body.i515.i

while.body.i515.i:                                ; preds = %while.body.i515.i.while.body.i515.i_crit_edge, %while.body.i507.i.while.body.i515.i_crit_edge
  %pb_addr.07.i510.i = phi i32 [ %add1.i512.i, %while.body.i515.i.while.body.i515.i_crit_edge ], [ 2772864, %while.body.i507.i.while.body.i515.i_crit_edge ]
  %2508 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2508)
  %2509 = load ptr, ptr %asic_funcs, align 8
  %wreg.i511.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2509, i32 0, i32 58
  %2510 = ptrtoint ptr %wreg.i511.i to i32
  call void @__asan_load4_noabort(i32 %2510)
  %2511 = load ptr, ptr %wreg.i511.i, align 4
  tail call void %2511(ptr noundef %hdev, i32 noundef %pb_addr.07.i510.i, i32 noundef 0) #2
  %add1.i512.i = add nuw nsw i32 %pb_addr.07.i510.i, 4
  %and.i513.i = and i32 %add1.i512.i, 4092
  %tobool.not.i514.i = icmp eq i32 %and.i513.i, 0
  br i1 %tobool.not.i514.i, label %while.body.i515.i.while.body.i523.i_crit_edge, label %while.body.i515.i.while.body.i515.i_crit_edge

while.body.i515.i.while.body.i515.i_crit_edge:    ; preds = %while.body.i515.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i515.i

while.body.i515.i.while.body.i523.i_crit_edge:    ; preds = %while.body.i515.i
  br label %while.body.i523.i

while.body.i523.i:                                ; preds = %while.body.i523.i.while.body.i523.i_crit_edge, %while.body.i515.i.while.body.i523.i_crit_edge
  %pb_addr.07.i518.i = phi i32 [ %add1.i520.i, %while.body.i523.i.while.body.i523.i_crit_edge ], [ 2776960, %while.body.i515.i.while.body.i523.i_crit_edge ]
  %2512 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2512)
  %2513 = load ptr, ptr %asic_funcs, align 8
  %wreg.i519.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2513, i32 0, i32 58
  %2514 = ptrtoint ptr %wreg.i519.i to i32
  call void @__asan_load4_noabort(i32 %2514)
  %2515 = load ptr, ptr %wreg.i519.i, align 4
  tail call void %2515(ptr noundef %hdev, i32 noundef %pb_addr.07.i518.i, i32 noundef 0) #2
  %add1.i520.i = add nuw nsw i32 %pb_addr.07.i518.i, 4
  %and.i521.i = and i32 %add1.i520.i, 4092
  %tobool.not.i522.i = icmp eq i32 %and.i521.i, 0
  br i1 %tobool.not.i522.i, label %while.body.i523.i.while.body.i531.i_crit_edge, label %while.body.i523.i.while.body.i523.i_crit_edge

while.body.i523.i.while.body.i523.i_crit_edge:    ; preds = %while.body.i523.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i523.i

while.body.i523.i.while.body.i531.i_crit_edge:    ; preds = %while.body.i523.i
  br label %while.body.i531.i

while.body.i531.i:                                ; preds = %while.body.i531.i.while.body.i531.i_crit_edge, %while.body.i523.i.while.body.i531.i_crit_edge
  %pb_addr.07.i526.i = phi i32 [ %add1.i528.i, %while.body.i531.i.while.body.i531.i_crit_edge ], [ 2789248, %while.body.i523.i.while.body.i531.i_crit_edge ]
  %2516 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2516)
  %2517 = load ptr, ptr %asic_funcs, align 8
  %wreg.i527.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2517, i32 0, i32 58
  %2518 = ptrtoint ptr %wreg.i527.i to i32
  call void @__asan_load4_noabort(i32 %2518)
  %2519 = load ptr, ptr %wreg.i527.i, align 4
  tail call void %2519(ptr noundef %hdev, i32 noundef %pb_addr.07.i526.i, i32 noundef 0) #2
  %add1.i528.i = add nuw nsw i32 %pb_addr.07.i526.i, 4
  %and.i529.i = and i32 %add1.i528.i, 4092
  %tobool.not.i530.i = icmp eq i32 %and.i529.i, 0
  br i1 %tobool.not.i530.i, label %while.body.i531.i.while.body.i539.i_crit_edge, label %while.body.i531.i.while.body.i531.i_crit_edge

while.body.i531.i.while.body.i531.i_crit_edge:    ; preds = %while.body.i531.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i531.i

while.body.i531.i.while.body.i539.i_crit_edge:    ; preds = %while.body.i531.i
  br label %while.body.i539.i

while.body.i539.i:                                ; preds = %while.body.i539.i.while.body.i539.i_crit_edge, %while.body.i531.i.while.body.i539.i_crit_edge
  %pb_addr.07.i534.i = phi i32 [ %add1.i536.i, %while.body.i539.i.while.body.i539.i_crit_edge ], [ 2793344, %while.body.i531.i.while.body.i539.i_crit_edge ]
  %2520 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2520)
  %2521 = load ptr, ptr %asic_funcs, align 8
  %wreg.i535.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2521, i32 0, i32 58
  %2522 = ptrtoint ptr %wreg.i535.i to i32
  call void @__asan_load4_noabort(i32 %2522)
  %2523 = load ptr, ptr %wreg.i535.i, align 4
  tail call void %2523(ptr noundef %hdev, i32 noundef %pb_addr.07.i534.i, i32 noundef 0) #2
  %add1.i536.i = add nuw nsw i32 %pb_addr.07.i534.i, 4
  %and.i537.i = and i32 %add1.i536.i, 4092
  %tobool.not.i538.i = icmp eq i32 %and.i537.i, 0
  br i1 %tobool.not.i538.i, label %while.body.i539.i.while.body.i547.i_crit_edge, label %while.body.i539.i.while.body.i539.i_crit_edge

while.body.i539.i.while.body.i539.i_crit_edge:    ; preds = %while.body.i539.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i539.i

while.body.i539.i.while.body.i547.i_crit_edge:    ; preds = %while.body.i539.i
  br label %while.body.i547.i

while.body.i547.i:                                ; preds = %while.body.i547.i.while.body.i547.i_crit_edge, %while.body.i539.i.while.body.i547.i_crit_edge
  %pb_addr.07.i542.i = phi i32 [ %add1.i544.i, %while.body.i547.i.while.body.i547.i_crit_edge ], [ 2805632, %while.body.i539.i.while.body.i547.i_crit_edge ]
  %2524 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2524)
  %2525 = load ptr, ptr %asic_funcs, align 8
  %wreg.i543.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2525, i32 0, i32 58
  %2526 = ptrtoint ptr %wreg.i543.i to i32
  call void @__asan_load4_noabort(i32 %2526)
  %2527 = load ptr, ptr %wreg.i543.i, align 4
  tail call void %2527(ptr noundef %hdev, i32 noundef %pb_addr.07.i542.i, i32 noundef 0) #2
  %add1.i544.i = add nuw nsw i32 %pb_addr.07.i542.i, 4
  %and.i545.i = and i32 %add1.i544.i, 4092
  %tobool.not.i546.i = icmp eq i32 %and.i545.i, 0
  br i1 %tobool.not.i546.i, label %while.body.i547.i.while.body.i555.i_crit_edge, label %while.body.i547.i.while.body.i547.i_crit_edge

while.body.i547.i.while.body.i547.i_crit_edge:    ; preds = %while.body.i547.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i547.i

while.body.i547.i.while.body.i555.i_crit_edge:    ; preds = %while.body.i547.i
  br label %while.body.i555.i

while.body.i555.i:                                ; preds = %while.body.i555.i.while.body.i555.i_crit_edge, %while.body.i547.i.while.body.i555.i_crit_edge
  %pb_addr.07.i550.i = phi i32 [ %add1.i552.i, %while.body.i555.i.while.body.i555.i_crit_edge ], [ 2809728, %while.body.i547.i.while.body.i555.i_crit_edge ]
  %2528 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2528)
  %2529 = load ptr, ptr %asic_funcs, align 8
  %wreg.i551.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2529, i32 0, i32 58
  %2530 = ptrtoint ptr %wreg.i551.i to i32
  call void @__asan_load4_noabort(i32 %2530)
  %2531 = load ptr, ptr %wreg.i551.i, align 4
  tail call void %2531(ptr noundef %hdev, i32 noundef %pb_addr.07.i550.i, i32 noundef 0) #2
  %add1.i552.i = add nuw nsw i32 %pb_addr.07.i550.i, 4
  %and.i553.i = and i32 %add1.i552.i, 4092
  %tobool.not.i554.i = icmp eq i32 %and.i553.i, 0
  br i1 %tobool.not.i554.i, label %while.body.i555.i.while.body.i563.i_crit_edge, label %while.body.i555.i.while.body.i555.i_crit_edge

while.body.i555.i.while.body.i555.i_crit_edge:    ; preds = %while.body.i555.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i555.i

while.body.i555.i.while.body.i563.i_crit_edge:    ; preds = %while.body.i555.i
  br label %while.body.i563.i

while.body.i563.i:                                ; preds = %while.body.i563.i.while.body.i563.i_crit_edge, %while.body.i555.i.while.body.i563.i_crit_edge
  %pb_addr.07.i558.i = phi i32 [ %add1.i560.i, %while.body.i563.i.while.body.i563.i_crit_edge ], [ 2822016, %while.body.i555.i.while.body.i563.i_crit_edge ]
  %2532 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2532)
  %2533 = load ptr, ptr %asic_funcs, align 8
  %wreg.i559.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2533, i32 0, i32 58
  %2534 = ptrtoint ptr %wreg.i559.i to i32
  call void @__asan_load4_noabort(i32 %2534)
  %2535 = load ptr, ptr %wreg.i559.i, align 4
  tail call void %2535(ptr noundef %hdev, i32 noundef %pb_addr.07.i558.i, i32 noundef 0) #2
  %add1.i560.i = add nuw nsw i32 %pb_addr.07.i558.i, 4
  %and.i561.i = and i32 %add1.i560.i, 4092
  %tobool.not.i562.i = icmp eq i32 %and.i561.i, 0
  br i1 %tobool.not.i562.i, label %while.body.i563.i.while.body.i571.i_crit_edge, label %while.body.i563.i.while.body.i563.i_crit_edge

while.body.i563.i.while.body.i563.i_crit_edge:    ; preds = %while.body.i563.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i563.i

while.body.i563.i.while.body.i571.i_crit_edge:    ; preds = %while.body.i563.i
  br label %while.body.i571.i

while.body.i571.i:                                ; preds = %while.body.i571.i.while.body.i571.i_crit_edge, %while.body.i563.i.while.body.i571.i_crit_edge
  %pb_addr.07.i566.i = phi i32 [ %add1.i568.i, %while.body.i571.i.while.body.i571.i_crit_edge ], [ 2826112, %while.body.i563.i.while.body.i571.i_crit_edge ]
  %2536 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2536)
  %2537 = load ptr, ptr %asic_funcs, align 8
  %wreg.i567.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2537, i32 0, i32 58
  %2538 = ptrtoint ptr %wreg.i567.i to i32
  call void @__asan_load4_noabort(i32 %2538)
  %2539 = load ptr, ptr %wreg.i567.i, align 4
  tail call void %2539(ptr noundef %hdev, i32 noundef %pb_addr.07.i566.i, i32 noundef 0) #2
  %add1.i568.i = add nuw nsw i32 %pb_addr.07.i566.i, 4
  %and.i569.i = and i32 %add1.i568.i, 4092
  %tobool.not.i570.i = icmp eq i32 %and.i569.i, 0
  br i1 %tobool.not.i570.i, label %while.body.i571.i.while.body.i579.i_crit_edge, label %while.body.i571.i.while.body.i571.i_crit_edge

while.body.i571.i.while.body.i571.i_crit_edge:    ; preds = %while.body.i571.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i571.i

while.body.i571.i.while.body.i579.i_crit_edge:    ; preds = %while.body.i571.i
  br label %while.body.i579.i

while.body.i579.i:                                ; preds = %while.body.i579.i.while.body.i579.i_crit_edge, %while.body.i571.i.while.body.i579.i_crit_edge
  %pb_addr.07.i574.i = phi i32 [ %add1.i576.i, %while.body.i579.i.while.body.i579.i_crit_edge ], [ 12590976, %while.body.i571.i.while.body.i579.i_crit_edge ]
  %2540 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2540)
  %2541 = load ptr, ptr %asic_funcs, align 8
  %wreg.i575.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2541, i32 0, i32 58
  %2542 = ptrtoint ptr %wreg.i575.i to i32
  call void @__asan_load4_noabort(i32 %2542)
  %2543 = load ptr, ptr %wreg.i575.i, align 4
  tail call void %2543(ptr noundef %hdev, i32 noundef %pb_addr.07.i574.i, i32 noundef 0) #2
  %add1.i576.i = add nuw nsw i32 %pb_addr.07.i574.i, 4
  %and.i577.i = and i32 %add1.i576.i, 4092
  %tobool.not.i578.i = icmp eq i32 %and.i577.i, 0
  br i1 %tobool.not.i578.i, label %while.body.i579.i.while.body.i587.i_crit_edge, label %while.body.i579.i.while.body.i579.i_crit_edge

while.body.i579.i.while.body.i579.i_crit_edge:    ; preds = %while.body.i579.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i579.i

while.body.i579.i.while.body.i587.i_crit_edge:    ; preds = %while.body.i579.i
  br label %while.body.i587.i

while.body.i587.i:                                ; preds = %while.body.i587.i.while.body.i587.i_crit_edge, %while.body.i579.i.while.body.i587.i_crit_edge
  %pb_addr.07.i582.i = phi i32 [ %add1.i584.i, %while.body.i587.i.while.body.i587.i_crit_edge ], [ 12603264, %while.body.i579.i.while.body.i587.i_crit_edge ]
  %2544 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2544)
  %2545 = load ptr, ptr %asic_funcs, align 8
  %wreg.i583.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2545, i32 0, i32 58
  %2546 = ptrtoint ptr %wreg.i583.i to i32
  call void @__asan_load4_noabort(i32 %2546)
  %2547 = load ptr, ptr %wreg.i583.i, align 4
  tail call void %2547(ptr noundef %hdev, i32 noundef %pb_addr.07.i582.i, i32 noundef 0) #2
  %add1.i584.i = add nuw nsw i32 %pb_addr.07.i582.i, 4
  %and.i585.i = and i32 %add1.i584.i, 4092
  %tobool.not.i586.i = icmp eq i32 %and.i585.i, 0
  br i1 %tobool.not.i586.i, label %while.body.i587.i.while.body.i595.i_crit_edge, label %while.body.i587.i.while.body.i587.i_crit_edge

while.body.i587.i.while.body.i587.i_crit_edge:    ; preds = %while.body.i587.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i587.i

while.body.i587.i.while.body.i595.i_crit_edge:    ; preds = %while.body.i587.i
  br label %while.body.i595.i

while.body.i595.i:                                ; preds = %while.body.i595.i.while.body.i595.i_crit_edge, %while.body.i587.i.while.body.i595.i_crit_edge
  %pb_addr.07.i590.i = phi i32 [ %add1.i592.i, %while.body.i595.i.while.body.i595.i_crit_edge ], [ 12607360, %while.body.i587.i.while.body.i595.i_crit_edge ]
  %2548 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2548)
  %2549 = load ptr, ptr %asic_funcs, align 8
  %wreg.i591.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2549, i32 0, i32 58
  %2550 = ptrtoint ptr %wreg.i591.i to i32
  call void @__asan_load4_noabort(i32 %2550)
  %2551 = load ptr, ptr %wreg.i591.i, align 4
  tail call void %2551(ptr noundef %hdev, i32 noundef %pb_addr.07.i590.i, i32 noundef 0) #2
  %add1.i592.i = add nuw nsw i32 %pb_addr.07.i590.i, 4
  %and.i593.i = and i32 %add1.i592.i, 4092
  %tobool.not.i594.i = icmp eq i32 %and.i593.i, 0
  br i1 %tobool.not.i594.i, label %while.body.i595.i.while.body.i603.i_crit_edge, label %while.body.i595.i.while.body.i595.i_crit_edge

while.body.i595.i.while.body.i595.i_crit_edge:    ; preds = %while.body.i595.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i595.i

while.body.i595.i.while.body.i603.i_crit_edge:    ; preds = %while.body.i595.i
  br label %while.body.i603.i

while.body.i603.i:                                ; preds = %while.body.i603.i.while.body.i603.i_crit_edge, %while.body.i595.i.while.body.i603.i_crit_edge
  %pb_addr.07.i598.i = phi i32 [ %add1.i600.i, %while.body.i603.i.while.body.i603.i_crit_edge ], [ 12611456, %while.body.i595.i.while.body.i603.i_crit_edge ]
  %2552 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2552)
  %2553 = load ptr, ptr %asic_funcs, align 8
  %wreg.i599.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2553, i32 0, i32 58
  %2554 = ptrtoint ptr %wreg.i599.i to i32
  call void @__asan_load4_noabort(i32 %2554)
  %2555 = load ptr, ptr %wreg.i599.i, align 4
  tail call void %2555(ptr noundef %hdev, i32 noundef %pb_addr.07.i598.i, i32 noundef 0) #2
  %add1.i600.i = add nuw nsw i32 %pb_addr.07.i598.i, 4
  %and.i601.i = and i32 %add1.i600.i, 4092
  %tobool.not.i602.i = icmp eq i32 %and.i601.i, 0
  br i1 %tobool.not.i602.i, label %while.body.i603.i.while.body.i611.i_crit_edge, label %while.body.i603.i.while.body.i603.i_crit_edge

while.body.i603.i.while.body.i603.i_crit_edge:    ; preds = %while.body.i603.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i603.i

while.body.i603.i.while.body.i611.i_crit_edge:    ; preds = %while.body.i603.i
  br label %while.body.i611.i

while.body.i611.i:                                ; preds = %while.body.i611.i.while.body.i611.i_crit_edge, %while.body.i603.i.while.body.i611.i_crit_edge
  %pb_addr.07.i606.i = phi i32 [ %add1.i608.i, %while.body.i611.i.while.body.i611.i_crit_edge ], [ 12615552, %while.body.i603.i.while.body.i611.i_crit_edge ]
  %2556 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2556)
  %2557 = load ptr, ptr %asic_funcs, align 8
  %wreg.i607.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2557, i32 0, i32 58
  %2558 = ptrtoint ptr %wreg.i607.i to i32
  call void @__asan_load4_noabort(i32 %2558)
  %2559 = load ptr, ptr %wreg.i607.i, align 4
  tail call void %2559(ptr noundef %hdev, i32 noundef %pb_addr.07.i606.i, i32 noundef 0) #2
  %add1.i608.i = add nuw nsw i32 %pb_addr.07.i606.i, 4
  %and.i609.i = and i32 %add1.i608.i, 4092
  %tobool.not.i610.i = icmp eq i32 %and.i609.i, 0
  br i1 %tobool.not.i610.i, label %while.body.i611.i.while.body.i619.i_crit_edge, label %while.body.i611.i.while.body.i611.i_crit_edge

while.body.i611.i.while.body.i611.i_crit_edge:    ; preds = %while.body.i611.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i611.i

while.body.i611.i.while.body.i619.i_crit_edge:    ; preds = %while.body.i611.i
  br label %while.body.i619.i

while.body.i619.i:                                ; preds = %while.body.i619.i.while.body.i619.i_crit_edge, %while.body.i611.i.while.body.i619.i_crit_edge
  %pb_addr.07.i614.i = phi i32 [ %add1.i616.i, %while.body.i619.i.while.body.i619.i_crit_edge ], [ 12619648, %while.body.i611.i.while.body.i619.i_crit_edge ]
  %2560 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2560)
  %2561 = load ptr, ptr %asic_funcs, align 8
  %wreg.i615.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2561, i32 0, i32 58
  %2562 = ptrtoint ptr %wreg.i615.i to i32
  call void @__asan_load4_noabort(i32 %2562)
  %2563 = load ptr, ptr %wreg.i615.i, align 4
  tail call void %2563(ptr noundef %hdev, i32 noundef %pb_addr.07.i614.i, i32 noundef 0) #2
  %add1.i616.i = add nuw nsw i32 %pb_addr.07.i614.i, 4
  %and.i617.i = and i32 %add1.i616.i, 4092
  %tobool.not.i618.i = icmp eq i32 %and.i617.i, 0
  br i1 %tobool.not.i618.i, label %while.body.i619.i.while.body.i627.i_crit_edge, label %while.body.i619.i.while.body.i619.i_crit_edge

while.body.i619.i.while.body.i619.i_crit_edge:    ; preds = %while.body.i619.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i619.i

while.body.i619.i.while.body.i627.i_crit_edge:    ; preds = %while.body.i619.i
  br label %while.body.i627.i

while.body.i627.i:                                ; preds = %while.body.i627.i.while.body.i627.i_crit_edge, %while.body.i619.i.while.body.i627.i_crit_edge
  %pb_addr.07.i622.i = phi i32 [ %add1.i624.i, %while.body.i627.i.while.body.i627.i_crit_edge ], [ 12652416, %while.body.i619.i.while.body.i627.i_crit_edge ]
  %2564 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2564)
  %2565 = load ptr, ptr %asic_funcs, align 8
  %wreg.i623.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2565, i32 0, i32 58
  %2566 = ptrtoint ptr %wreg.i623.i to i32
  call void @__asan_load4_noabort(i32 %2566)
  %2567 = load ptr, ptr %wreg.i623.i, align 4
  tail call void %2567(ptr noundef %hdev, i32 noundef %pb_addr.07.i622.i, i32 noundef 0) #2
  %add1.i624.i = add nuw nsw i32 %pb_addr.07.i622.i, 4
  %and.i625.i = and i32 %add1.i624.i, 4092
  %tobool.not.i626.i = icmp eq i32 %and.i625.i, 0
  br i1 %tobool.not.i626.i, label %while.body.i627.i.while.body.i635.i_crit_edge, label %while.body.i627.i.while.body.i627.i_crit_edge

while.body.i627.i.while.body.i627.i_crit_edge:    ; preds = %while.body.i627.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i627.i

while.body.i627.i.while.body.i635.i_crit_edge:    ; preds = %while.body.i627.i
  br label %while.body.i635.i

while.body.i635.i:                                ; preds = %while.body.i635.i.while.body.i635.i_crit_edge, %while.body.i627.i.while.body.i635.i_crit_edge
  %pb_addr.07.i630.i = phi i32 [ %add1.i632.i, %while.body.i635.i.while.body.i635.i_crit_edge ], [ 14684032, %while.body.i627.i.while.body.i635.i_crit_edge ]
  %2568 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2568)
  %2569 = load ptr, ptr %asic_funcs, align 8
  %wreg.i631.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2569, i32 0, i32 58
  %2570 = ptrtoint ptr %wreg.i631.i to i32
  call void @__asan_load4_noabort(i32 %2570)
  %2571 = load ptr, ptr %wreg.i631.i, align 4
  tail call void %2571(ptr noundef %hdev, i32 noundef %pb_addr.07.i630.i, i32 noundef 0) #2
  %add1.i632.i = add nuw nsw i32 %pb_addr.07.i630.i, 4
  %and.i633.i = and i32 %add1.i632.i, 4092
  %tobool.not.i634.i = icmp eq i32 %and.i633.i, 0
  br i1 %tobool.not.i634.i, label %while.body.i635.i.while.body.i643.i_crit_edge, label %while.body.i635.i.while.body.i635.i_crit_edge

while.body.i635.i.while.body.i635.i_crit_edge:    ; preds = %while.body.i635.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i635.i

while.body.i635.i.while.body.i643.i_crit_edge:    ; preds = %while.body.i635.i
  br label %while.body.i643.i

while.body.i643.i:                                ; preds = %while.body.i643.i.while.body.i643.i_crit_edge, %while.body.i635.i.while.body.i643.i_crit_edge
  %pb_addr.07.i638.i = phi i32 [ %add1.i640.i, %while.body.i643.i.while.body.i643.i_crit_edge ], [ 14688128, %while.body.i635.i.while.body.i643.i_crit_edge ]
  %2572 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2572)
  %2573 = load ptr, ptr %asic_funcs, align 8
  %wreg.i639.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2573, i32 0, i32 58
  %2574 = ptrtoint ptr %wreg.i639.i to i32
  call void @__asan_load4_noabort(i32 %2574)
  %2575 = load ptr, ptr %wreg.i639.i, align 4
  tail call void %2575(ptr noundef %hdev, i32 noundef %pb_addr.07.i638.i, i32 noundef 0) #2
  %add1.i640.i = add nuw nsw i32 %pb_addr.07.i638.i, 4
  %and.i641.i = and i32 %add1.i640.i, 4092
  %tobool.not.i642.i = icmp eq i32 %and.i641.i, 0
  br i1 %tobool.not.i642.i, label %goya_pb_set_block.exit644.i, label %while.body.i643.i.while.body.i643.i_crit_edge

while.body.i643.i.while.body.i643.i_crit_edge:    ; preds = %while.body.i643.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i643.i

goya_pb_set_block.exit644.i:                      ; preds = %while.body.i643.i
  %2576 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2576)
  %2577 = load ptr, ptr %asic_funcs, align 8
  %wreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2577, i32 0, i32 58
  %2578 = ptrtoint ptr %wreg.i to i32
  call void @__asan_load4_noabort(i32 %2578)
  %2579 = load ptr, ptr %wreg.i, align 4
  tail call void %2579(ptr noundef %hdev, i32 noundef 14688152, i32 noundef 16) #2
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %goya_pb_set_block.exit644.i
  %pb_addr.07.i.i.i = phi i32 [ 896896, %goya_pb_set_block.exit644.i ], [ %add1.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %2580 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2580)
  %2581 = load ptr, ptr %asic_funcs, align 8
  %wreg.i.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2581, i32 0, i32 58
  %2582 = ptrtoint ptr %wreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2582)
  %2583 = load ptr, ptr %wreg.i.i.i, align 4
  tail call void %2583(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i.i, i32 noundef 0) #2
  %add1.i.i.i = add nuw nsw i32 %pb_addr.07.i.i.i, 4
  %and.i.i.i = and i32 %add1.i.i.i, 4092
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.while.body.i416.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i.i

while.body.i.i.i.while.body.i416.i.i_crit_edge:   ; preds = %while.body.i.i.i
  br label %while.body.i416.i.i

while.body.i416.i.i:                              ; preds = %while.body.i416.i.i.while.body.i416.i.i_crit_edge, %while.body.i.i.i.while.body.i416.i.i_crit_edge
  %pb_addr.07.i411.i.i = phi i32 [ %add1.i413.i.i, %while.body.i416.i.i.while.body.i416.i.i_crit_edge ], [ 900992, %while.body.i.i.i.while.body.i416.i.i_crit_edge ]
  %2584 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2584)
  %2585 = load ptr, ptr %asic_funcs, align 8
  %wreg.i412.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2585, i32 0, i32 58
  %2586 = ptrtoint ptr %wreg.i412.i.i to i32
  call void @__asan_load4_noabort(i32 %2586)
  %2587 = load ptr, ptr %wreg.i412.i.i, align 4
  tail call void %2587(ptr noundef %hdev, i32 noundef %pb_addr.07.i411.i.i, i32 noundef 0) #2
  %add1.i413.i.i = add nuw nsw i32 %pb_addr.07.i411.i.i, 4
  %and.i414.i.i = and i32 %add1.i413.i.i, 4092
  %tobool.not.i415.i.i = icmp eq i32 %and.i414.i.i, 0
  br i1 %tobool.not.i415.i.i, label %while.body.i416.i.i.while.body.i424.i.i_crit_edge, label %while.body.i416.i.i.while.body.i416.i.i_crit_edge

while.body.i416.i.i.while.body.i416.i.i_crit_edge: ; preds = %while.body.i416.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i416.i.i

while.body.i416.i.i.while.body.i424.i.i_crit_edge: ; preds = %while.body.i416.i.i
  br label %while.body.i424.i.i

while.body.i424.i.i:                              ; preds = %while.body.i424.i.i.while.body.i424.i.i_crit_edge, %while.body.i416.i.i.while.body.i424.i.i_crit_edge
  %pb_addr.07.i419.i.i = phi i32 [ %add1.i421.i.i, %while.body.i424.i.i.while.body.i424.i.i_crit_edge ], [ 905088, %while.body.i416.i.i.while.body.i424.i.i_crit_edge ]
  %2588 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2588)
  %2589 = load ptr, ptr %asic_funcs, align 8
  %wreg.i420.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2589, i32 0, i32 58
  %2590 = ptrtoint ptr %wreg.i420.i.i to i32
  call void @__asan_load4_noabort(i32 %2590)
  %2591 = load ptr, ptr %wreg.i420.i.i, align 4
  tail call void %2591(ptr noundef %hdev, i32 noundef %pb_addr.07.i419.i.i, i32 noundef 0) #2
  %add1.i421.i.i = add nuw nsw i32 %pb_addr.07.i419.i.i, 4
  %and.i422.i.i = and i32 %add1.i421.i.i, 4092
  %tobool.not.i423.i.i = icmp eq i32 %and.i422.i.i, 0
  br i1 %tobool.not.i423.i.i, label %while.body.i424.i.i.while.body.i432.i.i_crit_edge, label %while.body.i424.i.i.while.body.i424.i.i_crit_edge

while.body.i424.i.i.while.body.i424.i.i_crit_edge: ; preds = %while.body.i424.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i424.i.i

while.body.i424.i.i.while.body.i432.i.i_crit_edge: ; preds = %while.body.i424.i.i
  br label %while.body.i432.i.i

while.body.i432.i.i:                              ; preds = %while.body.i432.i.i.while.body.i432.i.i_crit_edge, %while.body.i424.i.i.while.body.i432.i.i_crit_edge
  %pb_addr.07.i427.i.i = phi i32 [ %add1.i429.i.i, %while.body.i432.i.i.while.body.i432.i.i_crit_edge ], [ 909184, %while.body.i424.i.i.while.body.i432.i.i_crit_edge ]
  %2592 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2592)
  %2593 = load ptr, ptr %asic_funcs, align 8
  %wreg.i428.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2593, i32 0, i32 58
  %2594 = ptrtoint ptr %wreg.i428.i.i to i32
  call void @__asan_load4_noabort(i32 %2594)
  %2595 = load ptr, ptr %wreg.i428.i.i, align 4
  tail call void %2595(ptr noundef %hdev, i32 noundef %pb_addr.07.i427.i.i, i32 noundef 0) #2
  %add1.i429.i.i = add nuw nsw i32 %pb_addr.07.i427.i.i, 4
  %and.i430.i.i = and i32 %add1.i429.i.i, 4092
  %tobool.not.i431.i.i = icmp eq i32 %and.i430.i.i, 0
  br i1 %tobool.not.i431.i.i, label %while.body.i432.i.i.while.body.i440.i.i_crit_edge, label %while.body.i432.i.i.while.body.i432.i.i_crit_edge

while.body.i432.i.i.while.body.i432.i.i_crit_edge: ; preds = %while.body.i432.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i432.i.i

while.body.i432.i.i.while.body.i440.i.i_crit_edge: ; preds = %while.body.i432.i.i
  br label %while.body.i440.i.i

while.body.i440.i.i:                              ; preds = %while.body.i440.i.i.while.body.i440.i.i_crit_edge, %while.body.i432.i.i.while.body.i440.i.i_crit_edge
  %pb_addr.07.i435.i.i = phi i32 [ %add1.i437.i.i, %while.body.i440.i.i.while.body.i440.i.i_crit_edge ], [ 913280, %while.body.i432.i.i.while.body.i440.i.i_crit_edge ]
  %2596 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2596)
  %2597 = load ptr, ptr %asic_funcs, align 8
  %wreg.i436.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2597, i32 0, i32 58
  %2598 = ptrtoint ptr %wreg.i436.i.i to i32
  call void @__asan_load4_noabort(i32 %2598)
  %2599 = load ptr, ptr %wreg.i436.i.i, align 4
  tail call void %2599(ptr noundef %hdev, i32 noundef %pb_addr.07.i435.i.i, i32 noundef 0) #2
  %add1.i437.i.i = add nuw nsw i32 %pb_addr.07.i435.i.i, 4
  %and.i438.i.i = and i32 %add1.i437.i.i, 4092
  %tobool.not.i439.i.i = icmp eq i32 %and.i438.i.i, 0
  br i1 %tobool.not.i439.i.i, label %while.body.i440.i.i.while.body.i448.i.i_crit_edge, label %while.body.i440.i.i.while.body.i440.i.i_crit_edge

while.body.i440.i.i.while.body.i440.i.i_crit_edge: ; preds = %while.body.i440.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i440.i.i

while.body.i440.i.i.while.body.i448.i.i_crit_edge: ; preds = %while.body.i440.i.i
  br label %while.body.i448.i.i

while.body.i448.i.i:                              ; preds = %while.body.i448.i.i.while.body.i448.i.i_crit_edge, %while.body.i440.i.i.while.body.i448.i.i_crit_edge
  %pb_addr.07.i443.i.i = phi i32 [ %add1.i445.i.i, %while.body.i448.i.i.while.body.i448.i.i_crit_edge ], [ 917376, %while.body.i440.i.i.while.body.i448.i.i_crit_edge ]
  %2600 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2600)
  %2601 = load ptr, ptr %asic_funcs, align 8
  %wreg.i444.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2601, i32 0, i32 58
  %2602 = ptrtoint ptr %wreg.i444.i.i to i32
  call void @__asan_load4_noabort(i32 %2602)
  %2603 = load ptr, ptr %wreg.i444.i.i, align 4
  tail call void %2603(ptr noundef %hdev, i32 noundef %pb_addr.07.i443.i.i, i32 noundef 0) #2
  %add1.i445.i.i = add nuw nsw i32 %pb_addr.07.i443.i.i, 4
  %and.i446.i.i = and i32 %add1.i445.i.i, 4092
  %tobool.not.i447.i.i = icmp eq i32 %and.i446.i.i, 0
  br i1 %tobool.not.i447.i.i, label %while.body.i448.i.i.while.body.i456.i.i_crit_edge, label %while.body.i448.i.i.while.body.i448.i.i_crit_edge

while.body.i448.i.i.while.body.i448.i.i_crit_edge: ; preds = %while.body.i448.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i448.i.i

while.body.i448.i.i.while.body.i456.i.i_crit_edge: ; preds = %while.body.i448.i.i
  br label %while.body.i456.i.i

while.body.i456.i.i:                              ; preds = %while.body.i456.i.i.while.body.i456.i.i_crit_edge, %while.body.i448.i.i.while.body.i456.i.i_crit_edge
  %pb_addr.07.i451.i.i = phi i32 [ %add1.i453.i.i, %while.body.i456.i.i.while.body.i456.i.i_crit_edge ], [ 266112, %while.body.i448.i.i.while.body.i456.i.i_crit_edge ]
  %2604 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2604)
  %2605 = load ptr, ptr %asic_funcs, align 8
  %wreg.i452.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2605, i32 0, i32 58
  %2606 = ptrtoint ptr %wreg.i452.i.i to i32
  call void @__asan_load4_noabort(i32 %2606)
  %2607 = load ptr, ptr %wreg.i452.i.i, align 4
  tail call void %2607(ptr noundef %hdev, i32 noundef %pb_addr.07.i451.i.i, i32 noundef 0) #2
  %add1.i453.i.i = add nuw nsw i32 %pb_addr.07.i451.i.i, 4
  %and.i454.i.i = and i32 %add1.i453.i.i, 4092
  %tobool.not.i455.i.i = icmp eq i32 %and.i454.i.i, 0
  br i1 %tobool.not.i455.i.i, label %while.body.i456.i.i.while.body.i464.i.i_crit_edge, label %while.body.i456.i.i.while.body.i456.i.i_crit_edge

while.body.i456.i.i.while.body.i456.i.i_crit_edge: ; preds = %while.body.i456.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i456.i.i

while.body.i456.i.i.while.body.i464.i.i_crit_edge: ; preds = %while.body.i456.i.i
  br label %while.body.i464.i.i

while.body.i464.i.i:                              ; preds = %while.body.i464.i.i.while.body.i464.i.i_crit_edge, %while.body.i456.i.i.while.body.i464.i.i_crit_edge
  %pb_addr.07.i459.i.i = phi i32 [ %add1.i461.i.i, %while.body.i464.i.i.while.body.i464.i.i_crit_edge ], [ 282496, %while.body.i456.i.i.while.body.i464.i.i_crit_edge ]
  %2608 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2608)
  %2609 = load ptr, ptr %asic_funcs, align 8
  %wreg.i460.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2609, i32 0, i32 58
  %2610 = ptrtoint ptr %wreg.i460.i.i to i32
  call void @__asan_load4_noabort(i32 %2610)
  %2611 = load ptr, ptr %wreg.i460.i.i, align 4
  tail call void %2611(ptr noundef %hdev, i32 noundef %pb_addr.07.i459.i.i, i32 noundef 0) #2
  %add1.i461.i.i = add nuw nsw i32 %pb_addr.07.i459.i.i, 4
  %and.i462.i.i = and i32 %add1.i461.i.i, 4092
  %tobool.not.i463.i.i = icmp eq i32 %and.i462.i.i, 0
  br i1 %tobool.not.i463.i.i, label %while.body.i464.i.i.while.body.i472.i.i_crit_edge, label %while.body.i464.i.i.while.body.i464.i.i_crit_edge

while.body.i464.i.i.while.body.i464.i.i_crit_edge: ; preds = %while.body.i464.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i464.i.i

while.body.i464.i.i.while.body.i472.i.i_crit_edge: ; preds = %while.body.i464.i.i
  br label %while.body.i472.i.i

while.body.i472.i.i:                              ; preds = %while.body.i472.i.i.while.body.i472.i.i_crit_edge, %while.body.i464.i.i.while.body.i472.i.i_crit_edge
  %pb_addr.07.i467.i.i = phi i32 [ %add1.i469.i.i, %while.body.i472.i.i.while.body.i472.i.i_crit_edge ], [ 286592, %while.body.i464.i.i.while.body.i472.i.i_crit_edge ]
  %2612 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2612)
  %2613 = load ptr, ptr %asic_funcs, align 8
  %wreg.i468.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2613, i32 0, i32 58
  %2614 = ptrtoint ptr %wreg.i468.i.i to i32
  call void @__asan_load4_noabort(i32 %2614)
  %2615 = load ptr, ptr %wreg.i468.i.i, align 4
  tail call void %2615(ptr noundef %hdev, i32 noundef %pb_addr.07.i467.i.i, i32 noundef 0) #2
  %add1.i469.i.i = add nuw nsw i32 %pb_addr.07.i467.i.i, 4
  %and.i470.i.i = and i32 %add1.i469.i.i, 4092
  %tobool.not.i471.i.i = icmp eq i32 %and.i470.i.i, 0
  br i1 %tobool.not.i471.i.i, label %while.body.i472.i.i.while.body.i480.i.i_crit_edge, label %while.body.i472.i.i.while.body.i472.i.i_crit_edge

while.body.i472.i.i.while.body.i472.i.i_crit_edge: ; preds = %while.body.i472.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i472.i.i

while.body.i472.i.i.while.body.i480.i.i_crit_edge: ; preds = %while.body.i472.i.i
  br label %while.body.i480.i.i

while.body.i480.i.i:                              ; preds = %while.body.i480.i.i.while.body.i480.i.i_crit_edge, %while.body.i472.i.i.while.body.i480.i.i_crit_edge
  %pb_addr.07.i475.i.i = phi i32 [ %add1.i477.i.i, %while.body.i480.i.i.while.body.i480.i.i_crit_edge ], [ 528256, %while.body.i472.i.i.while.body.i480.i.i_crit_edge ]
  %2616 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2616)
  %2617 = load ptr, ptr %asic_funcs, align 8
  %wreg.i476.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2617, i32 0, i32 58
  %2618 = ptrtoint ptr %wreg.i476.i.i to i32
  call void @__asan_load4_noabort(i32 %2618)
  %2619 = load ptr, ptr %wreg.i476.i.i, align 4
  tail call void %2619(ptr noundef %hdev, i32 noundef %pb_addr.07.i475.i.i, i32 noundef 0) #2
  %add1.i477.i.i = add nuw nsw i32 %pb_addr.07.i475.i.i, 4
  %and.i478.i.i = and i32 %add1.i477.i.i, 4092
  %tobool.not.i479.i.i = icmp eq i32 %and.i478.i.i, 0
  br i1 %tobool.not.i479.i.i, label %while.body.i480.i.i.while.body.i488.i.i_crit_edge, label %while.body.i480.i.i.while.body.i480.i.i_crit_edge

while.body.i480.i.i.while.body.i480.i.i_crit_edge: ; preds = %while.body.i480.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i480.i.i

while.body.i480.i.i.while.body.i488.i.i_crit_edge: ; preds = %while.body.i480.i.i
  br label %while.body.i488.i.i

while.body.i488.i.i:                              ; preds = %while.body.i488.i.i.while.body.i488.i.i_crit_edge, %while.body.i480.i.i.while.body.i488.i.i_crit_edge
  %pb_addr.07.i483.i.i = phi i32 [ %add1.i485.i.i, %while.body.i488.i.i.while.body.i488.i.i_crit_edge ], [ 544640, %while.body.i480.i.i.while.body.i488.i.i_crit_edge ]
  %2620 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2620)
  %2621 = load ptr, ptr %asic_funcs, align 8
  %wreg.i484.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2621, i32 0, i32 58
  %2622 = ptrtoint ptr %wreg.i484.i.i to i32
  call void @__asan_load4_noabort(i32 %2622)
  %2623 = load ptr, ptr %wreg.i484.i.i, align 4
  tail call void %2623(ptr noundef %hdev, i32 noundef %pb_addr.07.i483.i.i, i32 noundef 0) #2
  %add1.i485.i.i = add nuw nsw i32 %pb_addr.07.i483.i.i, 4
  %and.i486.i.i = and i32 %add1.i485.i.i, 4092
  %tobool.not.i487.i.i = icmp eq i32 %and.i486.i.i, 0
  br i1 %tobool.not.i487.i.i, label %while.body.i488.i.i.while.body.i496.i.i_crit_edge, label %while.body.i488.i.i.while.body.i488.i.i_crit_edge

while.body.i488.i.i.while.body.i488.i.i_crit_edge: ; preds = %while.body.i488.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i488.i.i

while.body.i488.i.i.while.body.i496.i.i_crit_edge: ; preds = %while.body.i488.i.i
  br label %while.body.i496.i.i

while.body.i496.i.i:                              ; preds = %while.body.i496.i.i.while.body.i496.i.i_crit_edge, %while.body.i488.i.i.while.body.i496.i.i_crit_edge
  %pb_addr.07.i491.i.i = phi i32 [ %add1.i493.i.i, %while.body.i496.i.i.while.body.i496.i.i_crit_edge ], [ 548736, %while.body.i488.i.i.while.body.i496.i.i_crit_edge ]
  %2624 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2624)
  %2625 = load ptr, ptr %asic_funcs, align 8
  %wreg.i492.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2625, i32 0, i32 58
  %2626 = ptrtoint ptr %wreg.i492.i.i to i32
  call void @__asan_load4_noabort(i32 %2626)
  %2627 = load ptr, ptr %wreg.i492.i.i, align 4
  tail call void %2627(ptr noundef %hdev, i32 noundef %pb_addr.07.i491.i.i, i32 noundef 0) #2
  %add1.i493.i.i = add nuw nsw i32 %pb_addr.07.i491.i.i, 4
  %and.i494.i.i = and i32 %add1.i493.i.i, 4092
  %tobool.not.i495.i.i = icmp eq i32 %and.i494.i.i, 0
  br i1 %tobool.not.i495.i.i, label %while.body.i496.i.i.while.body.i504.i.i_crit_edge, label %while.body.i496.i.i.while.body.i496.i.i_crit_edge

while.body.i496.i.i.while.body.i496.i.i_crit_edge: ; preds = %while.body.i496.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i496.i.i

while.body.i496.i.i.while.body.i504.i.i_crit_edge: ; preds = %while.body.i496.i.i
  br label %while.body.i504.i.i

while.body.i504.i.i:                              ; preds = %while.body.i504.i.i.while.body.i504.i.i_crit_edge, %while.body.i496.i.i.while.body.i504.i.i_crit_edge
  %pb_addr.07.i499.i.i = phi i32 [ %add1.i501.i.i, %while.body.i504.i.i.while.body.i504.i.i_crit_edge ], [ 790400, %while.body.i496.i.i.while.body.i504.i.i_crit_edge ]
  %2628 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2628)
  %2629 = load ptr, ptr %asic_funcs, align 8
  %wreg.i500.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2629, i32 0, i32 58
  %2630 = ptrtoint ptr %wreg.i500.i.i to i32
  call void @__asan_load4_noabort(i32 %2630)
  %2631 = load ptr, ptr %wreg.i500.i.i, align 4
  tail call void %2631(ptr noundef %hdev, i32 noundef %pb_addr.07.i499.i.i, i32 noundef 0) #2
  %add1.i501.i.i = add nuw nsw i32 %pb_addr.07.i499.i.i, 4
  %and.i502.i.i = and i32 %add1.i501.i.i, 4092
  %tobool.not.i503.i.i = icmp eq i32 %and.i502.i.i, 0
  br i1 %tobool.not.i503.i.i, label %while.body.i504.i.i.while.body.i512.i.i_crit_edge, label %while.body.i504.i.i.while.body.i504.i.i_crit_edge

while.body.i504.i.i.while.body.i504.i.i_crit_edge: ; preds = %while.body.i504.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i504.i.i

while.body.i504.i.i.while.body.i512.i.i_crit_edge: ; preds = %while.body.i504.i.i
  br label %while.body.i512.i.i

while.body.i512.i.i:                              ; preds = %while.body.i512.i.i.while.body.i512.i.i_crit_edge, %while.body.i504.i.i.while.body.i512.i.i_crit_edge
  %pb_addr.07.i507.i.i = phi i32 [ %add1.i509.i.i, %while.body.i512.i.i.while.body.i512.i.i_crit_edge ], [ 806784, %while.body.i504.i.i.while.body.i512.i.i_crit_edge ]
  %2632 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2632)
  %2633 = load ptr, ptr %asic_funcs, align 8
  %wreg.i508.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2633, i32 0, i32 58
  %2634 = ptrtoint ptr %wreg.i508.i.i to i32
  call void @__asan_load4_noabort(i32 %2634)
  %2635 = load ptr, ptr %wreg.i508.i.i, align 4
  tail call void %2635(ptr noundef %hdev, i32 noundef %pb_addr.07.i507.i.i, i32 noundef 0) #2
  %add1.i509.i.i = add nuw nsw i32 %pb_addr.07.i507.i.i, 4
  %and.i510.i.i = and i32 %add1.i509.i.i, 4092
  %tobool.not.i511.i.i = icmp eq i32 %and.i510.i.i, 0
  br i1 %tobool.not.i511.i.i, label %while.body.i512.i.i.while.body.i520.i.i_crit_edge, label %while.body.i512.i.i.while.body.i512.i.i_crit_edge

while.body.i512.i.i.while.body.i512.i.i_crit_edge: ; preds = %while.body.i512.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i512.i.i

while.body.i512.i.i.while.body.i520.i.i_crit_edge: ; preds = %while.body.i512.i.i
  br label %while.body.i520.i.i

while.body.i520.i.i:                              ; preds = %while.body.i520.i.i.while.body.i520.i.i_crit_edge, %while.body.i512.i.i.while.body.i520.i.i_crit_edge
  %pb_addr.07.i515.i.i = phi i32 [ %add1.i517.i.i, %while.body.i520.i.i.while.body.i520.i.i_crit_edge ], [ 810880, %while.body.i512.i.i.while.body.i520.i.i_crit_edge ]
  %2636 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2636)
  %2637 = load ptr, ptr %asic_funcs, align 8
  %wreg.i516.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2637, i32 0, i32 58
  %2638 = ptrtoint ptr %wreg.i516.i.i to i32
  call void @__asan_load4_noabort(i32 %2638)
  %2639 = load ptr, ptr %wreg.i516.i.i, align 4
  tail call void %2639(ptr noundef %hdev, i32 noundef %pb_addr.07.i515.i.i, i32 noundef 0) #2
  %add1.i517.i.i = add nuw nsw i32 %pb_addr.07.i515.i.i, 4
  %and.i518.i.i = and i32 %add1.i517.i.i, 4092
  %tobool.not.i519.i.i = icmp eq i32 %and.i518.i.i, 0
  br i1 %tobool.not.i519.i.i, label %while.body.i520.i.i.while.body.i528.i.i_crit_edge, label %while.body.i520.i.i.while.body.i520.i.i_crit_edge

while.body.i520.i.i.while.body.i520.i.i_crit_edge: ; preds = %while.body.i520.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i520.i.i

while.body.i520.i.i.while.body.i528.i.i_crit_edge: ; preds = %while.body.i520.i.i
  br label %while.body.i528.i.i

while.body.i528.i.i:                              ; preds = %while.body.i528.i.i.while.body.i528.i.i_crit_edge, %while.body.i520.i.i.while.body.i528.i.i_crit_edge
  %pb_addr.07.i523.i.i = phi i32 [ %add1.i525.i.i, %while.body.i528.i.i.while.body.i528.i.i_crit_edge ], [ 1052544, %while.body.i520.i.i.while.body.i528.i.i_crit_edge ]
  %2640 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2640)
  %2641 = load ptr, ptr %asic_funcs, align 8
  %wreg.i524.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2641, i32 0, i32 58
  %2642 = ptrtoint ptr %wreg.i524.i.i to i32
  call void @__asan_load4_noabort(i32 %2642)
  %2643 = load ptr, ptr %wreg.i524.i.i, align 4
  tail call void %2643(ptr noundef %hdev, i32 noundef %pb_addr.07.i523.i.i, i32 noundef 0) #2
  %add1.i525.i.i = add nuw nsw i32 %pb_addr.07.i523.i.i, 4
  %and.i526.i.i = and i32 %add1.i525.i.i, 4092
  %tobool.not.i527.i.i = icmp eq i32 %and.i526.i.i, 0
  br i1 %tobool.not.i527.i.i, label %while.body.i528.i.i.while.body.i536.i.i_crit_edge, label %while.body.i528.i.i.while.body.i528.i.i_crit_edge

while.body.i528.i.i.while.body.i528.i.i_crit_edge: ; preds = %while.body.i528.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i528.i.i

while.body.i528.i.i.while.body.i536.i.i_crit_edge: ; preds = %while.body.i528.i.i
  br label %while.body.i536.i.i

while.body.i536.i.i:                              ; preds = %while.body.i536.i.i.while.body.i536.i.i_crit_edge, %while.body.i528.i.i.while.body.i536.i.i_crit_edge
  %pb_addr.07.i531.i.i = phi i32 [ %add1.i533.i.i, %while.body.i536.i.i.while.body.i536.i.i_crit_edge ], [ 1068928, %while.body.i528.i.i.while.body.i536.i.i_crit_edge ]
  %2644 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2644)
  %2645 = load ptr, ptr %asic_funcs, align 8
  %wreg.i532.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2645, i32 0, i32 58
  %2646 = ptrtoint ptr %wreg.i532.i.i to i32
  call void @__asan_load4_noabort(i32 %2646)
  %2647 = load ptr, ptr %wreg.i532.i.i, align 4
  tail call void %2647(ptr noundef %hdev, i32 noundef %pb_addr.07.i531.i.i, i32 noundef 0) #2
  %add1.i533.i.i = add nuw nsw i32 %pb_addr.07.i531.i.i, 4
  %and.i534.i.i = and i32 %add1.i533.i.i, 4092
  %tobool.not.i535.i.i = icmp eq i32 %and.i534.i.i, 0
  br i1 %tobool.not.i535.i.i, label %while.body.i536.i.i.while.body.i544.i.i_crit_edge, label %while.body.i536.i.i.while.body.i536.i.i_crit_edge

while.body.i536.i.i.while.body.i536.i.i_crit_edge: ; preds = %while.body.i536.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i536.i.i

while.body.i536.i.i.while.body.i544.i.i_crit_edge: ; preds = %while.body.i536.i.i
  br label %while.body.i544.i.i

while.body.i544.i.i:                              ; preds = %while.body.i544.i.i.while.body.i544.i.i_crit_edge, %while.body.i536.i.i.while.body.i544.i.i_crit_edge
  %pb_addr.07.i539.i.i = phi i32 [ %add1.i541.i.i, %while.body.i544.i.i.while.body.i544.i.i_crit_edge ], [ 1073024, %while.body.i536.i.i.while.body.i544.i.i_crit_edge ]
  %2648 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2648)
  %2649 = load ptr, ptr %asic_funcs, align 8
  %wreg.i540.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2649, i32 0, i32 58
  %2650 = ptrtoint ptr %wreg.i540.i.i to i32
  call void @__asan_load4_noabort(i32 %2650)
  %2651 = load ptr, ptr %wreg.i540.i.i, align 4
  tail call void %2651(ptr noundef %hdev, i32 noundef %pb_addr.07.i539.i.i, i32 noundef 0) #2
  %add1.i541.i.i = add nuw nsw i32 %pb_addr.07.i539.i.i, 4
  %and.i542.i.i = and i32 %add1.i541.i.i, 4092
  %tobool.not.i543.i.i = icmp eq i32 %and.i542.i.i, 0
  br i1 %tobool.not.i543.i.i, label %while.body.i544.i.i.while.body.i552.i.i_crit_edge, label %while.body.i544.i.i.while.body.i544.i.i_crit_edge

while.body.i544.i.i.while.body.i544.i.i_crit_edge: ; preds = %while.body.i544.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i544.i.i

while.body.i544.i.i.while.body.i552.i.i_crit_edge: ; preds = %while.body.i544.i.i
  br label %while.body.i552.i.i

while.body.i552.i.i:                              ; preds = %while.body.i552.i.i.while.body.i552.i.i_crit_edge, %while.body.i544.i.i.while.body.i552.i.i_crit_edge
  %pb_addr.07.i547.i.i = phi i32 [ %add1.i549.i.i, %while.body.i552.i.i.while.body.i552.i.i_crit_edge ], [ 1314688, %while.body.i544.i.i.while.body.i552.i.i_crit_edge ]
  %2652 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2652)
  %2653 = load ptr, ptr %asic_funcs, align 8
  %wreg.i548.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2653, i32 0, i32 58
  %2654 = ptrtoint ptr %wreg.i548.i.i to i32
  call void @__asan_load4_noabort(i32 %2654)
  %2655 = load ptr, ptr %wreg.i548.i.i, align 4
  tail call void %2655(ptr noundef %hdev, i32 noundef %pb_addr.07.i547.i.i, i32 noundef 0) #2
  %add1.i549.i.i = add nuw nsw i32 %pb_addr.07.i547.i.i, 4
  %and.i550.i.i = and i32 %add1.i549.i.i, 4092
  %tobool.not.i551.i.i = icmp eq i32 %and.i550.i.i, 0
  br i1 %tobool.not.i551.i.i, label %while.body.i552.i.i.while.body.i560.i.i_crit_edge, label %while.body.i552.i.i.while.body.i552.i.i_crit_edge

while.body.i552.i.i.while.body.i552.i.i_crit_edge: ; preds = %while.body.i552.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i552.i.i

while.body.i552.i.i.while.body.i560.i.i_crit_edge: ; preds = %while.body.i552.i.i
  br label %while.body.i560.i.i

while.body.i560.i.i:                              ; preds = %while.body.i560.i.i.while.body.i560.i.i_crit_edge, %while.body.i552.i.i.while.body.i560.i.i_crit_edge
  %pb_addr.07.i555.i.i = phi i32 [ %add1.i557.i.i, %while.body.i560.i.i.while.body.i560.i.i_crit_edge ], [ 1331072, %while.body.i552.i.i.while.body.i560.i.i_crit_edge ]
  %2656 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2656)
  %2657 = load ptr, ptr %asic_funcs, align 8
  %wreg.i556.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2657, i32 0, i32 58
  %2658 = ptrtoint ptr %wreg.i556.i.i to i32
  call void @__asan_load4_noabort(i32 %2658)
  %2659 = load ptr, ptr %wreg.i556.i.i, align 4
  tail call void %2659(ptr noundef %hdev, i32 noundef %pb_addr.07.i555.i.i, i32 noundef 0) #2
  %add1.i557.i.i = add nuw nsw i32 %pb_addr.07.i555.i.i, 4
  %and.i558.i.i = and i32 %add1.i557.i.i, 4092
  %tobool.not.i559.i.i = icmp eq i32 %and.i558.i.i, 0
  br i1 %tobool.not.i559.i.i, label %while.body.i560.i.i.while.body.i568.i.i_crit_edge, label %while.body.i560.i.i.while.body.i560.i.i_crit_edge

while.body.i560.i.i.while.body.i560.i.i_crit_edge: ; preds = %while.body.i560.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i560.i.i

while.body.i560.i.i.while.body.i568.i.i_crit_edge: ; preds = %while.body.i560.i.i
  br label %while.body.i568.i.i

while.body.i568.i.i:                              ; preds = %while.body.i568.i.i.while.body.i568.i.i_crit_edge, %while.body.i560.i.i.while.body.i568.i.i_crit_edge
  %pb_addr.07.i563.i.i = phi i32 [ %add1.i565.i.i, %while.body.i568.i.i.while.body.i568.i.i_crit_edge ], [ 1335168, %while.body.i560.i.i.while.body.i568.i.i_crit_edge ]
  %2660 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2660)
  %2661 = load ptr, ptr %asic_funcs, align 8
  %wreg.i564.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2661, i32 0, i32 58
  %2662 = ptrtoint ptr %wreg.i564.i.i to i32
  call void @__asan_load4_noabort(i32 %2662)
  %2663 = load ptr, ptr %wreg.i564.i.i, align 4
  tail call void %2663(ptr noundef %hdev, i32 noundef %pb_addr.07.i563.i.i, i32 noundef 0) #2
  %add1.i565.i.i = add nuw nsw i32 %pb_addr.07.i563.i.i, 4
  %and.i566.i.i = and i32 %add1.i565.i.i, 4092
  %tobool.not.i567.i.i = icmp eq i32 %and.i566.i.i, 0
  br i1 %tobool.not.i567.i.i, label %while.body.i568.i.i.while.body.i576.i.i_crit_edge, label %while.body.i568.i.i.while.body.i568.i.i_crit_edge

while.body.i568.i.i.while.body.i568.i.i_crit_edge: ; preds = %while.body.i568.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i568.i.i

while.body.i568.i.i.while.body.i576.i.i_crit_edge: ; preds = %while.body.i568.i.i
  br label %while.body.i576.i.i

while.body.i576.i.i:                              ; preds = %while.body.i576.i.i.while.body.i576.i.i_crit_edge, %while.body.i568.i.i.while.body.i576.i.i_crit_edge
  %pb_addr.07.i571.i.i = phi i32 [ %add1.i573.i.i, %while.body.i576.i.i.while.body.i576.i.i_crit_edge ], [ 1576832, %while.body.i568.i.i.while.body.i576.i.i_crit_edge ]
  %2664 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2664)
  %2665 = load ptr, ptr %asic_funcs, align 8
  %wreg.i572.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2665, i32 0, i32 58
  %2666 = ptrtoint ptr %wreg.i572.i.i to i32
  call void @__asan_load4_noabort(i32 %2666)
  %2667 = load ptr, ptr %wreg.i572.i.i, align 4
  tail call void %2667(ptr noundef %hdev, i32 noundef %pb_addr.07.i571.i.i, i32 noundef 0) #2
  %add1.i573.i.i = add nuw nsw i32 %pb_addr.07.i571.i.i, 4
  %and.i574.i.i = and i32 %add1.i573.i.i, 4092
  %tobool.not.i575.i.i = icmp eq i32 %and.i574.i.i, 0
  br i1 %tobool.not.i575.i.i, label %while.body.i576.i.i.while.body.i584.i.i_crit_edge, label %while.body.i576.i.i.while.body.i576.i.i_crit_edge

while.body.i576.i.i.while.body.i576.i.i_crit_edge: ; preds = %while.body.i576.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i576.i.i

while.body.i576.i.i.while.body.i584.i.i_crit_edge: ; preds = %while.body.i576.i.i
  br label %while.body.i584.i.i

while.body.i584.i.i:                              ; preds = %while.body.i584.i.i.while.body.i584.i.i_crit_edge, %while.body.i576.i.i.while.body.i584.i.i_crit_edge
  %pb_addr.07.i579.i.i = phi i32 [ %add1.i581.i.i, %while.body.i584.i.i.while.body.i584.i.i_crit_edge ], [ 1593216, %while.body.i576.i.i.while.body.i584.i.i_crit_edge ]
  %2668 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2668)
  %2669 = load ptr, ptr %asic_funcs, align 8
  %wreg.i580.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2669, i32 0, i32 58
  %2670 = ptrtoint ptr %wreg.i580.i.i to i32
  call void @__asan_load4_noabort(i32 %2670)
  %2671 = load ptr, ptr %wreg.i580.i.i, align 4
  tail call void %2671(ptr noundef %hdev, i32 noundef %pb_addr.07.i579.i.i, i32 noundef 0) #2
  %add1.i581.i.i = add nuw nsw i32 %pb_addr.07.i579.i.i, 4
  %and.i582.i.i = and i32 %add1.i581.i.i, 4092
  %tobool.not.i583.i.i = icmp eq i32 %and.i582.i.i, 0
  br i1 %tobool.not.i583.i.i, label %while.body.i584.i.i.while.body.i592.i.i_crit_edge, label %while.body.i584.i.i.while.body.i584.i.i_crit_edge

while.body.i584.i.i.while.body.i584.i.i_crit_edge: ; preds = %while.body.i584.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i584.i.i

while.body.i584.i.i.while.body.i592.i.i_crit_edge: ; preds = %while.body.i584.i.i
  br label %while.body.i592.i.i

while.body.i592.i.i:                              ; preds = %while.body.i592.i.i.while.body.i592.i.i_crit_edge, %while.body.i584.i.i.while.body.i592.i.i_crit_edge
  %pb_addr.07.i587.i.i = phi i32 [ %add1.i589.i.i, %while.body.i592.i.i.while.body.i592.i.i_crit_edge ], [ 1597312, %while.body.i584.i.i.while.body.i592.i.i_crit_edge ]
  %2672 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2672)
  %2673 = load ptr, ptr %asic_funcs, align 8
  %wreg.i588.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2673, i32 0, i32 58
  %2674 = ptrtoint ptr %wreg.i588.i.i to i32
  call void @__asan_load4_noabort(i32 %2674)
  %2675 = load ptr, ptr %wreg.i588.i.i, align 4
  tail call void %2675(ptr noundef %hdev, i32 noundef %pb_addr.07.i587.i.i, i32 noundef 0) #2
  %add1.i589.i.i = add nuw nsw i32 %pb_addr.07.i587.i.i, 4
  %and.i590.i.i = and i32 %add1.i589.i.i, 4092
  %tobool.not.i591.i.i = icmp eq i32 %and.i590.i.i, 0
  br i1 %tobool.not.i591.i.i, label %goya_init_mme_protection_bits.exit.i, label %while.body.i592.i.i.while.body.i592.i.i_crit_edge

while.body.i592.i.i.while.body.i592.i.i_crit_edge: ; preds = %while.body.i592.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i592.i.i

goya_init_mme_protection_bits.exit.i:             ; preds = %while.body.i592.i.i
  %2676 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2676)
  %2677 = load ptr, ptr %asic_funcs, align 8
  %wreg.i645.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2677, i32 0, i32 58
  %2678 = ptrtoint ptr %wreg.i645.i to i32
  call void @__asan_load4_noabort(i32 %2678)
  %2679 = load ptr, ptr %wreg.i645.i, align 4
  tail call void %2679(ptr noundef %hdev, i32 noundef 855952, i32 noundef -4095) #2
  %2680 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2680)
  %2681 = load ptr, ptr %asic_funcs, align 8
  %wreg28.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2681, i32 0, i32 58
  %2682 = ptrtoint ptr %wreg28.i.i to i32
  call void @__asan_load4_noabort(i32 %2682)
  %2683 = load ptr, ptr %wreg28.i.i, align 4
  tail call void %2683(ptr noundef %hdev, i32 noundef 855960, i32 noundef -262144) #2
  %2684 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2684)
  %2685 = load ptr, ptr %asic_funcs, align 8
  %wreg51.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2685, i32 0, i32 58
  %2686 = ptrtoint ptr %wreg51.i.i to i32
  call void @__asan_load4_noabort(i32 %2686)
  %2687 = load ptr, ptr %wreg51.i.i, align 4
  tail call void %2687(ptr noundef %hdev, i32 noundef 888704, i32 noundef 16775168) #2
  %2688 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2688)
  %2689 = load ptr, ptr %asic_funcs, align 8
  %wreg82.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2689, i32 0, i32 58
  %2690 = ptrtoint ptr %wreg82.i.i to i32
  call void @__asan_load4_noabort(i32 %2690)
  %2691 = load ptr, ptr %wreg82.i.i, align 4
  tail call void %2691(ptr noundef %hdev, i32 noundef 888708, i32 noundef 135299264) #2
  %2692 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2692)
  %2693 = load ptr, ptr %asic_funcs, align 8
  %wreg101.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2693, i32 0, i32 58
  %2694 = ptrtoint ptr %wreg101.i.i to i32
  call void @__asan_load4_noabort(i32 %2694)
  %2695 = load ptr, ptr %wreg101.i.i, align 4
  tail call void %2695(ptr noundef %hdev, i32 noundef 888712, i32 noundef -4194053) #2
  %2696 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2696)
  %2697 = load ptr, ptr %asic_funcs, align 8
  %wreg114.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2697, i32 0, i32 58
  %2698 = ptrtoint ptr %wreg114.i.i to i32
  call void @__asan_load4_noabort(i32 %2698)
  %2699 = load ptr, ptr %wreg114.i.i, align 4
  tail call void %2699(ptr noundef %hdev, i32 noundef 888712, i32 noundef 1073741808) #2
  %2700 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2700)
  %2701 = load ptr, ptr %asic_funcs, align 8
  %wreg129.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2701, i32 0, i32 58
  %2702 = ptrtoint ptr %wreg129.i.i to i32
  call void @__asan_load4_noabort(i32 %2702)
  %2703 = load ptr, ptr %wreg129.i.i, align 4
  tail call void %2703(ptr noundef %hdev, i32 noundef 892800, i32 noundef -2048) #2
  %2704 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2704)
  %2705 = load ptr, ptr %asic_funcs, align 8
  %wreg146.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2705, i32 0, i32 58
  %2706 = ptrtoint ptr %wreg146.i.i to i32
  call void @__asan_load4_noabort(i32 %2706)
  %2707 = load ptr, ptr %wreg146.i.i, align 4
  tail call void %2707(ptr noundef %hdev, i32 noundef 892804, i32 noundef 136286207) #2
  %2708 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2708)
  %2709 = load ptr, ptr %asic_funcs, align 8
  %wreg167.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2709, i32 0, i32 58
  %2710 = ptrtoint ptr %wreg167.i.i to i32
  call void @__asan_load4_noabort(i32 %2710)
  %2711 = load ptr, ptr %wreg167.i.i, align 4
  tail call void %2711(ptr noundef %hdev, i32 noundef 892808, i32 noundef 1069547771) #2
  %2712 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2712)
  %2713 = load ptr, ptr %asic_funcs, align 8
  %wreg176.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2713, i32 0, i32 58
  %2714 = ptrtoint ptr %wreg176.i.i to i32
  call void @__asan_load4_noabort(i32 %2714)
  %2715 = load ptr, ptr %wreg176.i.i, align 4
  tail call void %2715(ptr noundef %hdev, i32 noundef 892812, i32 noundef -16) #2
  %2716 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2716)
  %2717 = load ptr, ptr %asic_funcs, align 8
  %wreg193.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2717, i32 0, i32 58
  %2718 = ptrtoint ptr %wreg193.i.i to i32
  call void @__asan_load4_noabort(i32 %2718)
  %2719 = load ptr, ptr %wreg193.i.i, align 4
  tail call void %2719(ptr noundef %hdev, i32 noundef 917496, i32 noundef -50331649) #2
  br label %while.body.i.i652.i

while.body.i.i652.i:                              ; preds = %while.body.i.i652.i.while.body.i.i652.i_crit_edge, %goya_init_mme_protection_bits.exit.i
  %pb_addr.07.i.i647.i = phi i32 [ 1838976, %goya_init_mme_protection_bits.exit.i ], [ %add1.i.i649.i, %while.body.i.i652.i.while.body.i.i652.i_crit_edge ]
  %2720 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2720)
  %2721 = load ptr, ptr %asic_funcs, align 8
  %wreg.i.i648.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2721, i32 0, i32 58
  %2722 = ptrtoint ptr %wreg.i.i648.i to i32
  call void @__asan_load4_noabort(i32 %2722)
  %2723 = load ptr, ptr %wreg.i.i648.i, align 4
  tail call void %2723(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i647.i, i32 noundef 0) #2
  %add1.i.i649.i = add nuw nsw i32 %pb_addr.07.i.i647.i, 4
  %and.i.i650.i = and i32 %add1.i.i649.i, 4092
  %tobool.not.i.i651.i = icmp eq i32 %and.i.i650.i, 0
  br i1 %tobool.not.i.i651.i, label %while.body.i.i652.i.while.body.i735.i.i_crit_edge, label %while.body.i.i652.i.while.body.i.i652.i_crit_edge

while.body.i.i652.i.while.body.i.i652.i_crit_edge: ; preds = %while.body.i.i652.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i652.i

while.body.i.i652.i.while.body.i735.i.i_crit_edge: ; preds = %while.body.i.i652.i
  br label %while.body.i735.i.i

while.body.i735.i.i:                              ; preds = %while.body.i735.i.i.while.body.i735.i.i_crit_edge, %while.body.i.i652.i.while.body.i735.i.i_crit_edge
  %pb_addr.07.i730.i.i = phi i32 [ %add1.i732.i.i, %while.body.i735.i.i.while.body.i735.i.i_crit_edge ], [ 1855360, %while.body.i.i652.i.while.body.i735.i.i_crit_edge ]
  %2724 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2724)
  %2725 = load ptr, ptr %asic_funcs, align 8
  %wreg.i731.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2725, i32 0, i32 58
  %2726 = ptrtoint ptr %wreg.i731.i.i to i32
  call void @__asan_load4_noabort(i32 %2726)
  %2727 = load ptr, ptr %wreg.i731.i.i, align 4
  tail call void %2727(ptr noundef %hdev, i32 noundef %pb_addr.07.i730.i.i, i32 noundef 0) #2
  %add1.i732.i.i = add nuw nsw i32 %pb_addr.07.i730.i.i, 4
  %and.i733.i.i = and i32 %add1.i732.i.i, 4092
  %tobool.not.i734.i.i = icmp eq i32 %and.i733.i.i, 0
  br i1 %tobool.not.i734.i.i, label %while.body.i735.i.i.while.body.i743.i.i_crit_edge, label %while.body.i735.i.i.while.body.i735.i.i_crit_edge

while.body.i735.i.i.while.body.i735.i.i_crit_edge: ; preds = %while.body.i735.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i735.i.i

while.body.i735.i.i.while.body.i743.i.i_crit_edge: ; preds = %while.body.i735.i.i
  br label %while.body.i743.i.i

while.body.i743.i.i:                              ; preds = %while.body.i743.i.i.while.body.i743.i.i_crit_edge, %while.body.i735.i.i.while.body.i743.i.i_crit_edge
  %pb_addr.07.i738.i.i = phi i32 [ %add1.i740.i.i, %while.body.i743.i.i.while.body.i743.i.i_crit_edge ], [ 1859456, %while.body.i735.i.i.while.body.i743.i.i_crit_edge ]
  %2728 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2728)
  %2729 = load ptr, ptr %asic_funcs, align 8
  %wreg.i739.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2729, i32 0, i32 58
  %2730 = ptrtoint ptr %wreg.i739.i.i to i32
  call void @__asan_load4_noabort(i32 %2730)
  %2731 = load ptr, ptr %wreg.i739.i.i, align 4
  tail call void %2731(ptr noundef %hdev, i32 noundef %pb_addr.07.i738.i.i, i32 noundef 0) #2
  %add1.i740.i.i = add nuw nsw i32 %pb_addr.07.i738.i.i, 4
  %and.i741.i.i = and i32 %add1.i740.i.i, 4092
  %tobool.not.i742.i.i = icmp eq i32 %and.i741.i.i, 0
  br i1 %tobool.not.i742.i.i, label %goya_pb_set_block.exit744.i.i, label %while.body.i743.i.i.while.body.i743.i.i_crit_edge

while.body.i743.i.i.while.body.i743.i.i_crit_edge: ; preds = %while.body.i743.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i743.i.i

goya_pb_set_block.exit744.i.i:                    ; preds = %while.body.i743.i.i
  %2732 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2732)
  %2733 = load ptr, ptr %asic_funcs, align 8
  %wreg.i653.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2733, i32 0, i32 58
  %2734 = ptrtoint ptr %wreg.i653.i to i32
  call void @__asan_load4_noabort(i32 %2734)
  %2735 = load ptr, ptr %wreg.i653.i, align 4
  tail call void %2735(ptr noundef %hdev, i32 noundef 4198272, i32 noundef 16775168) #2
  %2736 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2736)
  %2737 = load ptr, ptr %asic_funcs, align 8
  %wreg45.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2737, i32 0, i32 58
  %2738 = ptrtoint ptr %wreg45.i.i to i32
  call void @__asan_load4_noabort(i32 %2738)
  %2739 = load ptr, ptr %wreg45.i.i, align 4
  tail call void %2739(ptr noundef %hdev, i32 noundef 4198276, i32 noundef 135299264) #2
  %2740 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2740)
  %2741 = load ptr, ptr %asic_funcs, align 8
  %wreg64.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2741, i32 0, i32 58
  %2742 = ptrtoint ptr %wreg64.i.i to i32
  call void @__asan_load4_noabort(i32 %2742)
  %2743 = load ptr, ptr %wreg64.i.i, align 4
  tail call void %2743(ptr noundef %hdev, i32 noundef 4198280, i32 noundef -4194053) #2
  br label %while.body.i751.i.i

while.body.i751.i.i:                              ; preds = %while.body.i751.i.i.while.body.i751.i.i_crit_edge, %goya_pb_set_block.exit744.i.i
  %pb_addr.07.i746.i.i = phi i32 [ 4202368, %goya_pb_set_block.exit744.i.i ], [ %add1.i748.i.i, %while.body.i751.i.i.while.body.i751.i.i_crit_edge ]
  %2744 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2744)
  %2745 = load ptr, ptr %asic_funcs, align 8
  %wreg.i747.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2745, i32 0, i32 58
  %2746 = ptrtoint ptr %wreg.i747.i.i to i32
  call void @__asan_load4_noabort(i32 %2746)
  %2747 = load ptr, ptr %wreg.i747.i.i, align 4
  tail call void %2747(ptr noundef %hdev, i32 noundef %pb_addr.07.i746.i.i, i32 noundef 0) #2
  %add1.i748.i.i = add nuw nsw i32 %pb_addr.07.i746.i.i, 4
  %and.i749.i.i = and i32 %add1.i748.i.i, 4092
  %tobool.not.i750.i.i = icmp eq i32 %and.i749.i.i, 0
  br i1 %tobool.not.i750.i.i, label %goya_pb_set_block.exit752.i.i, label %while.body.i751.i.i.while.body.i751.i.i_crit_edge

while.body.i751.i.i.while.body.i751.i.i_crit_edge: ; preds = %while.body.i751.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i751.i.i

goya_pb_set_block.exit752.i.i:                    ; preds = %while.body.i751.i.i
  %2748 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2748)
  %2749 = load ptr, ptr %asic_funcs, align 8
  %wreg87.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2749, i32 0, i32 58
  %2750 = ptrtoint ptr %wreg87.i.i to i32
  call void @__asan_load4_noabort(i32 %2750)
  %2751 = load ptr, ptr %wreg87.i.i, align 4
  tail call void %2751(ptr noundef %hdev, i32 noundef 4231040, i32 noundef 16775168) #2
  %2752 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2752)
  %2753 = load ptr, ptr %asic_funcs, align 8
  %wreg118.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2753, i32 0, i32 58
  %2754 = ptrtoint ptr %wreg118.i.i to i32
  call void @__asan_load4_noabort(i32 %2754)
  %2755 = load ptr, ptr %wreg118.i.i, align 4
  tail call void %2755(ptr noundef %hdev, i32 noundef 4231044, i32 noundef 135299264) #2
  %2756 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2756)
  %2757 = load ptr, ptr %asic_funcs, align 8
  %wreg137.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2757, i32 0, i32 58
  %2758 = ptrtoint ptr %wreg137.i.i to i32
  call void @__asan_load4_noabort(i32 %2758)
  %2759 = load ptr, ptr %wreg137.i.i, align 4
  tail call void %2759(ptr noundef %hdev, i32 noundef 4231048, i32 noundef -4194053) #2
  br label %while.body.i759.i.i

while.body.i759.i.i:                              ; preds = %while.body.i759.i.i.while.body.i759.i.i_crit_edge, %goya_pb_set_block.exit752.i.i
  %pb_addr.07.i754.i.i = phi i32 [ 4235136, %goya_pb_set_block.exit752.i.i ], [ %add1.i756.i.i, %while.body.i759.i.i.while.body.i759.i.i_crit_edge ]
  %2760 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2760)
  %2761 = load ptr, ptr %asic_funcs, align 8
  %wreg.i755.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2761, i32 0, i32 58
  %2762 = ptrtoint ptr %wreg.i755.i.i to i32
  call void @__asan_load4_noabort(i32 %2762)
  %2763 = load ptr, ptr %wreg.i755.i.i, align 4
  tail call void %2763(ptr noundef %hdev, i32 noundef %pb_addr.07.i754.i.i, i32 noundef 0) #2
  %add1.i756.i.i = add nuw nsw i32 %pb_addr.07.i754.i.i, 4
  %and.i757.i.i = and i32 %add1.i756.i.i, 4092
  %tobool.not.i758.i.i = icmp eq i32 %and.i757.i.i, 0
  br i1 %tobool.not.i758.i.i, label %goya_pb_set_block.exit760.i.i, label %while.body.i759.i.i.while.body.i759.i.i_crit_edge

while.body.i759.i.i.while.body.i759.i.i_crit_edge: ; preds = %while.body.i759.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i759.i.i

goya_pb_set_block.exit760.i.i:                    ; preds = %while.body.i759.i.i
  %2764 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2764)
  %2765 = load ptr, ptr %asic_funcs, align 8
  %wreg160.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2765, i32 0, i32 58
  %2766 = ptrtoint ptr %wreg160.i.i to i32
  call void @__asan_load4_noabort(i32 %2766)
  %2767 = load ptr, ptr %wreg160.i.i, align 4
  tail call void %2767(ptr noundef %hdev, i32 noundef 4263808, i32 noundef 16775168) #2
  %2768 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2768)
  %2769 = load ptr, ptr %asic_funcs, align 8
  %wreg191.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2769, i32 0, i32 58
  %2770 = ptrtoint ptr %wreg191.i.i to i32
  call void @__asan_load4_noabort(i32 %2770)
  %2771 = load ptr, ptr %wreg191.i.i, align 4
  tail call void %2771(ptr noundef %hdev, i32 noundef 4263812, i32 noundef 135299264) #2
  %2772 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2772)
  %2773 = load ptr, ptr %asic_funcs, align 8
  %wreg210.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2773, i32 0, i32 58
  %2774 = ptrtoint ptr %wreg210.i.i to i32
  call void @__asan_load4_noabort(i32 %2774)
  %2775 = load ptr, ptr %wreg210.i.i, align 4
  tail call void %2775(ptr noundef %hdev, i32 noundef 4263816, i32 noundef -4194053) #2
  br label %while.body.i767.i.i

while.body.i767.i.i:                              ; preds = %while.body.i767.i.i.while.body.i767.i.i_crit_edge, %goya_pb_set_block.exit760.i.i
  %pb_addr.07.i762.i.i = phi i32 [ 4267904, %goya_pb_set_block.exit760.i.i ], [ %add1.i764.i.i, %while.body.i767.i.i.while.body.i767.i.i_crit_edge ]
  %2776 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2776)
  %2777 = load ptr, ptr %asic_funcs, align 8
  %wreg.i763.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2777, i32 0, i32 58
  %2778 = ptrtoint ptr %wreg.i763.i.i to i32
  call void @__asan_load4_noabort(i32 %2778)
  %2779 = load ptr, ptr %wreg.i763.i.i, align 4
  tail call void %2779(ptr noundef %hdev, i32 noundef %pb_addr.07.i762.i.i, i32 noundef 0) #2
  %add1.i764.i.i = add nuw nsw i32 %pb_addr.07.i762.i.i, 4
  %and.i765.i.i = and i32 %add1.i764.i.i, 4092
  %tobool.not.i766.i.i = icmp eq i32 %and.i765.i.i, 0
  br i1 %tobool.not.i766.i.i, label %goya_pb_set_block.exit768.i.i, label %while.body.i767.i.i.while.body.i767.i.i_crit_edge

while.body.i767.i.i.while.body.i767.i.i_crit_edge: ; preds = %while.body.i767.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i767.i.i

goya_pb_set_block.exit768.i.i:                    ; preds = %while.body.i767.i.i
  %2780 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2780)
  %2781 = load ptr, ptr %asic_funcs, align 8
  %wreg233.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2781, i32 0, i32 58
  %2782 = ptrtoint ptr %wreg233.i.i to i32
  call void @__asan_load4_noabort(i32 %2782)
  %2783 = load ptr, ptr %wreg233.i.i, align 4
  tail call void %2783(ptr noundef %hdev, i32 noundef 4296576, i32 noundef 16775168) #2
  %2784 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2784)
  %2785 = load ptr, ptr %asic_funcs, align 8
  %wreg264.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2785, i32 0, i32 58
  %2786 = ptrtoint ptr %wreg264.i.i to i32
  call void @__asan_load4_noabort(i32 %2786)
  %2787 = load ptr, ptr %wreg264.i.i, align 4
  tail call void %2787(ptr noundef %hdev, i32 noundef 4296580, i32 noundef 135299264) #2
  %2788 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2788)
  %2789 = load ptr, ptr %asic_funcs, align 8
  %wreg283.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2789, i32 0, i32 58
  %2790 = ptrtoint ptr %wreg283.i.i to i32
  call void @__asan_load4_noabort(i32 %2790)
  %2791 = load ptr, ptr %wreg283.i.i, align 4
  tail call void %2791(ptr noundef %hdev, i32 noundef 4296584, i32 noundef -4194053) #2
  br label %while.body.i775.i.i

while.body.i775.i.i:                              ; preds = %while.body.i775.i.i.while.body.i775.i.i_crit_edge, %goya_pb_set_block.exit768.i.i
  %pb_addr.07.i770.i.i = phi i32 [ 4300672, %goya_pb_set_block.exit768.i.i ], [ %add1.i772.i.i, %while.body.i775.i.i.while.body.i775.i.i_crit_edge ]
  %2792 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2792)
  %2793 = load ptr, ptr %asic_funcs, align 8
  %wreg.i771.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2793, i32 0, i32 58
  %2794 = ptrtoint ptr %wreg.i771.i.i to i32
  call void @__asan_load4_noabort(i32 %2794)
  %2795 = load ptr, ptr %wreg.i771.i.i, align 4
  tail call void %2795(ptr noundef %hdev, i32 noundef %pb_addr.07.i770.i.i, i32 noundef 0) #2
  %add1.i772.i.i = add nuw nsw i32 %pb_addr.07.i770.i.i, 4
  %and.i773.i.i = and i32 %add1.i772.i.i, 4092
  %tobool.not.i774.i.i = icmp eq i32 %and.i773.i.i, 0
  br i1 %tobool.not.i774.i.i, label %goya_pb_set_block.exit776.i.i, label %while.body.i775.i.i.while.body.i775.i.i_crit_edge

while.body.i775.i.i.while.body.i775.i.i_crit_edge: ; preds = %while.body.i775.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i775.i.i

goya_pb_set_block.exit776.i.i:                    ; preds = %while.body.i775.i.i
  %2796 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2796)
  %2797 = load ptr, ptr %asic_funcs, align 8
  %wreg306.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2797, i32 0, i32 58
  %2798 = ptrtoint ptr %wreg306.i.i to i32
  call void @__asan_load4_noabort(i32 %2798)
  %2799 = load ptr, ptr %wreg306.i.i, align 4
  tail call void %2799(ptr noundef %hdev, i32 noundef 4329344, i32 noundef 16775168) #2
  %2800 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2800)
  %2801 = load ptr, ptr %asic_funcs, align 8
  %wreg337.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2801, i32 0, i32 58
  %2802 = ptrtoint ptr %wreg337.i.i to i32
  call void @__asan_load4_noabort(i32 %2802)
  %2803 = load ptr, ptr %wreg337.i.i, align 4
  tail call void %2803(ptr noundef %hdev, i32 noundef 4329348, i32 noundef 135299264) #2
  %2804 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2804)
  %2805 = load ptr, ptr %asic_funcs, align 8
  %wreg356.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2805, i32 0, i32 58
  %2806 = ptrtoint ptr %wreg356.i.i to i32
  call void @__asan_load4_noabort(i32 %2806)
  %2807 = load ptr, ptr %wreg356.i.i, align 4
  tail call void %2807(ptr noundef %hdev, i32 noundef 4329352, i32 noundef -4194053) #2
  br label %while.body.i783.i.i

while.body.i783.i.i:                              ; preds = %while.body.i783.i.i.while.body.i783.i.i_crit_edge, %goya_pb_set_block.exit776.i.i
  %pb_addr.07.i778.i.i = phi i32 [ 4333440, %goya_pb_set_block.exit776.i.i ], [ %add1.i780.i.i, %while.body.i783.i.i.while.body.i783.i.i_crit_edge ]
  %2808 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2808)
  %2809 = load ptr, ptr %asic_funcs, align 8
  %wreg.i779.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2809, i32 0, i32 58
  %2810 = ptrtoint ptr %wreg.i779.i.i to i32
  call void @__asan_load4_noabort(i32 %2810)
  %2811 = load ptr, ptr %wreg.i779.i.i, align 4
  tail call void %2811(ptr noundef %hdev, i32 noundef %pb_addr.07.i778.i.i, i32 noundef 0) #2
  %add1.i780.i.i = add nuw nsw i32 %pb_addr.07.i778.i.i, 4
  %and.i781.i.i = and i32 %add1.i780.i.i, 4092
  %tobool.not.i782.i.i = icmp eq i32 %and.i781.i.i, 0
  br i1 %tobool.not.i782.i.i, label %while.body.i783.i.i.while.body.i.i660.i_crit_edge, label %while.body.i783.i.i.while.body.i783.i.i_crit_edge

while.body.i783.i.i.while.body.i783.i.i_crit_edge: ; preds = %while.body.i783.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i783.i.i

while.body.i783.i.i.while.body.i.i660.i_crit_edge: ; preds = %while.body.i783.i.i
  br label %while.body.i.i660.i

while.body.i.i660.i:                              ; preds = %while.body.i.i660.i.while.body.i.i660.i_crit_edge, %while.body.i783.i.i.while.body.i.i660.i_crit_edge
  %pb_addr.07.i.i655.i = phi i32 [ %add1.i.i657.i, %while.body.i.i660.i.while.body.i.i660.i_crit_edge ], [ 14700416, %while.body.i783.i.i.while.body.i.i660.i_crit_edge ]
  %2812 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2812)
  %2813 = load ptr, ptr %asic_funcs, align 8
  %wreg.i.i656.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2813, i32 0, i32 58
  %2814 = ptrtoint ptr %wreg.i.i656.i to i32
  call void @__asan_load4_noabort(i32 %2814)
  %2815 = load ptr, ptr %wreg.i.i656.i, align 4
  tail call void %2815(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i655.i, i32 noundef 0) #2
  %add1.i.i657.i = add nuw nsw i32 %pb_addr.07.i.i655.i, 4
  %and.i.i658.i = and i32 %add1.i.i657.i, 4092
  %tobool.not.i.i659.i = icmp eq i32 %and.i.i658.i, 0
  br i1 %tobool.not.i.i659.i, label %while.body.i.i660.i.while.body.i2852.i.i_crit_edge, label %while.body.i.i660.i.while.body.i.i660.i_crit_edge

while.body.i.i660.i.while.body.i.i660.i_crit_edge: ; preds = %while.body.i.i660.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i660.i

while.body.i.i660.i.while.body.i2852.i.i_crit_edge: ; preds = %while.body.i.i660.i
  br label %while.body.i2852.i.i

while.body.i2852.i.i:                             ; preds = %while.body.i2852.i.i.while.body.i2852.i.i_crit_edge, %while.body.i.i660.i.while.body.i2852.i.i_crit_edge
  %pb_addr.07.i2847.i.i = phi i32 [ %add1.i2849.i.i, %while.body.i2852.i.i.while.body.i2852.i.i_crit_edge ], [ 14704512, %while.body.i.i660.i.while.body.i2852.i.i_crit_edge ]
  %2816 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2816)
  %2817 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2848.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2817, i32 0, i32 58
  %2818 = ptrtoint ptr %wreg.i2848.i.i to i32
  call void @__asan_load4_noabort(i32 %2818)
  %2819 = load ptr, ptr %wreg.i2848.i.i, align 4
  tail call void %2819(ptr noundef %hdev, i32 noundef %pb_addr.07.i2847.i.i, i32 noundef 0) #2
  %add1.i2849.i.i = add nuw nsw i32 %pb_addr.07.i2847.i.i, 4
  %and.i2850.i.i = and i32 %add1.i2849.i.i, 4092
  %tobool.not.i2851.i.i = icmp eq i32 %and.i2850.i.i, 0
  br i1 %tobool.not.i2851.i.i, label %goya_pb_set_block.exit2853.i.i, label %while.body.i2852.i.i.while.body.i2852.i.i_crit_edge

while.body.i2852.i.i.while.body.i2852.i.i_crit_edge: ; preds = %while.body.i2852.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2852.i.i

goya_pb_set_block.exit2853.i.i:                   ; preds = %while.body.i2852.i.i
  %2820 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2820)
  %2821 = load ptr, ptr %asic_funcs, align 8
  %wreg.i661.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2821, i32 0, i32 58
  %2822 = ptrtoint ptr %wreg.i661.i to i32
  call void @__asan_load4_noabort(i32 %2822)
  %2823 = load ptr, ptr %wreg.i661.i, align 4
  tail call void %2823(ptr noundef %hdev, i32 noundef 14708672, i32 noundef -157) #2
  %2824 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2824)
  %2825 = load ptr, ptr %asic_funcs, align 8
  %wreg11.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2825, i32 0, i32 58
  %2826 = ptrtoint ptr %wreg11.i.i to i32
  call void @__asan_load4_noabort(i32 %2826)
  %2827 = load ptr, ptr %wreg11.i.i, align 4
  tail call void %2827(ptr noundef %hdev, i32 noundef 14708672, i32 noundef -14716673) #2
  %2828 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2828)
  %2829 = load ptr, ptr %asic_funcs, align 8
  %wreg17.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2829, i32 0, i32 58
  %2830 = ptrtoint ptr %wreg17.i.i to i32
  call void @__asan_load4_noabort(i32 %2830)
  %2831 = load ptr, ptr %wreg17.i.i, align 4
  tail call void %2831(ptr noundef %hdev, i32 noundef 14708712, i32 noundef -193) #2
  %2832 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2832)
  %2833 = load ptr, ptr %asic_funcs, align 8
  %wreg33.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2833, i32 0, i32 58
  %2834 = ptrtoint ptr %wreg33.i.i to i32
  call void @__asan_load4_noabort(i32 %2834)
  %2835 = load ptr, ptr %wreg33.i.i, align 4
  tail call void %2835(ptr noundef %hdev, i32 noundef 14708720, i32 noundef -4096) #2
  %2836 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2836)
  %2837 = load ptr, ptr %asic_funcs, align 8
  %wreg56.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2837, i32 0, i32 58
  %2838 = ptrtoint ptr %wreg56.i.i to i32
  call void @__asan_load4_noabort(i32 %2838)
  %2839 = load ptr, ptr %wreg56.i.i, align 4
  tail call void %2839(ptr noundef %hdev, i32 noundef 14716800, i32 noundef 16775168) #2
  %2840 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2840)
  %2841 = load ptr, ptr %asic_funcs, align 8
  %wreg87.i662.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2841, i32 0, i32 58
  %2842 = ptrtoint ptr %wreg87.i662.i to i32
  call void @__asan_load4_noabort(i32 %2842)
  %2843 = load ptr, ptr %wreg87.i662.i, align 4
  tail call void %2843(ptr noundef %hdev, i32 noundef 14716804, i32 noundef 135299264) #2
  %2844 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2844)
  %2845 = load ptr, ptr %asic_funcs, align 8
  %wreg106.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2845, i32 0, i32 58
  %2846 = ptrtoint ptr %wreg106.i.i to i32
  call void @__asan_load4_noabort(i32 %2846)
  %2847 = load ptr, ptr %wreg106.i.i, align 4
  tail call void %2847(ptr noundef %hdev, i32 noundef 14716808, i32 noundef -4194053) #2
  %2848 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2848)
  %2849 = load ptr, ptr %asic_funcs, align 8
  %wreg121.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2849, i32 0, i32 58
  %2850 = ptrtoint ptr %wreg121.i.i to i32
  call void @__asan_load4_noabort(i32 %2850)
  %2851 = load ptr, ptr %wreg121.i.i, align 4
  tail call void %2851(ptr noundef %hdev, i32 noundef 14720896, i32 noundef -2048) #2
  %2852 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2852)
  %2853 = load ptr, ptr %asic_funcs, align 8
  %wreg138.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2853, i32 0, i32 58
  %2854 = ptrtoint ptr %wreg138.i.i to i32
  call void @__asan_load4_noabort(i32 %2854)
  %2855 = load ptr, ptr %wreg138.i.i, align 4
  tail call void %2855(ptr noundef %hdev, i32 noundef 14720900, i32 noundef 136286207) #2
  %2856 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2856)
  %2857 = load ptr, ptr %asic_funcs, align 8
  %wreg159.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2857, i32 0, i32 58
  %2858 = ptrtoint ptr %wreg159.i.i to i32
  call void @__asan_load4_noabort(i32 %2858)
  %2859 = load ptr, ptr %wreg159.i.i, align 4
  tail call void %2859(ptr noundef %hdev, i32 noundef 14720904, i32 noundef 1069547771) #2
  %2860 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2860)
  %2861 = load ptr, ptr %asic_funcs, align 8
  %wreg168.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2861, i32 0, i32 58
  %2862 = ptrtoint ptr %wreg168.i.i to i32
  call void @__asan_load4_noabort(i32 %2862)
  %2863 = load ptr, ptr %wreg168.i.i, align 4
  tail call void %2863(ptr noundef %hdev, i32 noundef 14720908, i32 noundef -16) #2
  br label %while.body.i2860.i.i

while.body.i2860.i.i:                             ; preds = %while.body.i2860.i.i.while.body.i2860.i.i_crit_edge, %goya_pb_set_block.exit2853.i.i
  %pb_addr.07.i2855.i.i = phi i32 [ 14946176, %goya_pb_set_block.exit2853.i.i ], [ %add1.i2857.i.i, %while.body.i2860.i.i.while.body.i2860.i.i_crit_edge ]
  %2864 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2864)
  %2865 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2856.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2865, i32 0, i32 58
  %2866 = ptrtoint ptr %wreg.i2856.i.i to i32
  call void @__asan_load4_noabort(i32 %2866)
  %2867 = load ptr, ptr %wreg.i2856.i.i, align 4
  tail call void %2867(ptr noundef %hdev, i32 noundef %pb_addr.07.i2855.i.i, i32 noundef 0) #2
  %add1.i2857.i.i = add nuw nsw i32 %pb_addr.07.i2855.i.i, 4
  %and.i2858.i.i = and i32 %add1.i2857.i.i, 4092
  %tobool.not.i2859.i.i = icmp eq i32 %and.i2858.i.i, 0
  br i1 %tobool.not.i2859.i.i, label %while.body.i2860.i.i.while.body.i2868.i.i_crit_edge, label %while.body.i2860.i.i.while.body.i2860.i.i_crit_edge

while.body.i2860.i.i.while.body.i2860.i.i_crit_edge: ; preds = %while.body.i2860.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2860.i.i

while.body.i2860.i.i.while.body.i2868.i.i_crit_edge: ; preds = %while.body.i2860.i.i
  br label %while.body.i2868.i.i

while.body.i2868.i.i:                             ; preds = %while.body.i2868.i.i.while.body.i2868.i.i_crit_edge, %while.body.i2860.i.i.while.body.i2868.i.i_crit_edge
  %pb_addr.07.i2863.i.i = phi i32 [ %add1.i2865.i.i, %while.body.i2868.i.i.while.body.i2868.i.i_crit_edge ], [ 14966656, %while.body.i2860.i.i.while.body.i2868.i.i_crit_edge ]
  %2868 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2868)
  %2869 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2864.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2869, i32 0, i32 58
  %2870 = ptrtoint ptr %wreg.i2864.i.i to i32
  call void @__asan_load4_noabort(i32 %2870)
  %2871 = load ptr, ptr %wreg.i2864.i.i, align 4
  tail call void %2871(ptr noundef %hdev, i32 noundef %pb_addr.07.i2863.i.i, i32 noundef 0) #2
  %add1.i2865.i.i = add nuw nsw i32 %pb_addr.07.i2863.i.i, 4
  %and.i2866.i.i = and i32 %add1.i2865.i.i, 4092
  %tobool.not.i2867.i.i = icmp eq i32 %and.i2866.i.i, 0
  br i1 %tobool.not.i2867.i.i, label %while.body.i2868.i.i.while.body.i2876.i.i_crit_edge, label %while.body.i2868.i.i.while.body.i2868.i.i_crit_edge

while.body.i2868.i.i.while.body.i2868.i.i_crit_edge: ; preds = %while.body.i2868.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2868.i.i

while.body.i2868.i.i.while.body.i2876.i.i_crit_edge: ; preds = %while.body.i2868.i.i
  br label %while.body.i2876.i.i

while.body.i2876.i.i:                             ; preds = %while.body.i2876.i.i.while.body.i2876.i.i_crit_edge, %while.body.i2868.i.i.while.body.i2876.i.i_crit_edge
  %pb_addr.07.i2871.i.i = phi i32 [ %add1.i2873.i.i, %while.body.i2876.i.i.while.body.i2876.i.i_crit_edge ], [ 14962560, %while.body.i2868.i.i.while.body.i2876.i.i_crit_edge ]
  %2872 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2872)
  %2873 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2872.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2873, i32 0, i32 58
  %2874 = ptrtoint ptr %wreg.i2872.i.i to i32
  call void @__asan_load4_noabort(i32 %2874)
  %2875 = load ptr, ptr %wreg.i2872.i.i, align 4
  tail call void %2875(ptr noundef %hdev, i32 noundef %pb_addr.07.i2871.i.i, i32 noundef 0) #2
  %add1.i2873.i.i = add nuw nsw i32 %pb_addr.07.i2871.i.i, 4
  %and.i2874.i.i = and i32 %add1.i2873.i.i, 4092
  %tobool.not.i2875.i.i = icmp eq i32 %and.i2874.i.i, 0
  br i1 %tobool.not.i2875.i.i, label %goya_pb_set_block.exit2877.i.i, label %while.body.i2876.i.i.while.body.i2876.i.i_crit_edge

while.body.i2876.i.i.while.body.i2876.i.i_crit_edge: ; preds = %while.body.i2876.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2876.i.i

goya_pb_set_block.exit2877.i.i:                   ; preds = %while.body.i2876.i.i
  %2876 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2876)
  %2877 = load ptr, ptr %asic_funcs, align 8
  %wreg176.i663.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2877, i32 0, i32 58
  %2878 = ptrtoint ptr %wreg176.i663.i to i32
  call void @__asan_load4_noabort(i32 %2878)
  %2879 = load ptr, ptr %wreg176.i663.i, align 4
  tail call void %2879(ptr noundef %hdev, i32 noundef 14970816, i32 noundef -157) #2
  %2880 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2880)
  %2881 = load ptr, ptr %asic_funcs, align 8
  %wreg188.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2881, i32 0, i32 58
  %2882 = ptrtoint ptr %wreg188.i.i to i32
  call void @__asan_load4_noabort(i32 %2882)
  %2883 = load ptr, ptr %wreg188.i.i, align 4
  tail call void %2883(ptr noundef %hdev, i32 noundef 14970816, i32 noundef -14716673) #2
  %2884 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2884)
  %2885 = load ptr, ptr %asic_funcs, align 8
  %wreg194.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2885, i32 0, i32 58
  %2886 = ptrtoint ptr %wreg194.i.i to i32
  call void @__asan_load4_noabort(i32 %2886)
  %2887 = load ptr, ptr %wreg194.i.i, align 4
  tail call void %2887(ptr noundef %hdev, i32 noundef 14970856, i32 noundef -193) #2
  %2888 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2888)
  %2889 = load ptr, ptr %asic_funcs, align 8
  %wreg210.i664.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2889, i32 0, i32 58
  %2890 = ptrtoint ptr %wreg210.i664.i to i32
  call void @__asan_load4_noabort(i32 %2890)
  %2891 = load ptr, ptr %wreg210.i664.i, align 4
  tail call void %2891(ptr noundef %hdev, i32 noundef 14970864, i32 noundef -4096) #2
  %2892 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2892)
  %2893 = load ptr, ptr %asic_funcs, align 8
  %wreg233.i665.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2893, i32 0, i32 58
  %2894 = ptrtoint ptr %wreg233.i665.i to i32
  call void @__asan_load4_noabort(i32 %2894)
  %2895 = load ptr, ptr %wreg233.i665.i, align 4
  tail call void %2895(ptr noundef %hdev, i32 noundef 14978944, i32 noundef 16775168) #2
  %2896 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2896)
  %2897 = load ptr, ptr %asic_funcs, align 8
  %wreg264.i666.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2897, i32 0, i32 58
  %2898 = ptrtoint ptr %wreg264.i666.i to i32
  call void @__asan_load4_noabort(i32 %2898)
  %2899 = load ptr, ptr %wreg264.i666.i, align 4
  tail call void %2899(ptr noundef %hdev, i32 noundef 14978948, i32 noundef 135299264) #2
  %2900 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2900)
  %2901 = load ptr, ptr %asic_funcs, align 8
  %wreg283.i667.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2901, i32 0, i32 58
  %2902 = ptrtoint ptr %wreg283.i667.i to i32
  call void @__asan_load4_noabort(i32 %2902)
  %2903 = load ptr, ptr %wreg283.i667.i, align 4
  tail call void %2903(ptr noundef %hdev, i32 noundef 14978952, i32 noundef -4194053) #2
  %2904 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2904)
  %2905 = load ptr, ptr %asic_funcs, align 8
  %wreg298.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2905, i32 0, i32 58
  %2906 = ptrtoint ptr %wreg298.i.i to i32
  call void @__asan_load4_noabort(i32 %2906)
  %2907 = load ptr, ptr %wreg298.i.i, align 4
  tail call void %2907(ptr noundef %hdev, i32 noundef 14983040, i32 noundef -2048) #2
  %2908 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2908)
  %2909 = load ptr, ptr %asic_funcs, align 8
  %wreg315.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2909, i32 0, i32 58
  %2910 = ptrtoint ptr %wreg315.i.i to i32
  call void @__asan_load4_noabort(i32 %2910)
  %2911 = load ptr, ptr %wreg315.i.i, align 4
  tail call void %2911(ptr noundef %hdev, i32 noundef 14983044, i32 noundef 136286207) #2
  %2912 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2912)
  %2913 = load ptr, ptr %asic_funcs, align 8
  %wreg336.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2913, i32 0, i32 58
  %2914 = ptrtoint ptr %wreg336.i.i to i32
  call void @__asan_load4_noabort(i32 %2914)
  %2915 = load ptr, ptr %wreg336.i.i, align 4
  tail call void %2915(ptr noundef %hdev, i32 noundef 14983048, i32 noundef 1069547771) #2
  %2916 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2916)
  %2917 = load ptr, ptr %asic_funcs, align 8
  %wreg345.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2917, i32 0, i32 58
  %2918 = ptrtoint ptr %wreg345.i.i to i32
  call void @__asan_load4_noabort(i32 %2918)
  %2919 = load ptr, ptr %wreg345.i.i, align 4
  tail call void %2919(ptr noundef %hdev, i32 noundef 14983052, i32 noundef -16) #2
  br label %while.body.i2884.i.i

while.body.i2884.i.i:                             ; preds = %while.body.i2884.i.i.while.body.i2884.i.i_crit_edge, %goya_pb_set_block.exit2877.i.i
  %pb_addr.07.i2879.i.i = phi i32 [ 15208320, %goya_pb_set_block.exit2877.i.i ], [ %add1.i2881.i.i, %while.body.i2884.i.i.while.body.i2884.i.i_crit_edge ]
  %2920 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2920)
  %2921 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2880.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2921, i32 0, i32 58
  %2922 = ptrtoint ptr %wreg.i2880.i.i to i32
  call void @__asan_load4_noabort(i32 %2922)
  %2923 = load ptr, ptr %wreg.i2880.i.i, align 4
  tail call void %2923(ptr noundef %hdev, i32 noundef %pb_addr.07.i2879.i.i, i32 noundef 0) #2
  %add1.i2881.i.i = add nuw nsw i32 %pb_addr.07.i2879.i.i, 4
  %and.i2882.i.i = and i32 %add1.i2881.i.i, 4092
  %tobool.not.i2883.i.i = icmp eq i32 %and.i2882.i.i, 0
  br i1 %tobool.not.i2883.i.i, label %while.body.i2884.i.i.while.body.i2892.i.i_crit_edge, label %while.body.i2884.i.i.while.body.i2884.i.i_crit_edge

while.body.i2884.i.i.while.body.i2884.i.i_crit_edge: ; preds = %while.body.i2884.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2884.i.i

while.body.i2884.i.i.while.body.i2892.i.i_crit_edge: ; preds = %while.body.i2884.i.i
  br label %while.body.i2892.i.i

while.body.i2892.i.i:                             ; preds = %while.body.i2892.i.i.while.body.i2892.i.i_crit_edge, %while.body.i2884.i.i.while.body.i2892.i.i_crit_edge
  %pb_addr.07.i2887.i.i = phi i32 [ %add1.i2889.i.i, %while.body.i2892.i.i.while.body.i2892.i.i_crit_edge ], [ 15224704, %while.body.i2884.i.i.while.body.i2892.i.i_crit_edge ]
  %2924 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2924)
  %2925 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2888.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2925, i32 0, i32 58
  %2926 = ptrtoint ptr %wreg.i2888.i.i to i32
  call void @__asan_load4_noabort(i32 %2926)
  %2927 = load ptr, ptr %wreg.i2888.i.i, align 4
  tail call void %2927(ptr noundef %hdev, i32 noundef %pb_addr.07.i2887.i.i, i32 noundef 0) #2
  %add1.i2889.i.i = add nuw nsw i32 %pb_addr.07.i2887.i.i, 4
  %and.i2890.i.i = and i32 %add1.i2889.i.i, 4092
  %tobool.not.i2891.i.i = icmp eq i32 %and.i2890.i.i, 0
  br i1 %tobool.not.i2891.i.i, label %while.body.i2892.i.i.while.body.i2900.i.i_crit_edge, label %while.body.i2892.i.i.while.body.i2892.i.i_crit_edge

while.body.i2892.i.i.while.body.i2892.i.i_crit_edge: ; preds = %while.body.i2892.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2892.i.i

while.body.i2892.i.i.while.body.i2900.i.i_crit_edge: ; preds = %while.body.i2892.i.i
  br label %while.body.i2900.i.i

while.body.i2900.i.i:                             ; preds = %while.body.i2900.i.i.while.body.i2900.i.i_crit_edge, %while.body.i2892.i.i.while.body.i2900.i.i_crit_edge
  %pb_addr.07.i2895.i.i = phi i32 [ %add1.i2897.i.i, %while.body.i2900.i.i.while.body.i2900.i.i_crit_edge ], [ 15228800, %while.body.i2892.i.i.while.body.i2900.i.i_crit_edge ]
  %2928 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2928)
  %2929 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2896.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2929, i32 0, i32 58
  %2930 = ptrtoint ptr %wreg.i2896.i.i to i32
  call void @__asan_load4_noabort(i32 %2930)
  %2931 = load ptr, ptr %wreg.i2896.i.i, align 4
  tail call void %2931(ptr noundef %hdev, i32 noundef %pb_addr.07.i2895.i.i, i32 noundef 0) #2
  %add1.i2897.i.i = add nuw nsw i32 %pb_addr.07.i2895.i.i, 4
  %and.i2898.i.i = and i32 %add1.i2897.i.i, 4092
  %tobool.not.i2899.i.i = icmp eq i32 %and.i2898.i.i, 0
  br i1 %tobool.not.i2899.i.i, label %goya_pb_set_block.exit2901.i.i, label %while.body.i2900.i.i.while.body.i2900.i.i_crit_edge

while.body.i2900.i.i.while.body.i2900.i.i_crit_edge: ; preds = %while.body.i2900.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2900.i.i

goya_pb_set_block.exit2901.i.i:                   ; preds = %while.body.i2900.i.i
  %2932 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2932)
  %2933 = load ptr, ptr %asic_funcs, align 8
  %wreg353.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2933, i32 0, i32 58
  %2934 = ptrtoint ptr %wreg353.i.i to i32
  call void @__asan_load4_noabort(i32 %2934)
  %2935 = load ptr, ptr %wreg353.i.i, align 4
  tail call void %2935(ptr noundef %hdev, i32 noundef 15232960, i32 noundef -157) #2
  %2936 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2936)
  %2937 = load ptr, ptr %asic_funcs, align 8
  %wreg365.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2937, i32 0, i32 58
  %2938 = ptrtoint ptr %wreg365.i.i to i32
  call void @__asan_load4_noabort(i32 %2938)
  %2939 = load ptr, ptr %wreg365.i.i, align 4
  tail call void %2939(ptr noundef %hdev, i32 noundef 15232960, i32 noundef -14716673) #2
  %2940 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2940)
  %2941 = load ptr, ptr %asic_funcs, align 8
  %wreg371.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2941, i32 0, i32 58
  %2942 = ptrtoint ptr %wreg371.i.i to i32
  call void @__asan_load4_noabort(i32 %2942)
  %2943 = load ptr, ptr %wreg371.i.i, align 4
  tail call void %2943(ptr noundef %hdev, i32 noundef 15233000, i32 noundef -193) #2
  %2944 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2944)
  %2945 = load ptr, ptr %asic_funcs, align 8
  %wreg387.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2945, i32 0, i32 58
  %2946 = ptrtoint ptr %wreg387.i.i to i32
  call void @__asan_load4_noabort(i32 %2946)
  %2947 = load ptr, ptr %wreg387.i.i, align 4
  tail call void %2947(ptr noundef %hdev, i32 noundef 15233008, i32 noundef -4096) #2
  %2948 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2948)
  %2949 = load ptr, ptr %asic_funcs, align 8
  %wreg410.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2949, i32 0, i32 58
  %2950 = ptrtoint ptr %wreg410.i.i to i32
  call void @__asan_load4_noabort(i32 %2950)
  %2951 = load ptr, ptr %wreg410.i.i, align 4
  tail call void %2951(ptr noundef %hdev, i32 noundef 15241088, i32 noundef 16775168) #2
  %2952 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2952)
  %2953 = load ptr, ptr %asic_funcs, align 8
  %wreg441.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2953, i32 0, i32 58
  %2954 = ptrtoint ptr %wreg441.i.i to i32
  call void @__asan_load4_noabort(i32 %2954)
  %2955 = load ptr, ptr %wreg441.i.i, align 4
  tail call void %2955(ptr noundef %hdev, i32 noundef 15241092, i32 noundef 135299264) #2
  %2956 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2956)
  %2957 = load ptr, ptr %asic_funcs, align 8
  %wreg460.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2957, i32 0, i32 58
  %2958 = ptrtoint ptr %wreg460.i.i to i32
  call void @__asan_load4_noabort(i32 %2958)
  %2959 = load ptr, ptr %wreg460.i.i, align 4
  tail call void %2959(ptr noundef %hdev, i32 noundef 15241096, i32 noundef -4194053) #2
  %2960 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2960)
  %2961 = load ptr, ptr %asic_funcs, align 8
  %wreg475.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2961, i32 0, i32 58
  %2962 = ptrtoint ptr %wreg475.i.i to i32
  call void @__asan_load4_noabort(i32 %2962)
  %2963 = load ptr, ptr %wreg475.i.i, align 4
  tail call void %2963(ptr noundef %hdev, i32 noundef 15245184, i32 noundef -2048) #2
  %2964 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2964)
  %2965 = load ptr, ptr %asic_funcs, align 8
  %wreg492.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2965, i32 0, i32 58
  %2966 = ptrtoint ptr %wreg492.i.i to i32
  call void @__asan_load4_noabort(i32 %2966)
  %2967 = load ptr, ptr %wreg492.i.i, align 4
  tail call void %2967(ptr noundef %hdev, i32 noundef 15245188, i32 noundef 136286207) #2
  %2968 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2968)
  %2969 = load ptr, ptr %asic_funcs, align 8
  %wreg513.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2969, i32 0, i32 58
  %2970 = ptrtoint ptr %wreg513.i.i to i32
  call void @__asan_load4_noabort(i32 %2970)
  %2971 = load ptr, ptr %wreg513.i.i, align 4
  tail call void %2971(ptr noundef %hdev, i32 noundef 15245192, i32 noundef 1069547771) #2
  %2972 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2972)
  %2973 = load ptr, ptr %asic_funcs, align 8
  %wreg522.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2973, i32 0, i32 58
  %2974 = ptrtoint ptr %wreg522.i.i to i32
  call void @__asan_load4_noabort(i32 %2974)
  %2975 = load ptr, ptr %wreg522.i.i, align 4
  tail call void %2975(ptr noundef %hdev, i32 noundef 15245196, i32 noundef -16) #2
  br label %while.body.i2908.i.i

while.body.i2908.i.i:                             ; preds = %while.body.i2908.i.i.while.body.i2908.i.i_crit_edge, %goya_pb_set_block.exit2901.i.i
  %pb_addr.07.i2903.i.i = phi i32 [ 15470464, %goya_pb_set_block.exit2901.i.i ], [ %add1.i2905.i.i, %while.body.i2908.i.i.while.body.i2908.i.i_crit_edge ]
  %2976 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2976)
  %2977 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2904.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2977, i32 0, i32 58
  %2978 = ptrtoint ptr %wreg.i2904.i.i to i32
  call void @__asan_load4_noabort(i32 %2978)
  %2979 = load ptr, ptr %wreg.i2904.i.i, align 4
  tail call void %2979(ptr noundef %hdev, i32 noundef %pb_addr.07.i2903.i.i, i32 noundef 0) #2
  %add1.i2905.i.i = add nuw nsw i32 %pb_addr.07.i2903.i.i, 4
  %and.i2906.i.i = and i32 %add1.i2905.i.i, 4092
  %tobool.not.i2907.i.i = icmp eq i32 %and.i2906.i.i, 0
  br i1 %tobool.not.i2907.i.i, label %while.body.i2908.i.i.while.body.i2916.i.i_crit_edge, label %while.body.i2908.i.i.while.body.i2908.i.i_crit_edge

while.body.i2908.i.i.while.body.i2908.i.i_crit_edge: ; preds = %while.body.i2908.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2908.i.i

while.body.i2908.i.i.while.body.i2916.i.i_crit_edge: ; preds = %while.body.i2908.i.i
  br label %while.body.i2916.i.i

while.body.i2916.i.i:                             ; preds = %while.body.i2916.i.i.while.body.i2916.i.i_crit_edge, %while.body.i2908.i.i.while.body.i2916.i.i_crit_edge
  %pb_addr.07.i2911.i.i = phi i32 [ %add1.i2913.i.i, %while.body.i2916.i.i.while.body.i2916.i.i_crit_edge ], [ 15486848, %while.body.i2908.i.i.while.body.i2916.i.i_crit_edge ]
  %2980 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2980)
  %2981 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2912.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2981, i32 0, i32 58
  %2982 = ptrtoint ptr %wreg.i2912.i.i to i32
  call void @__asan_load4_noabort(i32 %2982)
  %2983 = load ptr, ptr %wreg.i2912.i.i, align 4
  tail call void %2983(ptr noundef %hdev, i32 noundef %pb_addr.07.i2911.i.i, i32 noundef 0) #2
  %add1.i2913.i.i = add nuw nsw i32 %pb_addr.07.i2911.i.i, 4
  %and.i2914.i.i = and i32 %add1.i2913.i.i, 4092
  %tobool.not.i2915.i.i = icmp eq i32 %and.i2914.i.i, 0
  br i1 %tobool.not.i2915.i.i, label %while.body.i2916.i.i.while.body.i2924.i.i_crit_edge, label %while.body.i2916.i.i.while.body.i2916.i.i_crit_edge

while.body.i2916.i.i.while.body.i2916.i.i_crit_edge: ; preds = %while.body.i2916.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2916.i.i

while.body.i2916.i.i.while.body.i2924.i.i_crit_edge: ; preds = %while.body.i2916.i.i
  br label %while.body.i2924.i.i

while.body.i2924.i.i:                             ; preds = %while.body.i2924.i.i.while.body.i2924.i.i_crit_edge, %while.body.i2916.i.i.while.body.i2924.i.i_crit_edge
  %pb_addr.07.i2919.i.i = phi i32 [ %add1.i2921.i.i, %while.body.i2924.i.i.while.body.i2924.i.i_crit_edge ], [ 15490944, %while.body.i2916.i.i.while.body.i2924.i.i_crit_edge ]
  %2984 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2984)
  %2985 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2920.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2985, i32 0, i32 58
  %2986 = ptrtoint ptr %wreg.i2920.i.i to i32
  call void @__asan_load4_noabort(i32 %2986)
  %2987 = load ptr, ptr %wreg.i2920.i.i, align 4
  tail call void %2987(ptr noundef %hdev, i32 noundef %pb_addr.07.i2919.i.i, i32 noundef 0) #2
  %add1.i2921.i.i = add nuw nsw i32 %pb_addr.07.i2919.i.i, 4
  %and.i2922.i.i = and i32 %add1.i2921.i.i, 4092
  %tobool.not.i2923.i.i = icmp eq i32 %and.i2922.i.i, 0
  br i1 %tobool.not.i2923.i.i, label %goya_pb_set_block.exit2925.i.i, label %while.body.i2924.i.i.while.body.i2924.i.i_crit_edge

while.body.i2924.i.i.while.body.i2924.i.i_crit_edge: ; preds = %while.body.i2924.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2924.i.i

goya_pb_set_block.exit2925.i.i:                   ; preds = %while.body.i2924.i.i
  %2988 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2988)
  %2989 = load ptr, ptr %asic_funcs, align 8
  %wreg530.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2989, i32 0, i32 58
  %2990 = ptrtoint ptr %wreg530.i.i to i32
  call void @__asan_load4_noabort(i32 %2990)
  %2991 = load ptr, ptr %wreg530.i.i, align 4
  tail call void %2991(ptr noundef %hdev, i32 noundef 15495104, i32 noundef -157) #2
  %2992 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2992)
  %2993 = load ptr, ptr %asic_funcs, align 8
  %wreg542.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2993, i32 0, i32 58
  %2994 = ptrtoint ptr %wreg542.i.i to i32
  call void @__asan_load4_noabort(i32 %2994)
  %2995 = load ptr, ptr %wreg542.i.i, align 4
  tail call void %2995(ptr noundef %hdev, i32 noundef 15495104, i32 noundef -14716673) #2
  %2996 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2996)
  %2997 = load ptr, ptr %asic_funcs, align 8
  %wreg548.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2997, i32 0, i32 58
  %2998 = ptrtoint ptr %wreg548.i.i to i32
  call void @__asan_load4_noabort(i32 %2998)
  %2999 = load ptr, ptr %wreg548.i.i, align 4
  tail call void %2999(ptr noundef %hdev, i32 noundef 15495144, i32 noundef -193) #2
  %3000 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3000)
  %3001 = load ptr, ptr %asic_funcs, align 8
  %wreg564.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3001, i32 0, i32 58
  %3002 = ptrtoint ptr %wreg564.i.i to i32
  call void @__asan_load4_noabort(i32 %3002)
  %3003 = load ptr, ptr %wreg564.i.i, align 4
  tail call void %3003(ptr noundef %hdev, i32 noundef 15495152, i32 noundef -4096) #2
  %3004 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3004)
  %3005 = load ptr, ptr %asic_funcs, align 8
  %wreg587.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3005, i32 0, i32 58
  %3006 = ptrtoint ptr %wreg587.i.i to i32
  call void @__asan_load4_noabort(i32 %3006)
  %3007 = load ptr, ptr %wreg587.i.i, align 4
  tail call void %3007(ptr noundef %hdev, i32 noundef 15503232, i32 noundef 16775168) #2
  %3008 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3008)
  %3009 = load ptr, ptr %asic_funcs, align 8
  %wreg618.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3009, i32 0, i32 58
  %3010 = ptrtoint ptr %wreg618.i.i to i32
  call void @__asan_load4_noabort(i32 %3010)
  %3011 = load ptr, ptr %wreg618.i.i, align 4
  tail call void %3011(ptr noundef %hdev, i32 noundef 15503236, i32 noundef 135299264) #2
  %3012 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3012)
  %3013 = load ptr, ptr %asic_funcs, align 8
  %wreg637.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3013, i32 0, i32 58
  %3014 = ptrtoint ptr %wreg637.i.i to i32
  call void @__asan_load4_noabort(i32 %3014)
  %3015 = load ptr, ptr %wreg637.i.i, align 4
  tail call void %3015(ptr noundef %hdev, i32 noundef 15503240, i32 noundef -4194053) #2
  %3016 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3016)
  %3017 = load ptr, ptr %asic_funcs, align 8
  %wreg652.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3017, i32 0, i32 58
  %3018 = ptrtoint ptr %wreg652.i.i to i32
  call void @__asan_load4_noabort(i32 %3018)
  %3019 = load ptr, ptr %wreg652.i.i, align 4
  tail call void %3019(ptr noundef %hdev, i32 noundef 15507328, i32 noundef -2048) #2
  %3020 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3020)
  %3021 = load ptr, ptr %asic_funcs, align 8
  %wreg669.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3021, i32 0, i32 58
  %3022 = ptrtoint ptr %wreg669.i.i to i32
  call void @__asan_load4_noabort(i32 %3022)
  %3023 = load ptr, ptr %wreg669.i.i, align 4
  tail call void %3023(ptr noundef %hdev, i32 noundef 15507332, i32 noundef 136286207) #2
  %3024 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3024)
  %3025 = load ptr, ptr %asic_funcs, align 8
  %wreg690.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3025, i32 0, i32 58
  %3026 = ptrtoint ptr %wreg690.i.i to i32
  call void @__asan_load4_noabort(i32 %3026)
  %3027 = load ptr, ptr %wreg690.i.i, align 4
  tail call void %3027(ptr noundef %hdev, i32 noundef 15507336, i32 noundef 1069547771) #2
  %3028 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3028)
  %3029 = load ptr, ptr %asic_funcs, align 8
  %wreg699.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3029, i32 0, i32 58
  %3030 = ptrtoint ptr %wreg699.i.i to i32
  call void @__asan_load4_noabort(i32 %3030)
  %3031 = load ptr, ptr %wreg699.i.i, align 4
  tail call void %3031(ptr noundef %hdev, i32 noundef 15507340, i32 noundef -16) #2
  br label %while.body.i2932.i.i

while.body.i2932.i.i:                             ; preds = %while.body.i2932.i.i.while.body.i2932.i.i_crit_edge, %goya_pb_set_block.exit2925.i.i
  %pb_addr.07.i2927.i.i = phi i32 [ 15732608, %goya_pb_set_block.exit2925.i.i ], [ %add1.i2929.i.i, %while.body.i2932.i.i.while.body.i2932.i.i_crit_edge ]
  %3032 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3032)
  %3033 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2928.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3033, i32 0, i32 58
  %3034 = ptrtoint ptr %wreg.i2928.i.i to i32
  call void @__asan_load4_noabort(i32 %3034)
  %3035 = load ptr, ptr %wreg.i2928.i.i, align 4
  tail call void %3035(ptr noundef %hdev, i32 noundef %pb_addr.07.i2927.i.i, i32 noundef 0) #2
  %add1.i2929.i.i = add nuw nsw i32 %pb_addr.07.i2927.i.i, 4
  %and.i2930.i.i = and i32 %add1.i2929.i.i, 4092
  %tobool.not.i2931.i.i = icmp eq i32 %and.i2930.i.i, 0
  br i1 %tobool.not.i2931.i.i, label %while.body.i2932.i.i.while.body.i2940.i.i_crit_edge, label %while.body.i2932.i.i.while.body.i2932.i.i_crit_edge

while.body.i2932.i.i.while.body.i2932.i.i_crit_edge: ; preds = %while.body.i2932.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2932.i.i

while.body.i2932.i.i.while.body.i2940.i.i_crit_edge: ; preds = %while.body.i2932.i.i
  br label %while.body.i2940.i.i

while.body.i2940.i.i:                             ; preds = %while.body.i2940.i.i.while.body.i2940.i.i_crit_edge, %while.body.i2932.i.i.while.body.i2940.i.i_crit_edge
  %pb_addr.07.i2935.i.i = phi i32 [ %add1.i2937.i.i, %while.body.i2940.i.i.while.body.i2940.i.i_crit_edge ], [ 15748992, %while.body.i2932.i.i.while.body.i2940.i.i_crit_edge ]
  %3036 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3036)
  %3037 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2936.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3037, i32 0, i32 58
  %3038 = ptrtoint ptr %wreg.i2936.i.i to i32
  call void @__asan_load4_noabort(i32 %3038)
  %3039 = load ptr, ptr %wreg.i2936.i.i, align 4
  tail call void %3039(ptr noundef %hdev, i32 noundef %pb_addr.07.i2935.i.i, i32 noundef 0) #2
  %add1.i2937.i.i = add nuw nsw i32 %pb_addr.07.i2935.i.i, 4
  %and.i2938.i.i = and i32 %add1.i2937.i.i, 4092
  %tobool.not.i2939.i.i = icmp eq i32 %and.i2938.i.i, 0
  br i1 %tobool.not.i2939.i.i, label %while.body.i2940.i.i.while.body.i2948.i.i_crit_edge, label %while.body.i2940.i.i.while.body.i2940.i.i_crit_edge

while.body.i2940.i.i.while.body.i2940.i.i_crit_edge: ; preds = %while.body.i2940.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2940.i.i

while.body.i2940.i.i.while.body.i2948.i.i_crit_edge: ; preds = %while.body.i2940.i.i
  br label %while.body.i2948.i.i

while.body.i2948.i.i:                             ; preds = %while.body.i2948.i.i.while.body.i2948.i.i_crit_edge, %while.body.i2940.i.i.while.body.i2948.i.i_crit_edge
  %pb_addr.07.i2943.i.i = phi i32 [ %add1.i2945.i.i, %while.body.i2948.i.i.while.body.i2948.i.i_crit_edge ], [ 15753088, %while.body.i2940.i.i.while.body.i2948.i.i_crit_edge ]
  %3040 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3040)
  %3041 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2944.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3041, i32 0, i32 58
  %3042 = ptrtoint ptr %wreg.i2944.i.i to i32
  call void @__asan_load4_noabort(i32 %3042)
  %3043 = load ptr, ptr %wreg.i2944.i.i, align 4
  tail call void %3043(ptr noundef %hdev, i32 noundef %pb_addr.07.i2943.i.i, i32 noundef 0) #2
  %add1.i2945.i.i = add nuw nsw i32 %pb_addr.07.i2943.i.i, 4
  %and.i2946.i.i = and i32 %add1.i2945.i.i, 4092
  %tobool.not.i2947.i.i = icmp eq i32 %and.i2946.i.i, 0
  br i1 %tobool.not.i2947.i.i, label %goya_pb_set_block.exit2949.i.i, label %while.body.i2948.i.i.while.body.i2948.i.i_crit_edge

while.body.i2948.i.i.while.body.i2948.i.i_crit_edge: ; preds = %while.body.i2948.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2948.i.i

goya_pb_set_block.exit2949.i.i:                   ; preds = %while.body.i2948.i.i
  %3044 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3044)
  %3045 = load ptr, ptr %asic_funcs, align 8
  %wreg707.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3045, i32 0, i32 58
  %3046 = ptrtoint ptr %wreg707.i.i to i32
  call void @__asan_load4_noabort(i32 %3046)
  %3047 = load ptr, ptr %wreg707.i.i, align 4
  tail call void %3047(ptr noundef %hdev, i32 noundef 15757248, i32 noundef -157) #2
  %3048 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3048)
  %3049 = load ptr, ptr %asic_funcs, align 8
  %wreg719.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3049, i32 0, i32 58
  %3050 = ptrtoint ptr %wreg719.i.i to i32
  call void @__asan_load4_noabort(i32 %3050)
  %3051 = load ptr, ptr %wreg719.i.i, align 4
  tail call void %3051(ptr noundef %hdev, i32 noundef 15757248, i32 noundef -14716673) #2
  %3052 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3052)
  %3053 = load ptr, ptr %asic_funcs, align 8
  %wreg725.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3053, i32 0, i32 58
  %3054 = ptrtoint ptr %wreg725.i.i to i32
  call void @__asan_load4_noabort(i32 %3054)
  %3055 = load ptr, ptr %wreg725.i.i, align 4
  tail call void %3055(ptr noundef %hdev, i32 noundef 15757288, i32 noundef -193) #2
  %3056 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3056)
  %3057 = load ptr, ptr %asic_funcs, align 8
  %wreg741.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3057, i32 0, i32 58
  %3058 = ptrtoint ptr %wreg741.i.i to i32
  call void @__asan_load4_noabort(i32 %3058)
  %3059 = load ptr, ptr %wreg741.i.i, align 4
  tail call void %3059(ptr noundef %hdev, i32 noundef 15757296, i32 noundef -4096) #2
  %3060 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3060)
  %3061 = load ptr, ptr %asic_funcs, align 8
  %wreg764.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3061, i32 0, i32 58
  %3062 = ptrtoint ptr %wreg764.i.i to i32
  call void @__asan_load4_noabort(i32 %3062)
  %3063 = load ptr, ptr %wreg764.i.i, align 4
  tail call void %3063(ptr noundef %hdev, i32 noundef 15765376, i32 noundef 16775168) #2
  %3064 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3064)
  %3065 = load ptr, ptr %asic_funcs, align 8
  %wreg795.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3065, i32 0, i32 58
  %3066 = ptrtoint ptr %wreg795.i.i to i32
  call void @__asan_load4_noabort(i32 %3066)
  %3067 = load ptr, ptr %wreg795.i.i, align 4
  tail call void %3067(ptr noundef %hdev, i32 noundef 15765380, i32 noundef 135299264) #2
  %3068 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3068)
  %3069 = load ptr, ptr %asic_funcs, align 8
  %wreg814.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3069, i32 0, i32 58
  %3070 = ptrtoint ptr %wreg814.i.i to i32
  call void @__asan_load4_noabort(i32 %3070)
  %3071 = load ptr, ptr %wreg814.i.i, align 4
  tail call void %3071(ptr noundef %hdev, i32 noundef 15765384, i32 noundef -4194053) #2
  %3072 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3072)
  %3073 = load ptr, ptr %asic_funcs, align 8
  %wreg829.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3073, i32 0, i32 58
  %3074 = ptrtoint ptr %wreg829.i.i to i32
  call void @__asan_load4_noabort(i32 %3074)
  %3075 = load ptr, ptr %wreg829.i.i, align 4
  tail call void %3075(ptr noundef %hdev, i32 noundef 15769472, i32 noundef -2048) #2
  %3076 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3076)
  %3077 = load ptr, ptr %asic_funcs, align 8
  %wreg846.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3077, i32 0, i32 58
  %3078 = ptrtoint ptr %wreg846.i.i to i32
  call void @__asan_load4_noabort(i32 %3078)
  %3079 = load ptr, ptr %wreg846.i.i, align 4
  tail call void %3079(ptr noundef %hdev, i32 noundef 15769476, i32 noundef 136286207) #2
  %3080 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3080)
  %3081 = load ptr, ptr %asic_funcs, align 8
  %wreg867.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3081, i32 0, i32 58
  %3082 = ptrtoint ptr %wreg867.i.i to i32
  call void @__asan_load4_noabort(i32 %3082)
  %3083 = load ptr, ptr %wreg867.i.i, align 4
  tail call void %3083(ptr noundef %hdev, i32 noundef 15769480, i32 noundef 1069547771) #2
  %3084 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3084)
  %3085 = load ptr, ptr %asic_funcs, align 8
  %wreg876.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3085, i32 0, i32 58
  %3086 = ptrtoint ptr %wreg876.i.i to i32
  call void @__asan_load4_noabort(i32 %3086)
  %3087 = load ptr, ptr %wreg876.i.i, align 4
  tail call void %3087(ptr noundef %hdev, i32 noundef 15769484, i32 noundef -16) #2
  br label %while.body.i2956.i.i

while.body.i2956.i.i:                             ; preds = %while.body.i2956.i.i.while.body.i2956.i.i_crit_edge, %goya_pb_set_block.exit2949.i.i
  %pb_addr.07.i2951.i.i = phi i32 [ 15994752, %goya_pb_set_block.exit2949.i.i ], [ %add1.i2953.i.i, %while.body.i2956.i.i.while.body.i2956.i.i_crit_edge ]
  %3088 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3088)
  %3089 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2952.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3089, i32 0, i32 58
  %3090 = ptrtoint ptr %wreg.i2952.i.i to i32
  call void @__asan_load4_noabort(i32 %3090)
  %3091 = load ptr, ptr %wreg.i2952.i.i, align 4
  tail call void %3091(ptr noundef %hdev, i32 noundef %pb_addr.07.i2951.i.i, i32 noundef 0) #2
  %add1.i2953.i.i = add nuw nsw i32 %pb_addr.07.i2951.i.i, 4
  %and.i2954.i.i = and i32 %add1.i2953.i.i, 4092
  %tobool.not.i2955.i.i = icmp eq i32 %and.i2954.i.i, 0
  br i1 %tobool.not.i2955.i.i, label %while.body.i2956.i.i.while.body.i2964.i.i_crit_edge, label %while.body.i2956.i.i.while.body.i2956.i.i_crit_edge

while.body.i2956.i.i.while.body.i2956.i.i_crit_edge: ; preds = %while.body.i2956.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2956.i.i

while.body.i2956.i.i.while.body.i2964.i.i_crit_edge: ; preds = %while.body.i2956.i.i
  br label %while.body.i2964.i.i

while.body.i2964.i.i:                             ; preds = %while.body.i2964.i.i.while.body.i2964.i.i_crit_edge, %while.body.i2956.i.i.while.body.i2964.i.i_crit_edge
  %pb_addr.07.i2959.i.i = phi i32 [ %add1.i2961.i.i, %while.body.i2964.i.i.while.body.i2964.i.i_crit_edge ], [ 16011136, %while.body.i2956.i.i.while.body.i2964.i.i_crit_edge ]
  %3092 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3092)
  %3093 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2960.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3093, i32 0, i32 58
  %3094 = ptrtoint ptr %wreg.i2960.i.i to i32
  call void @__asan_load4_noabort(i32 %3094)
  %3095 = load ptr, ptr %wreg.i2960.i.i, align 4
  tail call void %3095(ptr noundef %hdev, i32 noundef %pb_addr.07.i2959.i.i, i32 noundef 0) #2
  %add1.i2961.i.i = add nuw nsw i32 %pb_addr.07.i2959.i.i, 4
  %and.i2962.i.i = and i32 %add1.i2961.i.i, 4092
  %tobool.not.i2963.i.i = icmp eq i32 %and.i2962.i.i, 0
  br i1 %tobool.not.i2963.i.i, label %while.body.i2964.i.i.while.body.i2972.i.i_crit_edge, label %while.body.i2964.i.i.while.body.i2964.i.i_crit_edge

while.body.i2964.i.i.while.body.i2964.i.i_crit_edge: ; preds = %while.body.i2964.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2964.i.i

while.body.i2964.i.i.while.body.i2972.i.i_crit_edge: ; preds = %while.body.i2964.i.i
  br label %while.body.i2972.i.i

while.body.i2972.i.i:                             ; preds = %while.body.i2972.i.i.while.body.i2972.i.i_crit_edge, %while.body.i2964.i.i.while.body.i2972.i.i_crit_edge
  %pb_addr.07.i2967.i.i = phi i32 [ %add1.i2969.i.i, %while.body.i2972.i.i.while.body.i2972.i.i_crit_edge ], [ 16015232, %while.body.i2964.i.i.while.body.i2972.i.i_crit_edge ]
  %3096 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3096)
  %3097 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2968.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3097, i32 0, i32 58
  %3098 = ptrtoint ptr %wreg.i2968.i.i to i32
  call void @__asan_load4_noabort(i32 %3098)
  %3099 = load ptr, ptr %wreg.i2968.i.i, align 4
  tail call void %3099(ptr noundef %hdev, i32 noundef %pb_addr.07.i2967.i.i, i32 noundef 0) #2
  %add1.i2969.i.i = add nuw nsw i32 %pb_addr.07.i2967.i.i, 4
  %and.i2970.i.i = and i32 %add1.i2969.i.i, 4092
  %tobool.not.i2971.i.i = icmp eq i32 %and.i2970.i.i, 0
  br i1 %tobool.not.i2971.i.i, label %goya_pb_set_block.exit2973.i.i, label %while.body.i2972.i.i.while.body.i2972.i.i_crit_edge

while.body.i2972.i.i.while.body.i2972.i.i_crit_edge: ; preds = %while.body.i2972.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2972.i.i

goya_pb_set_block.exit2973.i.i:                   ; preds = %while.body.i2972.i.i
  %3100 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3100)
  %3101 = load ptr, ptr %asic_funcs, align 8
  %wreg884.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3101, i32 0, i32 58
  %3102 = ptrtoint ptr %wreg884.i.i to i32
  call void @__asan_load4_noabort(i32 %3102)
  %3103 = load ptr, ptr %wreg884.i.i, align 4
  tail call void %3103(ptr noundef %hdev, i32 noundef 16019392, i32 noundef -157) #2
  %3104 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3104)
  %3105 = load ptr, ptr %asic_funcs, align 8
  %wreg896.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3105, i32 0, i32 58
  %3106 = ptrtoint ptr %wreg896.i.i to i32
  call void @__asan_load4_noabort(i32 %3106)
  %3107 = load ptr, ptr %wreg896.i.i, align 4
  tail call void %3107(ptr noundef %hdev, i32 noundef 16019392, i32 noundef -14716673) #2
  %3108 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3108)
  %3109 = load ptr, ptr %asic_funcs, align 8
  %wreg902.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3109, i32 0, i32 58
  %3110 = ptrtoint ptr %wreg902.i.i to i32
  call void @__asan_load4_noabort(i32 %3110)
  %3111 = load ptr, ptr %wreg902.i.i, align 4
  tail call void %3111(ptr noundef %hdev, i32 noundef 16019432, i32 noundef -193) #2
  %3112 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3112)
  %3113 = load ptr, ptr %asic_funcs, align 8
  %wreg918.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3113, i32 0, i32 58
  %3114 = ptrtoint ptr %wreg918.i.i to i32
  call void @__asan_load4_noabort(i32 %3114)
  %3115 = load ptr, ptr %wreg918.i.i, align 4
  tail call void %3115(ptr noundef %hdev, i32 noundef 16019440, i32 noundef -4096) #2
  %3116 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3116)
  %3117 = load ptr, ptr %asic_funcs, align 8
  %wreg941.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3117, i32 0, i32 58
  %3118 = ptrtoint ptr %wreg941.i.i to i32
  call void @__asan_load4_noabort(i32 %3118)
  %3119 = load ptr, ptr %wreg941.i.i, align 4
  tail call void %3119(ptr noundef %hdev, i32 noundef 16027520, i32 noundef 16775168) #2
  %3120 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3120)
  %3121 = load ptr, ptr %asic_funcs, align 8
  %wreg972.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3121, i32 0, i32 58
  %3122 = ptrtoint ptr %wreg972.i.i to i32
  call void @__asan_load4_noabort(i32 %3122)
  %3123 = load ptr, ptr %wreg972.i.i, align 4
  tail call void %3123(ptr noundef %hdev, i32 noundef 16027524, i32 noundef 135299264) #2
  %3124 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3124)
  %3125 = load ptr, ptr %asic_funcs, align 8
  %wreg991.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3125, i32 0, i32 58
  %3126 = ptrtoint ptr %wreg991.i.i to i32
  call void @__asan_load4_noabort(i32 %3126)
  %3127 = load ptr, ptr %wreg991.i.i, align 4
  tail call void %3127(ptr noundef %hdev, i32 noundef 16027528, i32 noundef -4194053) #2
  %3128 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3128)
  %3129 = load ptr, ptr %asic_funcs, align 8
  %wreg1006.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3129, i32 0, i32 58
  %3130 = ptrtoint ptr %wreg1006.i.i to i32
  call void @__asan_load4_noabort(i32 %3130)
  %3131 = load ptr, ptr %wreg1006.i.i, align 4
  tail call void %3131(ptr noundef %hdev, i32 noundef 16031616, i32 noundef -2048) #2
  %3132 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3132)
  %3133 = load ptr, ptr %asic_funcs, align 8
  %wreg1023.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3133, i32 0, i32 58
  %3134 = ptrtoint ptr %wreg1023.i.i to i32
  call void @__asan_load4_noabort(i32 %3134)
  %3135 = load ptr, ptr %wreg1023.i.i, align 4
  tail call void %3135(ptr noundef %hdev, i32 noundef 16031620, i32 noundef 136286207) #2
  %3136 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3136)
  %3137 = load ptr, ptr %asic_funcs, align 8
  %wreg1044.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3137, i32 0, i32 58
  %3138 = ptrtoint ptr %wreg1044.i.i to i32
  call void @__asan_load4_noabort(i32 %3138)
  %3139 = load ptr, ptr %wreg1044.i.i, align 4
  tail call void %3139(ptr noundef %hdev, i32 noundef 16031624, i32 noundef 1069547771) #2
  %3140 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3140)
  %3141 = load ptr, ptr %asic_funcs, align 8
  %wreg1053.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3141, i32 0, i32 58
  %3142 = ptrtoint ptr %wreg1053.i.i to i32
  call void @__asan_load4_noabort(i32 %3142)
  %3143 = load ptr, ptr %wreg1053.i.i, align 4
  tail call void %3143(ptr noundef %hdev, i32 noundef 16031628, i32 noundef -16) #2
  br label %while.body.i2980.i.i

while.body.i2980.i.i:                             ; preds = %while.body.i2980.i.i.while.body.i2980.i.i_crit_edge, %goya_pb_set_block.exit2973.i.i
  %pb_addr.07.i2975.i.i = phi i32 [ 16256896, %goya_pb_set_block.exit2973.i.i ], [ %add1.i2977.i.i, %while.body.i2980.i.i.while.body.i2980.i.i_crit_edge ]
  %3144 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3144)
  %3145 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2976.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3145, i32 0, i32 58
  %3146 = ptrtoint ptr %wreg.i2976.i.i to i32
  call void @__asan_load4_noabort(i32 %3146)
  %3147 = load ptr, ptr %wreg.i2976.i.i, align 4
  tail call void %3147(ptr noundef %hdev, i32 noundef %pb_addr.07.i2975.i.i, i32 noundef 0) #2
  %add1.i2977.i.i = add nuw nsw i32 %pb_addr.07.i2975.i.i, 4
  %and.i2978.i.i = and i32 %add1.i2977.i.i, 4092
  %tobool.not.i2979.i.i = icmp eq i32 %and.i2978.i.i, 0
  br i1 %tobool.not.i2979.i.i, label %while.body.i2980.i.i.while.body.i2988.i.i_crit_edge, label %while.body.i2980.i.i.while.body.i2980.i.i_crit_edge

while.body.i2980.i.i.while.body.i2980.i.i_crit_edge: ; preds = %while.body.i2980.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2980.i.i

while.body.i2980.i.i.while.body.i2988.i.i_crit_edge: ; preds = %while.body.i2980.i.i
  br label %while.body.i2988.i.i

while.body.i2988.i.i:                             ; preds = %while.body.i2988.i.i.while.body.i2988.i.i_crit_edge, %while.body.i2980.i.i.while.body.i2988.i.i_crit_edge
  %pb_addr.07.i2983.i.i = phi i32 [ %add1.i2985.i.i, %while.body.i2988.i.i.while.body.i2988.i.i_crit_edge ], [ 16273280, %while.body.i2980.i.i.while.body.i2988.i.i_crit_edge ]
  %3148 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3148)
  %3149 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2984.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3149, i32 0, i32 58
  %3150 = ptrtoint ptr %wreg.i2984.i.i to i32
  call void @__asan_load4_noabort(i32 %3150)
  %3151 = load ptr, ptr %wreg.i2984.i.i, align 4
  tail call void %3151(ptr noundef %hdev, i32 noundef %pb_addr.07.i2983.i.i, i32 noundef 0) #2
  %add1.i2985.i.i = add nuw nsw i32 %pb_addr.07.i2983.i.i, 4
  %and.i2986.i.i = and i32 %add1.i2985.i.i, 4092
  %tobool.not.i2987.i.i = icmp eq i32 %and.i2986.i.i, 0
  br i1 %tobool.not.i2987.i.i, label %while.body.i2988.i.i.while.body.i2996.i.i_crit_edge, label %while.body.i2988.i.i.while.body.i2988.i.i_crit_edge

while.body.i2988.i.i.while.body.i2988.i.i_crit_edge: ; preds = %while.body.i2988.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2988.i.i

while.body.i2988.i.i.while.body.i2996.i.i_crit_edge: ; preds = %while.body.i2988.i.i
  br label %while.body.i2996.i.i

while.body.i2996.i.i:                             ; preds = %while.body.i2996.i.i.while.body.i2996.i.i_crit_edge, %while.body.i2988.i.i.while.body.i2996.i.i_crit_edge
  %pb_addr.07.i2991.i.i = phi i32 [ %add1.i2993.i.i, %while.body.i2996.i.i.while.body.i2996.i.i_crit_edge ], [ 16277376, %while.body.i2988.i.i.while.body.i2996.i.i_crit_edge ]
  %3152 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3152)
  %3153 = load ptr, ptr %asic_funcs, align 8
  %wreg.i2992.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3153, i32 0, i32 58
  %3154 = ptrtoint ptr %wreg.i2992.i.i to i32
  call void @__asan_load4_noabort(i32 %3154)
  %3155 = load ptr, ptr %wreg.i2992.i.i, align 4
  tail call void %3155(ptr noundef %hdev, i32 noundef %pb_addr.07.i2991.i.i, i32 noundef 0) #2
  %add1.i2993.i.i = add nuw nsw i32 %pb_addr.07.i2991.i.i, 4
  %and.i2994.i.i = and i32 %add1.i2993.i.i, 4092
  %tobool.not.i2995.i.i = icmp eq i32 %and.i2994.i.i, 0
  br i1 %tobool.not.i2995.i.i, label %goya_pb_set_block.exit2997.i.i, label %while.body.i2996.i.i.while.body.i2996.i.i_crit_edge

while.body.i2996.i.i.while.body.i2996.i.i_crit_edge: ; preds = %while.body.i2996.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i2996.i.i

goya_pb_set_block.exit2997.i.i:                   ; preds = %while.body.i2996.i.i
  %3156 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3156)
  %3157 = load ptr, ptr %asic_funcs, align 8
  %wreg1061.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3157, i32 0, i32 58
  %3158 = ptrtoint ptr %wreg1061.i.i to i32
  call void @__asan_load4_noabort(i32 %3158)
  %3159 = load ptr, ptr %wreg1061.i.i, align 4
  tail call void %3159(ptr noundef %hdev, i32 noundef 16281536, i32 noundef -157) #2
  %3160 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3160)
  %3161 = load ptr, ptr %asic_funcs, align 8
  %wreg1073.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3161, i32 0, i32 58
  %3162 = ptrtoint ptr %wreg1073.i.i to i32
  call void @__asan_load4_noabort(i32 %3162)
  %3163 = load ptr, ptr %wreg1073.i.i, align 4
  tail call void %3163(ptr noundef %hdev, i32 noundef 16281536, i32 noundef -14716673) #2
  %3164 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3164)
  %3165 = load ptr, ptr %asic_funcs, align 8
  %wreg1079.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3165, i32 0, i32 58
  %3166 = ptrtoint ptr %wreg1079.i.i to i32
  call void @__asan_load4_noabort(i32 %3166)
  %3167 = load ptr, ptr %wreg1079.i.i, align 4
  tail call void %3167(ptr noundef %hdev, i32 noundef 16281576, i32 noundef -193) #2
  %3168 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3168)
  %3169 = load ptr, ptr %asic_funcs, align 8
  %wreg1095.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3169, i32 0, i32 58
  %3170 = ptrtoint ptr %wreg1095.i.i to i32
  call void @__asan_load4_noabort(i32 %3170)
  %3171 = load ptr, ptr %wreg1095.i.i, align 4
  tail call void %3171(ptr noundef %hdev, i32 noundef 16281584, i32 noundef -4096) #2
  %3172 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3172)
  %3173 = load ptr, ptr %asic_funcs, align 8
  %wreg1118.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3173, i32 0, i32 58
  %3174 = ptrtoint ptr %wreg1118.i.i to i32
  call void @__asan_load4_noabort(i32 %3174)
  %3175 = load ptr, ptr %wreg1118.i.i, align 4
  tail call void %3175(ptr noundef %hdev, i32 noundef 16289664, i32 noundef 16775168) #2
  %3176 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3176)
  %3177 = load ptr, ptr %asic_funcs, align 8
  %wreg1149.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3177, i32 0, i32 58
  %3178 = ptrtoint ptr %wreg1149.i.i to i32
  call void @__asan_load4_noabort(i32 %3178)
  %3179 = load ptr, ptr %wreg1149.i.i, align 4
  tail call void %3179(ptr noundef %hdev, i32 noundef 16289668, i32 noundef 135299264) #2
  %3180 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3180)
  %3181 = load ptr, ptr %asic_funcs, align 8
  %wreg1168.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3181, i32 0, i32 58
  %3182 = ptrtoint ptr %wreg1168.i.i to i32
  call void @__asan_load4_noabort(i32 %3182)
  %3183 = load ptr, ptr %wreg1168.i.i, align 4
  tail call void %3183(ptr noundef %hdev, i32 noundef 16289672, i32 noundef -4194053) #2
  %3184 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3184)
  %3185 = load ptr, ptr %asic_funcs, align 8
  %wreg1183.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3185, i32 0, i32 58
  %3186 = ptrtoint ptr %wreg1183.i.i to i32
  call void @__asan_load4_noabort(i32 %3186)
  %3187 = load ptr, ptr %wreg1183.i.i, align 4
  tail call void %3187(ptr noundef %hdev, i32 noundef 16293760, i32 noundef -2048) #2
  %3188 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3188)
  %3189 = load ptr, ptr %asic_funcs, align 8
  %wreg1200.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3189, i32 0, i32 58
  %3190 = ptrtoint ptr %wreg1200.i.i to i32
  call void @__asan_load4_noabort(i32 %3190)
  %3191 = load ptr, ptr %wreg1200.i.i, align 4
  tail call void %3191(ptr noundef %hdev, i32 noundef 16293764, i32 noundef 136286207) #2
  %3192 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3192)
  %3193 = load ptr, ptr %asic_funcs, align 8
  %wreg1221.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3193, i32 0, i32 58
  %3194 = ptrtoint ptr %wreg1221.i.i to i32
  call void @__asan_load4_noabort(i32 %3194)
  %3195 = load ptr, ptr %wreg1221.i.i, align 4
  tail call void %3195(ptr noundef %hdev, i32 noundef 16293768, i32 noundef 1069547771) #2
  %3196 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3196)
  %3197 = load ptr, ptr %asic_funcs, align 8
  %wreg1230.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3197, i32 0, i32 58
  %3198 = ptrtoint ptr %wreg1230.i.i to i32
  call void @__asan_load4_noabort(i32 %3198)
  %3199 = load ptr, ptr %wreg1230.i.i, align 4
  tail call void %3199(ptr noundef %hdev, i32 noundef 16293772, i32 noundef -16) #2
  br label %while.body.i3004.i.i

while.body.i3004.i.i:                             ; preds = %while.body.i3004.i.i.while.body.i3004.i.i_crit_edge, %goya_pb_set_block.exit2997.i.i
  %pb_addr.07.i2999.i.i = phi i32 [ 16519040, %goya_pb_set_block.exit2997.i.i ], [ %add1.i3001.i.i, %while.body.i3004.i.i.while.body.i3004.i.i_crit_edge ]
  %3200 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3200)
  %3201 = load ptr, ptr %asic_funcs, align 8
  %wreg.i3000.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3201, i32 0, i32 58
  %3202 = ptrtoint ptr %wreg.i3000.i.i to i32
  call void @__asan_load4_noabort(i32 %3202)
  %3203 = load ptr, ptr %wreg.i3000.i.i, align 4
  tail call void %3203(ptr noundef %hdev, i32 noundef %pb_addr.07.i2999.i.i, i32 noundef 0) #2
  %add1.i3001.i.i = add nuw nsw i32 %pb_addr.07.i2999.i.i, 4
  %and.i3002.i.i = and i32 %add1.i3001.i.i, 4092
  %tobool.not.i3003.i.i = icmp eq i32 %and.i3002.i.i, 0
  br i1 %tobool.not.i3003.i.i, label %while.body.i3004.i.i.while.body.i3012.i.i_crit_edge, label %while.body.i3004.i.i.while.body.i3004.i.i_crit_edge

while.body.i3004.i.i.while.body.i3004.i.i_crit_edge: ; preds = %while.body.i3004.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i3004.i.i

while.body.i3004.i.i.while.body.i3012.i.i_crit_edge: ; preds = %while.body.i3004.i.i
  br label %while.body.i3012.i.i

while.body.i3012.i.i:                             ; preds = %while.body.i3012.i.i.while.body.i3012.i.i_crit_edge, %while.body.i3004.i.i.while.body.i3012.i.i_crit_edge
  %pb_addr.07.i3007.i.i = phi i32 [ %add1.i3009.i.i, %while.body.i3012.i.i.while.body.i3012.i.i_crit_edge ], [ 16535424, %while.body.i3004.i.i.while.body.i3012.i.i_crit_edge ]
  %3204 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3204)
  %3205 = load ptr, ptr %asic_funcs, align 8
  %wreg.i3008.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3205, i32 0, i32 58
  %3206 = ptrtoint ptr %wreg.i3008.i.i to i32
  call void @__asan_load4_noabort(i32 %3206)
  %3207 = load ptr, ptr %wreg.i3008.i.i, align 4
  tail call void %3207(ptr noundef %hdev, i32 noundef %pb_addr.07.i3007.i.i, i32 noundef 0) #2
  %add1.i3009.i.i = add nuw nsw i32 %pb_addr.07.i3007.i.i, 4
  %and.i3010.i.i = and i32 %add1.i3009.i.i, 4092
  %tobool.not.i3011.i.i = icmp eq i32 %and.i3010.i.i, 0
  br i1 %tobool.not.i3011.i.i, label %while.body.i3012.i.i.while.body.i3020.i.i_crit_edge, label %while.body.i3012.i.i.while.body.i3012.i.i_crit_edge

while.body.i3012.i.i.while.body.i3012.i.i_crit_edge: ; preds = %while.body.i3012.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i3012.i.i

while.body.i3012.i.i.while.body.i3020.i.i_crit_edge: ; preds = %while.body.i3012.i.i
  br label %while.body.i3020.i.i

while.body.i3020.i.i:                             ; preds = %while.body.i3020.i.i.while.body.i3020.i.i_crit_edge, %while.body.i3012.i.i.while.body.i3020.i.i_crit_edge
  %pb_addr.07.i3015.i.i = phi i32 [ %add1.i3017.i.i, %while.body.i3020.i.i.while.body.i3020.i.i_crit_edge ], [ 16539520, %while.body.i3012.i.i.while.body.i3020.i.i_crit_edge ]
  %3208 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3208)
  %3209 = load ptr, ptr %asic_funcs, align 8
  %wreg.i3016.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3209, i32 0, i32 58
  %3210 = ptrtoint ptr %wreg.i3016.i.i to i32
  call void @__asan_load4_noabort(i32 %3210)
  %3211 = load ptr, ptr %wreg.i3016.i.i, align 4
  tail call void %3211(ptr noundef %hdev, i32 noundef %pb_addr.07.i3015.i.i, i32 noundef 0) #2
  %add1.i3017.i.i = add nuw nsw i32 %pb_addr.07.i3015.i.i, 4
  %and.i3018.i.i = and i32 %add1.i3017.i.i, 4092
  %tobool.not.i3019.i.i = icmp eq i32 %and.i3018.i.i, 0
  br i1 %tobool.not.i3019.i.i, label %goya_init_protection_bits.exit, label %while.body.i3020.i.i.while.body.i3020.i.i_crit_edge

while.body.i3020.i.i.while.body.i3020.i.i_crit_edge: ; preds = %while.body.i3020.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i3020.i.i

goya_init_protection_bits.exit:                   ; preds = %while.body.i3020.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %3212 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3212)
  %3213 = load ptr, ptr %asic_funcs, align 8
  %wreg1238.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3213, i32 0, i32 58
  %3214 = ptrtoint ptr %wreg1238.i.i to i32
  call void @__asan_load4_noabort(i32 %3214)
  %3215 = load ptr, ptr %wreg1238.i.i, align 4
  tail call void %3215(ptr noundef %hdev, i32 noundef 16543680, i32 noundef -157) #2
  %3216 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3216)
  %3217 = load ptr, ptr %asic_funcs, align 8
  %wreg1250.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3217, i32 0, i32 58
  %3218 = ptrtoint ptr %wreg1250.i.i to i32
  call void @__asan_load4_noabort(i32 %3218)
  %3219 = load ptr, ptr %wreg1250.i.i, align 4
  tail call void %3219(ptr noundef %hdev, i32 noundef 16543680, i32 noundef -14716673) #2
  %3220 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3220)
  %3221 = load ptr, ptr %asic_funcs, align 8
  %wreg1256.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3221, i32 0, i32 58
  %3222 = ptrtoint ptr %wreg1256.i.i to i32
  call void @__asan_load4_noabort(i32 %3222)
  %3223 = load ptr, ptr %wreg1256.i.i, align 4
  tail call void %3223(ptr noundef %hdev, i32 noundef 16543720, i32 noundef -193) #2
  %3224 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3224)
  %3225 = load ptr, ptr %asic_funcs, align 8
  %wreg1272.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3225, i32 0, i32 58
  %3226 = ptrtoint ptr %wreg1272.i.i to i32
  call void @__asan_load4_noabort(i32 %3226)
  %3227 = load ptr, ptr %wreg1272.i.i, align 4
  tail call void %3227(ptr noundef %hdev, i32 noundef 16543728, i32 noundef -4096) #2
  %3228 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3228)
  %3229 = load ptr, ptr %asic_funcs, align 8
  %wreg1295.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3229, i32 0, i32 58
  %3230 = ptrtoint ptr %wreg1295.i.i to i32
  call void @__asan_load4_noabort(i32 %3230)
  %3231 = load ptr, ptr %wreg1295.i.i, align 4
  tail call void %3231(ptr noundef %hdev, i32 noundef 16551808, i32 noundef 16775168) #2
  %3232 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3232)
  %3233 = load ptr, ptr %asic_funcs, align 8
  %wreg1326.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3233, i32 0, i32 58
  %3234 = ptrtoint ptr %wreg1326.i.i to i32
  call void @__asan_load4_noabort(i32 %3234)
  %3235 = load ptr, ptr %wreg1326.i.i, align 4
  tail call void %3235(ptr noundef %hdev, i32 noundef 16551812, i32 noundef 135299264) #2
  %3236 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3236)
  %3237 = load ptr, ptr %asic_funcs, align 8
  %wreg1345.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3237, i32 0, i32 58
  %3238 = ptrtoint ptr %wreg1345.i.i to i32
  call void @__asan_load4_noabort(i32 %3238)
  %3239 = load ptr, ptr %wreg1345.i.i, align 4
  tail call void %3239(ptr noundef %hdev, i32 noundef 16551816, i32 noundef -4194053) #2
  %3240 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3240)
  %3241 = load ptr, ptr %asic_funcs, align 8
  %wreg1360.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3241, i32 0, i32 58
  %3242 = ptrtoint ptr %wreg1360.i.i to i32
  call void @__asan_load4_noabort(i32 %3242)
  %3243 = load ptr, ptr %wreg1360.i.i, align 4
  tail call void %3243(ptr noundef %hdev, i32 noundef 16555904, i32 noundef -2048) #2
  %3244 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3244)
  %3245 = load ptr, ptr %asic_funcs, align 8
  %wreg1377.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3245, i32 0, i32 58
  %3246 = ptrtoint ptr %wreg1377.i.i to i32
  call void @__asan_load4_noabort(i32 %3246)
  %3247 = load ptr, ptr %wreg1377.i.i, align 4
  tail call void %3247(ptr noundef %hdev, i32 noundef 16555908, i32 noundef 136286207) #2
  %3248 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3248)
  %3249 = load ptr, ptr %asic_funcs, align 8
  %wreg1398.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3249, i32 0, i32 58
  %3250 = ptrtoint ptr %wreg1398.i.i to i32
  call void @__asan_load4_noabort(i32 %3250)
  %3251 = load ptr, ptr %wreg1398.i.i, align 4
  tail call void %3251(ptr noundef %hdev, i32 noundef 16555912, i32 noundef 1069547771) #2
  %3252 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3252)
  %3253 = load ptr, ptr %asic_funcs, align 8
  %wreg1407.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3253, i32 0, i32 58
  %3254 = ptrtoint ptr %wreg1407.i.i to i32
  call void @__asan_load4_noabort(i32 %3254)
  %3255 = load ptr, ptr %wreg1407.i.i, align 4
  tail call void %3255(ptr noundef %hdev, i32 noundef 16555916, i32 noundef -16) #2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @goya_ack_protection_bits_errors(ptr nocapture noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
