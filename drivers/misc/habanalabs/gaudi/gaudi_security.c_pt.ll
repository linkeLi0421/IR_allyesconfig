; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/gaudi/gaudi_security.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/gaudi/gaudi_security.c"
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
%struct.gaudi_device = type { ptr, %struct.spinlock, %struct.mutex, [113 x %struct.gaudi_internal_qman_info], %struct.gaudi_collective_properties, i64, [663 x i32], [663 x i32], [663 x i32], i32, i8, i8 }
%struct.gaudi_internal_qman_info = type { ptr, i32, i32 }
%struct.gaudi_collective_properties = type { [8 x %struct.gaudi_hw_sob_group], [4 x i16], [4 x i8], [2 x i8] }
%struct.gaudi_hw_sob_group = type { ptr, %struct.kref, i32, i32 }

@gaudi_rr_lbw_hit_aw_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4720388, i64 4720416, i64 4720436, i64 4851460, i64 4851488, i64 4851508, i64 4982532, i64 4982560, i64 4982580, i64 5113604, i64 5113632, i64 5113652, i64 3146752, i64 3212288, i64 3277824, i64 3343360, i64 3408896, i64 3474432, i64 3539968, i64 3605504, i64 3671040, i64 3736576, i64 3802112, i64 3867648, i64 3933184, i64 3998720, i64 4064256, i64 4129792], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_lbw_hit_ar_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4720384, i64 4720412, i64 4720432, i64 4851456, i64 4851484, i64 4851504, i64 4982528, i64 4982556, i64 4982576, i64 5113600, i64 5113628, i64 5113648, i64 3146896, i64 3212432, i64 3277968, i64 3343504, i64 3409040, i64 3474576, i64 3540112, i64 3605648, i64 3671184, i64 3736720, i64 3802256, i64 3867792, i64 3933328, i64 3998864, i64 4064400, i64 4129936], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_lbw_min_aw_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4718976, i64 4719488, i64 4720000, i64 4850048, i64 4850560, i64 4851072, i64 4981120, i64 4981632, i64 4982144, i64 5112192, i64 5112704, i64 5113216, i64 3146768, i64 3212304, i64 3277840, i64 3343376, i64 3408912, i64 3474448, i64 3539984, i64 3605520, i64 3671056, i64 3736592, i64 3802128, i64 3867664, i64 3933200, i64 3998736, i64 4064272, i64 4129808], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_lbw_min_ar_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4718848, i64 4719360, i64 4719872, i64 4849920, i64 4850432, i64 4850944, i64 4980992, i64 4981504, i64 4982016, i64 5112064, i64 5112576, i64 5113088, i64 3146912, i64 3212448, i64 3277984, i64 3343520, i64 3409056, i64 3474592, i64 3540128, i64 3605664, i64 3671200, i64 3736736, i64 3802272, i64 3867808, i64 3933344, i64 3998880, i64 4064416, i64 4129952], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_lbw_max_aw_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4719040, i64 4719552, i64 4720064, i64 4850112, i64 4850624, i64 4851136, i64 4981184, i64 4981696, i64 4982208, i64 5112256, i64 5112768, i64 5113280, i64 3146832, i64 3212368, i64 3277904, i64 3343440, i64 3408976, i64 3474512, i64 3540048, i64 3605584, i64 3671120, i64 3736656, i64 3802192, i64 3867728, i64 3933264, i64 3998800, i64 4064336, i64 4129872], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_lbw_max_ar_regs = internal constant { [28 x i64], [32 x i8] } { [28 x i64] [i64 4718912, i64 4719424, i64 4719936, i64 4849984, i64 4850496, i64 4851008, i64 4981056, i64 4981568, i64 4982080, i64 5112128, i64 5112640, i64 5113152, i64 3146976, i64 3212512, i64 3278048, i64 3343584, i64 3409120, i64 3474656, i64 3540192, i64 3605728, i64 3671264, i64 3736800, i64 3802336, i64 3867872, i64 3933408, i64 3998944, i64 4064480, i64 4130016], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_hit_aw_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4725348, i64 4729444, i64 4856420, i64 4860516, i64 4987492, i64 4991588, i64 5118564, i64 5122660, i64 3172964, i64 3238500, i64 3304036, i64 3369572, i64 3435108, i64 3500644, i64 3566180, i64 3631716, i64 3697252, i64 3762788, i64 3828324, i64 3893860, i64 3959396, i64 4024932, i64 4090468, i64 4156004], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_hit_ar_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4725352, i64 4729448, i64 4856424, i64 4860520, i64 4987496, i64 4991592, i64 5118568, i64 5122664, i64 3172968, i64 3238504, i64 3304040, i64 3369576, i64 3435112, i64 3500648, i64 3566184, i64 3631720, i64 3697256, i64 3762792, i64 3828328, i64 3893864, i64 3959400, i64 4024936, i64 4090472, i64 4156008], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_base_low_aw_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724196, i64 4728292, i64 4855268, i64 4859364, i64 4986340, i64 4990436, i64 5117412, i64 5121508, i64 3171812, i64 3237348, i64 3302884, i64 3368420, i64 3433956, i64 3499492, i64 3565028, i64 3630564, i64 3696100, i64 3761636, i64 3827172, i64 3892708, i64 3958244, i64 4023780, i64 4089316, i64 4154852], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_base_low_ar_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724772, i64 4728868, i64 4855844, i64 4859940, i64 4986916, i64 4991012, i64 5117988, i64 5122084, i64 3172388, i64 3237924, i64 3303460, i64 3368996, i64 3434532, i64 3500068, i64 3565604, i64 3631140, i64 3696676, i64 3762212, i64 3827748, i64 3893284, i64 3958820, i64 4024356, i64 4089892, i64 4155428], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_base_high_aw_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724260, i64 4728356, i64 4855332, i64 4859428, i64 4986404, i64 4990500, i64 5117476, i64 5121572, i64 3171876, i64 3237412, i64 3302948, i64 3368484, i64 3434020, i64 3499556, i64 3565092, i64 3630628, i64 3696164, i64 3761700, i64 3827236, i64 3892772, i64 3958308, i64 4023844, i64 4089380, i64 4154916], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_base_high_ar_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724836, i64 4728932, i64 4855908, i64 4860004, i64 4986980, i64 4991076, i64 5118052, i64 5122148, i64 3172452, i64 3237988, i64 3303524, i64 3369060, i64 3434596, i64 3500132, i64 3565668, i64 3631204, i64 3696740, i64 3762276, i64 3827812, i64 3893348, i64 3958884, i64 4024420, i64 4089956, i64 4155492], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_mask_low_aw_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724324, i64 4728420, i64 4855396, i64 4859492, i64 4986468, i64 4990564, i64 5117540, i64 5121636, i64 3171940, i64 3237476, i64 3303012, i64 3368548, i64 3434084, i64 3499620, i64 3565156, i64 3630692, i64 3696228, i64 3761764, i64 3827300, i64 3892836, i64 3958372, i64 4023908, i64 4089444, i64 4154980], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_mask_low_ar_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724900, i64 4728996, i64 4855972, i64 4860068, i64 4987044, i64 4991140, i64 5118116, i64 5122212, i64 3172516, i64 3238052, i64 3303588, i64 3369124, i64 3434660, i64 3500196, i64 3565732, i64 3631268, i64 3696804, i64 3762340, i64 3827876, i64 3893412, i64 3958948, i64 4024484, i64 4090020, i64 4155556], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_mask_high_aw_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724388, i64 4728484, i64 4855460, i64 4859556, i64 4986532, i64 4990628, i64 5117604, i64 5121700, i64 3172004, i64 3237540, i64 3303076, i64 3368612, i64 3434148, i64 3499684, i64 3565220, i64 3630756, i64 3696292, i64 3761828, i64 3827364, i64 3892900, i64 3958436, i64 4023972, i64 4089508, i64 4155044], [32 x i8] zeroinitializer }, align 32
@gaudi_rr_hbw_mask_high_ar_regs = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 4724964, i64 4729060, i64 4856036, i64 4860132, i64 4987108, i64 4991204, i64 5118180, i64 5122276, i64 3172580, i64 3238116, i64 3303652, i64 3369188, i64 3434724, i64 3500260, i64 3565796, i64 3631332, i64 3696868, i64 3762404, i64 3827940, i64 3893476, i64 3959012, i64 4024548, i64 4090084, i64 4155620], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_hit_aw_regs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 15, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_hit_ar_regs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 46, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_min_aw_regs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 77, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_min_ar_regs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 139, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_max_aw_regs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 108, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"gaudi_rr_lbw_max_ar_regs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 170, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"gaudi_rr_hbw_hit_aw_regs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 201, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"gaudi_rr_hbw_hit_ar_regs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 228, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"gaudi_rr_hbw_base_low_aw_regs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 255, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"gaudi_rr_hbw_base_low_ar_regs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 363, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"gaudi_rr_hbw_base_high_aw_regs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 282, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"gaudi_rr_hbw_base_high_ar_regs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 390, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"gaudi_rr_hbw_mask_low_aw_regs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 309, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"gaudi_rr_hbw_mask_low_ar_regs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 417, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"gaudi_rr_hbw_mask_high_aw_regs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 336, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"gaudi_rr_hbw_mask_high_ar_regs\00", align 1
@___asan_gen_.47 = private constant [50 x i8] c"../drivers/misc/habanalabs/gaudi/gaudi_security.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 444, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @gaudi_rr_lbw_hit_aw_regs, ptr @gaudi_rr_lbw_hit_ar_regs, ptr @gaudi_rr_lbw_min_aw_regs, ptr @gaudi_rr_lbw_min_ar_regs, ptr @gaudi_rr_lbw_max_aw_regs, ptr @gaudi_rr_lbw_max_ar_regs, ptr @gaudi_rr_hbw_hit_aw_regs, ptr @gaudi_rr_hbw_hit_ar_regs, ptr @gaudi_rr_hbw_base_low_aw_regs, ptr @gaudi_rr_hbw_base_low_ar_regs, ptr @gaudi_rr_hbw_base_high_aw_regs, ptr @gaudi_rr_hbw_base_high_ar_regs, ptr @gaudi_rr_hbw_mask_low_aw_regs, ptr @gaudi_rr_hbw_mask_low_ar_regs, ptr @gaudi_rr_hbw_mask_high_aw_regs, ptr @gaudi_rr_hbw_mask_high_ar_regs], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_hit_aw_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_hit_ar_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_min_aw_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_min_ar_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_max_aw_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_lbw_max_ar_regs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_hit_aw_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_hit_ar_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_base_low_aw_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_base_low_ar_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_base_high_aw_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_base_high_ar_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_mask_low_aw_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_mask_low_ar_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_mask_high_aw_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaudi_rr_hbw_mask_high_ar_regs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gaudi_init_security(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %lbw_rng_start.i = alloca [10 x i32], align 4
  %lbw_rng_end.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_security_enabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 68
  %0 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wreg, align 4
  tail call void %5(ptr noundef %hdev, i32 noundef 262224, i32 noundef 2) #3
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %wreg2 = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %wreg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wreg2, align 4
  tail call void %9(ptr noundef %hdev, i32 noundef 131152, i32 noundef 2) #3
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs, align 8
  %wreg4 = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 58
  %12 = ptrtoint ptr %wreg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wreg4, align 4
  tail call void %13(ptr noundef %hdev, i32 noundef 786512, i32 noundef 2) #3
  %14 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs, align 8
  %wreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %wreg6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wreg6, align 4
  tail call void %17(ptr noundef %hdev, i32 noundef 655440, i32 noundef 2) #3
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs, align 8
  %wreg8 = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 58
  %20 = ptrtoint ptr %wreg8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wreg8, align 4
  tail call void %21(ptr noundef %hdev, i32 noundef 1310800, i32 noundef 2) #3
  %22 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs, align 8
  %wreg10 = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 58
  %24 = ptrtoint ptr %wreg10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wreg10, align 4
  tail call void %25(ptr noundef %hdev, i32 noundef 1179728, i32 noundef 2) #3
  %26 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs, align 8
  %wreg12 = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 58
  %28 = ptrtoint ptr %wreg12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wreg12, align 4
  tail call void %29(ptr noundef %hdev, i32 noundef 1835088, i32 noundef 2) #3
  %30 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asic_funcs, align 8
  %wreg14 = getelementptr inbounds %struct.hl_asic_funcs, ptr %31, i32 0, i32 58
  %32 = ptrtoint ptr %wreg14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wreg14, align 4
  tail call void %33(ptr noundef %hdev, i32 noundef 1704016, i32 noundef 2) #3
  %34 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic_funcs, align 8
  %wreg16 = getelementptr inbounds %struct.hl_asic_funcs, ptr %35, i32 0, i32 58
  %36 = ptrtoint ptr %wreg16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wreg16, align 4
  tail call void %37(ptr noundef %hdev, i32 noundef 12589864, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %lbw_rng_start.i) #3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %lbw_rng_end.i) #3
  %38 = ptrtoint ptr %lbw_rng_start.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 950271, ptr %lbw_rng_start.i, align 4
  %39 = ptrtoint ptr %lbw_rng_end.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1179648, ptr %lbw_rng_end.i, align 4
  %arrayidx2.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1998847, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4784128, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6291455, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12881920, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 12886015, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 13500416, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 13516799, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 13762560, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 13778943, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 14024704, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 6
  %50 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 14041087, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 6
  %51 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 14286848, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 7
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 14303231, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 14548992, ptr %arrayidx15.i, align 4
  %arrayidx16.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 8
  %54 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 14565375, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 8
  %55 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 14704640, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 9
  %56 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16551935, ptr %arrayidx18.i, align 4
  %arrayidx19.i = getelementptr inbounds [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 9
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67108863, ptr %arrayidx19.i, align 4
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.099.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %59, i32 0, i32 58
  %60 = ptrtoint ptr %wreg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wreg.i, align 4
  %arrayidx20.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_hit_aw_regs, i32 0, i32 %i.099.i
  %62 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx20.i, align 8
  %conv.i = trunc i64 %63 to i32
  tail call void %61(ptr noundef %hdev, i32 noundef %conv.i, i32 noundef 1023) #3
  %64 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %asic_funcs.i, align 8
  %wreg22.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %65, i32 0, i32 58
  %66 = ptrtoint ptr %wreg22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wreg22.i, align 4
  %arrayidx23.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_hit_ar_regs, i32 0, i32 %i.099.i
  %68 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx23.i, align 8
  %conv24.i = trunc i64 %69 to i32
  tail call void %67(ptr noundef %hdev, i32 noundef %conv24.i, i32 noundef 1023) #3
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %for.body.i.for.cond29.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.for.cond29.preheader.i_crit_edge:      ; preds = %for.body.i
  br label %for.cond29.preheader.i

for.cond29.preheader.i:                           ; preds = %for.inc66.i.for.cond29.preheader.i_crit_edge, %for.body.i.for.cond29.preheader.i_crit_edge
  %i.1101.i = phi i32 [ %inc67.i, %for.inc66.i.for.cond29.preheader.i_crit_edge ], [ 0, %for.body.i.for.cond29.preheader.i_crit_edge ]
  %arrayidx35.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_min_aw_regs, i32 0, i32 %i.1101.i
  %70 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx35.i, align 8
  %72 = trunc i64 %71 to i32
  %arrayidx41.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_min_ar_regs, i32 0, i32 %i.1101.i
  %arrayidx49.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_max_aw_regs, i32 0, i32 %i.1101.i
  %arrayidx57.i = getelementptr [28 x i64], ptr @gaudi_rr_lbw_max_ar_regs, i32 0, i32 %i.1101.i
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %for.cond29.preheader.i
  %j.0100.i = phi i32 [ 0, %for.cond29.preheader.i ], [ %inc64.i, %for.body32.i.for.body32.i_crit_edge ]
  %73 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %asic_funcs.i, align 8
  %wreg34.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %74, i32 0, i32 58
  %75 = ptrtoint ptr %wreg34.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wreg34.i, align 4
  %shl.i = shl i32 %j.0100.i, 2
  %conv37.i = add i32 %shl.i, %72
  %arrayidx38.i = getelementptr [10 x i32], ptr %lbw_rng_start.i, i32 0, i32 %j.0100.i
  %77 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx38.i, align 4
  tail call void %76(ptr noundef %hdev, i32 noundef %conv37.i, i32 noundef %78) #3
  %79 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %asic_funcs.i, align 8
  %wreg40.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %80, i32 0, i32 58
  %81 = ptrtoint ptr %wreg40.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wreg40.i, align 4
  %83 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx41.i, align 8
  %85 = trunc i64 %84 to i32
  %conv45.i = add i32 %shl.i, %85
  tail call void %82(ptr noundef %hdev, i32 noundef %conv45.i, i32 noundef %78) #3
  %86 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %asic_funcs.i, align 8
  %wreg48.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %87, i32 0, i32 58
  %88 = ptrtoint ptr %wreg48.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wreg48.i, align 4
  %90 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx49.i, align 8
  %92 = trunc i64 %91 to i32
  %conv53.i = add i32 %shl.i, %92
  %arrayidx54.i = getelementptr [10 x i32], ptr %lbw_rng_end.i, i32 0, i32 %j.0100.i
  %93 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx54.i, align 4
  tail call void %89(ptr noundef %hdev, i32 noundef %conv53.i, i32 noundef %94) #3
  %95 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %asic_funcs.i, align 8
  %wreg56.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %96, i32 0, i32 58
  %97 = ptrtoint ptr %wreg56.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wreg56.i, align 4
  %99 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx57.i, align 8
  %101 = trunc i64 %100 to i32
  %conv61.i = add i32 %shl.i, %101
  tail call void %98(ptr noundef %hdev, i32 noundef %conv61.i, i32 noundef %94) #3
  %inc64.i = add nuw nsw i32 %j.0100.i, 1
  %exitcond102.not.i = icmp eq i32 %inc64.i, 10
  br i1 %exitcond102.not.i, label %for.inc66.i, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body32.i

for.inc66.i:                                      ; preds = %for.body32.i
  %inc67.i = add nuw nsw i32 %i.1101.i, 1
  %exitcond103.not.i = icmp eq i32 %inc67.i, 28
  br i1 %exitcond103.not.i, label %gaudi_init_range_registers_lbw.exit, label %for.inc66.i.for.cond29.preheader.i_crit_edge

for.inc66.i.for.cond29.preheader.i_crit_edge:     ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond29.preheader.i

gaudi_init_range_registers_lbw.exit:              ; preds = %for.inc66.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %lbw_rng_end.i) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %lbw_rng_start.i) #3
  %asic_specific.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 35
  %102 = ptrtoint ptr %asic_specific.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %asic_specific.i, align 4
  br label %for.body.i44

for.cond5.preheader.i:                            ; preds = %for.body.i44
  %hw_cap_initialized.i = getelementptr inbounds %struct.gaudi_device, ptr %103, i32 0, i32 9
  br label %for.body8.i

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %gaudi_init_range_registers_lbw.exit
  %i.0372.i = phi i32 [ 0, %gaudi_init_range_registers_lbw.exit ], [ %inc.i42, %for.body.i44.for.body.i44_crit_edge ]
  %104 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i39 = getelementptr inbounds %struct.hl_asic_funcs, ptr %105, i32 0, i32 58
  %106 = ptrtoint ptr %wreg.i39 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wreg.i39, align 4
  %arrayidx.i = getelementptr [24 x i64], ptr @gaudi_rr_hbw_hit_aw_regs, i32 0, i32 %i.0372.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i, align 8
  %conv.i40 = trunc i64 %109 to i32
  tail call void %107(ptr noundef %hdev, i32 noundef %conv.i40, i32 noundef 31) #3
  %110 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %asic_funcs.i, align 8
  %wreg2.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %111, i32 0, i32 58
  %112 = ptrtoint ptr %wreg2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wreg2.i, align 4
  %arrayidx3.i41 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_hit_ar_regs, i32 0, i32 %i.0372.i
  %114 = ptrtoint ptr %arrayidx3.i41 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx3.i41, align 8
  %conv4.i = trunc i64 %115 to i32
  tail call void %113(ptr noundef %hdev, i32 noundef %conv4.i, i32 noundef 29) #3
  %inc.i42 = add nuw nsw i32 %i.0372.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc.i42, 24
  br i1 %exitcond.not.i43, label %for.cond5.preheader.i, label %for.body.i44.for.body.i44_crit_edge

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i44

for.body8.i:                                      ; preds = %for.inc220.i.for.body8.i_crit_edge, %for.cond5.preheader.i
  %i.1373.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %inc221.i, %for.inc220.i.for.body8.i_crit_edge ]
  %116 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %asic_funcs.i, align 8
  %wreg10.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %117, i32 0, i32 58
  %118 = ptrtoint ptr %wreg10.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wreg10.i, align 4
  %arrayidx11.i45 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_base_low_aw_regs, i32 0, i32 %i.1373.i
  %120 = ptrtoint ptr %arrayidx11.i45 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx11.i45, align 8
  %conv12.i = trunc i64 %121 to i32
  tail call void %119(ptr noundef %hdev, i32 noundef %conv12.i, i32 noundef 0) #3
  %122 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %asic_funcs.i, align 8
  %wreg14.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %123, i32 0, i32 58
  %124 = ptrtoint ptr %wreg14.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wreg14.i, align 4
  %arrayidx15.i46 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_base_low_ar_regs, i32 0, i32 %i.1373.i
  %126 = ptrtoint ptr %arrayidx15.i46 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx15.i46, align 8
  %conv16.i = trunc i64 %127 to i32
  tail call void %125(ptr noundef %hdev, i32 noundef %conv16.i, i32 noundef 0) #3
  %128 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %asic_funcs.i, align 8
  %wreg18.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %129, i32 0, i32 58
  %130 = ptrtoint ptr %wreg18.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wreg18.i, align 4
  %arrayidx19.i47 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_base_high_aw_regs, i32 0, i32 %i.1373.i
  %132 = ptrtoint ptr %arrayidx19.i47 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx19.i47, align 8
  %conv20.i = trunc i64 %133 to i32
  tail call void %131(ptr noundef %hdev, i32 noundef %conv20.i, i32 noundef 0) #3
  %134 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %asic_funcs.i, align 8
  %wreg22.i48 = getelementptr inbounds %struct.hl_asic_funcs, ptr %135, i32 0, i32 58
  %136 = ptrtoint ptr %wreg22.i48 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wreg22.i48, align 4
  %arrayidx23.i49 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_base_high_ar_regs, i32 0, i32 %i.1373.i
  %138 = ptrtoint ptr %arrayidx23.i49 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx23.i49, align 8
  %conv24.i50 = trunc i64 %139 to i32
  tail call void %137(ptr noundef %hdev, i32 noundef %conv24.i50, i32 noundef 0) #3
  %140 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asic_funcs.i, align 8
  %wreg26.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %141, i32 0, i32 58
  %142 = ptrtoint ptr %wreg26.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wreg26.i, align 4
  %arrayidx27.i = getelementptr [24 x i64], ptr @gaudi_rr_hbw_mask_low_aw_regs, i32 0, i32 %i.1373.i
  %144 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx27.i, align 8
  %conv28.i = trunc i64 %145 to i32
  tail call void %143(ptr noundef %hdev, i32 noundef %conv28.i, i32 noundef -536870912) #3
  %146 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asic_funcs.i, align 8
  %wreg30.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %147, i32 0, i32 58
  %148 = ptrtoint ptr %wreg30.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wreg30.i, align 4
  %arrayidx31.i = getelementptr [24 x i64], ptr @gaudi_rr_hbw_mask_low_ar_regs, i32 0, i32 %i.1373.i
  %150 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx31.i, align 8
  %conv32.i = trunc i64 %151 to i32
  tail call void %149(ptr noundef %hdev, i32 noundef %conv32.i, i32 noundef -536870912) #3
  %152 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %asic_funcs.i, align 8
  %wreg34.i51 = getelementptr inbounds %struct.hl_asic_funcs, ptr %153, i32 0, i32 58
  %154 = ptrtoint ptr %wreg34.i51 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wreg34.i51, align 4
  %arrayidx35.i52 = getelementptr [24 x i64], ptr @gaudi_rr_hbw_mask_high_aw_regs, i32 0, i32 %i.1373.i
  %156 = ptrtoint ptr %arrayidx35.i52 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx35.i52, align 8
  %conv36.i = trunc i64 %157 to i32
  tail call void %155(ptr noundef %hdev, i32 noundef %conv36.i, i32 noundef 262143) #3
  %158 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %asic_funcs.i, align 8
  %wreg38.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %159, i32 0, i32 58
  %160 = ptrtoint ptr %wreg38.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %wreg38.i, align 4
  %arrayidx39.i = getelementptr [24 x i64], ptr @gaudi_rr_hbw_mask_high_ar_regs, i32 0, i32 %i.1373.i
  %162 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx39.i, align 8
  %conv40.i = trunc i64 %163 to i32
  tail call void %161(ptr noundef %hdev, i32 noundef %conv40.i, i32 noundef 262143) #3
  %164 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %asic_funcs.i, align 8
  %wreg42.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %165, i32 0, i32 58
  %166 = ptrtoint ptr %wreg42.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wreg42.i, align 4
  %conv44.i = add i32 %conv12.i, 4
  tail call void %167(ptr noundef %hdev, i32 noundef %conv44.i, i32 noundef -268435456) #3
  %168 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %asic_funcs.i, align 8
  %wreg46.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %169, i32 0, i32 58
  %170 = ptrtoint ptr %wreg46.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wreg46.i, align 4
  %conv49.i = add i32 %conv20.i, 4
  tail call void %171(ptr noundef %hdev, i32 noundef %conv49.i, i32 noundef 127) #3
  %172 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %asic_funcs.i, align 8
  %wreg51.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %173, i32 0, i32 58
  %174 = ptrtoint ptr %wreg51.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wreg51.i, align 4
  %conv54.i = add i32 %conv28.i, 4
  tail call void %175(ptr noundef %hdev, i32 noundef %conv54.i, i32 noundef -128) #3
  %176 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %asic_funcs.i, align 8
  %wreg56.i53 = getelementptr inbounds %struct.hl_asic_funcs, ptr %177, i32 0, i32 58
  %178 = ptrtoint ptr %wreg56.i53 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wreg56.i53, align 4
  %conv59.i = add i32 %conv36.i, 4
  tail call void %179(ptr noundef %hdev, i32 noundef %conv59.i, i32 noundef 262143) #3
  %180 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %asic_funcs.i, align 8
  %wreg61.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %181, i32 0, i32 58
  %182 = ptrtoint ptr %wreg61.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wreg61.i, align 4
  %conv64.i = add i32 %conv12.i, 8
  tail call void %183(ptr noundef %hdev, i32 noundef %conv64.i, i32 noundef -67239936) #3
  %184 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %asic_funcs.i, align 8
  %wreg66.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %185, i32 0, i32 58
  %186 = ptrtoint ptr %wreg66.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wreg66.i, align 4
  %conv69.i = add i32 %conv16.i, 8
  tail call void %187(ptr noundef %hdev, i32 noundef %conv69.i, i32 noundef -67239936) #3
  %188 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %asic_funcs.i, align 8
  %wreg71.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %189, i32 0, i32 58
  %190 = ptrtoint ptr %wreg71.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wreg71.i, align 4
  %conv74.i = add i32 %conv20.i, 8
  tail call void %191(ptr noundef %hdev, i32 noundef %conv74.i, i32 noundef 127) #3
  %192 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %asic_funcs.i, align 8
  %wreg76.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %193, i32 0, i32 58
  %194 = ptrtoint ptr %wreg76.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wreg76.i, align 4
  %conv79.i = add i32 %conv24.i50, 8
  tail call void %195(ptr noundef %hdev, i32 noundef %conv79.i, i32 noundef 127) #3
  %196 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %asic_funcs.i, align 8
  %wreg81.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %197, i32 0, i32 58
  %198 = ptrtoint ptr %wreg81.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wreg81.i, align 4
  %conv84.i = add i32 %conv28.i, 8
  tail call void %199(ptr noundef %hdev, i32 noundef %conv84.i, i32 noundef -65536) #3
  %200 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %asic_funcs.i, align 8
  %wreg86.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %201, i32 0, i32 58
  %202 = ptrtoint ptr %wreg86.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wreg86.i, align 4
  %conv89.i = add i32 %conv32.i, 8
  tail call void %203(ptr noundef %hdev, i32 noundef %conv89.i, i32 noundef -65536) #3
  %204 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %asic_funcs.i, align 8
  %wreg91.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %205, i32 0, i32 58
  %206 = ptrtoint ptr %wreg91.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wreg91.i, align 4
  %conv94.i = add i32 %conv36.i, 8
  tail call void %207(ptr noundef %hdev, i32 noundef %conv94.i, i32 noundef 262143) #3
  %208 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %asic_funcs.i, align 8
  %wreg96.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %209, i32 0, i32 58
  %210 = ptrtoint ptr %wreg96.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %wreg96.i, align 4
  %conv99.i = add i32 %conv40.i, 8
  tail call void %211(ptr noundef %hdev, i32 noundef %conv99.i, i32 noundef 262143) #3
  %212 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %asic_funcs.i, align 8
  %wreg101.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %213, i32 0, i32 58
  %214 = ptrtoint ptr %wreg101.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %wreg101.i, align 4
  %conv104.i = add i32 %conv12.i, 12
  tail call void %215(ptr noundef %hdev, i32 noundef %conv104.i, i32 noundef -67174400) #3
  %216 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %asic_funcs.i, align 8
  %wreg106.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %217, i32 0, i32 58
  %218 = ptrtoint ptr %wreg106.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wreg106.i, align 4
  %conv109.i = add i32 %conv16.i, 12
  tail call void %219(ptr noundef %hdev, i32 noundef %conv109.i, i32 noundef -67174400) #3
  %220 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %asic_funcs.i, align 8
  %wreg111.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %221, i32 0, i32 58
  %222 = ptrtoint ptr %wreg111.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wreg111.i, align 4
  %conv114.i = add i32 %conv20.i, 12
  tail call void %223(ptr noundef %hdev, i32 noundef %conv114.i, i32 noundef 127) #3
  %224 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %asic_funcs.i, align 8
  %wreg116.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %225, i32 0, i32 58
  %226 = ptrtoint ptr %wreg116.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %wreg116.i, align 4
  %conv119.i = add i32 %conv24.i50, 12
  tail call void %227(ptr noundef %hdev, i32 noundef %conv119.i, i32 noundef 127) #3
  %228 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %asic_funcs.i, align 8
  %wreg121.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %229, i32 0, i32 58
  %230 = ptrtoint ptr %wreg121.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %wreg121.i, align 4
  %conv124.i = add i32 %conv28.i, 12
  tail call void %231(ptr noundef %hdev, i32 noundef %conv124.i, i32 noundef -32768) #3
  %232 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %asic_funcs.i, align 8
  %wreg126.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %233, i32 0, i32 58
  %234 = ptrtoint ptr %wreg126.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wreg126.i, align 4
  %conv129.i = add i32 %conv32.i, 12
  tail call void %235(ptr noundef %hdev, i32 noundef %conv129.i, i32 noundef -32768) #3
  %236 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %asic_funcs.i, align 8
  %wreg131.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %237, i32 0, i32 58
  %238 = ptrtoint ptr %wreg131.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %wreg131.i, align 4
  %conv134.i = add i32 %conv36.i, 12
  tail call void %239(ptr noundef %hdev, i32 noundef %conv134.i, i32 noundef 262143) #3
  %240 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %asic_funcs.i, align 8
  %wreg136.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %241, i32 0, i32 58
  %242 = ptrtoint ptr %wreg136.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wreg136.i, align 4
  %conv139.i = add i32 %conv40.i, 12
  tail call void %243(ptr noundef %hdev, i32 noundef %conv139.i, i32 noundef 262143) #3
  %244 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %asic_funcs.i, align 8
  %wreg141.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %245, i32 0, i32 58
  %246 = ptrtoint ptr %wreg141.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wreg141.i, align 4
  %conv144.i = add i32 %conv12.i, 16
  tail call void %247(ptr noundef %hdev, i32 noundef %conv144.i, i32 noundef -134217728) #3
  %248 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %asic_funcs.i, align 8
  %wreg146.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %249, i32 0, i32 58
  %250 = ptrtoint ptr %wreg146.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wreg146.i, align 4
  %conv149.i = add i32 %conv16.i, 16
  tail call void %251(ptr noundef %hdev, i32 noundef %conv149.i, i32 noundef -134217728) #3
  %252 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %asic_funcs.i, align 8
  %wreg151.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %253, i32 0, i32 58
  %254 = ptrtoint ptr %wreg151.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wreg151.i, align 4
  %conv154.i = add i32 %conv20.i, 16
  tail call void %255(ptr noundef %hdev, i32 noundef %conv154.i, i32 noundef 127) #3
  %256 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %asic_funcs.i, align 8
  %wreg156.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %257, i32 0, i32 58
  %258 = ptrtoint ptr %wreg156.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wreg156.i, align 4
  %conv159.i = add i32 %conv24.i50, 16
  tail call void %259(ptr noundef %hdev, i32 noundef %conv159.i, i32 noundef 127) #3
  %260 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %asic_funcs.i, align 8
  %wreg161.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %261, i32 0, i32 58
  %262 = ptrtoint ptr %wreg161.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %wreg161.i, align 4
  %conv164.i = add i32 %conv28.i, 16
  tail call void %263(ptr noundef %hdev, i32 noundef %conv164.i, i32 noundef -33554432) #3
  %264 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %asic_funcs.i, align 8
  %wreg166.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %265, i32 0, i32 58
  %266 = ptrtoint ptr %wreg166.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wreg166.i, align 4
  %conv169.i = add i32 %conv32.i, 16
  tail call void %267(ptr noundef %hdev, i32 noundef %conv169.i, i32 noundef -33554432) #3
  %268 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %asic_funcs.i, align 8
  %wreg171.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %269, i32 0, i32 58
  %270 = ptrtoint ptr %wreg171.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wreg171.i, align 4
  %conv174.i = add i32 %conv36.i, 16
  tail call void %271(ptr noundef %hdev, i32 noundef %conv174.i, i32 noundef 262143) #3
  %272 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %asic_funcs.i, align 8
  %wreg176.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %273, i32 0, i32 58
  %274 = ptrtoint ptr %wreg176.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %wreg176.i, align 4
  %conv179.i = add i32 %conv40.i, 16
  tail call void %275(ptr noundef %hdev, i32 noundef %conv179.i, i32 noundef 262143) #3
  %276 = ptrtoint ptr %hw_cap_initialized.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %hw_cap_initialized.i, align 4
  %and.i = and i32 %277, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body8.i.for.inc220.i_crit_edge

for.body8.i.for.inc220.i_crit_edge:               ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc220.i

if.end.i:                                         ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #5
  %278 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %asic_funcs.i, align 8
  %wreg181.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %279, i32 0, i32 58
  %280 = ptrtoint ptr %wreg181.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %wreg181.i, align 4
  %conv184.i = add i32 %conv12.i, 20
  tail call void %281(ptr noundef %hdev, i32 noundef %conv184.i, i32 noundef 0) #3
  %282 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %asic_funcs.i, align 8
  %wreg186.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %283, i32 0, i32 58
  %284 = ptrtoint ptr %wreg186.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wreg186.i, align 4
  %conv189.i = add i32 %conv16.i, 20
  tail call void %285(ptr noundef %hdev, i32 noundef %conv189.i, i32 noundef 0) #3
  %286 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %asic_funcs.i, align 8
  %wreg191.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %287, i32 0, i32 58
  %288 = ptrtoint ptr %wreg191.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %wreg191.i, align 4
  %conv194.i = add i32 %conv20.i, 20
  tail call void %289(ptr noundef %hdev, i32 noundef %conv194.i, i32 noundef 0) #3
  %290 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %asic_funcs.i, align 8
  %wreg196.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %291, i32 0, i32 58
  %292 = ptrtoint ptr %wreg196.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %wreg196.i, align 4
  %conv199.i = add i32 %conv24.i50, 20
  tail call void %293(ptr noundef %hdev, i32 noundef %conv199.i, i32 noundef 0) #3
  %294 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %asic_funcs.i, align 8
  %wreg201.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %295, i32 0, i32 58
  %296 = ptrtoint ptr %wreg201.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wreg201.i, align 4
  %conv204.i = add i32 %conv28.i, 20
  tail call void %297(ptr noundef %hdev, i32 noundef %conv204.i, i32 noundef 0) #3
  %298 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %asic_funcs.i, align 8
  %wreg206.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %299, i32 0, i32 58
  %300 = ptrtoint ptr %wreg206.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %wreg206.i, align 4
  %conv209.i = add i32 %conv32.i, 20
  tail call void %301(ptr noundef %hdev, i32 noundef %conv209.i, i32 noundef 0) #3
  %302 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %asic_funcs.i, align 8
  %wreg211.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %303, i32 0, i32 58
  %304 = ptrtoint ptr %wreg211.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %wreg211.i, align 4
  %conv214.i = add i32 %conv36.i, 20
  tail call void %305(ptr noundef %hdev, i32 noundef %conv214.i, i32 noundef 1048448) #3
  %306 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %asic_funcs.i, align 8
  %wreg216.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %307, i32 0, i32 58
  %308 = ptrtoint ptr %wreg216.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %wreg216.i, align 4
  %conv219.i = add i32 %conv40.i, 20
  tail call void %309(ptr noundef %hdev, i32 noundef %conv219.i, i32 noundef 1048448) #3
  br label %for.inc220.i

for.inc220.i:                                     ; preds = %if.end.i, %for.body8.i.for.inc220.i_crit_edge
  %inc221.i = add nuw nsw i32 %i.1373.i, 1
  %exitcond374.not.i = icmp eq i32 %inc221.i, 24
  br i1 %exitcond374.not.i, label %gaudi_init_range_registers_hbw.exit, label %for.inc220.i.for.body8.i_crit_edge

for.inc220.i.for.body8.i_crit_edge:               ; preds = %for.inc220.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8.i

gaudi_init_range_registers_hbw.exit:              ; preds = %for.inc220.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @gaudi_init_protection_bits(ptr noundef %hdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gaudi_init_protection_bits(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_security_enabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 68
  %0 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.gaudi_init_dma_protection_bits.exit_crit_edge

entry.gaudi_init_dma_protection_bits.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %gaudi_init_dma_protection_bits.exit

if.then:                                          ; preds = %entry
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %pb_addr.07.i = phi i32 [ 4882304, %if.then ], [ %add1.i, %while.body.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wreg.i, align 4
  tail call void %5(ptr noundef %hdev, i32 noundef %pb_addr.07.i, i32 noundef 0) #3
  %add1.i = add nuw nsw i32 %pb_addr.07.i, 4
  %and.i = and i32 %add1.i, 4092
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i16_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.while.body.i16_crit_edge:            ; preds = %while.body.i
  br label %while.body.i16

while.body.i16:                                   ; preds = %while.body.i16.while.body.i16_crit_edge, %while.body.i.while.body.i16_crit_edge
  %pb_addr.07.i11 = phi i32 [ %add1.i13, %while.body.i16.while.body.i16_crit_edge ], [ 5013376, %while.body.i.while.body.i16_crit_edge ]
  %6 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i12 = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %wreg.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wreg.i12, align 4
  tail call void %9(ptr noundef %hdev, i32 noundef %pb_addr.07.i11, i32 noundef 0) #3
  %add1.i13 = add nuw nsw i32 %pb_addr.07.i11, 4
  %and.i14 = and i32 %add1.i13, 4092
  %tobool.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i15, label %while.body.i16.while.body.i24_crit_edge, label %while.body.i16.while.body.i16_crit_edge

while.body.i16.while.body.i16_crit_edge:          ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i16

while.body.i16.while.body.i24_crit_edge:          ; preds = %while.body.i16
  br label %while.body.i24

while.body.i24:                                   ; preds = %while.body.i24.while.body.i24_crit_edge, %while.body.i16.while.body.i24_crit_edge
  %pb_addr.07.i19 = phi i32 [ %add1.i21, %while.body.i24.while.body.i24_crit_edge ], [ 5017472, %while.body.i16.while.body.i24_crit_edge ]
  %10 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i20 = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 58
  %12 = ptrtoint ptr %wreg.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wreg.i20, align 4
  tail call void %13(ptr noundef %hdev, i32 noundef %pb_addr.07.i19, i32 noundef 0) #3
  %add1.i21 = add nuw nsw i32 %pb_addr.07.i19, 4
  %and.i22 = and i32 %add1.i21, 4092
  %tobool.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.not.i23, label %while.body.i24.while.body.i32_crit_edge, label %while.body.i24.while.body.i24_crit_edge

while.body.i24.while.body.i24_crit_edge:          ; preds = %while.body.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i24

while.body.i24.while.body.i32_crit_edge:          ; preds = %while.body.i24
  br label %while.body.i32

while.body.i32:                                   ; preds = %while.body.i32.while.body.i32_crit_edge, %while.body.i24.while.body.i32_crit_edge
  %pb_addr.07.i27 = phi i32 [ %add1.i29, %while.body.i32.while.body.i32_crit_edge ], [ 5144448, %while.body.i24.while.body.i32_crit_edge ]
  %14 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i28 = getelementptr inbounds %struct.hl_asic_funcs, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %wreg.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wreg.i28, align 4
  tail call void %17(ptr noundef %hdev, i32 noundef %pb_addr.07.i27, i32 noundef 0) #3
  %add1.i29 = add nuw nsw i32 %pb_addr.07.i27, 4
  %and.i30 = and i32 %add1.i29, 4092
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %while.body.i32.while.body.i40_crit_edge, label %while.body.i32.while.body.i32_crit_edge

while.body.i32.while.body.i32_crit_edge:          ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i32

while.body.i32.while.body.i40_crit_edge:          ; preds = %while.body.i32
  br label %while.body.i40

while.body.i40:                                   ; preds = %while.body.i40.while.body.i40_crit_edge, %while.body.i32.while.body.i40_crit_edge
  %pb_addr.07.i35 = phi i32 [ %add1.i37, %while.body.i40.while.body.i40_crit_edge ], [ 5148544, %while.body.i32.while.body.i40_crit_edge ]
  %18 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i36 = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 58
  %20 = ptrtoint ptr %wreg.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wreg.i36, align 4
  tail call void %21(ptr noundef %hdev, i32 noundef %pb_addr.07.i35, i32 noundef 0) #3
  %add1.i37 = add nuw nsw i32 %pb_addr.07.i35, 4
  %and.i38 = and i32 %add1.i37, 4092
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %if.end, label %while.body.i40.while.body.i40_crit_edge

while.body.i40.while.body.i40_crit_edge:          ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i40

if.end:                                           ; preds = %while.body.i40
  %22 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i42 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i42, label %if.end.while.body.i.i_crit_edge, label %if.end.gaudi_init_dma_protection_bits.exit_crit_edge

if.end.gaudi_init_dma_protection_bits.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %gaudi_init_dma_protection_bits.exit

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %pb_addr.07.i.i = phi i32 [ %add1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 4853632, %if.end.while.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %24, i32 0, i32 58
  %25 = ptrtoint ptr %wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wreg.i.i, align 4
  tail call void %26(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i, i32 noundef 0) #3
  %add1.i.i = add nuw nsw i32 %pb_addr.07.i.i, 4
  %and.i.i = and i32 %add1.i.i, 4092
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.body.i6895.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.body.i.i.while.body.i6895.i_crit_edge:      ; preds = %while.body.i.i
  br label %while.body.i6895.i

while.body.i6895.i:                               ; preds = %while.body.i6895.i.while.body.i6895.i_crit_edge, %while.body.i.i.while.body.i6895.i_crit_edge
  %pb_addr.07.i6890.i = phi i32 [ %add1.i6892.i, %while.body.i6895.i.while.body.i6895.i_crit_edge ], [ 4857728, %while.body.i.i.while.body.i6895.i_crit_edge ]
  %27 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6891.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %28, i32 0, i32 58
  %29 = ptrtoint ptr %wreg.i6891.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wreg.i6891.i, align 4
  tail call void %30(ptr noundef %hdev, i32 noundef %pb_addr.07.i6890.i, i32 noundef 0) #3
  %add1.i6892.i = add nuw nsw i32 %pb_addr.07.i6890.i, 4
  %and.i6893.i = and i32 %add1.i6892.i, 4092
  %tobool.not.i6894.i = icmp eq i32 %and.i6893.i, 0
  br i1 %tobool.not.i6894.i, label %while.body.i6895.i.while.body.i6903.i_crit_edge, label %while.body.i6895.i.while.body.i6895.i_crit_edge

while.body.i6895.i.while.body.i6895.i_crit_edge:  ; preds = %while.body.i6895.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6895.i

while.body.i6895.i.while.body.i6903.i_crit_edge:  ; preds = %while.body.i6895.i
  br label %while.body.i6903.i

while.body.i6903.i:                               ; preds = %while.body.i6903.i.while.body.i6903.i_crit_edge, %while.body.i6895.i.while.body.i6903.i_crit_edge
  %pb_addr.07.i6898.i = phi i32 [ %add1.i6900.i, %while.body.i6903.i.while.body.i6903.i_crit_edge ], [ 4861824, %while.body.i6895.i.while.body.i6903.i_crit_edge ]
  %31 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6899.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %32, i32 0, i32 58
  %33 = ptrtoint ptr %wreg.i6899.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wreg.i6899.i, align 4
  tail call void %34(ptr noundef %hdev, i32 noundef %pb_addr.07.i6898.i, i32 noundef 0) #3
  %add1.i6900.i = add nuw nsw i32 %pb_addr.07.i6898.i, 4
  %and.i6901.i = and i32 %add1.i6900.i, 4092
  %tobool.not.i6902.i = icmp eq i32 %and.i6901.i, 0
  br i1 %tobool.not.i6902.i, label %while.body.i6903.i.while.body.i6911.i_crit_edge, label %while.body.i6903.i.while.body.i6903.i_crit_edge

while.body.i6903.i.while.body.i6903.i_crit_edge:  ; preds = %while.body.i6903.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6903.i

while.body.i6903.i.while.body.i6911.i_crit_edge:  ; preds = %while.body.i6903.i
  br label %while.body.i6911.i

while.body.i6911.i:                               ; preds = %while.body.i6911.i.while.body.i6911.i_crit_edge, %while.body.i6903.i.while.body.i6911.i_crit_edge
  %pb_addr.07.i6906.i = phi i32 [ %add1.i6908.i, %while.body.i6911.i.while.body.i6911.i_crit_edge ], [ 4886400, %while.body.i6903.i.while.body.i6911.i_crit_edge ]
  %35 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6907.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %36, i32 0, i32 58
  %37 = ptrtoint ptr %wreg.i6907.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wreg.i6907.i, align 4
  tail call void %38(ptr noundef %hdev, i32 noundef %pb_addr.07.i6906.i, i32 noundef 0) #3
  %add1.i6908.i = add nuw nsw i32 %pb_addr.07.i6906.i, 4
  %and.i6909.i = and i32 %add1.i6908.i, 4092
  %tobool.not.i6910.i = icmp eq i32 %and.i6909.i, 0
  br i1 %tobool.not.i6910.i, label %while.body.i6911.i.while.body.i6919.i_crit_edge, label %while.body.i6911.i.while.body.i6911.i_crit_edge

while.body.i6911.i.while.body.i6911.i_crit_edge:  ; preds = %while.body.i6911.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6911.i

while.body.i6911.i.while.body.i6919.i_crit_edge:  ; preds = %while.body.i6911.i
  br label %while.body.i6919.i

while.body.i6919.i:                               ; preds = %while.body.i6919.i.while.body.i6919.i_crit_edge, %while.body.i6911.i.while.body.i6919.i_crit_edge
  %pb_addr.07.i6914.i = phi i32 [ %add1.i6916.i, %while.body.i6919.i.while.body.i6919.i_crit_edge ], [ 4890496, %while.body.i6911.i.while.body.i6919.i_crit_edge ]
  %39 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6915.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %40, i32 0, i32 58
  %41 = ptrtoint ptr %wreg.i6915.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wreg.i6915.i, align 4
  tail call void %42(ptr noundef %hdev, i32 noundef %pb_addr.07.i6914.i, i32 noundef 0) #3
  %add1.i6916.i = add nuw nsw i32 %pb_addr.07.i6914.i, 4
  %and.i6917.i = and i32 %add1.i6916.i, 4092
  %tobool.not.i6918.i = icmp eq i32 %and.i6917.i, 0
  br i1 %tobool.not.i6918.i, label %while.body.i6919.i.while.body.i6927.i_crit_edge, label %while.body.i6919.i.while.body.i6919.i_crit_edge

while.body.i6919.i.while.body.i6919.i_crit_edge:  ; preds = %while.body.i6919.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6919.i

while.body.i6919.i.while.body.i6927.i_crit_edge:  ; preds = %while.body.i6919.i
  br label %while.body.i6927.i

while.body.i6927.i:                               ; preds = %while.body.i6927.i.while.body.i6927.i_crit_edge, %while.body.i6919.i.while.body.i6927.i_crit_edge
  %pb_addr.07.i6922.i = phi i32 [ %add1.i6924.i, %while.body.i6927.i.while.body.i6927.i_crit_edge ], [ 4984704, %while.body.i6919.i.while.body.i6927.i_crit_edge ]
  %43 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6923.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %44, i32 0, i32 58
  %45 = ptrtoint ptr %wreg.i6923.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wreg.i6923.i, align 4
  tail call void %46(ptr noundef %hdev, i32 noundef %pb_addr.07.i6922.i, i32 noundef 0) #3
  %add1.i6924.i = add nuw nsw i32 %pb_addr.07.i6922.i, 4
  %and.i6925.i = and i32 %add1.i6924.i, 4092
  %tobool.not.i6926.i = icmp eq i32 %and.i6925.i, 0
  br i1 %tobool.not.i6926.i, label %while.body.i6927.i.while.body.i6935.i_crit_edge, label %while.body.i6927.i.while.body.i6927.i_crit_edge

while.body.i6927.i.while.body.i6927.i_crit_edge:  ; preds = %while.body.i6927.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6927.i

while.body.i6927.i.while.body.i6935.i_crit_edge:  ; preds = %while.body.i6927.i
  br label %while.body.i6935.i

while.body.i6935.i:                               ; preds = %while.body.i6935.i.while.body.i6935.i_crit_edge, %while.body.i6927.i.while.body.i6935.i_crit_edge
  %pb_addr.07.i6930.i = phi i32 [ %add1.i6932.i, %while.body.i6935.i.while.body.i6935.i_crit_edge ], [ 4988800, %while.body.i6927.i.while.body.i6935.i_crit_edge ]
  %47 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6931.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %48, i32 0, i32 58
  %49 = ptrtoint ptr %wreg.i6931.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wreg.i6931.i, align 4
  tail call void %50(ptr noundef %hdev, i32 noundef %pb_addr.07.i6930.i, i32 noundef 0) #3
  %add1.i6932.i = add nuw nsw i32 %pb_addr.07.i6930.i, 4
  %and.i6933.i = and i32 %add1.i6932.i, 4092
  %tobool.not.i6934.i = icmp eq i32 %and.i6933.i, 0
  br i1 %tobool.not.i6934.i, label %while.body.i6935.i.while.body.i6943.i_crit_edge, label %while.body.i6935.i.while.body.i6935.i_crit_edge

while.body.i6935.i.while.body.i6935.i_crit_edge:  ; preds = %while.body.i6935.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6935.i

while.body.i6935.i.while.body.i6943.i_crit_edge:  ; preds = %while.body.i6935.i
  br label %while.body.i6943.i

while.body.i6943.i:                               ; preds = %while.body.i6943.i.while.body.i6943.i_crit_edge, %while.body.i6935.i.while.body.i6943.i_crit_edge
  %pb_addr.07.i6938.i = phi i32 [ %add1.i6940.i, %while.body.i6943.i.while.body.i6943.i_crit_edge ], [ 4992896, %while.body.i6935.i.while.body.i6943.i_crit_edge ]
  %51 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6939.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %52, i32 0, i32 58
  %53 = ptrtoint ptr %wreg.i6939.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wreg.i6939.i, align 4
  tail call void %54(ptr noundef %hdev, i32 noundef %pb_addr.07.i6938.i, i32 noundef 0) #3
  %add1.i6940.i = add nuw nsw i32 %pb_addr.07.i6938.i, 4
  %and.i6941.i = and i32 %add1.i6940.i, 4092
  %tobool.not.i6942.i = icmp eq i32 %and.i6941.i, 0
  br i1 %tobool.not.i6942.i, label %while.body.i6943.i.while.body.i6951.i_crit_edge, label %while.body.i6943.i.while.body.i6943.i_crit_edge

while.body.i6943.i.while.body.i6943.i_crit_edge:  ; preds = %while.body.i6943.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6943.i

while.body.i6943.i.while.body.i6951.i_crit_edge:  ; preds = %while.body.i6943.i
  br label %while.body.i6951.i

while.body.i6951.i:                               ; preds = %while.body.i6951.i.while.body.i6951.i_crit_edge, %while.body.i6943.i.while.body.i6951.i_crit_edge
  %pb_addr.07.i6946.i = phi i32 [ %add1.i6948.i, %while.body.i6951.i.while.body.i6951.i_crit_edge ], [ 5021568, %while.body.i6943.i.while.body.i6951.i_crit_edge ]
  %55 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6947.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %56, i32 0, i32 58
  %57 = ptrtoint ptr %wreg.i6947.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wreg.i6947.i, align 4
  tail call void %58(ptr noundef %hdev, i32 noundef %pb_addr.07.i6946.i, i32 noundef 0) #3
  %add1.i6948.i = add nuw nsw i32 %pb_addr.07.i6946.i, 4
  %and.i6949.i = and i32 %add1.i6948.i, 4092
  %tobool.not.i6950.i = icmp eq i32 %and.i6949.i, 0
  br i1 %tobool.not.i6950.i, label %while.body.i6951.i.while.body.i6959.i_crit_edge, label %while.body.i6951.i.while.body.i6951.i_crit_edge

while.body.i6951.i.while.body.i6951.i_crit_edge:  ; preds = %while.body.i6951.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6951.i

while.body.i6951.i.while.body.i6959.i_crit_edge:  ; preds = %while.body.i6951.i
  br label %while.body.i6959.i

while.body.i6959.i:                               ; preds = %while.body.i6959.i.while.body.i6959.i_crit_edge, %while.body.i6951.i.while.body.i6959.i_crit_edge
  %pb_addr.07.i6954.i = phi i32 [ %add1.i6956.i, %while.body.i6959.i.while.body.i6959.i_crit_edge ], [ 5115776, %while.body.i6951.i.while.body.i6959.i_crit_edge ]
  %59 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6955.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %60, i32 0, i32 58
  %61 = ptrtoint ptr %wreg.i6955.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wreg.i6955.i, align 4
  tail call void %62(ptr noundef %hdev, i32 noundef %pb_addr.07.i6954.i, i32 noundef 0) #3
  %add1.i6956.i = add nuw nsw i32 %pb_addr.07.i6954.i, 4
  %and.i6957.i = and i32 %add1.i6956.i, 4092
  %tobool.not.i6958.i = icmp eq i32 %and.i6957.i, 0
  br i1 %tobool.not.i6958.i, label %while.body.i6959.i.while.body.i6967.i_crit_edge, label %while.body.i6959.i.while.body.i6959.i_crit_edge

while.body.i6959.i.while.body.i6959.i_crit_edge:  ; preds = %while.body.i6959.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6959.i

while.body.i6959.i.while.body.i6967.i_crit_edge:  ; preds = %while.body.i6959.i
  br label %while.body.i6967.i

while.body.i6967.i:                               ; preds = %while.body.i6967.i.while.body.i6967.i_crit_edge, %while.body.i6959.i.while.body.i6967.i_crit_edge
  %pb_addr.07.i6962.i = phi i32 [ %add1.i6964.i, %while.body.i6967.i.while.body.i6967.i_crit_edge ], [ 5119872, %while.body.i6959.i.while.body.i6967.i_crit_edge ]
  %63 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6963.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %64, i32 0, i32 58
  %65 = ptrtoint ptr %wreg.i6963.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wreg.i6963.i, align 4
  tail call void %66(ptr noundef %hdev, i32 noundef %pb_addr.07.i6962.i, i32 noundef 0) #3
  %add1.i6964.i = add nuw nsw i32 %pb_addr.07.i6962.i, 4
  %and.i6965.i = and i32 %add1.i6964.i, 4092
  %tobool.not.i6966.i = icmp eq i32 %and.i6965.i, 0
  br i1 %tobool.not.i6966.i, label %while.body.i6967.i.while.body.i6975.i_crit_edge, label %while.body.i6967.i.while.body.i6967.i_crit_edge

while.body.i6967.i.while.body.i6967.i_crit_edge:  ; preds = %while.body.i6967.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6967.i

while.body.i6967.i.while.body.i6975.i_crit_edge:  ; preds = %while.body.i6967.i
  br label %while.body.i6975.i

while.body.i6975.i:                               ; preds = %while.body.i6975.i.while.body.i6975.i_crit_edge, %while.body.i6967.i.while.body.i6975.i_crit_edge
  %pb_addr.07.i6970.i = phi i32 [ %add1.i6972.i, %while.body.i6975.i.while.body.i6975.i_crit_edge ], [ 5123968, %while.body.i6967.i.while.body.i6975.i_crit_edge ]
  %67 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6971.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %68, i32 0, i32 58
  %69 = ptrtoint ptr %wreg.i6971.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wreg.i6971.i, align 4
  tail call void %70(ptr noundef %hdev, i32 noundef %pb_addr.07.i6970.i, i32 noundef 0) #3
  %add1.i6972.i = add nuw nsw i32 %pb_addr.07.i6970.i, 4
  %and.i6973.i = and i32 %add1.i6972.i, 4092
  %tobool.not.i6974.i = icmp eq i32 %and.i6973.i, 0
  br i1 %tobool.not.i6974.i, label %while.body.i6975.i.while.body.i6983.i_crit_edge, label %while.body.i6975.i.while.body.i6975.i_crit_edge

while.body.i6975.i.while.body.i6975.i_crit_edge:  ; preds = %while.body.i6975.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6975.i

while.body.i6975.i.while.body.i6983.i_crit_edge:  ; preds = %while.body.i6975.i
  br label %while.body.i6983.i

while.body.i6983.i:                               ; preds = %while.body.i6983.i.while.body.i6983.i_crit_edge, %while.body.i6975.i.while.body.i6983.i_crit_edge
  %pb_addr.07.i6978.i = phi i32 [ %add1.i6980.i, %while.body.i6983.i.while.body.i6983.i_crit_edge ], [ 5152640, %while.body.i6975.i.while.body.i6983.i_crit_edge ]
  %71 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %asic_funcs.i, align 8
  %wreg.i6979.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %72, i32 0, i32 58
  %73 = ptrtoint ptr %wreg.i6979.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wreg.i6979.i, align 4
  tail call void %74(ptr noundef %hdev, i32 noundef %pb_addr.07.i6978.i, i32 noundef 0) #3
  %add1.i6980.i = add nuw nsw i32 %pb_addr.07.i6978.i, 4
  %and.i6981.i = and i32 %add1.i6980.i, 4092
  %tobool.not.i6982.i = icmp eq i32 %and.i6981.i, 0
  br i1 %tobool.not.i6982.i, label %while.body.i6983.i.gaudi_init_dma_protection_bits.exit_crit_edge, label %while.body.i6983.i.while.body.i6983.i_crit_edge

while.body.i6983.i.while.body.i6983.i_crit_edge:  ; preds = %while.body.i6983.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6983.i

while.body.i6983.i.gaudi_init_dma_protection_bits.exit_crit_edge: ; preds = %while.body.i6983.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gaudi_init_dma_protection_bits.exit

gaudi_init_dma_protection_bits.exit:              ; preds = %while.body.i6983.i.gaudi_init_dma_protection_bits.exit_crit_edge, %if.end.gaudi_init_dma_protection_bits.exit_crit_edge, %entry.gaudi_init_dma_protection_bits.exit_crit_edge
  %asic_funcs.i43 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %75 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i44 = getelementptr inbounds %struct.hl_asic_funcs, ptr %76, i32 0, i32 58
  %77 = ptrtoint ptr %wreg.i44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wreg.i44, align 4
  tail call void %78(ptr noundef %hdev, i32 noundef 5279740, i32 noundef 0) #3
  %79 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %80, i32 0, i32 58
  %81 = ptrtoint ptr %wreg2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wreg2.i, align 4
  tail call void %82(ptr noundef %hdev, i32 noundef 5410812, i32 noundef 0) #3
  %83 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg4.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %84, i32 0, i32 58
  %85 = ptrtoint ptr %wreg4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wreg4.i, align 4
  tail call void %86(ptr noundef %hdev, i32 noundef 5541884, i32 noundef 0) #3
  %87 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg6.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %88, i32 0, i32 58
  %89 = ptrtoint ptr %wreg6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wreg6.i, align 4
  tail call void %90(ptr noundef %hdev, i32 noundef 5672956, i32 noundef 0) #3
  %91 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg8.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %92, i32 0, i32 58
  %93 = ptrtoint ptr %wreg8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wreg8.i, align 4
  tail call void %94(ptr noundef %hdev, i32 noundef 5804028, i32 noundef 0) #3
  %95 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg10.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %96, i32 0, i32 58
  %97 = ptrtoint ptr %wreg10.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wreg10.i, align 4
  tail call void %98(ptr noundef %hdev, i32 noundef 5935100, i32 noundef 0) #3
  %99 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg12.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %100, i32 0, i32 58
  %101 = ptrtoint ptr %wreg12.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wreg12.i, align 4
  tail call void %102(ptr noundef %hdev, i32 noundef 6066172, i32 noundef 0) #3
  %103 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg14.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %104, i32 0, i32 58
  %105 = ptrtoint ptr %wreg14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wreg14.i, align 4
  tail call void %106(ptr noundef %hdev, i32 noundef 6197244, i32 noundef 0) #3
  %107 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg16.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %108, i32 0, i32 58
  %109 = ptrtoint ptr %wreg16.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wreg16.i, align 4
  tail call void %110(ptr noundef %hdev, i32 noundef 5246972, i32 noundef 0) #3
  %111 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg18.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %112, i32 0, i32 58
  %113 = ptrtoint ptr %wreg18.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wreg18.i, align 4
  tail call void %114(ptr noundef %hdev, i32 noundef 5378044, i32 noundef 0) #3
  %115 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg20.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %116, i32 0, i32 58
  %117 = ptrtoint ptr %wreg20.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wreg20.i, align 4
  tail call void %118(ptr noundef %hdev, i32 noundef 5509116, i32 noundef 0) #3
  %119 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg22.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %120, i32 0, i32 58
  %121 = ptrtoint ptr %wreg22.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wreg22.i, align 4
  tail call void %122(ptr noundef %hdev, i32 noundef 5640188, i32 noundef 0) #3
  %123 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg24.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %124, i32 0, i32 58
  %125 = ptrtoint ptr %wreg24.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wreg24.i, align 4
  tail call void %126(ptr noundef %hdev, i32 noundef 5771260, i32 noundef 0) #3
  %127 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg26.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %128, i32 0, i32 58
  %129 = ptrtoint ptr %wreg26.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wreg26.i, align 4
  tail call void %130(ptr noundef %hdev, i32 noundef 5902332, i32 noundef 0) #3
  %131 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg28.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %132, i32 0, i32 58
  %133 = ptrtoint ptr %wreg28.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wreg28.i, align 4
  tail call void %134(ptr noundef %hdev, i32 noundef 6033404, i32 noundef 0) #3
  %135 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg30.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %136, i32 0, i32 58
  %137 = ptrtoint ptr %wreg30.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wreg30.i, align 4
  tail call void %138(ptr noundef %hdev, i32 noundef 6164476, i32 noundef 0) #3
  %139 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg59.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %140, i32 0, i32 58
  %141 = ptrtoint ptr %wreg59.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wreg59.i, align 4
  tail call void %142(ptr noundef %hdev, i32 noundef 5279616, i32 noundef 167804928) #3
  %143 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg92.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %144, i32 0, i32 58
  %145 = ptrtoint ptr %wreg92.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wreg92.i, align 4
  tail call void %146(ptr noundef %hdev, i32 noundef 5279620, i32 noundef 0) #3
  %147 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg111.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %148, i32 0, i32 58
  %149 = ptrtoint ptr %wreg111.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wreg111.i, align 4
  tail call void %150(ptr noundef %hdev, i32 noundef 5279624, i32 noundef 277348336) #3
  %151 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg143.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %152, i32 0, i32 58
  %153 = ptrtoint ptr %wreg143.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wreg143.i, align 4
  tail call void %154(ptr noundef %hdev, i32 noundef 5279628, i32 noundef 122880) #3
  %155 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg179.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %156, i32 0, i32 58
  %157 = ptrtoint ptr %wreg179.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wreg179.i, align 4
  tail call void %158(ptr noundef %hdev, i32 noundef 5279632, i32 noundef 0) #3
  %159 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg214.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %160, i32 0, i32 58
  %161 = ptrtoint ptr %wreg214.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wreg214.i, align 4
  tail call void %162(ptr noundef %hdev, i32 noundef 5279636, i32 noundef 8388608) #3
  %163 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg220.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %164, i32 0, i32 58
  %165 = ptrtoint ptr %wreg220.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wreg220.i, align 4
  tail call void %166(ptr noundef %hdev, i32 noundef 5279640, i32 noundef -4) #3
  %167 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg242.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %168, i32 0, i32 58
  %169 = ptrtoint ptr %wreg242.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %wreg242.i, align 4
  tail call void %170(ptr noundef %hdev, i32 noundef 5279644, i32 noundef 503317503) #3
  %171 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg250.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %172, i32 0, i32 58
  %173 = ptrtoint ptr %wreg250.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %wreg250.i, align 4
  tail call void %174(ptr noundef %hdev, i32 noundef 5279648, i32 noundef -16) #3
  %175 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg267.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %176, i32 0, i32 58
  %177 = ptrtoint ptr %wreg267.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wreg267.i, align 4
  tail call void %178(ptr noundef %hdev, i32 noundef 5279648, i32 noundef -131057) #3
  %179 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg296.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %180, i32 0, i32 58
  %181 = ptrtoint ptr %wreg296.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wreg296.i, align 4
  tail call void %182(ptr noundef %hdev, i32 noundef 5279696, i32 noundef 191) #3
  %183 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg308.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %184, i32 0, i32 58
  %185 = ptrtoint ptr %wreg308.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wreg308.i, align 4
  tail call void %186(ptr noundef %hdev, i32 noundef 5279700, i32 noundef -256) #3
  %187 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg317.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %188, i32 0, i32 58
  %189 = ptrtoint ptr %wreg317.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wreg317.i, align 4
  tail call void %190(ptr noundef %hdev, i32 noundef 5279704, i32 noundef -1982465) #3
  %191 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg348.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %192, i32 0, i32 58
  %193 = ptrtoint ptr %wreg348.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %wreg348.i, align 4
  tail call void %194(ptr noundef %hdev, i32 noundef 5279708, i32 noundef 2672) #3
  %195 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg367.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %196, i32 0, i32 58
  %197 = ptrtoint ptr %wreg367.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %wreg367.i, align 4
  tail call void %198(ptr noundef %hdev, i32 noundef 5279712, i32 noundef -1879052288) #3
  %199 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg386.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %200, i32 0, i32 58
  %201 = ptrtoint ptr %wreg386.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %wreg386.i, align 4
  tail call void %202(ptr noundef %hdev, i32 noundef 5279716, i32 noundef -7402484) #3
  %203 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg391.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %204, i32 0, i32 58
  %205 = ptrtoint ptr %wreg391.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wreg391.i, align 4
  tail call void %206(ptr noundef %hdev, i32 noundef 5279720, i32 noundef -2) #3
  %207 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg424.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %208, i32 0, i32 58
  %209 = ptrtoint ptr %wreg424.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %wreg424.i, align 4
  tail call void %210(ptr noundef %hdev, i32 noundef 5410688, i32 noundef 167804928) #3
  %211 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg460.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %212, i32 0, i32 58
  %213 = ptrtoint ptr %wreg460.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %wreg460.i, align 4
  tail call void %214(ptr noundef %hdev, i32 noundef 5410692, i32 noundef 0) #3
  %215 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg479.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %216, i32 0, i32 58
  %217 = ptrtoint ptr %wreg479.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %wreg479.i, align 4
  tail call void %218(ptr noundef %hdev, i32 noundef 5410696, i32 noundef 277348336) #3
  %219 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg511.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %220, i32 0, i32 58
  %221 = ptrtoint ptr %wreg511.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %wreg511.i, align 4
  tail call void %222(ptr noundef %hdev, i32 noundef 5410700, i32 noundef 122880) #3
  %223 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg547.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %224, i32 0, i32 58
  %225 = ptrtoint ptr %wreg547.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %wreg547.i, align 4
  tail call void %226(ptr noundef %hdev, i32 noundef 5410704, i32 noundef 0) #3
  %227 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg582.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %228, i32 0, i32 58
  %229 = ptrtoint ptr %wreg582.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wreg582.i, align 4
  tail call void %230(ptr noundef %hdev, i32 noundef 5410708, i32 noundef 8388608) #3
  %231 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg588.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %232, i32 0, i32 58
  %233 = ptrtoint ptr %wreg588.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %wreg588.i, align 4
  tail call void %234(ptr noundef %hdev, i32 noundef 5410712, i32 noundef -4) #3
  %235 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg610.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %236, i32 0, i32 58
  %237 = ptrtoint ptr %wreg610.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %wreg610.i, align 4
  tail call void %238(ptr noundef %hdev, i32 noundef 5410716, i32 noundef 503317503) #3
  %239 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg618.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %240, i32 0, i32 58
  %241 = ptrtoint ptr %wreg618.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %wreg618.i, align 4
  tail call void %242(ptr noundef %hdev, i32 noundef 5410720, i32 noundef -16) #3
  %243 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg635.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %244, i32 0, i32 58
  %245 = ptrtoint ptr %wreg635.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %wreg635.i, align 4
  tail call void %246(ptr noundef %hdev, i32 noundef 5410720, i32 noundef -131057) #3
  %247 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg664.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %248, i32 0, i32 58
  %249 = ptrtoint ptr %wreg664.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %wreg664.i, align 4
  tail call void %250(ptr noundef %hdev, i32 noundef 5410768, i32 noundef 191) #3
  %251 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg676.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %252, i32 0, i32 58
  %253 = ptrtoint ptr %wreg676.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %wreg676.i, align 4
  tail call void %254(ptr noundef %hdev, i32 noundef 5410772, i32 noundef -256) #3
  %255 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg685.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %256, i32 0, i32 58
  %257 = ptrtoint ptr %wreg685.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %wreg685.i, align 4
  tail call void %258(ptr noundef %hdev, i32 noundef 5410776, i32 noundef -1982465) #3
  %259 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg716.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %260, i32 0, i32 58
  %261 = ptrtoint ptr %wreg716.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %wreg716.i, align 4
  tail call void %262(ptr noundef %hdev, i32 noundef 5410780, i32 noundef 2672) #3
  %263 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg735.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %264, i32 0, i32 58
  %265 = ptrtoint ptr %wreg735.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %wreg735.i, align 4
  tail call void %266(ptr noundef %hdev, i32 noundef 5410784, i32 noundef -1879052288) #3
  %267 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg754.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %268, i32 0, i32 58
  %269 = ptrtoint ptr %wreg754.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %wreg754.i, align 4
  tail call void %270(ptr noundef %hdev, i32 noundef 5410788, i32 noundef -7402484) #3
  %271 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg759.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %272, i32 0, i32 58
  %273 = ptrtoint ptr %wreg759.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %wreg759.i, align 4
  tail call void %274(ptr noundef %hdev, i32 noundef 5410792, i32 noundef -2) #3
  %275 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg792.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %276, i32 0, i32 58
  %277 = ptrtoint ptr %wreg792.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %wreg792.i, align 4
  tail call void %278(ptr noundef %hdev, i32 noundef 5541760, i32 noundef 167804928) #3
  %279 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg828.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %280, i32 0, i32 58
  %281 = ptrtoint ptr %wreg828.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %wreg828.i, align 4
  tail call void %282(ptr noundef %hdev, i32 noundef 5541764, i32 noundef 0) #3
  %283 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg847.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %284, i32 0, i32 58
  %285 = ptrtoint ptr %wreg847.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %wreg847.i, align 4
  tail call void %286(ptr noundef %hdev, i32 noundef 5541768, i32 noundef 277348336) #3
  %287 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg879.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %288, i32 0, i32 58
  %289 = ptrtoint ptr %wreg879.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %wreg879.i, align 4
  tail call void %290(ptr noundef %hdev, i32 noundef 5541772, i32 noundef 122880) #3
  %291 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg915.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %292, i32 0, i32 58
  %293 = ptrtoint ptr %wreg915.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %wreg915.i, align 4
  tail call void %294(ptr noundef %hdev, i32 noundef 5541776, i32 noundef 0) #3
  %295 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg950.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %296, i32 0, i32 58
  %297 = ptrtoint ptr %wreg950.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %wreg950.i, align 4
  tail call void %298(ptr noundef %hdev, i32 noundef 5541780, i32 noundef 8388608) #3
  %299 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg956.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %300, i32 0, i32 58
  %301 = ptrtoint ptr %wreg956.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %wreg956.i, align 4
  tail call void %302(ptr noundef %hdev, i32 noundef 5541784, i32 noundef -4) #3
  %303 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg978.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %304, i32 0, i32 58
  %305 = ptrtoint ptr %wreg978.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %wreg978.i, align 4
  tail call void %306(ptr noundef %hdev, i32 noundef 5541788, i32 noundef 503317503) #3
  %307 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg986.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %308, i32 0, i32 58
  %309 = ptrtoint ptr %wreg986.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %wreg986.i, align 4
  tail call void %310(ptr noundef %hdev, i32 noundef 5541792, i32 noundef -16) #3
  %311 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1003.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %312, i32 0, i32 58
  %313 = ptrtoint ptr %wreg1003.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %wreg1003.i, align 4
  tail call void %314(ptr noundef %hdev, i32 noundef 5541792, i32 noundef -131057) #3
  %315 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1032.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %316, i32 0, i32 58
  %317 = ptrtoint ptr %wreg1032.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %wreg1032.i, align 4
  tail call void %318(ptr noundef %hdev, i32 noundef 5541840, i32 noundef 191) #3
  %319 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1044.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %320, i32 0, i32 58
  %321 = ptrtoint ptr %wreg1044.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %wreg1044.i, align 4
  tail call void %322(ptr noundef %hdev, i32 noundef 5541844, i32 noundef -256) #3
  %323 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1053.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %324, i32 0, i32 58
  %325 = ptrtoint ptr %wreg1053.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %wreg1053.i, align 4
  tail call void %326(ptr noundef %hdev, i32 noundef 5541848, i32 noundef -1982465) #3
  %327 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1084.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %328, i32 0, i32 58
  %329 = ptrtoint ptr %wreg1084.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %wreg1084.i, align 4
  tail call void %330(ptr noundef %hdev, i32 noundef 5541852, i32 noundef 2672) #3
  %331 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1103.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %332, i32 0, i32 58
  %333 = ptrtoint ptr %wreg1103.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %wreg1103.i, align 4
  tail call void %334(ptr noundef %hdev, i32 noundef 5541856, i32 noundef -1879052288) #3
  %335 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1122.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %336, i32 0, i32 58
  %337 = ptrtoint ptr %wreg1122.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %wreg1122.i, align 4
  tail call void %338(ptr noundef %hdev, i32 noundef 5541860, i32 noundef -7402484) #3
  %339 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1127.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %340, i32 0, i32 58
  %341 = ptrtoint ptr %wreg1127.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %wreg1127.i, align 4
  tail call void %342(ptr noundef %hdev, i32 noundef 5541864, i32 noundef -2) #3
  %343 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1160.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %344, i32 0, i32 58
  %345 = ptrtoint ptr %wreg1160.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %wreg1160.i, align 4
  tail call void %346(ptr noundef %hdev, i32 noundef 5672832, i32 noundef 167804928) #3
  %347 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1196.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %348, i32 0, i32 58
  %349 = ptrtoint ptr %wreg1196.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wreg1196.i, align 4
  tail call void %350(ptr noundef %hdev, i32 noundef 5672836, i32 noundef 0) #3
  %351 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1215.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %352, i32 0, i32 58
  %353 = ptrtoint ptr %wreg1215.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %wreg1215.i, align 4
  tail call void %354(ptr noundef %hdev, i32 noundef 5672840, i32 noundef 277348336) #3
  %355 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1247.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %356, i32 0, i32 58
  %357 = ptrtoint ptr %wreg1247.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %wreg1247.i, align 4
  tail call void %358(ptr noundef %hdev, i32 noundef 5672844, i32 noundef 122880) #3
  %359 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1283.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %360, i32 0, i32 58
  %361 = ptrtoint ptr %wreg1283.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %wreg1283.i, align 4
  tail call void %362(ptr noundef %hdev, i32 noundef 5672848, i32 noundef 0) #3
  %363 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1318.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %364, i32 0, i32 58
  %365 = ptrtoint ptr %wreg1318.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %wreg1318.i, align 4
  tail call void %366(ptr noundef %hdev, i32 noundef 5672852, i32 noundef 8388608) #3
  %367 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1324.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %368, i32 0, i32 58
  %369 = ptrtoint ptr %wreg1324.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %wreg1324.i, align 4
  tail call void %370(ptr noundef %hdev, i32 noundef 5672856, i32 noundef -4) #3
  %371 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1346.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %372, i32 0, i32 58
  %373 = ptrtoint ptr %wreg1346.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %wreg1346.i, align 4
  tail call void %374(ptr noundef %hdev, i32 noundef 5672860, i32 noundef 503317503) #3
  %375 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1354.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %376, i32 0, i32 58
  %377 = ptrtoint ptr %wreg1354.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %wreg1354.i, align 4
  tail call void %378(ptr noundef %hdev, i32 noundef 5672864, i32 noundef -16) #3
  %379 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1371.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %380, i32 0, i32 58
  %381 = ptrtoint ptr %wreg1371.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %wreg1371.i, align 4
  tail call void %382(ptr noundef %hdev, i32 noundef 5672864, i32 noundef -131057) #3
  %383 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1400.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %384, i32 0, i32 58
  %385 = ptrtoint ptr %wreg1400.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %wreg1400.i, align 4
  tail call void %386(ptr noundef %hdev, i32 noundef 5672912, i32 noundef 191) #3
  %387 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1412.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %388, i32 0, i32 58
  %389 = ptrtoint ptr %wreg1412.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %wreg1412.i, align 4
  tail call void %390(ptr noundef %hdev, i32 noundef 5672916, i32 noundef -256) #3
  %391 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1421.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %392, i32 0, i32 58
  %393 = ptrtoint ptr %wreg1421.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %wreg1421.i, align 4
  tail call void %394(ptr noundef %hdev, i32 noundef 5672920, i32 noundef -1982465) #3
  %395 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1452.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %396, i32 0, i32 58
  %397 = ptrtoint ptr %wreg1452.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %wreg1452.i, align 4
  tail call void %398(ptr noundef %hdev, i32 noundef 5672924, i32 noundef 2672) #3
  %399 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1471.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %400, i32 0, i32 58
  %401 = ptrtoint ptr %wreg1471.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %wreg1471.i, align 4
  tail call void %402(ptr noundef %hdev, i32 noundef 5672928, i32 noundef -1879052288) #3
  %403 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1490.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %404, i32 0, i32 58
  %405 = ptrtoint ptr %wreg1490.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %wreg1490.i, align 4
  tail call void %406(ptr noundef %hdev, i32 noundef 5672932, i32 noundef -7402484) #3
  %407 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1495.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %408, i32 0, i32 58
  %409 = ptrtoint ptr %wreg1495.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %wreg1495.i, align 4
  tail call void %410(ptr noundef %hdev, i32 noundef 5672936, i32 noundef -2) #3
  %411 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1528.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %412, i32 0, i32 58
  %413 = ptrtoint ptr %wreg1528.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %wreg1528.i, align 4
  tail call void %414(ptr noundef %hdev, i32 noundef 5803904, i32 noundef 167804928) #3
  %415 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1564.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %416, i32 0, i32 58
  %417 = ptrtoint ptr %wreg1564.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %wreg1564.i, align 4
  tail call void %418(ptr noundef %hdev, i32 noundef 5803908, i32 noundef 0) #3
  %419 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1583.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %420, i32 0, i32 58
  %421 = ptrtoint ptr %wreg1583.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %wreg1583.i, align 4
  tail call void %422(ptr noundef %hdev, i32 noundef 5803912, i32 noundef 277348336) #3
  %423 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1615.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %424, i32 0, i32 58
  %425 = ptrtoint ptr %wreg1615.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %wreg1615.i, align 4
  tail call void %426(ptr noundef %hdev, i32 noundef 5803916, i32 noundef 122880) #3
  %427 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1651.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %428, i32 0, i32 58
  %429 = ptrtoint ptr %wreg1651.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %wreg1651.i, align 4
  tail call void %430(ptr noundef %hdev, i32 noundef 5803920, i32 noundef 0) #3
  %431 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1686.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %432, i32 0, i32 58
  %433 = ptrtoint ptr %wreg1686.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %wreg1686.i, align 4
  tail call void %434(ptr noundef %hdev, i32 noundef 5803924, i32 noundef 8388608) #3
  %435 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1692.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %436, i32 0, i32 58
  %437 = ptrtoint ptr %wreg1692.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %wreg1692.i, align 4
  tail call void %438(ptr noundef %hdev, i32 noundef 5803928, i32 noundef -4) #3
  %439 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1714.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %440, i32 0, i32 58
  %441 = ptrtoint ptr %wreg1714.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %wreg1714.i, align 4
  tail call void %442(ptr noundef %hdev, i32 noundef 5803932, i32 noundef 503317503) #3
  %443 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1722.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %444, i32 0, i32 58
  %445 = ptrtoint ptr %wreg1722.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %wreg1722.i, align 4
  tail call void %446(ptr noundef %hdev, i32 noundef 5803936, i32 noundef -16) #3
  %447 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1739.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %448, i32 0, i32 58
  %449 = ptrtoint ptr %wreg1739.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %wreg1739.i, align 4
  tail call void %450(ptr noundef %hdev, i32 noundef 5803936, i32 noundef -131057) #3
  %451 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1768.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %452, i32 0, i32 58
  %453 = ptrtoint ptr %wreg1768.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %wreg1768.i, align 4
  tail call void %454(ptr noundef %hdev, i32 noundef 5803984, i32 noundef 191) #3
  %455 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1780.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %456, i32 0, i32 58
  %457 = ptrtoint ptr %wreg1780.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %wreg1780.i, align 4
  tail call void %458(ptr noundef %hdev, i32 noundef 5803988, i32 noundef -256) #3
  %459 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1789.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %460, i32 0, i32 58
  %461 = ptrtoint ptr %wreg1789.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %wreg1789.i, align 4
  tail call void %462(ptr noundef %hdev, i32 noundef 5803992, i32 noundef -1982465) #3
  %463 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1820.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %464, i32 0, i32 58
  %465 = ptrtoint ptr %wreg1820.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %wreg1820.i, align 4
  tail call void %466(ptr noundef %hdev, i32 noundef 5803996, i32 noundef 2672) #3
  %467 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1839.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %468, i32 0, i32 58
  %469 = ptrtoint ptr %wreg1839.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %wreg1839.i, align 4
  tail call void %470(ptr noundef %hdev, i32 noundef 5804000, i32 noundef -1879052288) #3
  %471 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1858.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %472, i32 0, i32 58
  %473 = ptrtoint ptr %wreg1858.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %wreg1858.i, align 4
  tail call void %474(ptr noundef %hdev, i32 noundef 5804004, i32 noundef -7402484) #3
  %475 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1863.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %476, i32 0, i32 58
  %477 = ptrtoint ptr %wreg1863.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %wreg1863.i, align 4
  tail call void %478(ptr noundef %hdev, i32 noundef 5804008, i32 noundef -2) #3
  %479 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1896.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %480, i32 0, i32 58
  %481 = ptrtoint ptr %wreg1896.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %wreg1896.i, align 4
  tail call void %482(ptr noundef %hdev, i32 noundef 5934976, i32 noundef 167804928) #3
  %483 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1932.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %484, i32 0, i32 58
  %485 = ptrtoint ptr %wreg1932.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %wreg1932.i, align 4
  tail call void %486(ptr noundef %hdev, i32 noundef 5934980, i32 noundef 0) #3
  %487 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1951.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %488, i32 0, i32 58
  %489 = ptrtoint ptr %wreg1951.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %wreg1951.i, align 4
  tail call void %490(ptr noundef %hdev, i32 noundef 5934984, i32 noundef 277348336) #3
  %491 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1983.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %492, i32 0, i32 58
  %493 = ptrtoint ptr %wreg1983.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %wreg1983.i, align 4
  tail call void %494(ptr noundef %hdev, i32 noundef 5934988, i32 noundef 122880) #3
  %495 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2019.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %496, i32 0, i32 58
  %497 = ptrtoint ptr %wreg2019.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %wreg2019.i, align 4
  tail call void %498(ptr noundef %hdev, i32 noundef 5934992, i32 noundef 0) #3
  %499 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2054.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %500, i32 0, i32 58
  %501 = ptrtoint ptr %wreg2054.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %wreg2054.i, align 4
  tail call void %502(ptr noundef %hdev, i32 noundef 5934996, i32 noundef 8388608) #3
  %503 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2060.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %504, i32 0, i32 58
  %505 = ptrtoint ptr %wreg2060.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %wreg2060.i, align 4
  tail call void %506(ptr noundef %hdev, i32 noundef 5935000, i32 noundef -4) #3
  %507 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2082.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %508, i32 0, i32 58
  %509 = ptrtoint ptr %wreg2082.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %wreg2082.i, align 4
  tail call void %510(ptr noundef %hdev, i32 noundef 5935004, i32 noundef 503317503) #3
  %511 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2090.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %512, i32 0, i32 58
  %513 = ptrtoint ptr %wreg2090.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %wreg2090.i, align 4
  tail call void %514(ptr noundef %hdev, i32 noundef 5935008, i32 noundef -16) #3
  %515 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2107.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %516, i32 0, i32 58
  %517 = ptrtoint ptr %wreg2107.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %wreg2107.i, align 4
  tail call void %518(ptr noundef %hdev, i32 noundef 5935008, i32 noundef -131057) #3
  %519 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2136.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %520, i32 0, i32 58
  %521 = ptrtoint ptr %wreg2136.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %wreg2136.i, align 4
  tail call void %522(ptr noundef %hdev, i32 noundef 5935056, i32 noundef 191) #3
  %523 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2148.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %524, i32 0, i32 58
  %525 = ptrtoint ptr %wreg2148.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %wreg2148.i, align 4
  tail call void %526(ptr noundef %hdev, i32 noundef 5935060, i32 noundef -256) #3
  %527 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2157.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %528, i32 0, i32 58
  %529 = ptrtoint ptr %wreg2157.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %wreg2157.i, align 4
  tail call void %530(ptr noundef %hdev, i32 noundef 5935064, i32 noundef -1982465) #3
  %531 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2188.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %532, i32 0, i32 58
  %533 = ptrtoint ptr %wreg2188.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %wreg2188.i, align 4
  tail call void %534(ptr noundef %hdev, i32 noundef 5935068, i32 noundef 2672) #3
  %535 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2207.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %536, i32 0, i32 58
  %537 = ptrtoint ptr %wreg2207.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %wreg2207.i, align 4
  tail call void %538(ptr noundef %hdev, i32 noundef 5935072, i32 noundef -1879052288) #3
  %539 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2226.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %540, i32 0, i32 58
  %541 = ptrtoint ptr %wreg2226.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %wreg2226.i, align 4
  tail call void %542(ptr noundef %hdev, i32 noundef 5935076, i32 noundef -7402484) #3
  %543 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2231.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %544, i32 0, i32 58
  %545 = ptrtoint ptr %wreg2231.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %wreg2231.i, align 4
  tail call void %546(ptr noundef %hdev, i32 noundef 5935080, i32 noundef -2) #3
  %547 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2264.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %548, i32 0, i32 58
  %549 = ptrtoint ptr %wreg2264.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %wreg2264.i, align 4
  tail call void %550(ptr noundef %hdev, i32 noundef 6066048, i32 noundef 167804928) #3
  %551 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2300.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %552, i32 0, i32 58
  %553 = ptrtoint ptr %wreg2300.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %wreg2300.i, align 4
  tail call void %554(ptr noundef %hdev, i32 noundef 6066052, i32 noundef 0) #3
  %555 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2319.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %556, i32 0, i32 58
  %557 = ptrtoint ptr %wreg2319.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %wreg2319.i, align 4
  tail call void %558(ptr noundef %hdev, i32 noundef 6066056, i32 noundef 277348336) #3
  %559 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2351.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %560, i32 0, i32 58
  %561 = ptrtoint ptr %wreg2351.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %wreg2351.i, align 4
  tail call void %562(ptr noundef %hdev, i32 noundef 6066060, i32 noundef 122880) #3
  %563 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2387.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %564, i32 0, i32 58
  %565 = ptrtoint ptr %wreg2387.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %wreg2387.i, align 4
  tail call void %566(ptr noundef %hdev, i32 noundef 6066064, i32 noundef 0) #3
  %567 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2422.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %568, i32 0, i32 58
  %569 = ptrtoint ptr %wreg2422.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %wreg2422.i, align 4
  tail call void %570(ptr noundef %hdev, i32 noundef 6066068, i32 noundef 8388608) #3
  %571 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2428.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %572, i32 0, i32 58
  %573 = ptrtoint ptr %wreg2428.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %wreg2428.i, align 4
  tail call void %574(ptr noundef %hdev, i32 noundef 6066072, i32 noundef -4) #3
  %575 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2450.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %576, i32 0, i32 58
  %577 = ptrtoint ptr %wreg2450.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %wreg2450.i, align 4
  tail call void %578(ptr noundef %hdev, i32 noundef 6066076, i32 noundef 503317503) #3
  %579 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2458.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %580, i32 0, i32 58
  %581 = ptrtoint ptr %wreg2458.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %wreg2458.i, align 4
  tail call void %582(ptr noundef %hdev, i32 noundef 6066080, i32 noundef -16) #3
  %583 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2475.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %584, i32 0, i32 58
  %585 = ptrtoint ptr %wreg2475.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %wreg2475.i, align 4
  tail call void %586(ptr noundef %hdev, i32 noundef 6066080, i32 noundef -131057) #3
  %587 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2504.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %588, i32 0, i32 58
  %589 = ptrtoint ptr %wreg2504.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %wreg2504.i, align 4
  tail call void %590(ptr noundef %hdev, i32 noundef 6066128, i32 noundef 191) #3
  %591 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2516.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %592, i32 0, i32 58
  %593 = ptrtoint ptr %wreg2516.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %wreg2516.i, align 4
  tail call void %594(ptr noundef %hdev, i32 noundef 6066132, i32 noundef -256) #3
  %595 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2525.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %596, i32 0, i32 58
  %597 = ptrtoint ptr %wreg2525.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %wreg2525.i, align 4
  tail call void %598(ptr noundef %hdev, i32 noundef 6066136, i32 noundef -1982465) #3
  %599 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2556.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %600, i32 0, i32 58
  %601 = ptrtoint ptr %wreg2556.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %wreg2556.i, align 4
  tail call void %602(ptr noundef %hdev, i32 noundef 6066140, i32 noundef 2672) #3
  %603 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2575.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %604, i32 0, i32 58
  %605 = ptrtoint ptr %wreg2575.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %wreg2575.i, align 4
  tail call void %606(ptr noundef %hdev, i32 noundef 6066144, i32 noundef -1879052288) #3
  %607 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2594.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %608, i32 0, i32 58
  %609 = ptrtoint ptr %wreg2594.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %wreg2594.i, align 4
  tail call void %610(ptr noundef %hdev, i32 noundef 6066148, i32 noundef -7402484) #3
  %611 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2599.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %612, i32 0, i32 58
  %613 = ptrtoint ptr %wreg2599.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %wreg2599.i, align 4
  tail call void %614(ptr noundef %hdev, i32 noundef 6066152, i32 noundef -2) #3
  %615 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2632.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %616, i32 0, i32 58
  %617 = ptrtoint ptr %wreg2632.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %wreg2632.i, align 4
  tail call void %618(ptr noundef %hdev, i32 noundef 6197120, i32 noundef 167804928) #3
  %619 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2668.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %620, i32 0, i32 58
  %621 = ptrtoint ptr %wreg2668.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %wreg2668.i, align 4
  tail call void %622(ptr noundef %hdev, i32 noundef 6197124, i32 noundef 0) #3
  %623 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2687.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %624, i32 0, i32 58
  %625 = ptrtoint ptr %wreg2687.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %wreg2687.i, align 4
  tail call void %626(ptr noundef %hdev, i32 noundef 6197128, i32 noundef 277348336) #3
  %627 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2719.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %628, i32 0, i32 58
  %629 = ptrtoint ptr %wreg2719.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %wreg2719.i, align 4
  tail call void %630(ptr noundef %hdev, i32 noundef 6197132, i32 noundef 122880) #3
  %631 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2755.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %632, i32 0, i32 58
  %633 = ptrtoint ptr %wreg2755.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %wreg2755.i, align 4
  tail call void %634(ptr noundef %hdev, i32 noundef 6197136, i32 noundef 0) #3
  %635 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2790.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %636, i32 0, i32 58
  %637 = ptrtoint ptr %wreg2790.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %wreg2790.i, align 4
  tail call void %638(ptr noundef %hdev, i32 noundef 6197140, i32 noundef 8388608) #3
  %639 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2796.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %640, i32 0, i32 58
  %641 = ptrtoint ptr %wreg2796.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %wreg2796.i, align 4
  tail call void %642(ptr noundef %hdev, i32 noundef 6197144, i32 noundef -4) #3
  %643 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2818.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %644, i32 0, i32 58
  %645 = ptrtoint ptr %wreg2818.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %wreg2818.i, align 4
  tail call void %646(ptr noundef %hdev, i32 noundef 6197148, i32 noundef 503317503) #3
  %647 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2826.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %648, i32 0, i32 58
  %649 = ptrtoint ptr %wreg2826.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %wreg2826.i, align 4
  tail call void %650(ptr noundef %hdev, i32 noundef 6197152, i32 noundef -16) #3
  %651 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2843.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %652, i32 0, i32 58
  %653 = ptrtoint ptr %wreg2843.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %wreg2843.i, align 4
  tail call void %654(ptr noundef %hdev, i32 noundef 6197152, i32 noundef -131057) #3
  %655 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2872.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %656, i32 0, i32 58
  %657 = ptrtoint ptr %wreg2872.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %wreg2872.i, align 4
  tail call void %658(ptr noundef %hdev, i32 noundef 6197200, i32 noundef 191) #3
  %659 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2884.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %660, i32 0, i32 58
  %661 = ptrtoint ptr %wreg2884.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %wreg2884.i, align 4
  tail call void %662(ptr noundef %hdev, i32 noundef 6197204, i32 noundef -256) #3
  %663 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2893.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %664, i32 0, i32 58
  %665 = ptrtoint ptr %wreg2893.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %wreg2893.i, align 4
  tail call void %666(ptr noundef %hdev, i32 noundef 6197208, i32 noundef -1982465) #3
  %667 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2924.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %668, i32 0, i32 58
  %669 = ptrtoint ptr %wreg2924.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %wreg2924.i, align 4
  tail call void %670(ptr noundef %hdev, i32 noundef 6197212, i32 noundef 2672) #3
  %671 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2943.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %672, i32 0, i32 58
  %673 = ptrtoint ptr %wreg2943.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %wreg2943.i, align 4
  tail call void %674(ptr noundef %hdev, i32 noundef 6197216, i32 noundef -1879052288) #3
  %675 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2962.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %676, i32 0, i32 58
  %677 = ptrtoint ptr %wreg2962.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %wreg2962.i, align 4
  tail call void %678(ptr noundef %hdev, i32 noundef 6197220, i32 noundef -7402484) #3
  %679 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2967.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %680, i32 0, i32 58
  %681 = ptrtoint ptr %wreg2967.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %wreg2967.i, align 4
  tail call void %682(ptr noundef %hdev, i32 noundef 6197224, i32 noundef -2) #3
  %683 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2974.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %684, i32 0, i32 58
  %685 = ptrtoint ptr %wreg2974.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %wreg2974.i, align 4
  tail call void %686(ptr noundef %hdev, i32 noundef 5246848, i32 noundef -8) #3
  %687 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2981.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %688, i32 0, i32 58
  %689 = ptrtoint ptr %wreg2981.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %wreg2981.i, align 4
  tail call void %690(ptr noundef %hdev, i32 noundef 5246852, i32 noundef -805322753) #3
  %691 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3004.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %692, i32 0, i32 58
  %693 = ptrtoint ptr %wreg3004.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %wreg3004.i, align 4
  tail call void %694(ptr noundef %hdev, i32 noundef 5246856, i32 noundef -1945122616) #3
  %695 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3010.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %696, i32 0, i32 58
  %697 = ptrtoint ptr %wreg3010.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %wreg3010.i, align 4
  tail call void %698(ptr noundef %hdev, i32 noundef 5246860, i32 noundef -49) #3
  %699 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3026.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %700, i32 0, i32 58
  %701 = ptrtoint ptr %wreg3026.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %wreg3026.i, align 4
  tail call void %702(ptr noundef %hdev, i32 noundef 5246864, i32 noundef -32544) #3
  %703 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3033.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %704, i32 0, i32 58
  %705 = ptrtoint ptr %wreg3033.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %wreg3033.i, align 4
  tail call void %706(ptr noundef %hdev, i32 noundef 5377920, i32 noundef -8) #3
  %707 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3040.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %708, i32 0, i32 58
  %709 = ptrtoint ptr %wreg3040.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %wreg3040.i, align 4
  tail call void %710(ptr noundef %hdev, i32 noundef 5377924, i32 noundef -805322753) #3
  %711 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3063.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %712, i32 0, i32 58
  %713 = ptrtoint ptr %wreg3063.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %wreg3063.i, align 4
  tail call void %714(ptr noundef %hdev, i32 noundef 5377928, i32 noundef -1945122616) #3
  %715 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3069.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %716, i32 0, i32 58
  %717 = ptrtoint ptr %wreg3069.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %wreg3069.i, align 4
  tail call void %718(ptr noundef %hdev, i32 noundef 5377932, i32 noundef -49) #3
  %719 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3085.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %720, i32 0, i32 58
  %721 = ptrtoint ptr %wreg3085.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %wreg3085.i, align 4
  tail call void %722(ptr noundef %hdev, i32 noundef 5377936, i32 noundef -32544) #3
  %723 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3092.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %724, i32 0, i32 58
  %725 = ptrtoint ptr %wreg3092.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %wreg3092.i, align 4
  tail call void %726(ptr noundef %hdev, i32 noundef 5508992, i32 noundef -8) #3
  %727 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3099.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %728, i32 0, i32 58
  %729 = ptrtoint ptr %wreg3099.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %wreg3099.i, align 4
  tail call void %730(ptr noundef %hdev, i32 noundef 5508996, i32 noundef -805322753) #3
  %731 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3121.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %732, i32 0, i32 58
  %733 = ptrtoint ptr %wreg3121.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %wreg3121.i, align 4
  tail call void %734(ptr noundef %hdev, i32 noundef 5509000, i32 noundef -1945118520) #3
  %735 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3127.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %736, i32 0, i32 58
  %737 = ptrtoint ptr %wreg3127.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %wreg3127.i, align 4
  tail call void %738(ptr noundef %hdev, i32 noundef 5509004, i32 noundef -49) #3
  %739 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3143.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %740, i32 0, i32 58
  %741 = ptrtoint ptr %wreg3143.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %wreg3143.i, align 4
  tail call void %742(ptr noundef %hdev, i32 noundef 5509008, i32 noundef -32544) #3
  %743 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3150.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %744, i32 0, i32 58
  %745 = ptrtoint ptr %wreg3150.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %wreg3150.i, align 4
  tail call void %746(ptr noundef %hdev, i32 noundef 5640064, i32 noundef -8) #3
  %747 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3157.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %748, i32 0, i32 58
  %749 = ptrtoint ptr %wreg3157.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %wreg3157.i, align 4
  tail call void %750(ptr noundef %hdev, i32 noundef 5640068, i32 noundef -805322753) #3
  %751 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3179.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %752, i32 0, i32 58
  %753 = ptrtoint ptr %wreg3179.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %wreg3179.i, align 4
  tail call void %754(ptr noundef %hdev, i32 noundef 5640072, i32 noundef -1945118520) #3
  %755 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3185.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %756, i32 0, i32 58
  %757 = ptrtoint ptr %wreg3185.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %wreg3185.i, align 4
  tail call void %758(ptr noundef %hdev, i32 noundef 5640076, i32 noundef -49) #3
  %759 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3201.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %760, i32 0, i32 58
  %761 = ptrtoint ptr %wreg3201.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %wreg3201.i, align 4
  tail call void %762(ptr noundef %hdev, i32 noundef 5640080, i32 noundef -32544) #3
  %763 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3208.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %764, i32 0, i32 58
  %765 = ptrtoint ptr %wreg3208.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %wreg3208.i, align 4
  tail call void %766(ptr noundef %hdev, i32 noundef 5771136, i32 noundef -8) #3
  %767 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3215.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %768, i32 0, i32 58
  %769 = ptrtoint ptr %wreg3215.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %wreg3215.i, align 4
  tail call void %770(ptr noundef %hdev, i32 noundef 5771140, i32 noundef -805322753) #3
  %771 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3237.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %772, i32 0, i32 58
  %773 = ptrtoint ptr %wreg3237.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %wreg3237.i, align 4
  tail call void %774(ptr noundef %hdev, i32 noundef 5771144, i32 noundef -1945118520) #3
  %775 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3243.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %776, i32 0, i32 58
  %777 = ptrtoint ptr %wreg3243.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %wreg3243.i, align 4
  tail call void %778(ptr noundef %hdev, i32 noundef 5771148, i32 noundef -49) #3
  %779 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3259.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %780, i32 0, i32 58
  %781 = ptrtoint ptr %wreg3259.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %wreg3259.i, align 4
  tail call void %782(ptr noundef %hdev, i32 noundef 5771152, i32 noundef -32544) #3
  %783 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3266.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %784, i32 0, i32 58
  %785 = ptrtoint ptr %wreg3266.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %wreg3266.i, align 4
  tail call void %786(ptr noundef %hdev, i32 noundef 5902208, i32 noundef -8) #3
  %787 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3273.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %788, i32 0, i32 58
  %789 = ptrtoint ptr %wreg3273.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %wreg3273.i, align 4
  tail call void %790(ptr noundef %hdev, i32 noundef 5902212, i32 noundef -805322753) #3
  %791 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3295.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %792, i32 0, i32 58
  %793 = ptrtoint ptr %wreg3295.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %wreg3295.i, align 4
  tail call void %794(ptr noundef %hdev, i32 noundef 5902216, i32 noundef -1945118520) #3
  %795 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3301.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %796, i32 0, i32 58
  %797 = ptrtoint ptr %wreg3301.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %wreg3301.i, align 4
  tail call void %798(ptr noundef %hdev, i32 noundef 5902220, i32 noundef -49) #3
  %799 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3317.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %800, i32 0, i32 58
  %801 = ptrtoint ptr %wreg3317.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %wreg3317.i, align 4
  tail call void %802(ptr noundef %hdev, i32 noundef 5902224, i32 noundef -32544) #3
  %803 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3324.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %804, i32 0, i32 58
  %805 = ptrtoint ptr %wreg3324.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %wreg3324.i, align 4
  tail call void %806(ptr noundef %hdev, i32 noundef 6033280, i32 noundef -8) #3
  %807 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3331.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %808, i32 0, i32 58
  %809 = ptrtoint ptr %wreg3331.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %wreg3331.i, align 4
  tail call void %810(ptr noundef %hdev, i32 noundef 6033284, i32 noundef -805322753) #3
  %811 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3353.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %812, i32 0, i32 58
  %813 = ptrtoint ptr %wreg3353.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %wreg3353.i, align 4
  tail call void %814(ptr noundef %hdev, i32 noundef 6033288, i32 noundef -1945118520) #3
  %815 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3359.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %816, i32 0, i32 58
  %817 = ptrtoint ptr %wreg3359.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %wreg3359.i, align 4
  tail call void %818(ptr noundef %hdev, i32 noundef 6033292, i32 noundef -49) #3
  %819 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3375.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %820, i32 0, i32 58
  %821 = ptrtoint ptr %wreg3375.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %wreg3375.i, align 4
  tail call void %822(ptr noundef %hdev, i32 noundef 6033296, i32 noundef -32544) #3
  %823 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3382.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %824, i32 0, i32 58
  %825 = ptrtoint ptr %wreg3382.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %wreg3382.i, align 4
  tail call void %826(ptr noundef %hdev, i32 noundef 6164352, i32 noundef -8) #3
  %827 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3389.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %828, i32 0, i32 58
  %829 = ptrtoint ptr %wreg3389.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %wreg3389.i, align 4
  tail call void %830(ptr noundef %hdev, i32 noundef 6164356, i32 noundef -805322753) #3
  %831 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3411.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %832, i32 0, i32 58
  %833 = ptrtoint ptr %wreg3411.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %wreg3411.i, align 4
  tail call void %834(ptr noundef %hdev, i32 noundef 6164360, i32 noundef -1945118520) #3
  %835 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3417.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %836, i32 0, i32 58
  %837 = ptrtoint ptr %wreg3417.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %wreg3417.i, align 4
  tail call void %838(ptr noundef %hdev, i32 noundef 6164364, i32 noundef -49) #3
  %839 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3433.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %840, i32 0, i32 58
  %841 = ptrtoint ptr %wreg3433.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %wreg3433.i, align 4
  tail call void %842(ptr noundef %hdev, i32 noundef 6164368, i32 noundef -32544) #3
  br label %while.body.i.i51

while.body.i.i51:                                 ; preds = %while.body.i.i51.while.body.i.i51_crit_edge, %gaudi_init_dma_protection_bits.exit
  %pb_addr.07.i.i46 = phi i32 [ 135040, %gaudi_init_dma_protection_bits.exit ], [ %add1.i.i48, %while.body.i.i51.while.body.i.i51_crit_edge ]
  %843 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i.i47 = getelementptr inbounds %struct.hl_asic_funcs, ptr %844, i32 0, i32 58
  %845 = ptrtoint ptr %wreg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %wreg.i.i47, align 4
  tail call void %846(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i46, i32 noundef 0) #3
  %add1.i.i48 = add nuw nsw i32 %pb_addr.07.i.i46, 4
  %and.i.i49 = and i32 %add1.i.i48, 4092
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i.i50, label %while.body.i.i51.while.body.i1817.i_crit_edge, label %while.body.i.i51.while.body.i.i51_crit_edge

while.body.i.i51.while.body.i.i51_crit_edge:      ; preds = %while.body.i.i51
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i51

while.body.i.i51.while.body.i1817.i_crit_edge:    ; preds = %while.body.i.i51
  br label %while.body.i1817.i

while.body.i1817.i:                               ; preds = %while.body.i1817.i.while.body.i1817.i_crit_edge, %while.body.i.i51.while.body.i1817.i_crit_edge
  %pb_addr.07.i1812.i = phi i32 [ %add1.i1814.i, %while.body.i1817.i.while.body.i1817.i_crit_edge ], [ 266112, %while.body.i.i51.while.body.i1817.i_crit_edge ]
  %847 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1813.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %848, i32 0, i32 58
  %849 = ptrtoint ptr %wreg.i1813.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %wreg.i1813.i, align 4
  tail call void %850(ptr noundef %hdev, i32 noundef %pb_addr.07.i1812.i, i32 noundef 0) #3
  %add1.i1814.i = add nuw nsw i32 %pb_addr.07.i1812.i, 4
  %and.i1815.i = and i32 %add1.i1814.i, 4092
  %tobool.not.i1816.i = icmp eq i32 %and.i1815.i, 0
  br i1 %tobool.not.i1816.i, label %while.body.i1817.i.while.body.i1825.i_crit_edge, label %while.body.i1817.i.while.body.i1817.i_crit_edge

while.body.i1817.i.while.body.i1817.i_crit_edge:  ; preds = %while.body.i1817.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1817.i

while.body.i1817.i.while.body.i1825.i_crit_edge:  ; preds = %while.body.i1817.i
  br label %while.body.i1825.i

while.body.i1825.i:                               ; preds = %while.body.i1825.i.while.body.i1825.i_crit_edge, %while.body.i1817.i.while.body.i1825.i_crit_edge
  %pb_addr.07.i1820.i = phi i32 [ %add1.i1822.i, %while.body.i1825.i.while.body.i1825.i_crit_edge ], [ 270208, %while.body.i1817.i.while.body.i1825.i_crit_edge ]
  %851 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1821.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %852, i32 0, i32 58
  %853 = ptrtoint ptr %wreg.i1821.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %wreg.i1821.i, align 4
  tail call void %854(ptr noundef %hdev, i32 noundef %pb_addr.07.i1820.i, i32 noundef 0) #3
  %add1.i1822.i = add nuw nsw i32 %pb_addr.07.i1820.i, 4
  %and.i1823.i = and i32 %add1.i1822.i, 4092
  %tobool.not.i1824.i = icmp eq i32 %and.i1823.i, 0
  br i1 %tobool.not.i1824.i, label %while.body.i1825.i.while.body.i1833.i_crit_edge, label %while.body.i1825.i.while.body.i1825.i_crit_edge

while.body.i1825.i.while.body.i1825.i_crit_edge:  ; preds = %while.body.i1825.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1825.i

while.body.i1825.i.while.body.i1833.i_crit_edge:  ; preds = %while.body.i1825.i
  br label %while.body.i1833.i

while.body.i1833.i:                               ; preds = %while.body.i1833.i.while.body.i1833.i_crit_edge, %while.body.i1825.i.while.body.i1833.i_crit_edge
  %pb_addr.07.i1828.i = phi i32 [ %add1.i1830.i, %while.body.i1833.i.while.body.i1833.i_crit_edge ], [ 659328, %while.body.i1825.i.while.body.i1833.i_crit_edge ]
  %855 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1829.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %856, i32 0, i32 58
  %857 = ptrtoint ptr %wreg.i1829.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %wreg.i1829.i, align 4
  tail call void %858(ptr noundef %hdev, i32 noundef %pb_addr.07.i1828.i, i32 noundef 0) #3
  %add1.i1830.i = add nuw nsw i32 %pb_addr.07.i1828.i, 4
  %and.i1831.i = and i32 %add1.i1830.i, 4092
  %tobool.not.i1832.i = icmp eq i32 %and.i1831.i, 0
  br i1 %tobool.not.i1832.i, label %while.body.i1833.i.while.body.i1841.i_crit_edge, label %while.body.i1833.i.while.body.i1833.i_crit_edge

while.body.i1833.i.while.body.i1833.i_crit_edge:  ; preds = %while.body.i1833.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1833.i

while.body.i1833.i.while.body.i1841.i_crit_edge:  ; preds = %while.body.i1833.i
  br label %while.body.i1841.i

while.body.i1841.i:                               ; preds = %while.body.i1841.i.while.body.i1841.i_crit_edge, %while.body.i1833.i.while.body.i1841.i_crit_edge
  %pb_addr.07.i1836.i = phi i32 [ %add1.i1838.i, %while.body.i1841.i.while.body.i1841.i_crit_edge ], [ 790400, %while.body.i1833.i.while.body.i1841.i_crit_edge ]
  %859 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1837.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %860, i32 0, i32 58
  %861 = ptrtoint ptr %wreg.i1837.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %wreg.i1837.i, align 4
  tail call void %862(ptr noundef %hdev, i32 noundef %pb_addr.07.i1836.i, i32 noundef 0) #3
  %add1.i1838.i = add nuw nsw i32 %pb_addr.07.i1836.i, 4
  %and.i1839.i = and i32 %add1.i1838.i, 4092
  %tobool.not.i1840.i = icmp eq i32 %and.i1839.i, 0
  br i1 %tobool.not.i1840.i, label %while.body.i1841.i.while.body.i1849.i_crit_edge, label %while.body.i1841.i.while.body.i1841.i_crit_edge

while.body.i1841.i.while.body.i1841.i_crit_edge:  ; preds = %while.body.i1841.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1841.i

while.body.i1841.i.while.body.i1849.i_crit_edge:  ; preds = %while.body.i1841.i
  br label %while.body.i1849.i

while.body.i1849.i:                               ; preds = %while.body.i1849.i.while.body.i1849.i_crit_edge, %while.body.i1841.i.while.body.i1849.i_crit_edge
  %pb_addr.07.i1844.i = phi i32 [ %add1.i1846.i, %while.body.i1849.i.while.body.i1849.i_crit_edge ], [ 794496, %while.body.i1841.i.while.body.i1849.i_crit_edge ]
  %863 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1845.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %864, i32 0, i32 58
  %865 = ptrtoint ptr %wreg.i1845.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %wreg.i1845.i, align 4
  tail call void %866(ptr noundef %hdev, i32 noundef %pb_addr.07.i1844.i, i32 noundef 0) #3
  %add1.i1846.i = add nuw nsw i32 %pb_addr.07.i1844.i, 4
  %and.i1847.i = and i32 %add1.i1846.i, 4092
  %tobool.not.i1848.i = icmp eq i32 %and.i1847.i, 0
  br i1 %tobool.not.i1848.i, label %while.body.i1849.i.while.body.i1857.i_crit_edge, label %while.body.i1849.i.while.body.i1849.i_crit_edge

while.body.i1849.i.while.body.i1849.i_crit_edge:  ; preds = %while.body.i1849.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1849.i

while.body.i1849.i.while.body.i1857.i_crit_edge:  ; preds = %while.body.i1849.i
  br label %while.body.i1857.i

while.body.i1857.i:                               ; preds = %while.body.i1857.i.while.body.i1857.i_crit_edge, %while.body.i1849.i.while.body.i1857.i_crit_edge
  %pb_addr.07.i1852.i = phi i32 [ %add1.i1854.i, %while.body.i1857.i.while.body.i1857.i_crit_edge ], [ 1183616, %while.body.i1849.i.while.body.i1857.i_crit_edge ]
  %867 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1853.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %868, i32 0, i32 58
  %869 = ptrtoint ptr %wreg.i1853.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %wreg.i1853.i, align 4
  tail call void %870(ptr noundef %hdev, i32 noundef %pb_addr.07.i1852.i, i32 noundef 0) #3
  %add1.i1854.i = add nuw nsw i32 %pb_addr.07.i1852.i, 4
  %and.i1855.i = and i32 %add1.i1854.i, 4092
  %tobool.not.i1856.i = icmp eq i32 %and.i1855.i, 0
  br i1 %tobool.not.i1856.i, label %while.body.i1857.i.while.body.i1865.i_crit_edge, label %while.body.i1857.i.while.body.i1857.i_crit_edge

while.body.i1857.i.while.body.i1857.i_crit_edge:  ; preds = %while.body.i1857.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1857.i

while.body.i1857.i.while.body.i1865.i_crit_edge:  ; preds = %while.body.i1857.i
  br label %while.body.i1865.i

while.body.i1865.i:                               ; preds = %while.body.i1865.i.while.body.i1865.i_crit_edge, %while.body.i1857.i.while.body.i1865.i_crit_edge
  %pb_addr.07.i1860.i = phi i32 [ %add1.i1862.i, %while.body.i1865.i.while.body.i1865.i_crit_edge ], [ 1314688, %while.body.i1857.i.while.body.i1865.i_crit_edge ]
  %871 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1861.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %872, i32 0, i32 58
  %873 = ptrtoint ptr %wreg.i1861.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %wreg.i1861.i, align 4
  tail call void %874(ptr noundef %hdev, i32 noundef %pb_addr.07.i1860.i, i32 noundef 0) #3
  %add1.i1862.i = add nuw nsw i32 %pb_addr.07.i1860.i, 4
  %and.i1863.i = and i32 %add1.i1862.i, 4092
  %tobool.not.i1864.i = icmp eq i32 %and.i1863.i, 0
  br i1 %tobool.not.i1864.i, label %while.body.i1865.i.while.body.i1873.i_crit_edge, label %while.body.i1865.i.while.body.i1865.i_crit_edge

while.body.i1865.i.while.body.i1865.i_crit_edge:  ; preds = %while.body.i1865.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1865.i

while.body.i1865.i.while.body.i1873.i_crit_edge:  ; preds = %while.body.i1865.i
  br label %while.body.i1873.i

while.body.i1873.i:                               ; preds = %while.body.i1873.i.while.body.i1873.i_crit_edge, %while.body.i1865.i.while.body.i1873.i_crit_edge
  %pb_addr.07.i1868.i = phi i32 [ %add1.i1870.i, %while.body.i1873.i.while.body.i1873.i_crit_edge ], [ 1318784, %while.body.i1865.i.while.body.i1873.i_crit_edge ]
  %875 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1869.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %876, i32 0, i32 58
  %877 = ptrtoint ptr %wreg.i1869.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %wreg.i1869.i, align 4
  tail call void %878(ptr noundef %hdev, i32 noundef %pb_addr.07.i1868.i, i32 noundef 0) #3
  %add1.i1870.i = add nuw nsw i32 %pb_addr.07.i1868.i, 4
  %and.i1871.i = and i32 %add1.i1870.i, 4092
  %tobool.not.i1872.i = icmp eq i32 %and.i1871.i, 0
  br i1 %tobool.not.i1872.i, label %while.body.i1873.i.while.body.i1881.i_crit_edge, label %while.body.i1873.i.while.body.i1873.i_crit_edge

while.body.i1873.i.while.body.i1873.i_crit_edge:  ; preds = %while.body.i1873.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1873.i

while.body.i1873.i.while.body.i1881.i_crit_edge:  ; preds = %while.body.i1873.i
  br label %while.body.i1881.i

while.body.i1881.i:                               ; preds = %while.body.i1881.i.while.body.i1881.i_crit_edge, %while.body.i1873.i.while.body.i1881.i_crit_edge
  %pb_addr.07.i1876.i = phi i32 [ %add1.i1878.i, %while.body.i1881.i.while.body.i1881.i_crit_edge ], [ 1707904, %while.body.i1873.i.while.body.i1881.i_crit_edge ]
  %879 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1877.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %880, i32 0, i32 58
  %881 = ptrtoint ptr %wreg.i1877.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %wreg.i1877.i, align 4
  tail call void %882(ptr noundef %hdev, i32 noundef %pb_addr.07.i1876.i, i32 noundef 0) #3
  %add1.i1878.i = add nuw nsw i32 %pb_addr.07.i1876.i, 4
  %and.i1879.i = and i32 %add1.i1878.i, 4092
  %tobool.not.i1880.i = icmp eq i32 %and.i1879.i, 0
  br i1 %tobool.not.i1880.i, label %while.body.i1881.i.while.body.i1889.i_crit_edge, label %while.body.i1881.i.while.body.i1881.i_crit_edge

while.body.i1881.i.while.body.i1881.i_crit_edge:  ; preds = %while.body.i1881.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1881.i

while.body.i1881.i.while.body.i1889.i_crit_edge:  ; preds = %while.body.i1881.i
  br label %while.body.i1889.i

while.body.i1889.i:                               ; preds = %while.body.i1889.i.while.body.i1889.i_crit_edge, %while.body.i1881.i.while.body.i1889.i_crit_edge
  %pb_addr.07.i1884.i = phi i32 [ %add1.i1886.i, %while.body.i1889.i.while.body.i1889.i_crit_edge ], [ 1838976, %while.body.i1881.i.while.body.i1889.i_crit_edge ]
  %883 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1885.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %884, i32 0, i32 58
  %885 = ptrtoint ptr %wreg.i1885.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %wreg.i1885.i, align 4
  tail call void %886(ptr noundef %hdev, i32 noundef %pb_addr.07.i1884.i, i32 noundef 0) #3
  %add1.i1886.i = add nuw nsw i32 %pb_addr.07.i1884.i, 4
  %and.i1887.i = and i32 %add1.i1886.i, 4092
  %tobool.not.i1888.i = icmp eq i32 %and.i1887.i, 0
  br i1 %tobool.not.i1888.i, label %while.body.i1889.i.while.body.i1897.i_crit_edge, label %while.body.i1889.i.while.body.i1889.i_crit_edge

while.body.i1889.i.while.body.i1889.i_crit_edge:  ; preds = %while.body.i1889.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1889.i

while.body.i1889.i.while.body.i1897.i_crit_edge:  ; preds = %while.body.i1889.i
  br label %while.body.i1897.i

while.body.i1897.i:                               ; preds = %while.body.i1897.i.while.body.i1897.i_crit_edge, %while.body.i1889.i.while.body.i1897.i_crit_edge
  %pb_addr.07.i1892.i = phi i32 [ %add1.i1894.i, %while.body.i1897.i.while.body.i1897.i_crit_edge ], [ 1843072, %while.body.i1889.i.while.body.i1897.i_crit_edge ]
  %887 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i1893.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %888, i32 0, i32 58
  %889 = ptrtoint ptr %wreg.i1893.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %wreg.i1893.i, align 4
  tail call void %890(ptr noundef %hdev, i32 noundef %pb_addr.07.i1892.i, i32 noundef 0) #3
  %add1.i1894.i = add nuw nsw i32 %pb_addr.07.i1892.i, 4
  %and.i1895.i = and i32 %add1.i1894.i, 4092
  %tobool.not.i1896.i = icmp eq i32 %and.i1895.i, 0
  br i1 %tobool.not.i1896.i, label %gaudi_init_mme_protection_bits.exit, label %while.body.i1897.i.while.body.i1897.i_crit_edge

while.body.i1897.i.while.body.i1897.i_crit_edge:  ; preds = %while.body.i1897.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i1897.i

gaudi_init_mme_protection_bits.exit:              ; preds = %while.body.i1897.i
  %891 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i52 = getelementptr inbounds %struct.hl_asic_funcs, ptr %892, i32 0, i32 58
  %893 = ptrtoint ptr %wreg.i52 to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %wreg.i52, align 4
  tail call void %894(ptr noundef %hdev, i32 noundef 397308, i32 noundef 0) #3
  %895 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2.i53 = getelementptr inbounds %struct.hl_asic_funcs, ptr %896, i32 0, i32 58
  %897 = ptrtoint ptr %wreg2.i53 to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %wreg2.i53, align 4
  tail call void %898(ptr noundef %hdev, i32 noundef 921596, i32 noundef 0) #3
  %899 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg4.i54 = getelementptr inbounds %struct.hl_asic_funcs, ptr %900, i32 0, i32 58
  %901 = ptrtoint ptr %wreg4.i54 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %wreg4.i54, align 4
  tail call void %902(ptr noundef %hdev, i32 noundef 1445884, i32 noundef 0) #3
  %903 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg6.i55 = getelementptr inbounds %struct.hl_asic_funcs, ptr %904, i32 0, i32 58
  %905 = ptrtoint ptr %wreg6.i55 to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %wreg6.i55, align 4
  tail call void %906(ptr noundef %hdev, i32 noundef 1970172, i32 noundef 0) #3
  %907 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg8.i56 = getelementptr inbounds %struct.hl_asic_funcs, ptr %908, i32 0, i32 58
  %909 = ptrtoint ptr %wreg8.i56 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %wreg8.i56, align 4
  tail call void %910(ptr noundef %hdev, i32 noundef 430076, i32 noundef 0) #3
  %911 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg10.i57 = getelementptr inbounds %struct.hl_asic_funcs, ptr %912, i32 0, i32 58
  %913 = ptrtoint ptr %wreg10.i57 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %wreg10.i57, align 4
  tail call void %914(ptr noundef %hdev, i32 noundef 1478652, i32 noundef 0) #3
  %915 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg40.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %916, i32 0, i32 58
  %917 = ptrtoint ptr %wreg40.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %wreg40.i, align 4
  tail call void %918(ptr noundef %hdev, i32 noundef 397204, i32 noundef 3) #3
  %919 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg42.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %920, i32 0, i32 58
  %921 = ptrtoint ptr %wreg42.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %wreg42.i, align 4
  tail call void %922(ptr noundef %hdev, i32 noundef 397216, i32 noundef -2) #3
  %923 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg75.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %924, i32 0, i32 58
  %925 = ptrtoint ptr %wreg75.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %wreg75.i, align 4
  tail call void %926(ptr noundef %hdev, i32 noundef 429952, i32 noundef 167804928) #3
  %927 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg111.i58 = getelementptr inbounds %struct.hl_asic_funcs, ptr %928, i32 0, i32 58
  %929 = ptrtoint ptr %wreg111.i58 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %wreg111.i58, align 4
  tail call void %930(ptr noundef %hdev, i32 noundef 429956, i32 noundef 0) #3
  %931 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg130.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %932, i32 0, i32 58
  %933 = ptrtoint ptr %wreg130.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %wreg130.i, align 4
  tail call void %934(ptr noundef %hdev, i32 noundef 429960, i32 noundef 277348336) #3
  %935 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg162.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %936, i32 0, i32 58
  %937 = ptrtoint ptr %wreg162.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %wreg162.i, align 4
  tail call void %938(ptr noundef %hdev, i32 noundef 429964, i32 noundef 122880) #3
  %939 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg198.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %940, i32 0, i32 58
  %941 = ptrtoint ptr %wreg198.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %wreg198.i, align 4
  tail call void %942(ptr noundef %hdev, i32 noundef 429968, i32 noundef 0) #3
  %943 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg233.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %944, i32 0, i32 58
  %945 = ptrtoint ptr %wreg233.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %wreg233.i, align 4
  tail call void %946(ptr noundef %hdev, i32 noundef 429972, i32 noundef 8388608) #3
  %947 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg239.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %948, i32 0, i32 58
  %949 = ptrtoint ptr %wreg239.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %wreg239.i, align 4
  tail call void %950(ptr noundef %hdev, i32 noundef 429976, i32 noundef -4) #3
  %951 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg261.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %952, i32 0, i32 58
  %953 = ptrtoint ptr %wreg261.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %wreg261.i, align 4
  tail call void %954(ptr noundef %hdev, i32 noundef 429980, i32 noundef 503317503) #3
  %955 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg269.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %956, i32 0, i32 58
  %957 = ptrtoint ptr %wreg269.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %wreg269.i, align 4
  tail call void %958(ptr noundef %hdev, i32 noundef 429984, i32 noundef -16) #3
  %959 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg286.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %960, i32 0, i32 58
  %961 = ptrtoint ptr %wreg286.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %wreg286.i, align 4
  tail call void %962(ptr noundef %hdev, i32 noundef 429984, i32 noundef -131057) #3
  %963 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg315.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %964, i32 0, i32 58
  %965 = ptrtoint ptr %wreg315.i to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %wreg315.i, align 4
  tail call void %966(ptr noundef %hdev, i32 noundef 430032, i32 noundef 191) #3
  %967 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg327.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %968, i32 0, i32 58
  %969 = ptrtoint ptr %wreg327.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %wreg327.i, align 4
  tail call void %970(ptr noundef %hdev, i32 noundef 430036, i32 noundef -256) #3
  %971 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg336.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %972, i32 0, i32 58
  %973 = ptrtoint ptr %wreg336.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %wreg336.i, align 4
  tail call void %974(ptr noundef %hdev, i32 noundef 430040, i32 noundef -1982465) #3
  %975 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg367.i59 = getelementptr inbounds %struct.hl_asic_funcs, ptr %976, i32 0, i32 58
  %977 = ptrtoint ptr %wreg367.i59 to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %wreg367.i59, align 4
  tail call void %978(ptr noundef %hdev, i32 noundef 430044, i32 noundef 2672) #3
  %979 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg386.i60 = getelementptr inbounds %struct.hl_asic_funcs, ptr %980, i32 0, i32 58
  %981 = ptrtoint ptr %wreg386.i60 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %wreg386.i60, align 4
  tail call void %982(ptr noundef %hdev, i32 noundef 430048, i32 noundef -1879052288) #3
  %983 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg405.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %984, i32 0, i32 58
  %985 = ptrtoint ptr %wreg405.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %wreg405.i, align 4
  tail call void %986(ptr noundef %hdev, i32 noundef 430052, i32 noundef -7402484) #3
  %987 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg410.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %988, i32 0, i32 58
  %989 = ptrtoint ptr %wreg410.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %wreg410.i, align 4
  tail call void %990(ptr noundef %hdev, i32 noundef 430056, i32 noundef -2) #3
  %991 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg444.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %992, i32 0, i32 58
  %993 = ptrtoint ptr %wreg444.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %wreg444.i, align 4
  tail call void %994(ptr noundef %hdev, i32 noundef 921492, i32 noundef 3) #3
  %995 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg449.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %996, i32 0, i32 58
  %997 = ptrtoint ptr %wreg449.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %wreg449.i, align 4
  tail call void %998(ptr noundef %hdev, i32 noundef 921504, i32 noundef -2) #3
  %999 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg483.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1000, i32 0, i32 58
  %1001 = ptrtoint ptr %wreg483.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %wreg483.i, align 4
  tail call void %1002(ptr noundef %hdev, i32 noundef 1445780, i32 noundef 3) #3
  %1003 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg488.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1004, i32 0, i32 58
  %1005 = ptrtoint ptr %wreg488.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %wreg488.i, align 4
  tail call void %1006(ptr noundef %hdev, i32 noundef 1445792, i32 noundef -2) #3
  %1007 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg521.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1008, i32 0, i32 58
  %1009 = ptrtoint ptr %wreg521.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %wreg521.i, align 4
  tail call void %1010(ptr noundef %hdev, i32 noundef 1478528, i32 noundef 167804928) #3
  %1011 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg557.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1012, i32 0, i32 58
  %1013 = ptrtoint ptr %wreg557.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %wreg557.i, align 4
  tail call void %1014(ptr noundef %hdev, i32 noundef 1478532, i32 noundef 0) #3
  %1015 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg576.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1016, i32 0, i32 58
  %1017 = ptrtoint ptr %wreg576.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %wreg576.i, align 4
  tail call void %1018(ptr noundef %hdev, i32 noundef 1478536, i32 noundef 277348336) #3
  %1019 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg608.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1020, i32 0, i32 58
  %1021 = ptrtoint ptr %wreg608.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %wreg608.i, align 4
  tail call void %1022(ptr noundef %hdev, i32 noundef 1478540, i32 noundef 122880) #3
  %1023 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg644.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1024, i32 0, i32 58
  %1025 = ptrtoint ptr %wreg644.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %wreg644.i, align 4
  tail call void %1026(ptr noundef %hdev, i32 noundef 1478544, i32 noundef 0) #3
  %1027 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg679.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1028, i32 0, i32 58
  %1029 = ptrtoint ptr %wreg679.i to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %wreg679.i, align 4
  tail call void %1030(ptr noundef %hdev, i32 noundef 1478548, i32 noundef 8388608) #3
  %1031 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg685.i61 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1032, i32 0, i32 58
  %1033 = ptrtoint ptr %wreg685.i61 to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %wreg685.i61, align 4
  tail call void %1034(ptr noundef %hdev, i32 noundef 1478552, i32 noundef -4) #3
  %1035 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg707.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1036, i32 0, i32 58
  %1037 = ptrtoint ptr %wreg707.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %wreg707.i, align 4
  tail call void %1038(ptr noundef %hdev, i32 noundef 1478556, i32 noundef 503317503) #3
  %1039 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg715.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1040, i32 0, i32 58
  %1041 = ptrtoint ptr %wreg715.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %wreg715.i, align 4
  tail call void %1042(ptr noundef %hdev, i32 noundef 1478560, i32 noundef -16) #3
  %1043 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg732.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1044, i32 0, i32 58
  %1045 = ptrtoint ptr %wreg732.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %wreg732.i, align 4
  tail call void %1046(ptr noundef %hdev, i32 noundef 1478560, i32 noundef -131057) #3
  %1047 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg761.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1048, i32 0, i32 58
  %1049 = ptrtoint ptr %wreg761.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %wreg761.i, align 4
  tail call void %1050(ptr noundef %hdev, i32 noundef 1478608, i32 noundef 191) #3
  %1051 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg773.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1052, i32 0, i32 58
  %1053 = ptrtoint ptr %wreg773.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %wreg773.i, align 4
  tail call void %1054(ptr noundef %hdev, i32 noundef 1478612, i32 noundef -256) #3
  %1055 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg782.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1056, i32 0, i32 58
  %1057 = ptrtoint ptr %wreg782.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %wreg782.i, align 4
  tail call void %1058(ptr noundef %hdev, i32 noundef 1478616, i32 noundef -1982465) #3
  %1059 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg813.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1060, i32 0, i32 58
  %1061 = ptrtoint ptr %wreg813.i to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %wreg813.i, align 4
  tail call void %1062(ptr noundef %hdev, i32 noundef 1478620, i32 noundef 2672) #3
  %1063 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg832.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1064, i32 0, i32 58
  %1065 = ptrtoint ptr %wreg832.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %wreg832.i, align 4
  tail call void %1066(ptr noundef %hdev, i32 noundef 1478624, i32 noundef -1879052288) #3
  %1067 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg851.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1068, i32 0, i32 58
  %1069 = ptrtoint ptr %wreg851.i to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %wreg851.i, align 4
  tail call void %1070(ptr noundef %hdev, i32 noundef 1478628, i32 noundef -7402484) #3
  %1071 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg856.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1072, i32 0, i32 58
  %1073 = ptrtoint ptr %wreg856.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %wreg856.i, align 4
  tail call void %1074(ptr noundef %hdev, i32 noundef 1478632, i32 noundef -2) #3
  %1075 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg890.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1076, i32 0, i32 58
  %1077 = ptrtoint ptr %wreg890.i to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %wreg890.i, align 4
  tail call void %1078(ptr noundef %hdev, i32 noundef 1970068, i32 noundef 3) #3
  %1079 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg895.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1080, i32 0, i32 58
  %1081 = ptrtoint ptr %wreg895.i to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %wreg895.i, align 4
  tail call void %1082(ptr noundef %hdev, i32 noundef 1970080, i32 noundef -2) #3
  %1083 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i63 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1084, i32 0, i32 58
  %1085 = ptrtoint ptr %wreg.i63 to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %wreg.i63, align 4
  tail call void %1086(ptr noundef %hdev, i32 noundef 13504508, i32 noundef 0) #3
  %1087 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2.i64 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1088, i32 0, i32 58
  %1089 = ptrtoint ptr %wreg2.i64 to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %wreg2.i64, align 4
  tail call void %1090(ptr noundef %hdev, i32 noundef 13512700, i32 noundef 0) #3
  %1091 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg31.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1092, i32 0, i32 58
  %1093 = ptrtoint ptr %wreg31.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %wreg31.i, align 4
  tail call void %1094(ptr noundef %hdev, i32 noundef 13504384, i32 noundef 167804928) #3
  %1095 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg64.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1096, i32 0, i32 58
  %1097 = ptrtoint ptr %wreg64.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %wreg64.i, align 4
  tail call void %1098(ptr noundef %hdev, i32 noundef 13504388, i32 noundef 0) #3
  %1099 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg83.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1100, i32 0, i32 58
  %1101 = ptrtoint ptr %wreg83.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %wreg83.i, align 4
  tail call void %1102(ptr noundef %hdev, i32 noundef 13504392, i32 noundef 277348336) #3
  %1103 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg115.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1104, i32 0, i32 58
  %1105 = ptrtoint ptr %wreg115.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %wreg115.i, align 4
  tail call void %1106(ptr noundef %hdev, i32 noundef 13504396, i32 noundef 122880) #3
  %1107 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg151.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1108, i32 0, i32 58
  %1109 = ptrtoint ptr %wreg151.i to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %wreg151.i, align 4
  tail call void %1110(ptr noundef %hdev, i32 noundef 13504400, i32 noundef 0) #3
  %1111 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg186.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1112, i32 0, i32 58
  %1113 = ptrtoint ptr %wreg186.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %wreg186.i, align 4
  tail call void %1114(ptr noundef %hdev, i32 noundef 13504404, i32 noundef 8388608) #3
  %1115 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg192.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1116, i32 0, i32 58
  %1117 = ptrtoint ptr %wreg192.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %wreg192.i, align 4
  tail call void %1118(ptr noundef %hdev, i32 noundef 13504408, i32 noundef -4) #3
  %1119 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg214.i65 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1120, i32 0, i32 58
  %1121 = ptrtoint ptr %wreg214.i65 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %wreg214.i65, align 4
  tail call void %1122(ptr noundef %hdev, i32 noundef 13504412, i32 noundef 503317503) #3
  %1123 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg222.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1124, i32 0, i32 58
  %1125 = ptrtoint ptr %wreg222.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %wreg222.i, align 4
  tail call void %1126(ptr noundef %hdev, i32 noundef 13504416, i32 noundef -16) #3
  %1127 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg239.i66 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1128, i32 0, i32 58
  %1129 = ptrtoint ptr %wreg239.i66 to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %wreg239.i66, align 4
  tail call void %1130(ptr noundef %hdev, i32 noundef 13504416, i32 noundef -131057) #3
  %1131 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg268.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1132, i32 0, i32 58
  %1133 = ptrtoint ptr %wreg268.i to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load ptr, ptr %wreg268.i, align 4
  tail call void %1134(ptr noundef %hdev, i32 noundef 13504464, i32 noundef 191) #3
  %1135 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg280.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1136, i32 0, i32 58
  %1137 = ptrtoint ptr %wreg280.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %wreg280.i, align 4
  tail call void %1138(ptr noundef %hdev, i32 noundef 13504468, i32 noundef -256) #3
  %1139 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg289.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1140, i32 0, i32 58
  %1141 = ptrtoint ptr %wreg289.i to i32
  call void @__asan_load4_noabort(i32 %1141)
  %1142 = load ptr, ptr %wreg289.i, align 4
  tail call void %1142(ptr noundef %hdev, i32 noundef 13504472, i32 noundef -1982465) #3
  %1143 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg320.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1144, i32 0, i32 58
  %1145 = ptrtoint ptr %wreg320.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %wreg320.i, align 4
  tail call void %1146(ptr noundef %hdev, i32 noundef 13504476, i32 noundef 2672) #3
  %1147 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg339.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1148, i32 0, i32 58
  %1149 = ptrtoint ptr %wreg339.i to i32
  call void @__asan_load4_noabort(i32 %1149)
  %1150 = load ptr, ptr %wreg339.i, align 4
  tail call void %1150(ptr noundef %hdev, i32 noundef 13504480, i32 noundef -1879052288) #3
  %1151 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg358.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1152, i32 0, i32 58
  %1153 = ptrtoint ptr %wreg358.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load ptr, ptr %wreg358.i, align 4
  tail call void %1154(ptr noundef %hdev, i32 noundef 13504484, i32 noundef -7402484) #3
  %1155 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg363.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1156, i32 0, i32 58
  %1157 = ptrtoint ptr %wreg363.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %wreg363.i, align 4
  tail call void %1158(ptr noundef %hdev, i32 noundef 13504488, i32 noundef -2) #3
  %1159 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg396.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1160, i32 0, i32 58
  %1161 = ptrtoint ptr %wreg396.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %wreg396.i, align 4
  tail call void %1162(ptr noundef %hdev, i32 noundef 13512576, i32 noundef 167804928) #3
  %1163 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg432.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1164, i32 0, i32 58
  %1165 = ptrtoint ptr %wreg432.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %wreg432.i, align 4
  tail call void %1166(ptr noundef %hdev, i32 noundef 13512580, i32 noundef 0) #3
  %1167 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg451.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1168, i32 0, i32 58
  %1169 = ptrtoint ptr %wreg451.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %wreg451.i, align 4
  tail call void %1170(ptr noundef %hdev, i32 noundef 13512584, i32 noundef 277348336) #3
  %1171 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg483.i67 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1172, i32 0, i32 58
  %1173 = ptrtoint ptr %wreg483.i67 to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %wreg483.i67, align 4
  tail call void %1174(ptr noundef %hdev, i32 noundef 13512588, i32 noundef 122880) #3
  %1175 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg519.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1176, i32 0, i32 58
  %1177 = ptrtoint ptr %wreg519.i to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load ptr, ptr %wreg519.i, align 4
  tail call void %1178(ptr noundef %hdev, i32 noundef 13512592, i32 noundef 0) #3
  %1179 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg554.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1180, i32 0, i32 58
  %1181 = ptrtoint ptr %wreg554.i to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load ptr, ptr %wreg554.i, align 4
  tail call void %1182(ptr noundef %hdev, i32 noundef 13512596, i32 noundef 8388608) #3
  %1183 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg560.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1184, i32 0, i32 58
  %1185 = ptrtoint ptr %wreg560.i to i32
  call void @__asan_load4_noabort(i32 %1185)
  %1186 = load ptr, ptr %wreg560.i, align 4
  tail call void %1186(ptr noundef %hdev, i32 noundef 13512600, i32 noundef -4) #3
  %1187 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg582.i68 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1188, i32 0, i32 58
  %1189 = ptrtoint ptr %wreg582.i68 to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load ptr, ptr %wreg582.i68, align 4
  tail call void %1190(ptr noundef %hdev, i32 noundef 13512604, i32 noundef 503317503) #3
  %1191 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg590.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1192, i32 0, i32 58
  %1193 = ptrtoint ptr %wreg590.i to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load ptr, ptr %wreg590.i, align 4
  tail call void %1194(ptr noundef %hdev, i32 noundef 13512608, i32 noundef -16) #3
  %1195 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg607.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1196, i32 0, i32 58
  %1197 = ptrtoint ptr %wreg607.i to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %wreg607.i, align 4
  tail call void %1198(ptr noundef %hdev, i32 noundef 13512608, i32 noundef -131057) #3
  %1199 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg636.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1200, i32 0, i32 58
  %1201 = ptrtoint ptr %wreg636.i to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %wreg636.i, align 4
  tail call void %1202(ptr noundef %hdev, i32 noundef 13512656, i32 noundef 191) #3
  %1203 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg648.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1204, i32 0, i32 58
  %1205 = ptrtoint ptr %wreg648.i to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load ptr, ptr %wreg648.i, align 4
  tail call void %1206(ptr noundef %hdev, i32 noundef 13512660, i32 noundef -256) #3
  %1207 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1207)
  %1208 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg657.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1208, i32 0, i32 58
  %1209 = ptrtoint ptr %wreg657.i to i32
  call void @__asan_load4_noabort(i32 %1209)
  %1210 = load ptr, ptr %wreg657.i, align 4
  tail call void %1210(ptr noundef %hdev, i32 noundef 13512664, i32 noundef -1982465) #3
  %1211 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1211)
  %1212 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg688.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1212, i32 0, i32 58
  %1213 = ptrtoint ptr %wreg688.i to i32
  call void @__asan_load4_noabort(i32 %1213)
  %1214 = load ptr, ptr %wreg688.i, align 4
  tail call void %1214(ptr noundef %hdev, i32 noundef 13512668, i32 noundef 2672) #3
  %1215 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1215)
  %1216 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg707.i69 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1216, i32 0, i32 58
  %1217 = ptrtoint ptr %wreg707.i69 to i32
  call void @__asan_load4_noabort(i32 %1217)
  %1218 = load ptr, ptr %wreg707.i69, align 4
  tail call void %1218(ptr noundef %hdev, i32 noundef 13512672, i32 noundef -1879052288) #3
  %1219 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1219)
  %1220 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg726.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1220, i32 0, i32 58
  %1221 = ptrtoint ptr %wreg726.i to i32
  call void @__asan_load4_noabort(i32 %1221)
  %1222 = load ptr, ptr %wreg726.i, align 4
  tail call void %1222(ptr noundef %hdev, i32 noundef 13512676, i32 noundef -7402484) #3
  %1223 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg731.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1224, i32 0, i32 58
  %1225 = ptrtoint ptr %wreg731.i to i32
  call void @__asan_load4_noabort(i32 %1225)
  %1226 = load ptr, ptr %wreg731.i, align 4
  tail call void %1226(ptr noundef %hdev, i32 noundef 13512680, i32 noundef -2) #3
  %1227 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg736.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1228, i32 0, i32 58
  %1229 = ptrtoint ptr %wreg736.i to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load ptr, ptr %wreg736.i, align 4
  tail call void %1230(ptr noundef %hdev, i32 noundef 13766652, i32 noundef 0) #3
  %1231 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg738.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1232, i32 0, i32 58
  %1233 = ptrtoint ptr %wreg738.i to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load ptr, ptr %wreg738.i, align 4
  tail call void %1234(ptr noundef %hdev, i32 noundef 13774844, i32 noundef 0) #3
  %1235 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg768.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1236, i32 0, i32 58
  %1237 = ptrtoint ptr %wreg768.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load ptr, ptr %wreg768.i, align 4
  tail call void %1238(ptr noundef %hdev, i32 noundef 13766528, i32 noundef 167804928) #3
  %1239 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg804.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1240, i32 0, i32 58
  %1241 = ptrtoint ptr %wreg804.i to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %wreg804.i, align 4
  tail call void %1242(ptr noundef %hdev, i32 noundef 13766532, i32 noundef 0) #3
  %1243 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg823.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1244, i32 0, i32 58
  %1245 = ptrtoint ptr %wreg823.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %wreg823.i, align 4
  tail call void %1246(ptr noundef %hdev, i32 noundef 13766536, i32 noundef 277348336) #3
  %1247 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg855.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1248, i32 0, i32 58
  %1249 = ptrtoint ptr %wreg855.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load ptr, ptr %wreg855.i, align 4
  tail call void %1250(ptr noundef %hdev, i32 noundef 13766540, i32 noundef 122880) #3
  %1251 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg891.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1252, i32 0, i32 58
  %1253 = ptrtoint ptr %wreg891.i to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load ptr, ptr %wreg891.i, align 4
  tail call void %1254(ptr noundef %hdev, i32 noundef 13766544, i32 noundef 0) #3
  %1255 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg926.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1256, i32 0, i32 58
  %1257 = ptrtoint ptr %wreg926.i to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load ptr, ptr %wreg926.i, align 4
  tail call void %1258(ptr noundef %hdev, i32 noundef 13766548, i32 noundef 8388608) #3
  %1259 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg932.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1260, i32 0, i32 58
  %1261 = ptrtoint ptr %wreg932.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %wreg932.i, align 4
  tail call void %1262(ptr noundef %hdev, i32 noundef 13766552, i32 noundef -4) #3
  %1263 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg954.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1264, i32 0, i32 58
  %1265 = ptrtoint ptr %wreg954.i to i32
  call void @__asan_load4_noabort(i32 %1265)
  %1266 = load ptr, ptr %wreg954.i, align 4
  tail call void %1266(ptr noundef %hdev, i32 noundef 13766556, i32 noundef 503317503) #3
  %1267 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1267)
  %1268 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg962.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1268, i32 0, i32 58
  %1269 = ptrtoint ptr %wreg962.i to i32
  call void @__asan_load4_noabort(i32 %1269)
  %1270 = load ptr, ptr %wreg962.i, align 4
  tail call void %1270(ptr noundef %hdev, i32 noundef 13766560, i32 noundef -16) #3
  %1271 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg979.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1272, i32 0, i32 58
  %1273 = ptrtoint ptr %wreg979.i to i32
  call void @__asan_load4_noabort(i32 %1273)
  %1274 = load ptr, ptr %wreg979.i, align 4
  tail call void %1274(ptr noundef %hdev, i32 noundef 13766560, i32 noundef -131057) #3
  %1275 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1008.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1276, i32 0, i32 58
  %1277 = ptrtoint ptr %wreg1008.i to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load ptr, ptr %wreg1008.i, align 4
  tail call void %1278(ptr noundef %hdev, i32 noundef 13766608, i32 noundef 191) #3
  %1279 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1020.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1280, i32 0, i32 58
  %1281 = ptrtoint ptr %wreg1020.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %wreg1020.i, align 4
  tail call void %1282(ptr noundef %hdev, i32 noundef 13766612, i32 noundef -256) #3
  %1283 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1029.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1284, i32 0, i32 58
  %1285 = ptrtoint ptr %wreg1029.i to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load ptr, ptr %wreg1029.i, align 4
  tail call void %1286(ptr noundef %hdev, i32 noundef 13766616, i32 noundef -1982465) #3
  %1287 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1060.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1288, i32 0, i32 58
  %1289 = ptrtoint ptr %wreg1060.i to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %wreg1060.i, align 4
  tail call void %1290(ptr noundef %hdev, i32 noundef 13766620, i32 noundef 2672) #3
  %1291 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1291)
  %1292 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1079.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1292, i32 0, i32 58
  %1293 = ptrtoint ptr %wreg1079.i to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load ptr, ptr %wreg1079.i, align 4
  tail call void %1294(ptr noundef %hdev, i32 noundef 13766624, i32 noundef -1879052288) #3
  %1295 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1098.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1296, i32 0, i32 58
  %1297 = ptrtoint ptr %wreg1098.i to i32
  call void @__asan_load4_noabort(i32 %1297)
  %1298 = load ptr, ptr %wreg1098.i, align 4
  tail call void %1298(ptr noundef %hdev, i32 noundef 13766628, i32 noundef -7402484) #3
  %1299 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1299)
  %1300 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1103.i70 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1300, i32 0, i32 58
  %1301 = ptrtoint ptr %wreg1103.i70 to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load ptr, ptr %wreg1103.i70, align 4
  tail call void %1302(ptr noundef %hdev, i32 noundef 13766632, i32 noundef -2) #3
  %1303 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1136.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1304, i32 0, i32 58
  %1305 = ptrtoint ptr %wreg1136.i to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load ptr, ptr %wreg1136.i, align 4
  tail call void %1306(ptr noundef %hdev, i32 noundef 13774720, i32 noundef 167804928) #3
  %1307 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1172.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1308, i32 0, i32 58
  %1309 = ptrtoint ptr %wreg1172.i to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %wreg1172.i, align 4
  tail call void %1310(ptr noundef %hdev, i32 noundef 13774724, i32 noundef 0) #3
  %1311 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1191.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1312, i32 0, i32 58
  %1313 = ptrtoint ptr %wreg1191.i to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load ptr, ptr %wreg1191.i, align 4
  tail call void %1314(ptr noundef %hdev, i32 noundef 13774728, i32 noundef 277348336) #3
  %1315 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1315)
  %1316 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1223.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1316, i32 0, i32 58
  %1317 = ptrtoint ptr %wreg1223.i to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load ptr, ptr %wreg1223.i, align 4
  tail call void %1318(ptr noundef %hdev, i32 noundef 13774732, i32 noundef 122880) #3
  %1319 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1259.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1320, i32 0, i32 58
  %1321 = ptrtoint ptr %wreg1259.i to i32
  call void @__asan_load4_noabort(i32 %1321)
  %1322 = load ptr, ptr %wreg1259.i, align 4
  tail call void %1322(ptr noundef %hdev, i32 noundef 13774736, i32 noundef 0) #3
  %1323 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1323)
  %1324 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1294.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1324, i32 0, i32 58
  %1325 = ptrtoint ptr %wreg1294.i to i32
  call void @__asan_load4_noabort(i32 %1325)
  %1326 = load ptr, ptr %wreg1294.i, align 4
  tail call void %1326(ptr noundef %hdev, i32 noundef 13774740, i32 noundef 8388608) #3
  %1327 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1300.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1328, i32 0, i32 58
  %1329 = ptrtoint ptr %wreg1300.i to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load ptr, ptr %wreg1300.i, align 4
  tail call void %1330(ptr noundef %hdev, i32 noundef 13774744, i32 noundef -4) #3
  %1331 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1322.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1332, i32 0, i32 58
  %1333 = ptrtoint ptr %wreg1322.i to i32
  call void @__asan_load4_noabort(i32 %1333)
  %1334 = load ptr, ptr %wreg1322.i, align 4
  tail call void %1334(ptr noundef %hdev, i32 noundef 13774748, i32 noundef 503317503) #3
  %1335 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1335)
  %1336 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1330.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1336, i32 0, i32 58
  %1337 = ptrtoint ptr %wreg1330.i to i32
  call void @__asan_load4_noabort(i32 %1337)
  %1338 = load ptr, ptr %wreg1330.i, align 4
  tail call void %1338(ptr noundef %hdev, i32 noundef 13774752, i32 noundef -16) #3
  %1339 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1347.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1340, i32 0, i32 58
  %1341 = ptrtoint ptr %wreg1347.i to i32
  call void @__asan_load4_noabort(i32 %1341)
  %1342 = load ptr, ptr %wreg1347.i, align 4
  tail call void %1342(ptr noundef %hdev, i32 noundef 13774752, i32 noundef -131057) #3
  %1343 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1343)
  %1344 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1376.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1344, i32 0, i32 58
  %1345 = ptrtoint ptr %wreg1376.i to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load ptr, ptr %wreg1376.i, align 4
  tail call void %1346(ptr noundef %hdev, i32 noundef 13774800, i32 noundef 191) #3
  %1347 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1388.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1348, i32 0, i32 58
  %1349 = ptrtoint ptr %wreg1388.i to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load ptr, ptr %wreg1388.i, align 4
  tail call void %1350(ptr noundef %hdev, i32 noundef 13774804, i32 noundef -256) #3
  %1351 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1397.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1352, i32 0, i32 58
  %1353 = ptrtoint ptr %wreg1397.i to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load ptr, ptr %wreg1397.i, align 4
  tail call void %1354(ptr noundef %hdev, i32 noundef 13774808, i32 noundef -1982465) #3
  %1355 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1428.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1356, i32 0, i32 58
  %1357 = ptrtoint ptr %wreg1428.i to i32
  call void @__asan_load4_noabort(i32 %1357)
  %1358 = load ptr, ptr %wreg1428.i, align 4
  tail call void %1358(ptr noundef %hdev, i32 noundef 13774812, i32 noundef 2672) #3
  %1359 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1359)
  %1360 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1447.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1360, i32 0, i32 58
  %1361 = ptrtoint ptr %wreg1447.i to i32
  call void @__asan_load4_noabort(i32 %1361)
  %1362 = load ptr, ptr %wreg1447.i, align 4
  tail call void %1362(ptr noundef %hdev, i32 noundef 13774816, i32 noundef -1879052288) #3
  %1363 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1363)
  %1364 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1466.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1364, i32 0, i32 58
  %1365 = ptrtoint ptr %wreg1466.i to i32
  call void @__asan_load4_noabort(i32 %1365)
  %1366 = load ptr, ptr %wreg1466.i, align 4
  tail call void %1366(ptr noundef %hdev, i32 noundef 13774820, i32 noundef -7402484) #3
  %1367 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1367)
  %1368 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1471.i71 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1368, i32 0, i32 58
  %1369 = ptrtoint ptr %wreg1471.i71 to i32
  call void @__asan_load4_noabort(i32 %1369)
  %1370 = load ptr, ptr %wreg1471.i71, align 4
  tail call void %1370(ptr noundef %hdev, i32 noundef 13774824, i32 noundef -2) #3
  %1371 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1371)
  %1372 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1476.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1372, i32 0, i32 58
  %1373 = ptrtoint ptr %wreg1476.i to i32
  call void @__asan_load4_noabort(i32 %1373)
  %1374 = load ptr, ptr %wreg1476.i, align 4
  tail call void %1374(ptr noundef %hdev, i32 noundef 14028796, i32 noundef 0) #3
  %1375 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1375)
  %1376 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1478.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1376, i32 0, i32 58
  %1377 = ptrtoint ptr %wreg1478.i to i32
  call void @__asan_load4_noabort(i32 %1377)
  %1378 = load ptr, ptr %wreg1478.i, align 4
  tail call void %1378(ptr noundef %hdev, i32 noundef 14036988, i32 noundef 0) #3
  %1379 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1379)
  %1380 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1508.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1380, i32 0, i32 58
  %1381 = ptrtoint ptr %wreg1508.i to i32
  call void @__asan_load4_noabort(i32 %1381)
  %1382 = load ptr, ptr %wreg1508.i, align 4
  tail call void %1382(ptr noundef %hdev, i32 noundef 14028672, i32 noundef 167804928) #3
  %1383 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1383)
  %1384 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1544.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1384, i32 0, i32 58
  %1385 = ptrtoint ptr %wreg1544.i to i32
  call void @__asan_load4_noabort(i32 %1385)
  %1386 = load ptr, ptr %wreg1544.i, align 4
  tail call void %1386(ptr noundef %hdev, i32 noundef 14028676, i32 noundef 0) #3
  %1387 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1563.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1388, i32 0, i32 58
  %1389 = ptrtoint ptr %wreg1563.i to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load ptr, ptr %wreg1563.i, align 4
  tail call void %1390(ptr noundef %hdev, i32 noundef 14028680, i32 noundef 277348336) #3
  %1391 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1595.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1392, i32 0, i32 58
  %1393 = ptrtoint ptr %wreg1595.i to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load ptr, ptr %wreg1595.i, align 4
  tail call void %1394(ptr noundef %hdev, i32 noundef 14028684, i32 noundef 122880) #3
  %1395 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1395)
  %1396 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1631.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1396, i32 0, i32 58
  %1397 = ptrtoint ptr %wreg1631.i to i32
  call void @__asan_load4_noabort(i32 %1397)
  %1398 = load ptr, ptr %wreg1631.i, align 4
  tail call void %1398(ptr noundef %hdev, i32 noundef 14028688, i32 noundef 0) #3
  %1399 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1666.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1400, i32 0, i32 58
  %1401 = ptrtoint ptr %wreg1666.i to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load ptr, ptr %wreg1666.i, align 4
  tail call void %1402(ptr noundef %hdev, i32 noundef 14028692, i32 noundef 8388608) #3
  %1403 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1403)
  %1404 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1672.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1404, i32 0, i32 58
  %1405 = ptrtoint ptr %wreg1672.i to i32
  call void @__asan_load4_noabort(i32 %1405)
  %1406 = load ptr, ptr %wreg1672.i, align 4
  tail call void %1406(ptr noundef %hdev, i32 noundef 14028696, i32 noundef -4) #3
  %1407 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1407)
  %1408 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1694.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1408, i32 0, i32 58
  %1409 = ptrtoint ptr %wreg1694.i to i32
  call void @__asan_load4_noabort(i32 %1409)
  %1410 = load ptr, ptr %wreg1694.i, align 4
  tail call void %1410(ptr noundef %hdev, i32 noundef 14028700, i32 noundef 503317503) #3
  %1411 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1411)
  %1412 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1702.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1412, i32 0, i32 58
  %1413 = ptrtoint ptr %wreg1702.i to i32
  call void @__asan_load4_noabort(i32 %1413)
  %1414 = load ptr, ptr %wreg1702.i, align 4
  tail call void %1414(ptr noundef %hdev, i32 noundef 14028704, i32 noundef -16) #3
  %1415 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1719.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1416, i32 0, i32 58
  %1417 = ptrtoint ptr %wreg1719.i to i32
  call void @__asan_load4_noabort(i32 %1417)
  %1418 = load ptr, ptr %wreg1719.i, align 4
  tail call void %1418(ptr noundef %hdev, i32 noundef 14028704, i32 noundef -131057) #3
  %1419 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1419)
  %1420 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1748.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1420, i32 0, i32 58
  %1421 = ptrtoint ptr %wreg1748.i to i32
  call void @__asan_load4_noabort(i32 %1421)
  %1422 = load ptr, ptr %wreg1748.i, align 4
  tail call void %1422(ptr noundef %hdev, i32 noundef 14028752, i32 noundef 191) #3
  %1423 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1423)
  %1424 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1760.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1424, i32 0, i32 58
  %1425 = ptrtoint ptr %wreg1760.i to i32
  call void @__asan_load4_noabort(i32 %1425)
  %1426 = load ptr, ptr %wreg1760.i, align 4
  tail call void %1426(ptr noundef %hdev, i32 noundef 14028756, i32 noundef -256) #3
  %1427 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1427)
  %1428 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1769.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1428, i32 0, i32 58
  %1429 = ptrtoint ptr %wreg1769.i to i32
  call void @__asan_load4_noabort(i32 %1429)
  %1430 = load ptr, ptr %wreg1769.i, align 4
  tail call void %1430(ptr noundef %hdev, i32 noundef 14028760, i32 noundef -1982465) #3
  %1431 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1431)
  %1432 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1800.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1432, i32 0, i32 58
  %1433 = ptrtoint ptr %wreg1800.i to i32
  call void @__asan_load4_noabort(i32 %1433)
  %1434 = load ptr, ptr %wreg1800.i, align 4
  tail call void %1434(ptr noundef %hdev, i32 noundef 14028764, i32 noundef 2672) #3
  %1435 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1435)
  %1436 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1819.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1436, i32 0, i32 58
  %1437 = ptrtoint ptr %wreg1819.i to i32
  call void @__asan_load4_noabort(i32 %1437)
  %1438 = load ptr, ptr %wreg1819.i, align 4
  tail call void %1438(ptr noundef %hdev, i32 noundef 14028768, i32 noundef -1879052288) #3
  %1439 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1439)
  %1440 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1838.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1440, i32 0, i32 58
  %1441 = ptrtoint ptr %wreg1838.i to i32
  call void @__asan_load4_noabort(i32 %1441)
  %1442 = load ptr, ptr %wreg1838.i, align 4
  tail call void %1442(ptr noundef %hdev, i32 noundef 14028772, i32 noundef -7402484) #3
  %1443 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1443)
  %1444 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1843.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1444, i32 0, i32 58
  %1445 = ptrtoint ptr %wreg1843.i to i32
  call void @__asan_load4_noabort(i32 %1445)
  %1446 = load ptr, ptr %wreg1843.i, align 4
  tail call void %1446(ptr noundef %hdev, i32 noundef 14028776, i32 noundef -2) #3
  %1447 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1447)
  %1448 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1876.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1448, i32 0, i32 58
  %1449 = ptrtoint ptr %wreg1876.i to i32
  call void @__asan_load4_noabort(i32 %1449)
  %1450 = load ptr, ptr %wreg1876.i, align 4
  tail call void %1450(ptr noundef %hdev, i32 noundef 14036864, i32 noundef 167804928) #3
  %1451 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1451)
  %1452 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1912.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1452, i32 0, i32 58
  %1453 = ptrtoint ptr %wreg1912.i to i32
  call void @__asan_load4_noabort(i32 %1453)
  %1454 = load ptr, ptr %wreg1912.i, align 4
  tail call void %1454(ptr noundef %hdev, i32 noundef 14036868, i32 noundef 0) #3
  %1455 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1455)
  %1456 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1931.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1456, i32 0, i32 58
  %1457 = ptrtoint ptr %wreg1931.i to i32
  call void @__asan_load4_noabort(i32 %1457)
  %1458 = load ptr, ptr %wreg1931.i, align 4
  tail call void %1458(ptr noundef %hdev, i32 noundef 14036872, i32 noundef 277348336) #3
  %1459 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1459)
  %1460 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1963.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1460, i32 0, i32 58
  %1461 = ptrtoint ptr %wreg1963.i to i32
  call void @__asan_load4_noabort(i32 %1461)
  %1462 = load ptr, ptr %wreg1963.i, align 4
  tail call void %1462(ptr noundef %hdev, i32 noundef 14036876, i32 noundef 122880) #3
  %1463 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1463)
  %1464 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1999.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1464, i32 0, i32 58
  %1465 = ptrtoint ptr %wreg1999.i to i32
  call void @__asan_load4_noabort(i32 %1465)
  %1466 = load ptr, ptr %wreg1999.i, align 4
  tail call void %1466(ptr noundef %hdev, i32 noundef 14036880, i32 noundef 0) #3
  %1467 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1467)
  %1468 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2034.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1468, i32 0, i32 58
  %1469 = ptrtoint ptr %wreg2034.i to i32
  call void @__asan_load4_noabort(i32 %1469)
  %1470 = load ptr, ptr %wreg2034.i, align 4
  tail call void %1470(ptr noundef %hdev, i32 noundef 14036884, i32 noundef 8388608) #3
  %1471 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1471)
  %1472 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2040.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1472, i32 0, i32 58
  %1473 = ptrtoint ptr %wreg2040.i to i32
  call void @__asan_load4_noabort(i32 %1473)
  %1474 = load ptr, ptr %wreg2040.i, align 4
  tail call void %1474(ptr noundef %hdev, i32 noundef 14036888, i32 noundef -4) #3
  %1475 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1475)
  %1476 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2062.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1476, i32 0, i32 58
  %1477 = ptrtoint ptr %wreg2062.i to i32
  call void @__asan_load4_noabort(i32 %1477)
  %1478 = load ptr, ptr %wreg2062.i, align 4
  tail call void %1478(ptr noundef %hdev, i32 noundef 14036892, i32 noundef 503317503) #3
  %1479 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1479)
  %1480 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2070.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1480, i32 0, i32 58
  %1481 = ptrtoint ptr %wreg2070.i to i32
  call void @__asan_load4_noabort(i32 %1481)
  %1482 = load ptr, ptr %wreg2070.i, align 4
  tail call void %1482(ptr noundef %hdev, i32 noundef 14036896, i32 noundef -16) #3
  %1483 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1483)
  %1484 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2087.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1484, i32 0, i32 58
  %1485 = ptrtoint ptr %wreg2087.i to i32
  call void @__asan_load4_noabort(i32 %1485)
  %1486 = load ptr, ptr %wreg2087.i, align 4
  tail call void %1486(ptr noundef %hdev, i32 noundef 14036896, i32 noundef -131057) #3
  %1487 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1487)
  %1488 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2116.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1488, i32 0, i32 58
  %1489 = ptrtoint ptr %wreg2116.i to i32
  call void @__asan_load4_noabort(i32 %1489)
  %1490 = load ptr, ptr %wreg2116.i, align 4
  tail call void %1490(ptr noundef %hdev, i32 noundef 14036944, i32 noundef 191) #3
  %1491 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1491)
  %1492 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2128.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1492, i32 0, i32 58
  %1493 = ptrtoint ptr %wreg2128.i to i32
  call void @__asan_load4_noabort(i32 %1493)
  %1494 = load ptr, ptr %wreg2128.i, align 4
  tail call void %1494(ptr noundef %hdev, i32 noundef 14036948, i32 noundef -256) #3
  %1495 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1495)
  %1496 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2137.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1496, i32 0, i32 58
  %1497 = ptrtoint ptr %wreg2137.i to i32
  call void @__asan_load4_noabort(i32 %1497)
  %1498 = load ptr, ptr %wreg2137.i, align 4
  tail call void %1498(ptr noundef %hdev, i32 noundef 14036952, i32 noundef -1982465) #3
  %1499 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1499)
  %1500 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2168.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1500, i32 0, i32 58
  %1501 = ptrtoint ptr %wreg2168.i to i32
  call void @__asan_load4_noabort(i32 %1501)
  %1502 = load ptr, ptr %wreg2168.i, align 4
  tail call void %1502(ptr noundef %hdev, i32 noundef 14036956, i32 noundef 2672) #3
  %1503 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1503)
  %1504 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2187.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1504, i32 0, i32 58
  %1505 = ptrtoint ptr %wreg2187.i to i32
  call void @__asan_load4_noabort(i32 %1505)
  %1506 = load ptr, ptr %wreg2187.i, align 4
  tail call void %1506(ptr noundef %hdev, i32 noundef 14036960, i32 noundef -1879052288) #3
  %1507 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1507)
  %1508 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2206.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1508, i32 0, i32 58
  %1509 = ptrtoint ptr %wreg2206.i to i32
  call void @__asan_load4_noabort(i32 %1509)
  %1510 = load ptr, ptr %wreg2206.i, align 4
  tail call void %1510(ptr noundef %hdev, i32 noundef 14036964, i32 noundef -7402484) #3
  %1511 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1511)
  %1512 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2211.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1512, i32 0, i32 58
  %1513 = ptrtoint ptr %wreg2211.i to i32
  call void @__asan_load4_noabort(i32 %1513)
  %1514 = load ptr, ptr %wreg2211.i, align 4
  tail call void %1514(ptr noundef %hdev, i32 noundef 14036968, i32 noundef -2) #3
  %1515 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1515)
  %1516 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2216.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1516, i32 0, i32 58
  %1517 = ptrtoint ptr %wreg2216.i to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load ptr, ptr %wreg2216.i, align 4
  tail call void %1518(ptr noundef %hdev, i32 noundef 14290940, i32 noundef 0) #3
  %1519 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1519)
  %1520 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2218.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1520, i32 0, i32 58
  %1521 = ptrtoint ptr %wreg2218.i to i32
  call void @__asan_load4_noabort(i32 %1521)
  %1522 = load ptr, ptr %wreg2218.i, align 4
  tail call void %1522(ptr noundef %hdev, i32 noundef 14299132, i32 noundef 0) #3
  %1523 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1523)
  %1524 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2248.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1524, i32 0, i32 58
  %1525 = ptrtoint ptr %wreg2248.i to i32
  call void @__asan_load4_noabort(i32 %1525)
  %1526 = load ptr, ptr %wreg2248.i, align 4
  tail call void %1526(ptr noundef %hdev, i32 noundef 14290816, i32 noundef 167804928) #3
  %1527 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1527)
  %1528 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2284.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1528, i32 0, i32 58
  %1529 = ptrtoint ptr %wreg2284.i to i32
  call void @__asan_load4_noabort(i32 %1529)
  %1530 = load ptr, ptr %wreg2284.i, align 4
  tail call void %1530(ptr noundef %hdev, i32 noundef 14290820, i32 noundef 0) #3
  %1531 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1531)
  %1532 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2303.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1532, i32 0, i32 58
  %1533 = ptrtoint ptr %wreg2303.i to i32
  call void @__asan_load4_noabort(i32 %1533)
  %1534 = load ptr, ptr %wreg2303.i, align 4
  tail call void %1534(ptr noundef %hdev, i32 noundef 14290824, i32 noundef 277348336) #3
  %1535 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1535)
  %1536 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2335.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1536, i32 0, i32 58
  %1537 = ptrtoint ptr %wreg2335.i to i32
  call void @__asan_load4_noabort(i32 %1537)
  %1538 = load ptr, ptr %wreg2335.i, align 4
  tail call void %1538(ptr noundef %hdev, i32 noundef 14290828, i32 noundef 122880) #3
  %1539 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1539)
  %1540 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2371.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1540, i32 0, i32 58
  %1541 = ptrtoint ptr %wreg2371.i to i32
  call void @__asan_load4_noabort(i32 %1541)
  %1542 = load ptr, ptr %wreg2371.i, align 4
  tail call void %1542(ptr noundef %hdev, i32 noundef 14290832, i32 noundef 0) #3
  %1543 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1543)
  %1544 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2406.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1544, i32 0, i32 58
  %1545 = ptrtoint ptr %wreg2406.i to i32
  call void @__asan_load4_noabort(i32 %1545)
  %1546 = load ptr, ptr %wreg2406.i, align 4
  tail call void %1546(ptr noundef %hdev, i32 noundef 14290836, i32 noundef 8388608) #3
  %1547 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1547)
  %1548 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2412.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1548, i32 0, i32 58
  %1549 = ptrtoint ptr %wreg2412.i to i32
  call void @__asan_load4_noabort(i32 %1549)
  %1550 = load ptr, ptr %wreg2412.i, align 4
  tail call void %1550(ptr noundef %hdev, i32 noundef 14290840, i32 noundef -4) #3
  %1551 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1551)
  %1552 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2434.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1552, i32 0, i32 58
  %1553 = ptrtoint ptr %wreg2434.i to i32
  call void @__asan_load4_noabort(i32 %1553)
  %1554 = load ptr, ptr %wreg2434.i, align 4
  tail call void %1554(ptr noundef %hdev, i32 noundef 14290844, i32 noundef 503317503) #3
  %1555 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1555)
  %1556 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2442.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1556, i32 0, i32 58
  %1557 = ptrtoint ptr %wreg2442.i to i32
  call void @__asan_load4_noabort(i32 %1557)
  %1558 = load ptr, ptr %wreg2442.i, align 4
  tail call void %1558(ptr noundef %hdev, i32 noundef 14290848, i32 noundef -16) #3
  %1559 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1559)
  %1560 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2459.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1560, i32 0, i32 58
  %1561 = ptrtoint ptr %wreg2459.i to i32
  call void @__asan_load4_noabort(i32 %1561)
  %1562 = load ptr, ptr %wreg2459.i, align 4
  tail call void %1562(ptr noundef %hdev, i32 noundef 14290848, i32 noundef -131057) #3
  %1563 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1563)
  %1564 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2488.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1564, i32 0, i32 58
  %1565 = ptrtoint ptr %wreg2488.i to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load ptr, ptr %wreg2488.i, align 4
  tail call void %1566(ptr noundef %hdev, i32 noundef 14290896, i32 noundef 191) #3
  %1567 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2500.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1568, i32 0, i32 58
  %1569 = ptrtoint ptr %wreg2500.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %wreg2500.i, align 4
  tail call void %1570(ptr noundef %hdev, i32 noundef 14290900, i32 noundef -256) #3
  %1571 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2509.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1572, i32 0, i32 58
  %1573 = ptrtoint ptr %wreg2509.i to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load ptr, ptr %wreg2509.i, align 4
  tail call void %1574(ptr noundef %hdev, i32 noundef 14290904, i32 noundef -1982465) #3
  %1575 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1575)
  %1576 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2540.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1576, i32 0, i32 58
  %1577 = ptrtoint ptr %wreg2540.i to i32
  call void @__asan_load4_noabort(i32 %1577)
  %1578 = load ptr, ptr %wreg2540.i, align 4
  tail call void %1578(ptr noundef %hdev, i32 noundef 14290908, i32 noundef 2672) #3
  %1579 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1579)
  %1580 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2559.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1580, i32 0, i32 58
  %1581 = ptrtoint ptr %wreg2559.i to i32
  call void @__asan_load4_noabort(i32 %1581)
  %1582 = load ptr, ptr %wreg2559.i, align 4
  tail call void %1582(ptr noundef %hdev, i32 noundef 14290912, i32 noundef -1879052288) #3
  %1583 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1583)
  %1584 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2578.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1584, i32 0, i32 58
  %1585 = ptrtoint ptr %wreg2578.i to i32
  call void @__asan_load4_noabort(i32 %1585)
  %1586 = load ptr, ptr %wreg2578.i, align 4
  tail call void %1586(ptr noundef %hdev, i32 noundef 14290916, i32 noundef -7402484) #3
  %1587 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1587)
  %1588 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2583.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1588, i32 0, i32 58
  %1589 = ptrtoint ptr %wreg2583.i to i32
  call void @__asan_load4_noabort(i32 %1589)
  %1590 = load ptr, ptr %wreg2583.i, align 4
  tail call void %1590(ptr noundef %hdev, i32 noundef 14290920, i32 noundef -2) #3
  %1591 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1591)
  %1592 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2616.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1592, i32 0, i32 58
  %1593 = ptrtoint ptr %wreg2616.i to i32
  call void @__asan_load4_noabort(i32 %1593)
  %1594 = load ptr, ptr %wreg2616.i, align 4
  tail call void %1594(ptr noundef %hdev, i32 noundef 14299008, i32 noundef 167804928) #3
  %1595 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1595)
  %1596 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2652.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1596, i32 0, i32 58
  %1597 = ptrtoint ptr %wreg2652.i to i32
  call void @__asan_load4_noabort(i32 %1597)
  %1598 = load ptr, ptr %wreg2652.i, align 4
  tail call void %1598(ptr noundef %hdev, i32 noundef 14299012, i32 noundef 0) #3
  %1599 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1599)
  %1600 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2671.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1600, i32 0, i32 58
  %1601 = ptrtoint ptr %wreg2671.i to i32
  call void @__asan_load4_noabort(i32 %1601)
  %1602 = load ptr, ptr %wreg2671.i, align 4
  tail call void %1602(ptr noundef %hdev, i32 noundef 14299016, i32 noundef 277348336) #3
  %1603 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1603)
  %1604 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2703.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1604, i32 0, i32 58
  %1605 = ptrtoint ptr %wreg2703.i to i32
  call void @__asan_load4_noabort(i32 %1605)
  %1606 = load ptr, ptr %wreg2703.i, align 4
  tail call void %1606(ptr noundef %hdev, i32 noundef 14299020, i32 noundef 122880) #3
  %1607 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1607)
  %1608 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2739.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1608, i32 0, i32 58
  %1609 = ptrtoint ptr %wreg2739.i to i32
  call void @__asan_load4_noabort(i32 %1609)
  %1610 = load ptr, ptr %wreg2739.i, align 4
  tail call void %1610(ptr noundef %hdev, i32 noundef 14299024, i32 noundef 0) #3
  %1611 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1611)
  %1612 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2774.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1612, i32 0, i32 58
  %1613 = ptrtoint ptr %wreg2774.i to i32
  call void @__asan_load4_noabort(i32 %1613)
  %1614 = load ptr, ptr %wreg2774.i, align 4
  tail call void %1614(ptr noundef %hdev, i32 noundef 14299028, i32 noundef 8388608) #3
  %1615 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1615)
  %1616 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2780.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1616, i32 0, i32 58
  %1617 = ptrtoint ptr %wreg2780.i to i32
  call void @__asan_load4_noabort(i32 %1617)
  %1618 = load ptr, ptr %wreg2780.i, align 4
  tail call void %1618(ptr noundef %hdev, i32 noundef 14299032, i32 noundef -4) #3
  %1619 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1619)
  %1620 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2802.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1620, i32 0, i32 58
  %1621 = ptrtoint ptr %wreg2802.i to i32
  call void @__asan_load4_noabort(i32 %1621)
  %1622 = load ptr, ptr %wreg2802.i, align 4
  tail call void %1622(ptr noundef %hdev, i32 noundef 14299036, i32 noundef 503317503) #3
  %1623 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1623)
  %1624 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2810.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1624, i32 0, i32 58
  %1625 = ptrtoint ptr %wreg2810.i to i32
  call void @__asan_load4_noabort(i32 %1625)
  %1626 = load ptr, ptr %wreg2810.i, align 4
  tail call void %1626(ptr noundef %hdev, i32 noundef 14299040, i32 noundef -16) #3
  %1627 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1627)
  %1628 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2827.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1628, i32 0, i32 58
  %1629 = ptrtoint ptr %wreg2827.i to i32
  call void @__asan_load4_noabort(i32 %1629)
  %1630 = load ptr, ptr %wreg2827.i, align 4
  tail call void %1630(ptr noundef %hdev, i32 noundef 14299040, i32 noundef -131057) #3
  %1631 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1631)
  %1632 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2856.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1632, i32 0, i32 58
  %1633 = ptrtoint ptr %wreg2856.i to i32
  call void @__asan_load4_noabort(i32 %1633)
  %1634 = load ptr, ptr %wreg2856.i, align 4
  tail call void %1634(ptr noundef %hdev, i32 noundef 14299088, i32 noundef 191) #3
  %1635 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1635)
  %1636 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2868.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1636, i32 0, i32 58
  %1637 = ptrtoint ptr %wreg2868.i to i32
  call void @__asan_load4_noabort(i32 %1637)
  %1638 = load ptr, ptr %wreg2868.i, align 4
  tail call void %1638(ptr noundef %hdev, i32 noundef 14299092, i32 noundef -256) #3
  %1639 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1639)
  %1640 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2877.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1640, i32 0, i32 58
  %1641 = ptrtoint ptr %wreg2877.i to i32
  call void @__asan_load4_noabort(i32 %1641)
  %1642 = load ptr, ptr %wreg2877.i, align 4
  tail call void %1642(ptr noundef %hdev, i32 noundef 14299096, i32 noundef -1982465) #3
  %1643 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1643)
  %1644 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2908.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1644, i32 0, i32 58
  %1645 = ptrtoint ptr %wreg2908.i to i32
  call void @__asan_load4_noabort(i32 %1645)
  %1646 = load ptr, ptr %wreg2908.i, align 4
  tail call void %1646(ptr noundef %hdev, i32 noundef 14299100, i32 noundef 2672) #3
  %1647 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1647)
  %1648 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2927.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1648, i32 0, i32 58
  %1649 = ptrtoint ptr %wreg2927.i to i32
  call void @__asan_load4_noabort(i32 %1649)
  %1650 = load ptr, ptr %wreg2927.i, align 4
  tail call void %1650(ptr noundef %hdev, i32 noundef 14299104, i32 noundef -1879052288) #3
  %1651 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1651)
  %1652 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2946.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1652, i32 0, i32 58
  %1653 = ptrtoint ptr %wreg2946.i to i32
  call void @__asan_load4_noabort(i32 %1653)
  %1654 = load ptr, ptr %wreg2946.i, align 4
  tail call void %1654(ptr noundef %hdev, i32 noundef 14299108, i32 noundef -7402484) #3
  %1655 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1655)
  %1656 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2951.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1656, i32 0, i32 58
  %1657 = ptrtoint ptr %wreg2951.i to i32
  call void @__asan_load4_noabort(i32 %1657)
  %1658 = load ptr, ptr %wreg2951.i, align 4
  tail call void %1658(ptr noundef %hdev, i32 noundef 14299112, i32 noundef -2) #3
  %1659 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1659)
  %1660 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2956.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1660, i32 0, i32 58
  %1661 = ptrtoint ptr %wreg2956.i to i32
  call void @__asan_load4_noabort(i32 %1661)
  %1662 = load ptr, ptr %wreg2956.i, align 4
  tail call void %1662(ptr noundef %hdev, i32 noundef 14553084, i32 noundef 0) #3
  %1663 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1663)
  %1664 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2958.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1664, i32 0, i32 58
  %1665 = ptrtoint ptr %wreg2958.i to i32
  call void @__asan_load4_noabort(i32 %1665)
  %1666 = load ptr, ptr %wreg2958.i, align 4
  tail call void %1666(ptr noundef %hdev, i32 noundef 14561276, i32 noundef 0) #3
  %1667 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1667)
  %1668 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2988.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1668, i32 0, i32 58
  %1669 = ptrtoint ptr %wreg2988.i to i32
  call void @__asan_load4_noabort(i32 %1669)
  %1670 = load ptr, ptr %wreg2988.i, align 4
  tail call void %1670(ptr noundef %hdev, i32 noundef 14552960, i32 noundef 167804928) #3
  %1671 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1671)
  %1672 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3024.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1672, i32 0, i32 58
  %1673 = ptrtoint ptr %wreg3024.i to i32
  call void @__asan_load4_noabort(i32 %1673)
  %1674 = load ptr, ptr %wreg3024.i, align 4
  tail call void %1674(ptr noundef %hdev, i32 noundef 14552964, i32 noundef 0) #3
  %1675 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1675)
  %1676 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3043.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1676, i32 0, i32 58
  %1677 = ptrtoint ptr %wreg3043.i to i32
  call void @__asan_load4_noabort(i32 %1677)
  %1678 = load ptr, ptr %wreg3043.i, align 4
  tail call void %1678(ptr noundef %hdev, i32 noundef 14552968, i32 noundef 277348336) #3
  %1679 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1679)
  %1680 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3075.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1680, i32 0, i32 58
  %1681 = ptrtoint ptr %wreg3075.i to i32
  call void @__asan_load4_noabort(i32 %1681)
  %1682 = load ptr, ptr %wreg3075.i, align 4
  tail call void %1682(ptr noundef %hdev, i32 noundef 14552972, i32 noundef 122880) #3
  %1683 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1683)
  %1684 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3111.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1684, i32 0, i32 58
  %1685 = ptrtoint ptr %wreg3111.i to i32
  call void @__asan_load4_noabort(i32 %1685)
  %1686 = load ptr, ptr %wreg3111.i, align 4
  tail call void %1686(ptr noundef %hdev, i32 noundef 14552976, i32 noundef 0) #3
  %1687 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1687)
  %1688 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3146.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1688, i32 0, i32 58
  %1689 = ptrtoint ptr %wreg3146.i to i32
  call void @__asan_load4_noabort(i32 %1689)
  %1690 = load ptr, ptr %wreg3146.i, align 4
  tail call void %1690(ptr noundef %hdev, i32 noundef 14552980, i32 noundef 8388608) #3
  %1691 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1691)
  %1692 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3152.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1692, i32 0, i32 58
  %1693 = ptrtoint ptr %wreg3152.i to i32
  call void @__asan_load4_noabort(i32 %1693)
  %1694 = load ptr, ptr %wreg3152.i, align 4
  tail call void %1694(ptr noundef %hdev, i32 noundef 14552984, i32 noundef -4) #3
  %1695 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1695)
  %1696 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3174.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1696, i32 0, i32 58
  %1697 = ptrtoint ptr %wreg3174.i to i32
  call void @__asan_load4_noabort(i32 %1697)
  %1698 = load ptr, ptr %wreg3174.i, align 4
  tail call void %1698(ptr noundef %hdev, i32 noundef 14552988, i32 noundef 503317503) #3
  %1699 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1699)
  %1700 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3182.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1700, i32 0, i32 58
  %1701 = ptrtoint ptr %wreg3182.i to i32
  call void @__asan_load4_noabort(i32 %1701)
  %1702 = load ptr, ptr %wreg3182.i, align 4
  tail call void %1702(ptr noundef %hdev, i32 noundef 14552992, i32 noundef -16) #3
  %1703 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1703)
  %1704 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3199.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1704, i32 0, i32 58
  %1705 = ptrtoint ptr %wreg3199.i to i32
  call void @__asan_load4_noabort(i32 %1705)
  %1706 = load ptr, ptr %wreg3199.i, align 4
  tail call void %1706(ptr noundef %hdev, i32 noundef 14552992, i32 noundef -131057) #3
  %1707 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1707)
  %1708 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3228.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1708, i32 0, i32 58
  %1709 = ptrtoint ptr %wreg3228.i to i32
  call void @__asan_load4_noabort(i32 %1709)
  %1710 = load ptr, ptr %wreg3228.i, align 4
  tail call void %1710(ptr noundef %hdev, i32 noundef 14553040, i32 noundef 191) #3
  %1711 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1711)
  %1712 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3240.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1712, i32 0, i32 58
  %1713 = ptrtoint ptr %wreg3240.i to i32
  call void @__asan_load4_noabort(i32 %1713)
  %1714 = load ptr, ptr %wreg3240.i, align 4
  tail call void %1714(ptr noundef %hdev, i32 noundef 14553044, i32 noundef -256) #3
  %1715 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1715)
  %1716 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3249.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1716, i32 0, i32 58
  %1717 = ptrtoint ptr %wreg3249.i to i32
  call void @__asan_load4_noabort(i32 %1717)
  %1718 = load ptr, ptr %wreg3249.i, align 4
  tail call void %1718(ptr noundef %hdev, i32 noundef 14553048, i32 noundef -1982465) #3
  %1719 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1719)
  %1720 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3280.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1720, i32 0, i32 58
  %1721 = ptrtoint ptr %wreg3280.i to i32
  call void @__asan_load4_noabort(i32 %1721)
  %1722 = load ptr, ptr %wreg3280.i, align 4
  tail call void %1722(ptr noundef %hdev, i32 noundef 14553052, i32 noundef 2672) #3
  %1723 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1723)
  %1724 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3299.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1724, i32 0, i32 58
  %1725 = ptrtoint ptr %wreg3299.i to i32
  call void @__asan_load4_noabort(i32 %1725)
  %1726 = load ptr, ptr %wreg3299.i, align 4
  tail call void %1726(ptr noundef %hdev, i32 noundef 14553056, i32 noundef -1879052288) #3
  %1727 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1727)
  %1728 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3318.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1728, i32 0, i32 58
  %1729 = ptrtoint ptr %wreg3318.i to i32
  call void @__asan_load4_noabort(i32 %1729)
  %1730 = load ptr, ptr %wreg3318.i, align 4
  tail call void %1730(ptr noundef %hdev, i32 noundef 14553060, i32 noundef -7402484) #3
  %1731 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1731)
  %1732 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3323.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1732, i32 0, i32 58
  %1733 = ptrtoint ptr %wreg3323.i to i32
  call void @__asan_load4_noabort(i32 %1733)
  %1734 = load ptr, ptr %wreg3323.i, align 4
  tail call void %1734(ptr noundef %hdev, i32 noundef 14553064, i32 noundef -2) #3
  %1735 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1735)
  %1736 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3356.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1736, i32 0, i32 58
  %1737 = ptrtoint ptr %wreg3356.i to i32
  call void @__asan_load4_noabort(i32 %1737)
  %1738 = load ptr, ptr %wreg3356.i, align 4
  tail call void %1738(ptr noundef %hdev, i32 noundef 14561152, i32 noundef 167804928) #3
  %1739 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1739)
  %1740 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3392.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1740, i32 0, i32 58
  %1741 = ptrtoint ptr %wreg3392.i to i32
  call void @__asan_load4_noabort(i32 %1741)
  %1742 = load ptr, ptr %wreg3392.i, align 4
  tail call void %1742(ptr noundef %hdev, i32 noundef 14561156, i32 noundef 0) #3
  %1743 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1743)
  %1744 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3411.i72 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1744, i32 0, i32 58
  %1745 = ptrtoint ptr %wreg3411.i72 to i32
  call void @__asan_load4_noabort(i32 %1745)
  %1746 = load ptr, ptr %wreg3411.i72, align 4
  tail call void %1746(ptr noundef %hdev, i32 noundef 14561160, i32 noundef 277348336) #3
  %1747 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1747)
  %1748 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3443.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1748, i32 0, i32 58
  %1749 = ptrtoint ptr %wreg3443.i to i32
  call void @__asan_load4_noabort(i32 %1749)
  %1750 = load ptr, ptr %wreg3443.i, align 4
  tail call void %1750(ptr noundef %hdev, i32 noundef 14561164, i32 noundef 122880) #3
  %1751 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1751)
  %1752 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3479.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1752, i32 0, i32 58
  %1753 = ptrtoint ptr %wreg3479.i to i32
  call void @__asan_load4_noabort(i32 %1753)
  %1754 = load ptr, ptr %wreg3479.i, align 4
  tail call void %1754(ptr noundef %hdev, i32 noundef 14561168, i32 noundef 0) #3
  %1755 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1755)
  %1756 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3514.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1756, i32 0, i32 58
  %1757 = ptrtoint ptr %wreg3514.i to i32
  call void @__asan_load4_noabort(i32 %1757)
  %1758 = load ptr, ptr %wreg3514.i, align 4
  tail call void %1758(ptr noundef %hdev, i32 noundef 14561172, i32 noundef 8388608) #3
  %1759 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1759)
  %1760 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3520.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1760, i32 0, i32 58
  %1761 = ptrtoint ptr %wreg3520.i to i32
  call void @__asan_load4_noabort(i32 %1761)
  %1762 = load ptr, ptr %wreg3520.i, align 4
  tail call void %1762(ptr noundef %hdev, i32 noundef 14561176, i32 noundef -4) #3
  %1763 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1763)
  %1764 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3542.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1764, i32 0, i32 58
  %1765 = ptrtoint ptr %wreg3542.i to i32
  call void @__asan_load4_noabort(i32 %1765)
  %1766 = load ptr, ptr %wreg3542.i, align 4
  tail call void %1766(ptr noundef %hdev, i32 noundef 14561180, i32 noundef 503317503) #3
  %1767 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1767)
  %1768 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3550.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1768, i32 0, i32 58
  %1769 = ptrtoint ptr %wreg3550.i to i32
  call void @__asan_load4_noabort(i32 %1769)
  %1770 = load ptr, ptr %wreg3550.i, align 4
  tail call void %1770(ptr noundef %hdev, i32 noundef 14561184, i32 noundef -16) #3
  %1771 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1771)
  %1772 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3567.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1772, i32 0, i32 58
  %1773 = ptrtoint ptr %wreg3567.i to i32
  call void @__asan_load4_noabort(i32 %1773)
  %1774 = load ptr, ptr %wreg3567.i, align 4
  tail call void %1774(ptr noundef %hdev, i32 noundef 14561184, i32 noundef -131057) #3
  %1775 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1775)
  %1776 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3596.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1776, i32 0, i32 58
  %1777 = ptrtoint ptr %wreg3596.i to i32
  call void @__asan_load4_noabort(i32 %1777)
  %1778 = load ptr, ptr %wreg3596.i, align 4
  tail call void %1778(ptr noundef %hdev, i32 noundef 14561232, i32 noundef 191) #3
  %1779 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1779)
  %1780 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3608.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1780, i32 0, i32 58
  %1781 = ptrtoint ptr %wreg3608.i to i32
  call void @__asan_load4_noabort(i32 %1781)
  %1782 = load ptr, ptr %wreg3608.i, align 4
  tail call void %1782(ptr noundef %hdev, i32 noundef 14561236, i32 noundef -256) #3
  %1783 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1783)
  %1784 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3617.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1784, i32 0, i32 58
  %1785 = ptrtoint ptr %wreg3617.i to i32
  call void @__asan_load4_noabort(i32 %1785)
  %1786 = load ptr, ptr %wreg3617.i, align 4
  tail call void %1786(ptr noundef %hdev, i32 noundef 14561240, i32 noundef -1982465) #3
  %1787 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1787)
  %1788 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3648.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1788, i32 0, i32 58
  %1789 = ptrtoint ptr %wreg3648.i to i32
  call void @__asan_load4_noabort(i32 %1789)
  %1790 = load ptr, ptr %wreg3648.i, align 4
  tail call void %1790(ptr noundef %hdev, i32 noundef 14561244, i32 noundef 2672) #3
  %1791 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1791)
  %1792 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3667.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1792, i32 0, i32 58
  %1793 = ptrtoint ptr %wreg3667.i to i32
  call void @__asan_load4_noabort(i32 %1793)
  %1794 = load ptr, ptr %wreg3667.i, align 4
  tail call void %1794(ptr noundef %hdev, i32 noundef 14561248, i32 noundef -1879052288) #3
  %1795 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1795)
  %1796 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3686.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1796, i32 0, i32 58
  %1797 = ptrtoint ptr %wreg3686.i to i32
  call void @__asan_load4_noabort(i32 %1797)
  %1798 = load ptr, ptr %wreg3686.i, align 4
  tail call void %1798(ptr noundef %hdev, i32 noundef 14561252, i32 noundef -7402484) #3
  %1799 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1799)
  %1800 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3691.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1800, i32 0, i32 58
  %1801 = ptrtoint ptr %wreg3691.i to i32
  call void @__asan_load4_noabort(i32 %1801)
  %1802 = load ptr, ptr %wreg3691.i, align 4
  tail call void %1802(ptr noundef %hdev, i32 noundef 14561256, i32 noundef -2) #3
  %1803 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %1803)
  %1804 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1804)
  %tobool.not.i74 = icmp eq i8 %1804, 0
  br i1 %tobool.not.i74, label %gaudi_init_mme_protection_bits.exit.while.body.i.i82_crit_edge, label %gaudi_init_mme_protection_bits.exit.gaudi_init_tpc_protection_bits.exit_crit_edge

gaudi_init_mme_protection_bits.exit.gaudi_init_tpc_protection_bits.exit_crit_edge: ; preds = %gaudi_init_mme_protection_bits.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %gaudi_init_tpc_protection_bits.exit

gaudi_init_mme_protection_bits.exit.while.body.i.i82_crit_edge: ; preds = %gaudi_init_mme_protection_bits.exit
  br label %while.body.i.i82

while.body.i.i82:                                 ; preds = %while.body.i.i82.while.body.i.i82_crit_edge, %gaudi_init_mme_protection_bits.exit.while.body.i.i82_crit_edge
  %pb_addr.07.i.i77 = phi i32 [ %add1.i.i79, %while.body.i.i82.while.body.i.i82_crit_edge ], [ 14712704, %gaudi_init_mme_protection_bits.exit.while.body.i.i82_crit_edge ]
  %1805 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1805)
  %1806 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i.i78 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1806, i32 0, i32 58
  %1807 = ptrtoint ptr %wreg.i.i78 to i32
  call void @__asan_load4_noabort(i32 %1807)
  %1808 = load ptr, ptr %wreg.i.i78, align 4
  tail call void %1808(ptr noundef %hdev, i32 noundef %pb_addr.07.i.i77, i32 noundef 0) #3
  %add1.i.i79 = add nuw nsw i32 %pb_addr.07.i.i77, 4
  %and.i.i80 = and i32 %add1.i.i79, 4092
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %while.body.i.i82.while.body.i6822.i_crit_edge, label %while.body.i.i82.while.body.i.i82_crit_edge

while.body.i.i82.while.body.i.i82_crit_edge:      ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i82

while.body.i.i82.while.body.i6822.i_crit_edge:    ; preds = %while.body.i.i82
  br label %while.body.i6822.i

while.body.i6822.i:                               ; preds = %while.body.i6822.i.while.body.i6822.i_crit_edge, %while.body.i.i82.while.body.i6822.i_crit_edge
  %pb_addr.07.i6817.i = phi i32 [ %add1.i6819.i, %while.body.i6822.i.while.body.i6822.i_crit_edge ], [ 14974848, %while.body.i.i82.while.body.i6822.i_crit_edge ]
  %1809 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1809)
  %1810 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6818.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1810, i32 0, i32 58
  %1811 = ptrtoint ptr %wreg.i6818.i to i32
  call void @__asan_load4_noabort(i32 %1811)
  %1812 = load ptr, ptr %wreg.i6818.i, align 4
  tail call void %1812(ptr noundef %hdev, i32 noundef %pb_addr.07.i6817.i, i32 noundef 0) #3
  %add1.i6819.i = add nuw nsw i32 %pb_addr.07.i6817.i, 4
  %and.i6820.i = and i32 %add1.i6819.i, 4092
  %tobool.not.i6821.i = icmp eq i32 %and.i6820.i, 0
  br i1 %tobool.not.i6821.i, label %while.body.i6822.i.while.body.i6830.i_crit_edge, label %while.body.i6822.i.while.body.i6822.i_crit_edge

while.body.i6822.i.while.body.i6822.i_crit_edge:  ; preds = %while.body.i6822.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6822.i

while.body.i6822.i.while.body.i6830.i_crit_edge:  ; preds = %while.body.i6822.i
  br label %while.body.i6830.i

while.body.i6830.i:                               ; preds = %while.body.i6830.i.while.body.i6830.i_crit_edge, %while.body.i6822.i.while.body.i6830.i_crit_edge
  %pb_addr.07.i6825.i = phi i32 [ %add1.i6827.i, %while.body.i6830.i.while.body.i6830.i_crit_edge ], [ 15236992, %while.body.i6822.i.while.body.i6830.i_crit_edge ]
  %1813 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1813)
  %1814 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6826.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1814, i32 0, i32 58
  %1815 = ptrtoint ptr %wreg.i6826.i to i32
  call void @__asan_load4_noabort(i32 %1815)
  %1816 = load ptr, ptr %wreg.i6826.i, align 4
  tail call void %1816(ptr noundef %hdev, i32 noundef %pb_addr.07.i6825.i, i32 noundef 0) #3
  %add1.i6827.i = add nuw nsw i32 %pb_addr.07.i6825.i, 4
  %and.i6828.i = and i32 %add1.i6827.i, 4092
  %tobool.not.i6829.i = icmp eq i32 %and.i6828.i, 0
  br i1 %tobool.not.i6829.i, label %while.body.i6830.i.while.body.i6838.i_crit_edge, label %while.body.i6830.i.while.body.i6830.i_crit_edge

while.body.i6830.i.while.body.i6830.i_crit_edge:  ; preds = %while.body.i6830.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6830.i

while.body.i6830.i.while.body.i6838.i_crit_edge:  ; preds = %while.body.i6830.i
  br label %while.body.i6838.i

while.body.i6838.i:                               ; preds = %while.body.i6838.i.while.body.i6838.i_crit_edge, %while.body.i6830.i.while.body.i6838.i_crit_edge
  %pb_addr.07.i6833.i = phi i32 [ %add1.i6835.i, %while.body.i6838.i.while.body.i6838.i_crit_edge ], [ 15499136, %while.body.i6830.i.while.body.i6838.i_crit_edge ]
  %1817 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1817)
  %1818 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6834.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1818, i32 0, i32 58
  %1819 = ptrtoint ptr %wreg.i6834.i to i32
  call void @__asan_load4_noabort(i32 %1819)
  %1820 = load ptr, ptr %wreg.i6834.i, align 4
  tail call void %1820(ptr noundef %hdev, i32 noundef %pb_addr.07.i6833.i, i32 noundef 0) #3
  %add1.i6835.i = add nuw nsw i32 %pb_addr.07.i6833.i, 4
  %and.i6836.i = and i32 %add1.i6835.i, 4092
  %tobool.not.i6837.i = icmp eq i32 %and.i6836.i, 0
  br i1 %tobool.not.i6837.i, label %while.body.i6838.i.while.body.i6846.i_crit_edge, label %while.body.i6838.i.while.body.i6838.i_crit_edge

while.body.i6838.i.while.body.i6838.i_crit_edge:  ; preds = %while.body.i6838.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6838.i

while.body.i6838.i.while.body.i6846.i_crit_edge:  ; preds = %while.body.i6838.i
  br label %while.body.i6846.i

while.body.i6846.i:                               ; preds = %while.body.i6846.i.while.body.i6846.i_crit_edge, %while.body.i6838.i.while.body.i6846.i_crit_edge
  %pb_addr.07.i6841.i = phi i32 [ %add1.i6843.i, %while.body.i6846.i.while.body.i6846.i_crit_edge ], [ 15761280, %while.body.i6838.i.while.body.i6846.i_crit_edge ]
  %1821 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1821)
  %1822 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6842.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1822, i32 0, i32 58
  %1823 = ptrtoint ptr %wreg.i6842.i to i32
  call void @__asan_load4_noabort(i32 %1823)
  %1824 = load ptr, ptr %wreg.i6842.i, align 4
  tail call void %1824(ptr noundef %hdev, i32 noundef %pb_addr.07.i6841.i, i32 noundef 0) #3
  %add1.i6843.i = add nuw nsw i32 %pb_addr.07.i6841.i, 4
  %and.i6844.i = and i32 %add1.i6843.i, 4092
  %tobool.not.i6845.i = icmp eq i32 %and.i6844.i, 0
  br i1 %tobool.not.i6845.i, label %while.body.i6846.i.while.body.i6854.i_crit_edge, label %while.body.i6846.i.while.body.i6846.i_crit_edge

while.body.i6846.i.while.body.i6846.i_crit_edge:  ; preds = %while.body.i6846.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6846.i

while.body.i6846.i.while.body.i6854.i_crit_edge:  ; preds = %while.body.i6846.i
  br label %while.body.i6854.i

while.body.i6854.i:                               ; preds = %while.body.i6854.i.while.body.i6854.i_crit_edge, %while.body.i6846.i.while.body.i6854.i_crit_edge
  %pb_addr.07.i6849.i = phi i32 [ %add1.i6851.i, %while.body.i6854.i.while.body.i6854.i_crit_edge ], [ 16023424, %while.body.i6846.i.while.body.i6854.i_crit_edge ]
  %1825 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1825)
  %1826 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6850.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1826, i32 0, i32 58
  %1827 = ptrtoint ptr %wreg.i6850.i to i32
  call void @__asan_load4_noabort(i32 %1827)
  %1828 = load ptr, ptr %wreg.i6850.i, align 4
  tail call void %1828(ptr noundef %hdev, i32 noundef %pb_addr.07.i6849.i, i32 noundef 0) #3
  %add1.i6851.i = add nuw nsw i32 %pb_addr.07.i6849.i, 4
  %and.i6852.i = and i32 %add1.i6851.i, 4092
  %tobool.not.i6853.i = icmp eq i32 %and.i6852.i, 0
  br i1 %tobool.not.i6853.i, label %while.body.i6854.i.while.body.i6862.i_crit_edge, label %while.body.i6854.i.while.body.i6854.i_crit_edge

while.body.i6854.i.while.body.i6854.i_crit_edge:  ; preds = %while.body.i6854.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6854.i

while.body.i6854.i.while.body.i6862.i_crit_edge:  ; preds = %while.body.i6854.i
  br label %while.body.i6862.i

while.body.i6862.i:                               ; preds = %while.body.i6862.i.while.body.i6862.i_crit_edge, %while.body.i6854.i.while.body.i6862.i_crit_edge
  %pb_addr.07.i6857.i = phi i32 [ %add1.i6859.i, %while.body.i6862.i.while.body.i6862.i_crit_edge ], [ 16285568, %while.body.i6854.i.while.body.i6862.i_crit_edge ]
  %1829 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1829)
  %1830 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6858.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1830, i32 0, i32 58
  %1831 = ptrtoint ptr %wreg.i6858.i to i32
  call void @__asan_load4_noabort(i32 %1831)
  %1832 = load ptr, ptr %wreg.i6858.i, align 4
  tail call void %1832(ptr noundef %hdev, i32 noundef %pb_addr.07.i6857.i, i32 noundef 0) #3
  %add1.i6859.i = add nuw nsw i32 %pb_addr.07.i6857.i, 4
  %and.i6860.i = and i32 %add1.i6859.i, 4092
  %tobool.not.i6861.i = icmp eq i32 %and.i6860.i, 0
  br i1 %tobool.not.i6861.i, label %while.body.i6862.i.while.body.i6870.i_crit_edge, label %while.body.i6862.i.while.body.i6862.i_crit_edge

while.body.i6862.i.while.body.i6862.i_crit_edge:  ; preds = %while.body.i6862.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6862.i

while.body.i6862.i.while.body.i6870.i_crit_edge:  ; preds = %while.body.i6862.i
  br label %while.body.i6870.i

while.body.i6870.i:                               ; preds = %while.body.i6870.i.while.body.i6870.i_crit_edge, %while.body.i6862.i.while.body.i6870.i_crit_edge
  %pb_addr.07.i6865.i = phi i32 [ %add1.i6867.i, %while.body.i6870.i.while.body.i6870.i_crit_edge ], [ 16547712, %while.body.i6862.i.while.body.i6870.i_crit_edge ]
  %1833 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1833)
  %1834 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i6866.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1834, i32 0, i32 58
  %1835 = ptrtoint ptr %wreg.i6866.i to i32
  call void @__asan_load4_noabort(i32 %1835)
  %1836 = load ptr, ptr %wreg.i6866.i, align 4
  tail call void %1836(ptr noundef %hdev, i32 noundef %pb_addr.07.i6865.i, i32 noundef 0) #3
  %add1.i6867.i = add nuw nsw i32 %pb_addr.07.i6865.i, 4
  %and.i6868.i = and i32 %add1.i6867.i, 4092
  %tobool.not.i6869.i = icmp eq i32 %and.i6868.i, 0
  br i1 %tobool.not.i6869.i, label %while.body.i6870.i.gaudi_init_tpc_protection_bits.exit_crit_edge, label %while.body.i6870.i.while.body.i6870.i_crit_edge

while.body.i6870.i.while.body.i6870.i_crit_edge:  ; preds = %while.body.i6870.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i6870.i

while.body.i6870.i.gaudi_init_tpc_protection_bits.exit_crit_edge: ; preds = %while.body.i6870.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gaudi_init_tpc_protection_bits.exit

gaudi_init_tpc_protection_bits.exit:              ; preds = %while.body.i6870.i.gaudi_init_tpc_protection_bits.exit_crit_edge, %gaudi_init_mme_protection_bits.exit.gaudi_init_tpc_protection_bits.exit_crit_edge
  %1837 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1837)
  %1838 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg.i84 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1838, i32 0, i32 58
  %1839 = ptrtoint ptr %wreg.i84 to i32
  call void @__asan_load4_noabort(i32 %1839)
  %1840 = load ptr, ptr %wreg.i84, align 4
  tail call void %1840(ptr noundef %hdev, i32 noundef 14716924, i32 noundef 0) #3
  %1841 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1841)
  %1842 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2.i85 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1842, i32 0, i32 58
  %1843 = ptrtoint ptr %wreg2.i85 to i32
  call void @__asan_load4_noabort(i32 %1843)
  %1844 = load ptr, ptr %wreg2.i85, align 4
  tail call void %1844(ptr noundef %hdev, i32 noundef 14708732, i32 noundef 0) #3
  %1845 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1845)
  %1846 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg31.i86 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1846, i32 0, i32 58
  %1847 = ptrtoint ptr %wreg31.i86 to i32
  call void @__asan_load4_noabort(i32 %1847)
  %1848 = load ptr, ptr %wreg31.i86, align 4
  tail call void %1848(ptr noundef %hdev, i32 noundef 14716800, i32 noundef 167804928) #3
  %1849 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1849)
  %1850 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg64.i87 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1850, i32 0, i32 58
  %1851 = ptrtoint ptr %wreg64.i87 to i32
  call void @__asan_load4_noabort(i32 %1851)
  %1852 = load ptr, ptr %wreg64.i87, align 4
  tail call void %1852(ptr noundef %hdev, i32 noundef 14716804, i32 noundef 0) #3
  %1853 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1853)
  %1854 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg83.i88 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1854, i32 0, i32 58
  %1855 = ptrtoint ptr %wreg83.i88 to i32
  call void @__asan_load4_noabort(i32 %1855)
  %1856 = load ptr, ptr %wreg83.i88, align 4
  tail call void %1856(ptr noundef %hdev, i32 noundef 14716808, i32 noundef 277348336) #3
  %1857 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1857)
  %1858 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg115.i89 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1858, i32 0, i32 58
  %1859 = ptrtoint ptr %wreg115.i89 to i32
  call void @__asan_load4_noabort(i32 %1859)
  %1860 = load ptr, ptr %wreg115.i89, align 4
  tail call void %1860(ptr noundef %hdev, i32 noundef 14716812, i32 noundef 122880) #3
  %1861 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1861)
  %1862 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg151.i90 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1862, i32 0, i32 58
  %1863 = ptrtoint ptr %wreg151.i90 to i32
  call void @__asan_load4_noabort(i32 %1863)
  %1864 = load ptr, ptr %wreg151.i90, align 4
  tail call void %1864(ptr noundef %hdev, i32 noundef 14716816, i32 noundef 0) #3
  %1865 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1865)
  %1866 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg186.i91 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1866, i32 0, i32 58
  %1867 = ptrtoint ptr %wreg186.i91 to i32
  call void @__asan_load4_noabort(i32 %1867)
  %1868 = load ptr, ptr %wreg186.i91, align 4
  tail call void %1868(ptr noundef %hdev, i32 noundef 14716820, i32 noundef 8388608) #3
  %1869 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1869)
  %1870 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg192.i92 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1870, i32 0, i32 58
  %1871 = ptrtoint ptr %wreg192.i92 to i32
  call void @__asan_load4_noabort(i32 %1871)
  %1872 = load ptr, ptr %wreg192.i92, align 4
  tail call void %1872(ptr noundef %hdev, i32 noundef 14716824, i32 noundef -4) #3
  %1873 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1873)
  %1874 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg214.i93 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1874, i32 0, i32 58
  %1875 = ptrtoint ptr %wreg214.i93 to i32
  call void @__asan_load4_noabort(i32 %1875)
  %1876 = load ptr, ptr %wreg214.i93, align 4
  tail call void %1876(ptr noundef %hdev, i32 noundef 14716828, i32 noundef 503317503) #3
  %1877 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1877)
  %1878 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg222.i94 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1878, i32 0, i32 58
  %1879 = ptrtoint ptr %wreg222.i94 to i32
  call void @__asan_load4_noabort(i32 %1879)
  %1880 = load ptr, ptr %wreg222.i94, align 4
  tail call void %1880(ptr noundef %hdev, i32 noundef 14716832, i32 noundef -16) #3
  %1881 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1881)
  %1882 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg239.i95 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1882, i32 0, i32 58
  %1883 = ptrtoint ptr %wreg239.i95 to i32
  call void @__asan_load4_noabort(i32 %1883)
  %1884 = load ptr, ptr %wreg239.i95, align 4
  tail call void %1884(ptr noundef %hdev, i32 noundef 14716832, i32 noundef -131057) #3
  %1885 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1885)
  %1886 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg268.i96 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1886, i32 0, i32 58
  %1887 = ptrtoint ptr %wreg268.i96 to i32
  call void @__asan_load4_noabort(i32 %1887)
  %1888 = load ptr, ptr %wreg268.i96, align 4
  tail call void %1888(ptr noundef %hdev, i32 noundef 14716880, i32 noundef 191) #3
  %1889 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1889)
  %1890 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg280.i97 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1890, i32 0, i32 58
  %1891 = ptrtoint ptr %wreg280.i97 to i32
  call void @__asan_load4_noabort(i32 %1891)
  %1892 = load ptr, ptr %wreg280.i97, align 4
  tail call void %1892(ptr noundef %hdev, i32 noundef 14716884, i32 noundef -256) #3
  %1893 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1893)
  %1894 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg289.i98 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1894, i32 0, i32 58
  %1895 = ptrtoint ptr %wreg289.i98 to i32
  call void @__asan_load4_noabort(i32 %1895)
  %1896 = load ptr, ptr %wreg289.i98, align 4
  tail call void %1896(ptr noundef %hdev, i32 noundef 14716888, i32 noundef -1982465) #3
  %1897 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1897)
  %1898 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg320.i99 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1898, i32 0, i32 58
  %1899 = ptrtoint ptr %wreg320.i99 to i32
  call void @__asan_load4_noabort(i32 %1899)
  %1900 = load ptr, ptr %wreg320.i99, align 4
  tail call void %1900(ptr noundef %hdev, i32 noundef 14716892, i32 noundef 2672) #3
  %1901 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1901)
  %1902 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg339.i100 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1902, i32 0, i32 58
  %1903 = ptrtoint ptr %wreg339.i100 to i32
  call void @__asan_load4_noabort(i32 %1903)
  %1904 = load ptr, ptr %wreg339.i100, align 4
  tail call void %1904(ptr noundef %hdev, i32 noundef 14716896, i32 noundef -1879052288) #3
  %1905 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1905)
  %1906 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg358.i101 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1906, i32 0, i32 58
  %1907 = ptrtoint ptr %wreg358.i101 to i32
  call void @__asan_load4_noabort(i32 %1907)
  %1908 = load ptr, ptr %wreg358.i101, align 4
  tail call void %1908(ptr noundef %hdev, i32 noundef 14716900, i32 noundef -7402484) #3
  %1909 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1909)
  %1910 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg363.i102 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1910, i32 0, i32 58
  %1911 = ptrtoint ptr %wreg363.i102 to i32
  call void @__asan_load4_noabort(i32 %1911)
  %1912 = load ptr, ptr %wreg363.i102, align 4
  tail call void %1912(ptr noundef %hdev, i32 noundef 14716904, i32 noundef -2) #3
  %1913 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1913)
  %1914 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg368.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1914, i32 0, i32 58
  %1915 = ptrtoint ptr %wreg368.i to i32
  call void @__asan_load4_noabort(i32 %1915)
  %1916 = load ptr, ptr %wreg368.i, align 4
  tail call void %1916(ptr noundef %hdev, i32 noundef 14708676, i32 noundef 2147483647) #3
  %1917 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1917)
  %1918 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg390.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1918, i32 0, i32 58
  %1919 = ptrtoint ptr %wreg390.i to i32
  call void @__asan_load4_noabort(i32 %1919)
  %1920 = load ptr, ptr %wreg390.i, align 4
  tail call void %1920(ptr noundef %hdev, i32 noundef 14708680, i32 noundef -1073120026) #3
  %1921 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1921)
  %1922 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg417.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1922, i32 0, i32 58
  %1923 = ptrtoint ptr %wreg417.i to i32
  call void @__asan_load4_noabort(i32 %1923)
  %1924 = load ptr, ptr %wreg417.i, align 4
  tail call void %1924(ptr noundef %hdev, i32 noundef 14708684, i32 noundef 786623) #3
  %1925 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1925)
  %1926 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg422.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1926, i32 0, i32 58
  %1927 = ptrtoint ptr %wreg422.i to i32
  call void @__asan_load4_noabort(i32 %1927)
  %1928 = load ptr, ptr %wreg422.i, align 4
  tail call void %1928(ptr noundef %hdev, i32 noundef 14979068, i32 noundef 0) #3
  %1929 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1929)
  %1930 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg424.i103 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1930, i32 0, i32 58
  %1931 = ptrtoint ptr %wreg424.i103 to i32
  call void @__asan_load4_noabort(i32 %1931)
  %1932 = load ptr, ptr %wreg424.i103, align 4
  tail call void %1932(ptr noundef %hdev, i32 noundef 14970876, i32 noundef 0) #3
  %1933 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1933)
  %1934 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg454.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1934, i32 0, i32 58
  %1935 = ptrtoint ptr %wreg454.i to i32
  call void @__asan_load4_noabort(i32 %1935)
  %1936 = load ptr, ptr %wreg454.i, align 4
  tail call void %1936(ptr noundef %hdev, i32 noundef 14978944, i32 noundef 167804928) #3
  %1937 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1937)
  %1938 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg490.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1938, i32 0, i32 58
  %1939 = ptrtoint ptr %wreg490.i to i32
  call void @__asan_load4_noabort(i32 %1939)
  %1940 = load ptr, ptr %wreg490.i, align 4
  tail call void %1940(ptr noundef %hdev, i32 noundef 14978948, i32 noundef 0) #3
  %1941 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1941)
  %1942 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg509.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1942, i32 0, i32 58
  %1943 = ptrtoint ptr %wreg509.i to i32
  call void @__asan_load4_noabort(i32 %1943)
  %1944 = load ptr, ptr %wreg509.i, align 4
  tail call void %1944(ptr noundef %hdev, i32 noundef 14978952, i32 noundef 277348336) #3
  %1945 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1945)
  %1946 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg541.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1946, i32 0, i32 58
  %1947 = ptrtoint ptr %wreg541.i to i32
  call void @__asan_load4_noabort(i32 %1947)
  %1948 = load ptr, ptr %wreg541.i, align 4
  tail call void %1948(ptr noundef %hdev, i32 noundef 14978956, i32 noundef 122880) #3
  %1949 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1949)
  %1950 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg577.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1950, i32 0, i32 58
  %1951 = ptrtoint ptr %wreg577.i to i32
  call void @__asan_load4_noabort(i32 %1951)
  %1952 = load ptr, ptr %wreg577.i, align 4
  tail call void %1952(ptr noundef %hdev, i32 noundef 14978960, i32 noundef 0) #3
  %1953 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1953)
  %1954 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg612.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1954, i32 0, i32 58
  %1955 = ptrtoint ptr %wreg612.i to i32
  call void @__asan_load4_noabort(i32 %1955)
  %1956 = load ptr, ptr %wreg612.i, align 4
  tail call void %1956(ptr noundef %hdev, i32 noundef 14978964, i32 noundef 8388608) #3
  %1957 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1957)
  %1958 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg618.i104 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1958, i32 0, i32 58
  %1959 = ptrtoint ptr %wreg618.i104 to i32
  call void @__asan_load4_noabort(i32 %1959)
  %1960 = load ptr, ptr %wreg618.i104, align 4
  tail call void %1960(ptr noundef %hdev, i32 noundef 14978968, i32 noundef -4) #3
  %1961 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1961)
  %1962 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg640.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1962, i32 0, i32 58
  %1963 = ptrtoint ptr %wreg640.i to i32
  call void @__asan_load4_noabort(i32 %1963)
  %1964 = load ptr, ptr %wreg640.i, align 4
  tail call void %1964(ptr noundef %hdev, i32 noundef 14978972, i32 noundef 503317503) #3
  %1965 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1965)
  %1966 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg648.i105 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1966, i32 0, i32 58
  %1967 = ptrtoint ptr %wreg648.i105 to i32
  call void @__asan_load4_noabort(i32 %1967)
  %1968 = load ptr, ptr %wreg648.i105, align 4
  tail call void %1968(ptr noundef %hdev, i32 noundef 14978976, i32 noundef -16) #3
  %1969 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1969)
  %1970 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg665.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1970, i32 0, i32 58
  %1971 = ptrtoint ptr %wreg665.i to i32
  call void @__asan_load4_noabort(i32 %1971)
  %1972 = load ptr, ptr %wreg665.i, align 4
  tail call void %1972(ptr noundef %hdev, i32 noundef 14978976, i32 noundef -131057) #3
  %1973 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1973)
  %1974 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg694.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1974, i32 0, i32 58
  %1975 = ptrtoint ptr %wreg694.i to i32
  call void @__asan_load4_noabort(i32 %1975)
  %1976 = load ptr, ptr %wreg694.i, align 4
  tail call void %1976(ptr noundef %hdev, i32 noundef 14979024, i32 noundef 191) #3
  %1977 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1977)
  %1978 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg706.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1978, i32 0, i32 58
  %1979 = ptrtoint ptr %wreg706.i to i32
  call void @__asan_load4_noabort(i32 %1979)
  %1980 = load ptr, ptr %wreg706.i, align 4
  tail call void %1980(ptr noundef %hdev, i32 noundef 14979028, i32 noundef -256) #3
  %1981 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1981)
  %1982 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg715.i106 = getelementptr inbounds %struct.hl_asic_funcs, ptr %1982, i32 0, i32 58
  %1983 = ptrtoint ptr %wreg715.i106 to i32
  call void @__asan_load4_noabort(i32 %1983)
  %1984 = load ptr, ptr %wreg715.i106, align 4
  tail call void %1984(ptr noundef %hdev, i32 noundef 14979032, i32 noundef -1982465) #3
  %1985 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1985)
  %1986 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg746.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1986, i32 0, i32 58
  %1987 = ptrtoint ptr %wreg746.i to i32
  call void @__asan_load4_noabort(i32 %1987)
  %1988 = load ptr, ptr %wreg746.i, align 4
  tail call void %1988(ptr noundef %hdev, i32 noundef 14979036, i32 noundef 2672) #3
  %1989 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1989)
  %1990 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg765.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1990, i32 0, i32 58
  %1991 = ptrtoint ptr %wreg765.i to i32
  call void @__asan_load4_noabort(i32 %1991)
  %1992 = load ptr, ptr %wreg765.i, align 4
  tail call void %1992(ptr noundef %hdev, i32 noundef 14979040, i32 noundef -1879052288) #3
  %1993 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1993)
  %1994 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg784.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1994, i32 0, i32 58
  %1995 = ptrtoint ptr %wreg784.i to i32
  call void @__asan_load4_noabort(i32 %1995)
  %1996 = load ptr, ptr %wreg784.i, align 4
  tail call void %1996(ptr noundef %hdev, i32 noundef 14979044, i32 noundef -7402484) #3
  %1997 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %1997)
  %1998 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg789.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1998, i32 0, i32 58
  %1999 = ptrtoint ptr %wreg789.i to i32
  call void @__asan_load4_noabort(i32 %1999)
  %2000 = load ptr, ptr %wreg789.i, align 4
  tail call void %2000(ptr noundef %hdev, i32 noundef 14979048, i32 noundef -2) #3
  %2001 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2001)
  %2002 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg794.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2002, i32 0, i32 58
  %2003 = ptrtoint ptr %wreg794.i to i32
  call void @__asan_load4_noabort(i32 %2003)
  %2004 = load ptr, ptr %wreg794.i, align 4
  tail call void %2004(ptr noundef %hdev, i32 noundef 14970820, i32 noundef 2147483647) #3
  %2005 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2005)
  %2006 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg816.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2006, i32 0, i32 58
  %2007 = ptrtoint ptr %wreg816.i to i32
  call void @__asan_load4_noabort(i32 %2007)
  %2008 = load ptr, ptr %wreg816.i, align 4
  tail call void %2008(ptr noundef %hdev, i32 noundef 14970824, i32 noundef -1073120026) #3
  %2009 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2009)
  %2010 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg843.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2010, i32 0, i32 58
  %2011 = ptrtoint ptr %wreg843.i to i32
  call void @__asan_load4_noabort(i32 %2011)
  %2012 = load ptr, ptr %wreg843.i, align 4
  tail call void %2012(ptr noundef %hdev, i32 noundef 14970828, i32 noundef 786623) #3
  %2013 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2013)
  %2014 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg848.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2014, i32 0, i32 58
  %2015 = ptrtoint ptr %wreg848.i to i32
  call void @__asan_load4_noabort(i32 %2015)
  %2016 = load ptr, ptr %wreg848.i, align 4
  tail call void %2016(ptr noundef %hdev, i32 noundef 15241212, i32 noundef 0) #3
  %2017 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2017)
  %2018 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg850.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2018, i32 0, i32 58
  %2019 = ptrtoint ptr %wreg850.i to i32
  call void @__asan_load4_noabort(i32 %2019)
  %2020 = load ptr, ptr %wreg850.i, align 4
  tail call void %2020(ptr noundef %hdev, i32 noundef 15233020, i32 noundef 0) #3
  %2021 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2021)
  %2022 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg880.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2022, i32 0, i32 58
  %2023 = ptrtoint ptr %wreg880.i to i32
  call void @__asan_load4_noabort(i32 %2023)
  %2024 = load ptr, ptr %wreg880.i, align 4
  tail call void %2024(ptr noundef %hdev, i32 noundef 15241088, i32 noundef 167804928) #3
  %2025 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2025)
  %2026 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg916.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2026, i32 0, i32 58
  %2027 = ptrtoint ptr %wreg916.i to i32
  call void @__asan_load4_noabort(i32 %2027)
  %2028 = load ptr, ptr %wreg916.i, align 4
  tail call void %2028(ptr noundef %hdev, i32 noundef 15241092, i32 noundef 0) #3
  %2029 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2029)
  %2030 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg935.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2030, i32 0, i32 58
  %2031 = ptrtoint ptr %wreg935.i to i32
  call void @__asan_load4_noabort(i32 %2031)
  %2032 = load ptr, ptr %wreg935.i, align 4
  tail call void %2032(ptr noundef %hdev, i32 noundef 15241096, i32 noundef 277348336) #3
  %2033 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2033)
  %2034 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg967.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2034, i32 0, i32 58
  %2035 = ptrtoint ptr %wreg967.i to i32
  call void @__asan_load4_noabort(i32 %2035)
  %2036 = load ptr, ptr %wreg967.i, align 4
  tail call void %2036(ptr noundef %hdev, i32 noundef 15241100, i32 noundef 122880) #3
  %2037 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2037)
  %2038 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1003.i107 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2038, i32 0, i32 58
  %2039 = ptrtoint ptr %wreg1003.i107 to i32
  call void @__asan_load4_noabort(i32 %2039)
  %2040 = load ptr, ptr %wreg1003.i107, align 4
  tail call void %2040(ptr noundef %hdev, i32 noundef 15241104, i32 noundef 0) #3
  %2041 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2041)
  %2042 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1038.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2042, i32 0, i32 58
  %2043 = ptrtoint ptr %wreg1038.i to i32
  call void @__asan_load4_noabort(i32 %2043)
  %2044 = load ptr, ptr %wreg1038.i, align 4
  tail call void %2044(ptr noundef %hdev, i32 noundef 15241108, i32 noundef 8388608) #3
  %2045 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2045)
  %2046 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1044.i108 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2046, i32 0, i32 58
  %2047 = ptrtoint ptr %wreg1044.i108 to i32
  call void @__asan_load4_noabort(i32 %2047)
  %2048 = load ptr, ptr %wreg1044.i108, align 4
  tail call void %2048(ptr noundef %hdev, i32 noundef 15241112, i32 noundef -4) #3
  %2049 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2049)
  %2050 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1066.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2050, i32 0, i32 58
  %2051 = ptrtoint ptr %wreg1066.i to i32
  call void @__asan_load4_noabort(i32 %2051)
  %2052 = load ptr, ptr %wreg1066.i, align 4
  tail call void %2052(ptr noundef %hdev, i32 noundef 15241116, i32 noundef 503317503) #3
  %2053 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2053)
  %2054 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1074.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2054, i32 0, i32 58
  %2055 = ptrtoint ptr %wreg1074.i to i32
  call void @__asan_load4_noabort(i32 %2055)
  %2056 = load ptr, ptr %wreg1074.i, align 4
  tail call void %2056(ptr noundef %hdev, i32 noundef 15241120, i32 noundef -16) #3
  %2057 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2057)
  %2058 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1091.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2058, i32 0, i32 58
  %2059 = ptrtoint ptr %wreg1091.i to i32
  call void @__asan_load4_noabort(i32 %2059)
  %2060 = load ptr, ptr %wreg1091.i, align 4
  tail call void %2060(ptr noundef %hdev, i32 noundef 15241120, i32 noundef -131057) #3
  %2061 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2061)
  %2062 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1120.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2062, i32 0, i32 58
  %2063 = ptrtoint ptr %wreg1120.i to i32
  call void @__asan_load4_noabort(i32 %2063)
  %2064 = load ptr, ptr %wreg1120.i, align 4
  tail call void %2064(ptr noundef %hdev, i32 noundef 15241168, i32 noundef 191) #3
  %2065 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2065)
  %2066 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1132.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2066, i32 0, i32 58
  %2067 = ptrtoint ptr %wreg1132.i to i32
  call void @__asan_load4_noabort(i32 %2067)
  %2068 = load ptr, ptr %wreg1132.i, align 4
  tail call void %2068(ptr noundef %hdev, i32 noundef 15241172, i32 noundef -256) #3
  %2069 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2069)
  %2070 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1141.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2070, i32 0, i32 58
  %2071 = ptrtoint ptr %wreg1141.i to i32
  call void @__asan_load4_noabort(i32 %2071)
  %2072 = load ptr, ptr %wreg1141.i, align 4
  tail call void %2072(ptr noundef %hdev, i32 noundef 15241176, i32 noundef -1982465) #3
  %2073 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2073)
  %2074 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1172.i109 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2074, i32 0, i32 58
  %2075 = ptrtoint ptr %wreg1172.i109 to i32
  call void @__asan_load4_noabort(i32 %2075)
  %2076 = load ptr, ptr %wreg1172.i109, align 4
  tail call void %2076(ptr noundef %hdev, i32 noundef 15241180, i32 noundef 2672) #3
  %2077 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2077)
  %2078 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1191.i110 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2078, i32 0, i32 58
  %2079 = ptrtoint ptr %wreg1191.i110 to i32
  call void @__asan_load4_noabort(i32 %2079)
  %2080 = load ptr, ptr %wreg1191.i110, align 4
  tail call void %2080(ptr noundef %hdev, i32 noundef 15241184, i32 noundef -1879052288) #3
  %2081 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2081)
  %2082 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1210.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2082, i32 0, i32 58
  %2083 = ptrtoint ptr %wreg1210.i to i32
  call void @__asan_load4_noabort(i32 %2083)
  %2084 = load ptr, ptr %wreg1210.i, align 4
  tail call void %2084(ptr noundef %hdev, i32 noundef 15241188, i32 noundef -7402484) #3
  %2085 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2085)
  %2086 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1215.i111 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2086, i32 0, i32 58
  %2087 = ptrtoint ptr %wreg1215.i111 to i32
  call void @__asan_load4_noabort(i32 %2087)
  %2088 = load ptr, ptr %wreg1215.i111, align 4
  tail call void %2088(ptr noundef %hdev, i32 noundef 15241192, i32 noundef -2) #3
  %2089 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2089)
  %2090 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1220.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2090, i32 0, i32 58
  %2091 = ptrtoint ptr %wreg1220.i to i32
  call void @__asan_load4_noabort(i32 %2091)
  %2092 = load ptr, ptr %wreg1220.i, align 4
  tail call void %2092(ptr noundef %hdev, i32 noundef 15232964, i32 noundef 2147483647) #3
  %2093 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2093)
  %2094 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1242.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2094, i32 0, i32 58
  %2095 = ptrtoint ptr %wreg1242.i to i32
  call void @__asan_load4_noabort(i32 %2095)
  %2096 = load ptr, ptr %wreg1242.i, align 4
  tail call void %2096(ptr noundef %hdev, i32 noundef 15232968, i32 noundef -1073120026) #3
  %2097 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2097)
  %2098 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1269.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2098, i32 0, i32 58
  %2099 = ptrtoint ptr %wreg1269.i to i32
  call void @__asan_load4_noabort(i32 %2099)
  %2100 = load ptr, ptr %wreg1269.i, align 4
  tail call void %2100(ptr noundef %hdev, i32 noundef 15232972, i32 noundef 786623) #3
  %2101 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2101)
  %2102 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1274.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2102, i32 0, i32 58
  %2103 = ptrtoint ptr %wreg1274.i to i32
  call void @__asan_load4_noabort(i32 %2103)
  %2104 = load ptr, ptr %wreg1274.i, align 4
  tail call void %2104(ptr noundef %hdev, i32 noundef 15503356, i32 noundef 0) #3
  %2105 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2105)
  %2106 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1276.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2106, i32 0, i32 58
  %2107 = ptrtoint ptr %wreg1276.i to i32
  call void @__asan_load4_noabort(i32 %2107)
  %2108 = load ptr, ptr %wreg1276.i, align 4
  tail call void %2108(ptr noundef %hdev, i32 noundef 15495164, i32 noundef 0) #3
  %2109 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2109)
  %2110 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1306.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2110, i32 0, i32 58
  %2111 = ptrtoint ptr %wreg1306.i to i32
  call void @__asan_load4_noabort(i32 %2111)
  %2112 = load ptr, ptr %wreg1306.i, align 4
  tail call void %2112(ptr noundef %hdev, i32 noundef 15503232, i32 noundef 167804928) #3
  %2113 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2113)
  %2114 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1342.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2114, i32 0, i32 58
  %2115 = ptrtoint ptr %wreg1342.i to i32
  call void @__asan_load4_noabort(i32 %2115)
  %2116 = load ptr, ptr %wreg1342.i, align 4
  tail call void %2116(ptr noundef %hdev, i32 noundef 15503236, i32 noundef 0) #3
  %2117 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2117)
  %2118 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1361.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2118, i32 0, i32 58
  %2119 = ptrtoint ptr %wreg1361.i to i32
  call void @__asan_load4_noabort(i32 %2119)
  %2120 = load ptr, ptr %wreg1361.i, align 4
  tail call void %2120(ptr noundef %hdev, i32 noundef 15503240, i32 noundef 277348336) #3
  %2121 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2121)
  %2122 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1393.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2122, i32 0, i32 58
  %2123 = ptrtoint ptr %wreg1393.i to i32
  call void @__asan_load4_noabort(i32 %2123)
  %2124 = load ptr, ptr %wreg1393.i, align 4
  tail call void %2124(ptr noundef %hdev, i32 noundef 15503244, i32 noundef 122880) #3
  %2125 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2125)
  %2126 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1429.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2126, i32 0, i32 58
  %2127 = ptrtoint ptr %wreg1429.i to i32
  call void @__asan_load4_noabort(i32 %2127)
  %2128 = load ptr, ptr %wreg1429.i, align 4
  tail call void %2128(ptr noundef %hdev, i32 noundef 15503248, i32 noundef 0) #3
  %2129 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2129)
  %2130 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1464.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2130, i32 0, i32 58
  %2131 = ptrtoint ptr %wreg1464.i to i32
  call void @__asan_load4_noabort(i32 %2131)
  %2132 = load ptr, ptr %wreg1464.i, align 4
  tail call void %2132(ptr noundef %hdev, i32 noundef 15503252, i32 noundef 8388608) #3
  %2133 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2133)
  %2134 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1470.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2134, i32 0, i32 58
  %2135 = ptrtoint ptr %wreg1470.i to i32
  call void @__asan_load4_noabort(i32 %2135)
  %2136 = load ptr, ptr %wreg1470.i, align 4
  tail call void %2136(ptr noundef %hdev, i32 noundef 15503256, i32 noundef -4) #3
  %2137 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2137)
  %2138 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1492.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2138, i32 0, i32 58
  %2139 = ptrtoint ptr %wreg1492.i to i32
  call void @__asan_load4_noabort(i32 %2139)
  %2140 = load ptr, ptr %wreg1492.i, align 4
  tail call void %2140(ptr noundef %hdev, i32 noundef 15503260, i32 noundef 503317503) #3
  %2141 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2141)
  %2142 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1500.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2142, i32 0, i32 58
  %2143 = ptrtoint ptr %wreg1500.i to i32
  call void @__asan_load4_noabort(i32 %2143)
  %2144 = load ptr, ptr %wreg1500.i, align 4
  tail call void %2144(ptr noundef %hdev, i32 noundef 15503264, i32 noundef -16) #3
  %2145 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2145)
  %2146 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1517.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2146, i32 0, i32 58
  %2147 = ptrtoint ptr %wreg1517.i to i32
  call void @__asan_load4_noabort(i32 %2147)
  %2148 = load ptr, ptr %wreg1517.i, align 4
  tail call void %2148(ptr noundef %hdev, i32 noundef 15503264, i32 noundef -131057) #3
  %2149 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2149)
  %2150 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1546.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2150, i32 0, i32 58
  %2151 = ptrtoint ptr %wreg1546.i to i32
  call void @__asan_load4_noabort(i32 %2151)
  %2152 = load ptr, ptr %wreg1546.i, align 4
  tail call void %2152(ptr noundef %hdev, i32 noundef 15503312, i32 noundef 191) #3
  %2153 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2153)
  %2154 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1558.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2154, i32 0, i32 58
  %2155 = ptrtoint ptr %wreg1558.i to i32
  call void @__asan_load4_noabort(i32 %2155)
  %2156 = load ptr, ptr %wreg1558.i, align 4
  tail call void %2156(ptr noundef %hdev, i32 noundef 15503316, i32 noundef -256) #3
  %2157 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2157)
  %2158 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1567.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2158, i32 0, i32 58
  %2159 = ptrtoint ptr %wreg1567.i to i32
  call void @__asan_load4_noabort(i32 %2159)
  %2160 = load ptr, ptr %wreg1567.i, align 4
  tail call void %2160(ptr noundef %hdev, i32 noundef 15503320, i32 noundef -1982465) #3
  %2161 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2161)
  %2162 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1598.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2162, i32 0, i32 58
  %2163 = ptrtoint ptr %wreg1598.i to i32
  call void @__asan_load4_noabort(i32 %2163)
  %2164 = load ptr, ptr %wreg1598.i, align 4
  tail call void %2164(ptr noundef %hdev, i32 noundef 15503324, i32 noundef 2672) #3
  %2165 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2165)
  %2166 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1617.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2166, i32 0, i32 58
  %2167 = ptrtoint ptr %wreg1617.i to i32
  call void @__asan_load4_noabort(i32 %2167)
  %2168 = load ptr, ptr %wreg1617.i, align 4
  tail call void %2168(ptr noundef %hdev, i32 noundef 15503328, i32 noundef -1879052288) #3
  %2169 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2169)
  %2170 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1636.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2170, i32 0, i32 58
  %2171 = ptrtoint ptr %wreg1636.i to i32
  call void @__asan_load4_noabort(i32 %2171)
  %2172 = load ptr, ptr %wreg1636.i, align 4
  tail call void %2172(ptr noundef %hdev, i32 noundef 15503332, i32 noundef -7402484) #3
  %2173 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2173)
  %2174 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1641.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2174, i32 0, i32 58
  %2175 = ptrtoint ptr %wreg1641.i to i32
  call void @__asan_load4_noabort(i32 %2175)
  %2176 = load ptr, ptr %wreg1641.i, align 4
  tail call void %2176(ptr noundef %hdev, i32 noundef 15503336, i32 noundef -2) #3
  %2177 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2177)
  %2178 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1646.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2178, i32 0, i32 58
  %2179 = ptrtoint ptr %wreg1646.i to i32
  call void @__asan_load4_noabort(i32 %2179)
  %2180 = load ptr, ptr %wreg1646.i, align 4
  tail call void %2180(ptr noundef %hdev, i32 noundef 15495108, i32 noundef 2147483647) #3
  %2181 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2181)
  %2182 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1668.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2182, i32 0, i32 58
  %2183 = ptrtoint ptr %wreg1668.i to i32
  call void @__asan_load4_noabort(i32 %2183)
  %2184 = load ptr, ptr %wreg1668.i, align 4
  tail call void %2184(ptr noundef %hdev, i32 noundef 15495112, i32 noundef -1073120026) #3
  %2185 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2185)
  %2186 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1695.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2186, i32 0, i32 58
  %2187 = ptrtoint ptr %wreg1695.i to i32
  call void @__asan_load4_noabort(i32 %2187)
  %2188 = load ptr, ptr %wreg1695.i, align 4
  tail call void %2188(ptr noundef %hdev, i32 noundef 15495116, i32 noundef 786623) #3
  %2189 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2189)
  %2190 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1700.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2190, i32 0, i32 58
  %2191 = ptrtoint ptr %wreg1700.i to i32
  call void @__asan_load4_noabort(i32 %2191)
  %2192 = load ptr, ptr %wreg1700.i, align 4
  tail call void %2192(ptr noundef %hdev, i32 noundef 15765500, i32 noundef 0) #3
  %2193 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2193)
  %2194 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1702.i112 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2194, i32 0, i32 58
  %2195 = ptrtoint ptr %wreg1702.i112 to i32
  call void @__asan_load4_noabort(i32 %2195)
  %2196 = load ptr, ptr %wreg1702.i112, align 4
  tail call void %2196(ptr noundef %hdev, i32 noundef 15757308, i32 noundef 0) #3
  %2197 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2197)
  %2198 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1732.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2198, i32 0, i32 58
  %2199 = ptrtoint ptr %wreg1732.i to i32
  call void @__asan_load4_noabort(i32 %2199)
  %2200 = load ptr, ptr %wreg1732.i, align 4
  tail call void %2200(ptr noundef %hdev, i32 noundef 15765376, i32 noundef 167804928) #3
  %2201 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2201)
  %2202 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1768.i113 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2202, i32 0, i32 58
  %2203 = ptrtoint ptr %wreg1768.i113 to i32
  call void @__asan_load4_noabort(i32 %2203)
  %2204 = load ptr, ptr %wreg1768.i113, align 4
  tail call void %2204(ptr noundef %hdev, i32 noundef 15765380, i32 noundef 0) #3
  %2205 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2205)
  %2206 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1787.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2206, i32 0, i32 58
  %2207 = ptrtoint ptr %wreg1787.i to i32
  call void @__asan_load4_noabort(i32 %2207)
  %2208 = load ptr, ptr %wreg1787.i, align 4
  tail call void %2208(ptr noundef %hdev, i32 noundef 15765384, i32 noundef 277348336) #3
  %2209 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2209)
  %2210 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1819.i114 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2210, i32 0, i32 58
  %2211 = ptrtoint ptr %wreg1819.i114 to i32
  call void @__asan_load4_noabort(i32 %2211)
  %2212 = load ptr, ptr %wreg1819.i114, align 4
  tail call void %2212(ptr noundef %hdev, i32 noundef 15765388, i32 noundef 122880) #3
  %2213 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2213)
  %2214 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1855.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2214, i32 0, i32 58
  %2215 = ptrtoint ptr %wreg1855.i to i32
  call void @__asan_load4_noabort(i32 %2215)
  %2216 = load ptr, ptr %wreg1855.i, align 4
  tail call void %2216(ptr noundef %hdev, i32 noundef 15765392, i32 noundef 0) #3
  %2217 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2217)
  %2218 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1890.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2218, i32 0, i32 58
  %2219 = ptrtoint ptr %wreg1890.i to i32
  call void @__asan_load4_noabort(i32 %2219)
  %2220 = load ptr, ptr %wreg1890.i, align 4
  tail call void %2220(ptr noundef %hdev, i32 noundef 15765396, i32 noundef 8388608) #3
  %2221 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2221)
  %2222 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1896.i115 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2222, i32 0, i32 58
  %2223 = ptrtoint ptr %wreg1896.i115 to i32
  call void @__asan_load4_noabort(i32 %2223)
  %2224 = load ptr, ptr %wreg1896.i115, align 4
  tail call void %2224(ptr noundef %hdev, i32 noundef 15765400, i32 noundef -4) #3
  %2225 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2225)
  %2226 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1918.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2226, i32 0, i32 58
  %2227 = ptrtoint ptr %wreg1918.i to i32
  call void @__asan_load4_noabort(i32 %2227)
  %2228 = load ptr, ptr %wreg1918.i, align 4
  tail call void %2228(ptr noundef %hdev, i32 noundef 15765404, i32 noundef 503317503) #3
  %2229 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2229)
  %2230 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1926.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2230, i32 0, i32 58
  %2231 = ptrtoint ptr %wreg1926.i to i32
  call void @__asan_load4_noabort(i32 %2231)
  %2232 = load ptr, ptr %wreg1926.i, align 4
  tail call void %2232(ptr noundef %hdev, i32 noundef 15765408, i32 noundef -16) #3
  %2233 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2233)
  %2234 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1943.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2234, i32 0, i32 58
  %2235 = ptrtoint ptr %wreg1943.i to i32
  call void @__asan_load4_noabort(i32 %2235)
  %2236 = load ptr, ptr %wreg1943.i, align 4
  tail call void %2236(ptr noundef %hdev, i32 noundef 15765408, i32 noundef -131057) #3
  %2237 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2237)
  %2238 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1972.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2238, i32 0, i32 58
  %2239 = ptrtoint ptr %wreg1972.i to i32
  call void @__asan_load4_noabort(i32 %2239)
  %2240 = load ptr, ptr %wreg1972.i, align 4
  tail call void %2240(ptr noundef %hdev, i32 noundef 15765456, i32 noundef 191) #3
  %2241 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2241)
  %2242 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1984.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2242, i32 0, i32 58
  %2243 = ptrtoint ptr %wreg1984.i to i32
  call void @__asan_load4_noabort(i32 %2243)
  %2244 = load ptr, ptr %wreg1984.i, align 4
  tail call void %2244(ptr noundef %hdev, i32 noundef 15765460, i32 noundef -256) #3
  %2245 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2245)
  %2246 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg1993.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2246, i32 0, i32 58
  %2247 = ptrtoint ptr %wreg1993.i to i32
  call void @__asan_load4_noabort(i32 %2247)
  %2248 = load ptr, ptr %wreg1993.i, align 4
  tail call void %2248(ptr noundef %hdev, i32 noundef 15765464, i32 noundef -1982465) #3
  %2249 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2249)
  %2250 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2024.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2250, i32 0, i32 58
  %2251 = ptrtoint ptr %wreg2024.i to i32
  call void @__asan_load4_noabort(i32 %2251)
  %2252 = load ptr, ptr %wreg2024.i, align 4
  tail call void %2252(ptr noundef %hdev, i32 noundef 15765468, i32 noundef 2672) #3
  %2253 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2253)
  %2254 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2043.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2254, i32 0, i32 58
  %2255 = ptrtoint ptr %wreg2043.i to i32
  call void @__asan_load4_noabort(i32 %2255)
  %2256 = load ptr, ptr %wreg2043.i, align 4
  tail call void %2256(ptr noundef %hdev, i32 noundef 15765472, i32 noundef -1879052288) #3
  %2257 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2257)
  %2258 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2062.i116 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2258, i32 0, i32 58
  %2259 = ptrtoint ptr %wreg2062.i116 to i32
  call void @__asan_load4_noabort(i32 %2259)
  %2260 = load ptr, ptr %wreg2062.i116, align 4
  tail call void %2260(ptr noundef %hdev, i32 noundef 15765476, i32 noundef -7402484) #3
  %2261 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2261)
  %2262 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2067.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2262, i32 0, i32 58
  %2263 = ptrtoint ptr %wreg2067.i to i32
  call void @__asan_load4_noabort(i32 %2263)
  %2264 = load ptr, ptr %wreg2067.i, align 4
  tail call void %2264(ptr noundef %hdev, i32 noundef 15765480, i32 noundef -2) #3
  %2265 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2265)
  %2266 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2072.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2266, i32 0, i32 58
  %2267 = ptrtoint ptr %wreg2072.i to i32
  call void @__asan_load4_noabort(i32 %2267)
  %2268 = load ptr, ptr %wreg2072.i, align 4
  tail call void %2268(ptr noundef %hdev, i32 noundef 15757252, i32 noundef 2147483647) #3
  %2269 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2269)
  %2270 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2094.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2270, i32 0, i32 58
  %2271 = ptrtoint ptr %wreg2094.i to i32
  call void @__asan_load4_noabort(i32 %2271)
  %2272 = load ptr, ptr %wreg2094.i, align 4
  tail call void %2272(ptr noundef %hdev, i32 noundef 15757256, i32 noundef -1073120026) #3
  %2273 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2273)
  %2274 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2121.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2274, i32 0, i32 58
  %2275 = ptrtoint ptr %wreg2121.i to i32
  call void @__asan_load4_noabort(i32 %2275)
  %2276 = load ptr, ptr %wreg2121.i, align 4
  tail call void %2276(ptr noundef %hdev, i32 noundef 15757260, i32 noundef 786623) #3
  %2277 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2277)
  %2278 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2126.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2278, i32 0, i32 58
  %2279 = ptrtoint ptr %wreg2126.i to i32
  call void @__asan_load4_noabort(i32 %2279)
  %2280 = load ptr, ptr %wreg2126.i, align 4
  tail call void %2280(ptr noundef %hdev, i32 noundef 16027644, i32 noundef 0) #3
  %2281 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2281)
  %2282 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2128.i117 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2282, i32 0, i32 58
  %2283 = ptrtoint ptr %wreg2128.i117 to i32
  call void @__asan_load4_noabort(i32 %2283)
  %2284 = load ptr, ptr %wreg2128.i117, align 4
  tail call void %2284(ptr noundef %hdev, i32 noundef 16019452, i32 noundef 0) #3
  %2285 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2285)
  %2286 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2158.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2286, i32 0, i32 58
  %2287 = ptrtoint ptr %wreg2158.i to i32
  call void @__asan_load4_noabort(i32 %2287)
  %2288 = load ptr, ptr %wreg2158.i, align 4
  tail call void %2288(ptr noundef %hdev, i32 noundef 16027520, i32 noundef 167804928) #3
  %2289 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2289)
  %2290 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2194.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2290, i32 0, i32 58
  %2291 = ptrtoint ptr %wreg2194.i to i32
  call void @__asan_load4_noabort(i32 %2291)
  %2292 = load ptr, ptr %wreg2194.i, align 4
  tail call void %2292(ptr noundef %hdev, i32 noundef 16027524, i32 noundef 0) #3
  %2293 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2293)
  %2294 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2213.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2294, i32 0, i32 58
  %2295 = ptrtoint ptr %wreg2213.i to i32
  call void @__asan_load4_noabort(i32 %2295)
  %2296 = load ptr, ptr %wreg2213.i, align 4
  tail call void %2296(ptr noundef %hdev, i32 noundef 16027528, i32 noundef 277348336) #3
  %2297 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2297)
  %2298 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2245.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2298, i32 0, i32 58
  %2299 = ptrtoint ptr %wreg2245.i to i32
  call void @__asan_load4_noabort(i32 %2299)
  %2300 = load ptr, ptr %wreg2245.i, align 4
  tail call void %2300(ptr noundef %hdev, i32 noundef 16027532, i32 noundef 122880) #3
  %2301 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2301)
  %2302 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2281.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2302, i32 0, i32 58
  %2303 = ptrtoint ptr %wreg2281.i to i32
  call void @__asan_load4_noabort(i32 %2303)
  %2304 = load ptr, ptr %wreg2281.i, align 4
  tail call void %2304(ptr noundef %hdev, i32 noundef 16027536, i32 noundef 0) #3
  %2305 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2305)
  %2306 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2316.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2306, i32 0, i32 58
  %2307 = ptrtoint ptr %wreg2316.i to i32
  call void @__asan_load4_noabort(i32 %2307)
  %2308 = load ptr, ptr %wreg2316.i, align 4
  tail call void %2308(ptr noundef %hdev, i32 noundef 16027540, i32 noundef 8388608) #3
  %2309 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2309)
  %2310 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2322.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2310, i32 0, i32 58
  %2311 = ptrtoint ptr %wreg2322.i to i32
  call void @__asan_load4_noabort(i32 %2311)
  %2312 = load ptr, ptr %wreg2322.i, align 4
  tail call void %2312(ptr noundef %hdev, i32 noundef 16027544, i32 noundef -4) #3
  %2313 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2313)
  %2314 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2344.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2314, i32 0, i32 58
  %2315 = ptrtoint ptr %wreg2344.i to i32
  call void @__asan_load4_noabort(i32 %2315)
  %2316 = load ptr, ptr %wreg2344.i, align 4
  tail call void %2316(ptr noundef %hdev, i32 noundef 16027548, i32 noundef 503317503) #3
  %2317 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2317)
  %2318 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2352.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2318, i32 0, i32 58
  %2319 = ptrtoint ptr %wreg2352.i to i32
  call void @__asan_load4_noabort(i32 %2319)
  %2320 = load ptr, ptr %wreg2352.i, align 4
  tail call void %2320(ptr noundef %hdev, i32 noundef 16027552, i32 noundef -16) #3
  %2321 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2321)
  %2322 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2369.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2322, i32 0, i32 58
  %2323 = ptrtoint ptr %wreg2369.i to i32
  call void @__asan_load4_noabort(i32 %2323)
  %2324 = load ptr, ptr %wreg2369.i, align 4
  tail call void %2324(ptr noundef %hdev, i32 noundef 16027552, i32 noundef -131057) #3
  %2325 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2325)
  %2326 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2398.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2326, i32 0, i32 58
  %2327 = ptrtoint ptr %wreg2398.i to i32
  call void @__asan_load4_noabort(i32 %2327)
  %2328 = load ptr, ptr %wreg2398.i, align 4
  tail call void %2328(ptr noundef %hdev, i32 noundef 16027600, i32 noundef 191) #3
  %2329 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2329)
  %2330 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2410.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2330, i32 0, i32 58
  %2331 = ptrtoint ptr %wreg2410.i to i32
  call void @__asan_load4_noabort(i32 %2331)
  %2332 = load ptr, ptr %wreg2410.i, align 4
  tail call void %2332(ptr noundef %hdev, i32 noundef 16027604, i32 noundef -256) #3
  %2333 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2333)
  %2334 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2419.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2334, i32 0, i32 58
  %2335 = ptrtoint ptr %wreg2419.i to i32
  call void @__asan_load4_noabort(i32 %2335)
  %2336 = load ptr, ptr %wreg2419.i, align 4
  tail call void %2336(ptr noundef %hdev, i32 noundef 16027608, i32 noundef -1982465) #3
  %2337 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2337)
  %2338 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2450.i118 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2338, i32 0, i32 58
  %2339 = ptrtoint ptr %wreg2450.i118 to i32
  call void @__asan_load4_noabort(i32 %2339)
  %2340 = load ptr, ptr %wreg2450.i118, align 4
  tail call void %2340(ptr noundef %hdev, i32 noundef 16027612, i32 noundef 2672) #3
  %2341 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2341)
  %2342 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2469.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2342, i32 0, i32 58
  %2343 = ptrtoint ptr %wreg2469.i to i32
  call void @__asan_load4_noabort(i32 %2343)
  %2344 = load ptr, ptr %wreg2469.i, align 4
  tail call void %2344(ptr noundef %hdev, i32 noundef 16027616, i32 noundef -1879052288) #3
  %2345 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2345)
  %2346 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2488.i119 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2346, i32 0, i32 58
  %2347 = ptrtoint ptr %wreg2488.i119 to i32
  call void @__asan_load4_noabort(i32 %2347)
  %2348 = load ptr, ptr %wreg2488.i119, align 4
  tail call void %2348(ptr noundef %hdev, i32 noundef 16027620, i32 noundef -7402484) #3
  %2349 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2349)
  %2350 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2493.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2350, i32 0, i32 58
  %2351 = ptrtoint ptr %wreg2493.i to i32
  call void @__asan_load4_noabort(i32 %2351)
  %2352 = load ptr, ptr %wreg2493.i, align 4
  tail call void %2352(ptr noundef %hdev, i32 noundef 16027624, i32 noundef -2) #3
  %2353 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2353)
  %2354 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2498.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2354, i32 0, i32 58
  %2355 = ptrtoint ptr %wreg2498.i to i32
  call void @__asan_load4_noabort(i32 %2355)
  %2356 = load ptr, ptr %wreg2498.i, align 4
  tail call void %2356(ptr noundef %hdev, i32 noundef 16019396, i32 noundef 2147483647) #3
  %2357 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2357)
  %2358 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2520.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2358, i32 0, i32 58
  %2359 = ptrtoint ptr %wreg2520.i to i32
  call void @__asan_load4_noabort(i32 %2359)
  %2360 = load ptr, ptr %wreg2520.i, align 4
  tail call void %2360(ptr noundef %hdev, i32 noundef 16019400, i32 noundef -1073120026) #3
  %2361 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2361)
  %2362 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2547.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2362, i32 0, i32 58
  %2363 = ptrtoint ptr %wreg2547.i to i32
  call void @__asan_load4_noabort(i32 %2363)
  %2364 = load ptr, ptr %wreg2547.i, align 4
  tail call void %2364(ptr noundef %hdev, i32 noundef 16019404, i32 noundef 786623) #3
  %2365 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2365)
  %2366 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2552.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2366, i32 0, i32 58
  %2367 = ptrtoint ptr %wreg2552.i to i32
  call void @__asan_load4_noabort(i32 %2367)
  %2368 = load ptr, ptr %wreg2552.i, align 4
  tail call void %2368(ptr noundef %hdev, i32 noundef 16289788, i32 noundef 0) #3
  %2369 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2369)
  %2370 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2554.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2370, i32 0, i32 58
  %2371 = ptrtoint ptr %wreg2554.i to i32
  call void @__asan_load4_noabort(i32 %2371)
  %2372 = load ptr, ptr %wreg2554.i, align 4
  tail call void %2372(ptr noundef %hdev, i32 noundef 16281596, i32 noundef 0) #3
  %2373 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2373)
  %2374 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2584.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2374, i32 0, i32 58
  %2375 = ptrtoint ptr %wreg2584.i to i32
  call void @__asan_load4_noabort(i32 %2375)
  %2376 = load ptr, ptr %wreg2584.i, align 4
  tail call void %2376(ptr noundef %hdev, i32 noundef 16289664, i32 noundef 167804928) #3
  %2377 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2377)
  %2378 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2620.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2378, i32 0, i32 58
  %2379 = ptrtoint ptr %wreg2620.i to i32
  call void @__asan_load4_noabort(i32 %2379)
  %2380 = load ptr, ptr %wreg2620.i, align 4
  tail call void %2380(ptr noundef %hdev, i32 noundef 16289668, i32 noundef 0) #3
  %2381 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2381)
  %2382 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2639.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2382, i32 0, i32 58
  %2383 = ptrtoint ptr %wreg2639.i to i32
  call void @__asan_load4_noabort(i32 %2383)
  %2384 = load ptr, ptr %wreg2639.i, align 4
  tail call void %2384(ptr noundef %hdev, i32 noundef 16289672, i32 noundef 277348336) #3
  %2385 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2385)
  %2386 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2671.i120 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2386, i32 0, i32 58
  %2387 = ptrtoint ptr %wreg2671.i120 to i32
  call void @__asan_load4_noabort(i32 %2387)
  %2388 = load ptr, ptr %wreg2671.i120, align 4
  tail call void %2388(ptr noundef %hdev, i32 noundef 16289676, i32 noundef 122880) #3
  %2389 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2389)
  %2390 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2707.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2390, i32 0, i32 58
  %2391 = ptrtoint ptr %wreg2707.i to i32
  call void @__asan_load4_noabort(i32 %2391)
  %2392 = load ptr, ptr %wreg2707.i, align 4
  tail call void %2392(ptr noundef %hdev, i32 noundef 16289680, i32 noundef 0) #3
  %2393 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2393)
  %2394 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2742.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2394, i32 0, i32 58
  %2395 = ptrtoint ptr %wreg2742.i to i32
  call void @__asan_load4_noabort(i32 %2395)
  %2396 = load ptr, ptr %wreg2742.i, align 4
  tail call void %2396(ptr noundef %hdev, i32 noundef 16289684, i32 noundef 8388608) #3
  %2397 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2397)
  %2398 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2748.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2398, i32 0, i32 58
  %2399 = ptrtoint ptr %wreg2748.i to i32
  call void @__asan_load4_noabort(i32 %2399)
  %2400 = load ptr, ptr %wreg2748.i, align 4
  tail call void %2400(ptr noundef %hdev, i32 noundef 16289688, i32 noundef -4) #3
  %2401 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2401)
  %2402 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2770.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2402, i32 0, i32 58
  %2403 = ptrtoint ptr %wreg2770.i to i32
  call void @__asan_load4_noabort(i32 %2403)
  %2404 = load ptr, ptr %wreg2770.i, align 4
  tail call void %2404(ptr noundef %hdev, i32 noundef 16289692, i32 noundef 503317503) #3
  %2405 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2405)
  %2406 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2778.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2406, i32 0, i32 58
  %2407 = ptrtoint ptr %wreg2778.i to i32
  call void @__asan_load4_noabort(i32 %2407)
  %2408 = load ptr, ptr %wreg2778.i, align 4
  tail call void %2408(ptr noundef %hdev, i32 noundef 16289696, i32 noundef -16) #3
  %2409 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2409)
  %2410 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2795.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2410, i32 0, i32 58
  %2411 = ptrtoint ptr %wreg2795.i to i32
  call void @__asan_load4_noabort(i32 %2411)
  %2412 = load ptr, ptr %wreg2795.i, align 4
  tail call void %2412(ptr noundef %hdev, i32 noundef 16289696, i32 noundef -131057) #3
  %2413 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2413)
  %2414 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2824.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2414, i32 0, i32 58
  %2415 = ptrtoint ptr %wreg2824.i to i32
  call void @__asan_load4_noabort(i32 %2415)
  %2416 = load ptr, ptr %wreg2824.i, align 4
  tail call void %2416(ptr noundef %hdev, i32 noundef 16289744, i32 noundef 191) #3
  %2417 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2417)
  %2418 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2836.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2418, i32 0, i32 58
  %2419 = ptrtoint ptr %wreg2836.i to i32
  call void @__asan_load4_noabort(i32 %2419)
  %2420 = load ptr, ptr %wreg2836.i, align 4
  tail call void %2420(ptr noundef %hdev, i32 noundef 16289748, i32 noundef -256) #3
  %2421 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2421)
  %2422 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2845.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2422, i32 0, i32 58
  %2423 = ptrtoint ptr %wreg2845.i to i32
  call void @__asan_load4_noabort(i32 %2423)
  %2424 = load ptr, ptr %wreg2845.i, align 4
  tail call void %2424(ptr noundef %hdev, i32 noundef 16289752, i32 noundef -1982465) #3
  %2425 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2425)
  %2426 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2876.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2426, i32 0, i32 58
  %2427 = ptrtoint ptr %wreg2876.i to i32
  call void @__asan_load4_noabort(i32 %2427)
  %2428 = load ptr, ptr %wreg2876.i, align 4
  tail call void %2428(ptr noundef %hdev, i32 noundef 16289756, i32 noundef 2672) #3
  %2429 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2429)
  %2430 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2895.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2430, i32 0, i32 58
  %2431 = ptrtoint ptr %wreg2895.i to i32
  call void @__asan_load4_noabort(i32 %2431)
  %2432 = load ptr, ptr %wreg2895.i, align 4
  tail call void %2432(ptr noundef %hdev, i32 noundef 16289760, i32 noundef -1879052288) #3
  %2433 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2433)
  %2434 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2914.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2434, i32 0, i32 58
  %2435 = ptrtoint ptr %wreg2914.i to i32
  call void @__asan_load4_noabort(i32 %2435)
  %2436 = load ptr, ptr %wreg2914.i, align 4
  tail call void %2436(ptr noundef %hdev, i32 noundef 16289764, i32 noundef -7402484) #3
  %2437 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2437)
  %2438 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2919.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2438, i32 0, i32 58
  %2439 = ptrtoint ptr %wreg2919.i to i32
  call void @__asan_load4_noabort(i32 %2439)
  %2440 = load ptr, ptr %wreg2919.i, align 4
  tail call void %2440(ptr noundef %hdev, i32 noundef 16289768, i32 noundef -2) #3
  %2441 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2441)
  %2442 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2924.i121 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2442, i32 0, i32 58
  %2443 = ptrtoint ptr %wreg2924.i121 to i32
  call void @__asan_load4_noabort(i32 %2443)
  %2444 = load ptr, ptr %wreg2924.i121, align 4
  tail call void %2444(ptr noundef %hdev, i32 noundef 16281540, i32 noundef 2147483647) #3
  %2445 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2445)
  %2446 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2946.i122 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2446, i32 0, i32 58
  %2447 = ptrtoint ptr %wreg2946.i122 to i32
  call void @__asan_load4_noabort(i32 %2447)
  %2448 = load ptr, ptr %wreg2946.i122, align 4
  tail call void %2448(ptr noundef %hdev, i32 noundef 16281544, i32 noundef -1073120026) #3
  %2449 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2449)
  %2450 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2973.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2450, i32 0, i32 58
  %2451 = ptrtoint ptr %wreg2973.i to i32
  call void @__asan_load4_noabort(i32 %2451)
  %2452 = load ptr, ptr %wreg2973.i, align 4
  tail call void %2452(ptr noundef %hdev, i32 noundef 16281548, i32 noundef 786623) #3
  %2453 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2453)
  %2454 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2978.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2454, i32 0, i32 58
  %2455 = ptrtoint ptr %wreg2978.i to i32
  call void @__asan_load4_noabort(i32 %2455)
  %2456 = load ptr, ptr %wreg2978.i, align 4
  tail call void %2456(ptr noundef %hdev, i32 noundef 16551932, i32 noundef 0) #3
  %2457 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2457)
  %2458 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg2980.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2458, i32 0, i32 58
  %2459 = ptrtoint ptr %wreg2980.i to i32
  call void @__asan_load4_noabort(i32 %2459)
  %2460 = load ptr, ptr %wreg2980.i, align 4
  tail call void %2460(ptr noundef %hdev, i32 noundef 16543740, i32 noundef 0) #3
  %2461 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2461)
  %2462 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3010.i123 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2462, i32 0, i32 58
  %2463 = ptrtoint ptr %wreg3010.i123 to i32
  call void @__asan_load4_noabort(i32 %2463)
  %2464 = load ptr, ptr %wreg3010.i123, align 4
  tail call void %2464(ptr noundef %hdev, i32 noundef 16551808, i32 noundef 167804928) #3
  %2465 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2465)
  %2466 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3046.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2466, i32 0, i32 58
  %2467 = ptrtoint ptr %wreg3046.i to i32
  call void @__asan_load4_noabort(i32 %2467)
  %2468 = load ptr, ptr %wreg3046.i, align 4
  tail call void %2468(ptr noundef %hdev, i32 noundef 16551812, i32 noundef 0) #3
  %2469 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2469)
  %2470 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3065.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2470, i32 0, i32 58
  %2471 = ptrtoint ptr %wreg3065.i to i32
  call void @__asan_load4_noabort(i32 %2471)
  %2472 = load ptr, ptr %wreg3065.i, align 4
  tail call void %2472(ptr noundef %hdev, i32 noundef 16551816, i32 noundef 277348336) #3
  %2473 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2473)
  %2474 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3097.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2474, i32 0, i32 58
  %2475 = ptrtoint ptr %wreg3097.i to i32
  call void @__asan_load4_noabort(i32 %2475)
  %2476 = load ptr, ptr %wreg3097.i, align 4
  tail call void %2476(ptr noundef %hdev, i32 noundef 16551820, i32 noundef 122880) #3
  %2477 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2477)
  %2478 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3133.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2478, i32 0, i32 58
  %2479 = ptrtoint ptr %wreg3133.i to i32
  call void @__asan_load4_noabort(i32 %2479)
  %2480 = load ptr, ptr %wreg3133.i, align 4
  tail call void %2480(ptr noundef %hdev, i32 noundef 16551824, i32 noundef 0) #3
  %2481 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2481)
  %2482 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3168.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2482, i32 0, i32 58
  %2483 = ptrtoint ptr %wreg3168.i to i32
  call void @__asan_load4_noabort(i32 %2483)
  %2484 = load ptr, ptr %wreg3168.i, align 4
  tail call void %2484(ptr noundef %hdev, i32 noundef 16551828, i32 noundef 8388608) #3
  %2485 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2485)
  %2486 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3174.i124 = getelementptr inbounds %struct.hl_asic_funcs, ptr %2486, i32 0, i32 58
  %2487 = ptrtoint ptr %wreg3174.i124 to i32
  call void @__asan_load4_noabort(i32 %2487)
  %2488 = load ptr, ptr %wreg3174.i124, align 4
  tail call void %2488(ptr noundef %hdev, i32 noundef 16551832, i32 noundef -4) #3
  %2489 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2489)
  %2490 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3196.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2490, i32 0, i32 58
  %2491 = ptrtoint ptr %wreg3196.i to i32
  call void @__asan_load4_noabort(i32 %2491)
  %2492 = load ptr, ptr %wreg3196.i, align 4
  tail call void %2492(ptr noundef %hdev, i32 noundef 16551836, i32 noundef 503317503) #3
  %2493 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2493)
  %2494 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3204.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2494, i32 0, i32 58
  %2495 = ptrtoint ptr %wreg3204.i to i32
  call void @__asan_load4_noabort(i32 %2495)
  %2496 = load ptr, ptr %wreg3204.i, align 4
  tail call void %2496(ptr noundef %hdev, i32 noundef 16551840, i32 noundef -16) #3
  %2497 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2497)
  %2498 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3221.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2498, i32 0, i32 58
  %2499 = ptrtoint ptr %wreg3221.i to i32
  call void @__asan_load4_noabort(i32 %2499)
  %2500 = load ptr, ptr %wreg3221.i, align 4
  tail call void %2500(ptr noundef %hdev, i32 noundef 16551840, i32 noundef -131057) #3
  %2501 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2501)
  %2502 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3250.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2502, i32 0, i32 58
  %2503 = ptrtoint ptr %wreg3250.i to i32
  call void @__asan_load4_noabort(i32 %2503)
  %2504 = load ptr, ptr %wreg3250.i, align 4
  tail call void %2504(ptr noundef %hdev, i32 noundef 16551888, i32 noundef 191) #3
  %2505 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2505)
  %2506 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3262.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2506, i32 0, i32 58
  %2507 = ptrtoint ptr %wreg3262.i to i32
  call void @__asan_load4_noabort(i32 %2507)
  %2508 = load ptr, ptr %wreg3262.i, align 4
  tail call void %2508(ptr noundef %hdev, i32 noundef 16551892, i32 noundef -256) #3
  %2509 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2509)
  %2510 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3271.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2510, i32 0, i32 58
  %2511 = ptrtoint ptr %wreg3271.i to i32
  call void @__asan_load4_noabort(i32 %2511)
  %2512 = load ptr, ptr %wreg3271.i, align 4
  tail call void %2512(ptr noundef %hdev, i32 noundef 16551896, i32 noundef -1982465) #3
  %2513 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2513)
  %2514 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3302.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2514, i32 0, i32 58
  %2515 = ptrtoint ptr %wreg3302.i to i32
  call void @__asan_load4_noabort(i32 %2515)
  %2516 = load ptr, ptr %wreg3302.i, align 4
  tail call void %2516(ptr noundef %hdev, i32 noundef 16551900, i32 noundef 2672) #3
  %2517 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2517)
  %2518 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3321.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2518, i32 0, i32 58
  %2519 = ptrtoint ptr %wreg3321.i to i32
  call void @__asan_load4_noabort(i32 %2519)
  %2520 = load ptr, ptr %wreg3321.i, align 4
  tail call void %2520(ptr noundef %hdev, i32 noundef 16551904, i32 noundef -1879052288) #3
  %2521 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2521)
  %2522 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3340.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2522, i32 0, i32 58
  %2523 = ptrtoint ptr %wreg3340.i to i32
  call void @__asan_load4_noabort(i32 %2523)
  %2524 = load ptr, ptr %wreg3340.i, align 4
  tail call void %2524(ptr noundef %hdev, i32 noundef 16551908, i32 noundef -7402484) #3
  %2525 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2525)
  %2526 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3345.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2526, i32 0, i32 58
  %2527 = ptrtoint ptr %wreg3345.i to i32
  call void @__asan_load4_noabort(i32 %2527)
  %2528 = load ptr, ptr %wreg3345.i, align 4
  tail call void %2528(ptr noundef %hdev, i32 noundef 16551912, i32 noundef -2) #3
  %2529 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2529)
  %2530 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3350.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2530, i32 0, i32 58
  %2531 = ptrtoint ptr %wreg3350.i to i32
  call void @__asan_load4_noabort(i32 %2531)
  %2532 = load ptr, ptr %wreg3350.i, align 4
  tail call void %2532(ptr noundef %hdev, i32 noundef 16543684, i32 noundef 2147483647) #3
  %2533 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2533)
  %2534 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3372.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2534, i32 0, i32 58
  %2535 = ptrtoint ptr %wreg3372.i to i32
  call void @__asan_load4_noabort(i32 %2535)
  %2536 = load ptr, ptr %wreg3372.i, align 4
  tail call void %2536(ptr noundef %hdev, i32 noundef 16543688, i32 noundef -1073120026) #3
  %2537 = ptrtoint ptr %asic_funcs.i43 to i32
  call void @__asan_load4_noabort(i32 %2537)
  %2538 = load ptr, ptr %asic_funcs.i43, align 8
  %wreg3399.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2538, i32 0, i32 58
  %2539 = ptrtoint ptr %wreg3399.i to i32
  call void @__asan_load4_noabort(i32 %2539)
  %2540 = load ptr, ptr %wreg3399.i, align 4
  tail call void %2540(ptr noundef %hdev, i32 noundef 16543692, i32 noundef 786623) #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gaudi_ack_protection_bits_errors(ptr nocapture noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @gaudi_rr_lbw_hit_aw_regs, !1, !"gaudi_rr_lbw_hit_aw_regs", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 15, i32 12}
!2 = !{ptr @gaudi_rr_lbw_hit_ar_regs, !3, !"gaudi_rr_lbw_hit_ar_regs", i1 false, i1 false}
!3 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 46, i32 12}
!4 = !{ptr @gaudi_rr_lbw_min_aw_regs, !5, !"gaudi_rr_lbw_min_aw_regs", i1 false, i1 false}
!5 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 77, i32 12}
!6 = !{ptr @gaudi_rr_lbw_min_ar_regs, !7, !"gaudi_rr_lbw_min_ar_regs", i1 false, i1 false}
!7 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 139, i32 12}
!8 = !{ptr @gaudi_rr_lbw_max_aw_regs, !9, !"gaudi_rr_lbw_max_aw_regs", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 108, i32 12}
!10 = !{ptr @gaudi_rr_lbw_max_ar_regs, !11, !"gaudi_rr_lbw_max_ar_regs", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 170, i32 12}
!12 = !{ptr @gaudi_rr_hbw_hit_aw_regs, !13, !"gaudi_rr_hbw_hit_aw_regs", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 201, i32 12}
!14 = !{ptr @gaudi_rr_hbw_hit_ar_regs, !15, !"gaudi_rr_hbw_hit_ar_regs", i1 false, i1 false}
!15 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 228, i32 12}
!16 = !{ptr @gaudi_rr_hbw_base_low_aw_regs, !17, !"gaudi_rr_hbw_base_low_aw_regs", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 255, i32 12}
!18 = !{ptr @gaudi_rr_hbw_base_low_ar_regs, !19, !"gaudi_rr_hbw_base_low_ar_regs", i1 false, i1 false}
!19 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 363, i32 12}
!20 = !{ptr @gaudi_rr_hbw_base_high_aw_regs, !21, !"gaudi_rr_hbw_base_high_aw_regs", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 282, i32 12}
!22 = !{ptr @gaudi_rr_hbw_base_high_ar_regs, !23, !"gaudi_rr_hbw_base_high_ar_regs", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 390, i32 12}
!24 = !{ptr @gaudi_rr_hbw_mask_low_aw_regs, !25, !"gaudi_rr_hbw_mask_low_aw_regs", i1 false, i1 false}
!25 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 309, i32 12}
!26 = !{ptr @gaudi_rr_hbw_mask_low_ar_regs, !27, !"gaudi_rr_hbw_mask_low_ar_regs", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 417, i32 12}
!28 = !{ptr @gaudi_rr_hbw_mask_high_aw_regs, !29, !"gaudi_rr_hbw_mask_high_aw_regs", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 336, i32 12}
!30 = !{ptr @gaudi_rr_hbw_mask_high_ar_regs, !31, !"gaudi_rr_hbw_mask_high_ar_regs", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/gaudi/gaudi_security.c", i32 444, i32 12}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
