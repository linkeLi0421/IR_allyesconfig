; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/tests/ni_routes_test.c_pt.bc'
source_filename = "../drivers/comedi/drivers/tests/ni_routes_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ni_route_tables = type { ptr, ptr }
%struct.ni_device_routes = type { ptr, i32, ptr }
%struct.ni_route_set = type { i32, i32, ptr }

@__initcall__kmod_ni_routes_test__339_604_ni_routes_unittest6 = internal global ptr @ni_routes_unittest, section ".initcall6.init", align 4
@__exitcall_ni_routes_unittest_exit = internal global ptr @ni_routes_unittest_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author340 = internal constant [52 x i8] c"ni_routes_test.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [66 x i8] c"ni_routes_test.description=Comedi unit-tests for ni_routes module\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [64 x i8] c"ni_routes_test.file=drivers/comedi/drivers/tests/ni_routes_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [27 x i8] c"ni_routes_test.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ni_routes\00", [22 x i8] zeroinitializer }, align 32
@unittest_results.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@unittest_results.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_ni_assign_device_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013FAIL %s():%i find device pci-6070e\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_ni_assign_device_routes\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/comedi/drivers/tests/ni_routes_test.c\00", [50 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr = internal global ptr @test_ni_assign_device_routes._entry, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ni_routes_test\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pass %s():%i find device pci-6070e\0A\00", [60 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013FAIL %s():%i number of pci-6070e route_sets == 37\0A\00", [43 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.8 = internal global ptr @test_ni_assign_device_routes._entry.6, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pass %s():%i number of pci-6070e route_sets == 37\0A\00", [45 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013FAIL %s():%i first pci-6070e route_set is for NI_PFI(0)\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.12 = internal global ptr @test_ni_assign_device_routes._entry.10, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pass %s():%i first pci-6070e route_set is for NI_PFI(0)\0A\00", [39 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013FAIL %s():%i first pci-6070e route_set length == 1\0A\00", [42 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.16 = internal global ptr @test_ni_assign_device_routes._entry.14, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pass %s():%i first pci-6070e route_set length == 1\0A\00", [44 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013FAIL %s():%i first pci-6070e route_set src. == NI_AI_StartTrigger\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.20 = internal global ptr @test_ni_assign_device_routes._entry.18, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pass %s():%i first pci-6070e route_set src. == NI_AI_StartTrigger\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013FAIL %s():%i 10th pci-6070e route_set is for TRIGGER_LINE(0)\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.24 = internal global ptr @test_ni_assign_device_routes._entry.22, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pass %s():%i 10th pci-6070e route_set is for TRIGGER_LINE(0)\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013FAIL %s():%i 10th pci-6070e route_set length == 10\0A\00", [42 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.28 = internal global ptr @test_ni_assign_device_routes._entry.26, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.29, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pass %s():%i 10th pci-6070e route_set length == 10\0A\00", [44 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013FAIL %s():%i 10th pci-6070e route_set src. == NI_CtrSource(0)\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.32 = internal global ptr @test_ni_assign_device_routes._entry.30, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.33, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pass %s():%i 10th pci-6070e route_set src. == NI_CtrSource(0)\0A\00", [33 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i all pci-6070e route_sets in order of signal destination\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.36 = internal global ptr @test_ni_assign_device_routes._entry.34, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.37, i8 0, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i all pci-6070e route_sets in order of signal destination\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013FAIL %s():%i all pci-6070e route_set->src's in order of signal source\0A\00", [55 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.40 = internal global ptr @test_ni_assign_device_routes._entry.38, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.41, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"pass %s():%i all pci-6070e route_set->src's in order of signal source\0A\00", [57 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013FAIL %s():%i pci-6070e finds e-series route_values table\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.44 = internal global ptr @test_ni_assign_device_routes._entry.42, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.45, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pass %s():%i pci-6070e finds e-series route_values table\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013FAIL %s():%i find device pci-6220\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.48 = internal global ptr @test_ni_assign_device_routes._entry.46, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.49, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pass %s():%i find device pci-6220\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013FAIL %s():%i pci-6220 find other route_values table\0A\00", [41 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.52 = internal global ptr @test_ni_assign_device_routes._entry.50, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.53, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pass %s():%i pci-6220 find other route_values table\0A\00", [43 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.2, ptr @.str.3, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013FAIL %s():%i pci-6220 finds m-series route_values table\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_assign_device_routes._entry_ptr.56 = internal global ptr @test_ni_assign_device_routes._entry.54, section ".printk_index", align 4
@test_ni_assign_device_routes.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.57, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pass %s():%i pci-6220 finds m-series route_values table\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ni_eseries\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci-6070e\00", [22 x i8] zeroinitializer }, align 32
@private = internal global { { i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, [4968 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ni_mseries\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6220\00", [23 x i8] zeroinitializer }, align 32
@DR = internal global { %struct.ni_device_routes, [20 x i8] } { %struct.ni_device_routes { ptr @.str.70, i32 0, ptr @.compoundliteral.81 }, [20 x i8] zeroinitializer }, align 32
@test_ni_sort_device_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013FAIL %s():%i all route_sets of fake data in order of sig. destination\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_ni_sort_device_routes\00", [37 x i8] zeroinitializer }, align 32
@test_ni_sort_device_routes._entry_ptr = internal global ptr @test_ni_sort_device_routes._entry, section ".printk_index", align 4
@test_ni_sort_device_routes.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"pass %s():%i all route_sets of fake data in order of sig. destination\0A\00", [57 x i8] zeroinitializer }, align 32
@test_ni_sort_device_routes._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013FAIL %s():%i all route_set->src's of fake data in order of sig. source\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_sort_device_routes._entry_ptr.68 = internal global ptr @test_ni_sort_device_routes._entry.66, section ".printk_index", align 4
@test_ni_sort_device_routes.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.64, ptr @.str.3, ptr @.str.69, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pass %s():%i all route_set->src's of fake data in order of sig. source\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"testdev\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32774, i32 32775, i32 32776, i32 32777, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32775, i32 32776, i32 32777, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32776, i32 32777, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32868, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 32868, i32 32908, i32 32909, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 32869, i32 32898, i32 32899, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 32869, i32 32888, i32 32889, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 32878, i32 32879, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [12 x %struct.ni_route_set], [48 x i8] } { [12 x %struct.ni_route_set] [%struct.ni_route_set { i32 32768, i32 0, ptr @.compoundliteral }, %struct.ni_route_set { i32 32769, i32 0, ptr @.compoundliteral.71 }, %struct.ni_route_set { i32 32773, i32 0, ptr @.compoundliteral.72 }, %struct.ni_route_set { i32 32774, i32 0, ptr @.compoundliteral.73 }, %struct.ni_route_set { i32 32775, i32 0, ptr @.compoundliteral.74 }, %struct.ni_route_set { i32 32777, i32 0, ptr @.compoundliteral.75 }, %struct.ni_route_set { i32 32832, i32 0, ptr @.compoundliteral.76 }, %struct.ni_route_set { i32 32833, i32 0, ptr @.compoundliteral.77 }, %struct.ni_route_set { i32 32834, i32 0, ptr @.compoundliteral.78 }, %struct.ni_route_set { i32 32835, i32 0, ptr @.compoundliteral.79 }, %struct.ni_route_set { i32 32836, i32 0, ptr @.compoundliteral.80 }, %struct.ni_route_set zeroinitializer], [48 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013FAIL %s():%i check for nonexistent route_set\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_ni_find_route_set\00", [41 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry_ptr = internal global ptr @test_ni_find_route_set._entry, section ".printk_index", align 4
@test_ni_find_route_set.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pass %s():%i check for nonexistent route_set\0A\00", [50 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013FAIL %s():%i find first route_set\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry_ptr.87 = internal global ptr @test_ni_find_route_set._entry.85, section ".printk_index", align 4
@test_ni_find_route_set.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.3, ptr @.str.88, i8 0, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pass %s():%i find first route_set\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.83, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013FAIL %s():%i find ith route_set\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry_ptr.91 = internal global ptr @test_ni_find_route_set._entry.89, section ".printk_index", align 4
@test_ni_find_route_set.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.3, ptr @.str.92, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pass %s():%i find ith route_set\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013FAIL %s():%i find no_val route_set in spite of missing values\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry_ptr.95 = internal global ptr @test_ni_find_route_set._entry.93, section ".printk_index", align 4
@test_ni_find_route_set.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.3, ptr @.str.96, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pass %s():%i find no_val route_set in spite of missing values\0A\00", [33 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.83, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013FAIL %s():%i find last route_set\0A\00", [60 x i8] zeroinitializer }, align 32
@test_ni_find_route_set._entry_ptr.99 = internal global ptr @test_ni_find_route_set._entry.97, section ".printk_index", align 4
@test_ni_find_route_set.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.3, ptr @.str.100, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pass %s():%i find last route_set\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013FAIL %s():%i check for bad source\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_ni_route_set_has_source\00", [35 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry_ptr = internal global ptr @test_ni_route_set_has_source._entry, section ".printk_index", align 4
@test_ni_route_set_has_source.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pass %s():%i check for bad source\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013FAIL %s():%i find first source\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry_ptr.106 = internal global ptr @test_ni_route_set_has_source._entry.104, section ".printk_index", align 4
@test_ni_route_set_has_source.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.102, ptr @.str.3, ptr @.str.107, i8 0, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pass %s():%i find first source\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str.3, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013FAIL %s():%i find fifth source\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry_ptr.110 = internal global ptr @test_ni_route_set_has_source._entry.108, section ".printk_index", align 4
@test_ni_route_set_has_source.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.102, ptr @.str.3, ptr @.str.111, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pass %s():%i find fifth source\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013FAIL %s():%i find last source\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_route_set_has_source._entry_ptr.114 = internal global ptr @test_ni_route_set_has_source._entry.112, section ".printk_index", align 4
@test_ni_route_set_has_source.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.102, ptr @.str.3, ptr @.str.115, i8 0, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pass %s():%i find last source\0A\00", [33 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013FAIL %s():%i check for bad route 0-->0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_ni_route_to_register\00", [38 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr = internal global ptr @test_ni_route_to_register._entry, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pass %s():%i check for bad route 0-->0\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.117, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013FAIL %s():%i validate first destination\0A\00", [53 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.121 = internal global ptr @test_ni_route_to_register._entry.119, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.122, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pass %s():%i validate first destination\0A\00", [55 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.117, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013FAIL %s():%i validate middle destination\0A\00", [52 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.125 = internal global ptr @test_ni_route_to_register._entry.123, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.126, i8 0, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pass %s():%i validate middle destination\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013FAIL %s():%i validate last destination\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.129 = internal global ptr @test_ni_route_to_register._entry.127, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.130, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pass %s():%i validate last destination\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.117, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013FAIL %s():%i validate indirect route through rgout0 to TRIGGER_LINE(0)\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.133 = internal global ptr @test_ni_route_to_register._entry.131, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.134, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pass %s():%i validate indirect route through rgout0 to TRIGGER_LINE(0)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.117, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013FAIL %s():%i validate indirect route through rgout0 to TRIGGER_LINE(1)\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.137 = internal global ptr @test_ni_route_to_register._entry.135, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.138, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pass %s():%i validate indirect route through rgout0 to TRIGGER_LINE(1)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.117, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013FAIL %s():%i validate indirect route through rgout0 to TRIGGER_LINE(2)\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.141 = internal global ptr @test_ni_route_to_register._entry.139, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.142, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pass %s():%i validate indirect route through rgout0 to TRIGGER_LINE(2)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.117, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013FAIL %s():%i validate indirect route through rgout0 to TRIGGER_LINE(3)\0A\00", [54 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.145 = internal global ptr @test_ni_route_to_register._entry.143, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.146, i8 0, i8 82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"pass %s():%i validate indirect route through rgout0 to TRIGGER_LINE(3)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.117, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i validate indirect route through brd0 to TRIGGER_LINE(4)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.149 = internal global ptr @test_ni_route_to_register._entry.147, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.150, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i validate indirect route through brd0 to TRIGGER_LINE(4)\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.117, ptr @.str.3, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.152 = internal global ptr @test_ni_route_to_register._entry.151, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.150, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_route_to_register._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.117, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i validate indirect route through brd1 to TRIGGER_LINE(3)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.155 = internal global ptr @test_ni_route_to_register._entry.153, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.156, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i validate indirect route through brd1 to TRIGGER_LINE(3)\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.117, ptr @.str.3, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.158 = internal global ptr @test_ni_route_to_register._entry.157, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.156, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_route_to_register._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.117, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i validate indirect route through brd2 to TRIGGER_LINE(2)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.161 = internal global ptr @test_ni_route_to_register._entry.159, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.162, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i validate indirect route through brd2 to TRIGGER_LINE(2)\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.117, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.164 = internal global ptr @test_ni_route_to_register._entry.163, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.162, i8 0, i8 87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_route_to_register._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.117, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i validate indirect route through brd3 to TRIGGER_LINE(1)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.167 = internal global ptr @test_ni_route_to_register._entry.165, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.168, i8 0, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i validate indirect route through brd3 to TRIGGER_LINE(1)\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.117, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_route_to_register._entry_ptr.170 = internal global ptr @test_ni_route_to_register._entry.169, section ".printk_index", align 4
@test_ni_route_to_register.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.117, ptr @.str.3, ptr @.str.168, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@RV = internal constant { <{ <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, [210 x i8], <{ [10 x i8], [200 x i8] }>, <{ [9 x i8], [201 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [112 x i8], [98 x i8] }>, <{ [122 x i8], [88 x i8] }>, <{ [132 x i8], [78 x i8] }>, <{ [142 x i8], [68 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [102 x i8], [108 x i8] }> }>, [11036 x i8] } { <{ <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, <{ [10 x i8], [200 x i8] }>, [210 x i8], <{ [10 x i8], [200 x i8] }>, <{ [9 x i8], [201 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [112 x i8], [98 x i8] }>, <{ [122 x i8], [88 x i8] }>, <{ [132 x i8], [78 x i8] }>, <{ [142 x i8], [68 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [102 x i8], [108 x i8] }> }> <{ <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\00\81\82\83\84\85\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\00\82\83\84\85\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\00\83\84\85\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\82\00\84\85\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\82\83\00\85\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\82\83\84\00\86\87\88\89", [200 x i8] zeroinitializer }>, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\82\83\84\85\00\87\88\89", [200 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, <{ [10 x i8], [200 x i8] }> <{ [10 x i8] c"\80\81\82\83\84\85\86\87\00\89", [200 x i8] zeroinitializer }>, <{ [9 x i8], [201 x i8] }> <{ [9 x i8] c"\80\81\82\83\84\85\86\87\88", [201 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, <{ [112 x i8], [98 x i8] }> <{ [112 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81", [98 x i8] zeroinitializer }>, <{ [122 x i8], [88 x i8] }> <{ [122 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81", [88 x i8] zeroinitializer }>, <{ [132 x i8], [78 x i8] }> <{ [132 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81", [78 x i8] zeroinitializer }>, <{ [142 x i8], [68 x i8] }> <{ [142 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81", [68 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, <{ [102 x i8], [108 x i8] }> <{ [102 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81", [108 x i8] zeroinitializer }> }>, [11036 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.173, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"test_ni_lookup_route_register\00", [34 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr = internal global ptr @test_ni_lookup_route_register._entry, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.118, i8 0, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_lookup_route_register._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.173, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.175 = internal global ptr @test_ni_lookup_route_register._entry.174, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.122, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_lookup_route_register._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.173, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.177 = internal global ptr @test_ni_lookup_route_register._entry.176, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.126, i8 0, i8 92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_lookup_route_register._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.173, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.179 = internal global ptr @test_ni_lookup_route_register._entry.178, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.130, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_lookup_route_register._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013FAIL %s():%i lookup invalid destination\0A\00", [53 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.182 = internal global ptr @test_ni_lookup_route_register._entry.180, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.183, i8 0, i8 93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pass %s():%i lookup invalid destination\0A\00", [55 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.173, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013FAIL %s():%i rgout0_src0: no direct lookup of indirect route\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.186 = internal global ptr @test_ni_lookup_route_register._entry.184, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.187, i8 0, i8 94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pass %s():%i rgout0_src0: no direct lookup of indirect route\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.173, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013FAIL %s():%i rgout0_src0: lookup indirect route register\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.190 = internal global ptr @test_ni_lookup_route_register._entry.188, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.191, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pass %s():%i rgout0_src0: lookup indirect route register\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.173, ptr @.str.3, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013FAIL %s():%i rgout0_src1: no direct lookup of indirect route\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.194 = internal global ptr @test_ni_lookup_route_register._entry.192, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.195, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pass %s():%i rgout0_src1: no direct lookup of indirect route\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.173, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013FAIL %s():%i rgout0_src1: lookup indirect route register\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.198 = internal global ptr @test_ni_lookup_route_register._entry.196, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.199, i8 0, i8 95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pass %s():%i rgout0_src1: lookup indirect route register\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.173, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013FAIL %s():%i brd0_src0: no direct lookup of indirect route\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.202 = internal global ptr @test_ni_lookup_route_register._entry.200, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.203, i8 0, i8 96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pass %s():%i brd0_src0: no direct lookup of indirect route\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.173, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013FAIL %s():%i brd0_src0: lookup indirect route register\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.206 = internal global ptr @test_ni_lookup_route_register._entry.204, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.207, i8 0, i8 97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pass %s():%i brd0_src0: lookup indirect route register\0A\00", [40 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.173, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013FAIL %s():%i brd0_src1: no direct lookup of indirect route\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.210 = internal global ptr @test_ni_lookup_route_register._entry.208, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.211, i8 0, i8 98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pass %s():%i brd0_src1: no direct lookup of indirect route\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.173, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013FAIL %s():%i brd0_src1: lookup indirect route register\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_lookup_route_register._entry_ptr.214 = internal global ptr @test_ni_lookup_route_register._entry.212, section ".printk_index", align 4
@test_ni_lookup_route_register.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.173, ptr @.str.3, ptr @.str.215, i8 0, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pass %s():%i brd0_src1: lookup indirect route register\0A\00", [40 x i8] zeroinitializer }, align 32
@test_route_is_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.216, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_route_is_valid\00", [44 x i8] zeroinitializer }, align 32
@test_route_is_valid._entry_ptr = internal global ptr @test_route_is_valid._entry, section ".printk_index", align 4
@test_route_is_valid.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.216, ptr @.str.3, ptr @.str.118, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_is_valid._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.216, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_is_valid._entry_ptr.218 = internal global ptr @test_route_is_valid._entry.217, section ".printk_index", align 4
@test_route_is_valid.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.216, ptr @.str.3, ptr @.str.122, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_is_valid._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.216, ptr @.str.3, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_is_valid._entry_ptr.220 = internal global ptr @test_route_is_valid._entry.219, section ".printk_index", align 4
@test_route_is_valid.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.216, ptr @.str.3, ptr @.str.126, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_is_valid._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.216, ptr @.str.3, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_is_valid._entry_ptr.222 = internal global ptr @test_route_is_valid._entry.221, section ".printk_index", align 4
@test_route_is_valid.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.216, ptr @.str.3, ptr @.str.130, i8 0, i8 102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_is_cmd_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013FAIL %s():%i check that AI/SampleClock is cmd destination\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_ni_is_cmd_dest\00", [44 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr = internal global ptr @test_ni_is_cmd_dest._entry, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.225, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pass %s():%i check that AI/SampleClock is cmd destination\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.224, ptr @.str.3, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013FAIL %s():%i check that AI/StartTrigger is cmd destination\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr.228 = internal global ptr @test_ni_is_cmd_dest._entry.226, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.229, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pass %s():%i check that AI/StartTrigger is cmd destination\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.224, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013FAIL %s():%i check that AI/ConvertClock is cmd destination\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr.232 = internal global ptr @test_ni_is_cmd_dest._entry.230, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.233, i8 0, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pass %s():%i check that AI/ConvertClock is cmd destination\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.224, ptr @.str.3, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013FAIL %s():%i check that AO/SampleClock is cmd destination\0A\00", [35 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr.236 = internal global ptr @test_ni_is_cmd_dest._entry.234, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.237, i8 0, i8 105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pass %s():%i check that AO/SampleClock is cmd destination\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.224, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013FAIL %s():%i check that DO/SampleClock is cmd destination\0A\00", [35 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr.240 = internal global ptr @test_ni_is_cmd_dest._entry.238, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.241, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pass %s():%i check that DO/SampleClock is cmd destination\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.224, ptr @.str.3, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i check that AO/SampleClockTimebase _not_ cmd destination\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_is_cmd_dest._entry_ptr.244 = internal global ptr @test_ni_is_cmd_dest._entry.242, section ".printk_index", align 4
@test_ni_is_cmd_dest.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.224, ptr @.str.3, ptr @.str.245, i8 0, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.245 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i check that AO/SampleClockTimebase _not_ cmd destination\0A\00", [58 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.3, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013FAIL %s():%i check First pfi channel\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_channel_is_pfi\00", [44 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry_ptr = internal global ptr @test_channel_is_pfi._entry, section ".printk_index", align 4
@test_channel_is_pfi.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.247, ptr @.str.3, ptr @.str.248, i8 0, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pass %s():%i check First pfi channel\0A\00", [58 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.247, ptr @.str.3, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013FAIL %s():%i check 10th pfi channel\0A\00", [57 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry_ptr.251 = internal global ptr @test_channel_is_pfi._entry.249, section ".printk_index", align 4
@test_channel_is_pfi.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.247, ptr @.str.3, ptr @.str.252, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pass %s():%i check 10th pfi channel\0A\00", [59 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.247, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013FAIL %s():%i check last pfi channel\0A\00", [57 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry_ptr.255 = internal global ptr @test_channel_is_pfi._entry.253, section ".printk_index", align 4
@test_channel_is_pfi.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.247, ptr @.str.3, ptr @.str.256, i8 0, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pass %s():%i check last pfi channel\0A\00", [59 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.247, ptr @.str.3, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013FAIL %s():%i check first non pfi channel\0A\00", [52 x i8] zeroinitializer }, align 32
@test_channel_is_pfi._entry_ptr.259 = internal global ptr @test_channel_is_pfi._entry.257, section ".printk_index", align 4
@test_channel_is_pfi.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.247, ptr @.str.3, ptr @.str.260, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.260 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pass %s():%i check first non pfi channel\0A\00", [54 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.3, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013FAIL %s():%i check First rtsi channel\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_channel_is_rtsi\00", [43 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry_ptr = internal global ptr @test_channel_is_rtsi._entry, section ".printk_index", align 4
@test_channel_is_rtsi.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.262, ptr @.str.3, ptr @.str.263, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.263 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pass %s():%i check First rtsi channel\0A\00", [57 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.262, ptr @.str.3, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013FAIL %s():%i check 3rd rtsi channel\0A\00", [57 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry_ptr.266 = internal global ptr @test_channel_is_rtsi._entry.264, section ".printk_index", align 4
@test_channel_is_rtsi.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.262, ptr @.str.3, ptr @.str.267, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.267 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pass %s():%i check 3rd rtsi channel\0A\00", [59 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.262, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013FAIL %s():%i check last rtsi channel\0A\00", [56 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry_ptr.270 = internal global ptr @test_channel_is_rtsi._entry.268, section ".printk_index", align 4
@test_channel_is_rtsi.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.262, ptr @.str.3, ptr @.str.271, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pass %s():%i check last rtsi channel\0A\00", [58 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.262, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013FAIL %s():%i check first non rtsi channel\0A\00", [51 x i8] zeroinitializer }, align 32
@test_channel_is_rtsi._entry_ptr.274 = internal global ptr @test_channel_is_rtsi._entry.272, section ".printk_index", align 4
@test_channel_is_rtsi.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.262, ptr @.str.3, ptr @.str.275, i8 0, i8 112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pass %s():%i check first non rtsi channel\0A\00", [53 x i8] zeroinitializer }, align 32
@test_ni_count_valid_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013FAIL %s():%i count all valid routes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_ni_count_valid_routes\00", [37 x i8] zeroinitializer }, align 32
@test_ni_count_valid_routes._entry_ptr = internal global ptr @test_ni_count_valid_routes._entry, section ".printk_index", align 4
@test_ni_count_valid_routes.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.277, ptr @.str.3, ptr @.str.278, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pass %s():%i count all valid routes\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.280, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013FAIL %s():%i count all valid routes through ni_get_valid_routes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_ni_get_valid_routes\00", [39 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry_ptr = internal global ptr @test_ni_get_valid_routes._entry, section ".printk_index", align 4
@test_ni_get_valid_routes.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.280, ptr @.str.3, ptr @.str.281, i8 0, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.281 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"pass %s():%i count all valid routes through ni_get_valid_routes\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.280, ptr @.str.3, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013FAIL %s():%i copied first valid route from ni_get_valid_routes\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry_ptr.284 = internal global ptr @test_ni_get_valid_routes._entry.282, section ".printk_index", align 4
@test_ni_get_valid_routes.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.280, ptr @.str.3, ptr @.str.285, i8 0, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.285 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"pass %s():%i copied first valid route from ni_get_valid_routes\0A\00", [32 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.280, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013FAIL %s():%i source of first valid pair from ni_get_valid_routes\0A\00", [60 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry_ptr.288 = internal global ptr @test_ni_get_valid_routes._entry.286, section ".printk_index", align 4
@test_ni_get_valid_routes.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.280, ptr @.str.3, ptr @.str.289, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.289 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"pass %s():%i source of first valid pair from ni_get_valid_routes\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.280, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013FAIL %s():%i destination of first valid pair from ni_get_valid_routes\0A\00", [55 x i8] zeroinitializer }, align 32
@test_ni_get_valid_routes._entry_ptr.292 = internal global ptr @test_ni_get_valid_routes._entry.290, section ".printk_index", align 4
@test_ni_get_valid_routes.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.280, ptr @.str.3, ptr @.str.293, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.293 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"pass %s():%i destination of first valid pair from ni_get_valid_routes\0A\00", [57 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.3, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013FAIL %s():%i check for bad source 4-->4\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_ni_find_route_source\00", [38 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry_ptr = internal global ptr @test_ni_find_route_source._entry, section ".printk_index", align 4
@test_ni_find_route_source.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.295, ptr @.str.3, ptr @.str.296, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.296 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pass %s():%i check for bad source 4-->4\0A\00", [55 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.295, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry_ptr.298 = internal global ptr @test_ni_find_route_source._entry.297, section ".printk_index", align 4
@test_ni_find_route_source.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.295, ptr @.str.3, ptr @.str.107, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_find_route_source._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.295, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013FAIL %s():%i find middle source\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry_ptr.301 = internal global ptr @test_ni_find_route_source._entry.299, section ".printk_index", align 4
@test_ni_find_route_source.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.295, ptr @.str.3, ptr @.str.302, i8 0, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.302 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pass %s():%i find middle source\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.295, ptr @.str.3, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013FAIL %s():%i find last source\00", [32 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry_ptr.305 = internal global ptr @test_ni_find_route_source._entry.303, section ".printk_index", align 4
@test_ni_find_route_source.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.295, ptr @.str.3, ptr @.str.306, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.306 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pass %s():%i find last source\00", [34 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.295, ptr @.str.3, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013FAIL %s():%i find invalid source (without checking device routes)\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_find_route_source._entry_ptr.309 = internal global ptr @test_ni_find_route_source._entry.307, section ".printk_index", align 4
@test_ni_find_route_source.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.295, ptr @.str.3, ptr @.str.310, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.310 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pass %s():%i find invalid source (without checking device routes)\0A\00", [61 x i8] zeroinitializer }, align 32
@test_route_register_is_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.311, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_route_register_is_valid\00", [35 x i8] zeroinitializer }, align 32
@test_route_register_is_valid._entry_ptr = internal global ptr @test_route_register_is_valid._entry, section ".printk_index", align 4
@test_route_register_is_valid.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.311, ptr @.str.3, ptr @.str.296, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_register_is_valid._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.311, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_register_is_valid._entry_ptr.313 = internal global ptr @test_route_register_is_valid._entry.312, section ".printk_index", align 4
@test_route_register_is_valid.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.311, ptr @.str.3, ptr @.str.107, i8 0, i8 125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_register_is_valid._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.311, ptr @.str.3, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_register_is_valid._entry_ptr.315 = internal global ptr @test_route_register_is_valid._entry.314, section ".printk_index", align 4
@test_route_register_is_valid.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.311, ptr @.str.3, ptr @.str.302, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_route_register_is_valid._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.311, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_route_register_is_valid._entry_ptr.317 = internal global ptr @test_route_register_is_valid._entry.316, section ".printk_index", align 4
@test_route_register_is_valid.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.311, ptr @.str.3, ptr @.str.306, i8 0, i8 126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_check_trigger_arg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.319, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013FAIL %s():%i check bad direct trigger arg for first reg->dest\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_ni_check_trigger_arg\00", [38 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr = internal global ptr @test_ni_check_trigger_arg._entry, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.320, i8 0, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.320 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pass %s():%i check bad direct trigger arg for first reg->dest\0A\00", [33 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.319, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013FAIL %s():%i check direct trigger arg for first reg->dest\0A\00", [35 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.323 = internal global ptr @test_ni_check_trigger_arg._entry.321, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.324, i8 0, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pass %s():%i check direct trigger arg for first reg->dest\0A\00", [37 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.319, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013FAIL %s():%i check direct trigger arg for middle reg->dest\0A\00", [34 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.327 = internal global ptr @test_ni_check_trigger_arg._entry.325, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.328, i8 0, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.328 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pass %s():%i check direct trigger arg for middle reg->dest\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.319, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013FAIL %s():%i check direct trigger arg for last reg->dest\0A\00", [36 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.331 = internal global ptr @test_ni_check_trigger_arg._entry.329, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.332, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.332 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pass %s():%i check direct trigger arg for last reg->dest\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.319, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013FAIL %s():%i check bad direct trigger arg for first reg->dest w/offs\0A\00", [56 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.335 = internal global ptr @test_ni_check_trigger_arg._entry.333, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.336, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.336 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pass %s():%i check bad direct trigger arg for first reg->dest w/offs\0A\00", [58 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.319, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013FAIL %s():%i check direct trigger arg for first reg->dest w/offs\0A\00", [60 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.339 = internal global ptr @test_ni_check_trigger_arg._entry.337, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.340, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.340 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"pass %s():%i check direct trigger arg for first reg->dest w/offs\0A\00", [62 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.319, ptr @.str.3, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013FAIL %s():%i check direct trigger arg for middle reg->dest w/offs\0A\00", [59 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.343 = internal global ptr @test_ni_check_trigger_arg._entry.341, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.344, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.344 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pass %s():%i check direct trigger arg for middle reg->dest w/offs\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.319, ptr @.str.3, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013FAIL %s():%i check direct trigger arg for last reg->dest w/offs\0A\00", [61 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.347 = internal global ptr @test_ni_check_trigger_arg._entry.345, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.348, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.348 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"pass %s():%i check direct trigger arg for last reg->dest w/offs\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.319, ptr @.str.3, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013FAIL %s():%i check bad trigger arg for first src->dest\0A\00", [38 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.351 = internal global ptr @test_ni_check_trigger_arg._entry.349, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.352, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.352 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pass %s():%i check bad trigger arg for first src->dest\0A\00", [40 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.319, ptr @.str.3, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013FAIL %s():%i check trigger arg for first src->dest\0A\00", [42 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.355 = internal global ptr @test_ni_check_trigger_arg._entry.353, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.356, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.356 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pass %s():%i check trigger arg for first src->dest\0A\00", [44 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.319, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013FAIL %s():%i check trigger arg for middle src->dest\0A\00", [41 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.359 = internal global ptr @test_ni_check_trigger_arg._entry.357, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.360, i8 0, i8 -122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.360 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pass %s():%i check trigger arg for middle src->dest\0A\00", [43 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.319, ptr @.str.3, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013FAIL %s():%i check trigger arg for last src->dest\0A\00", [43 x i8] zeroinitializer }, align 32
@test_ni_check_trigger_arg._entry_ptr.363 = internal global ptr @test_ni_check_trigger_arg._entry.361, section ".printk_index", align 4
@test_ni_check_trigger_arg.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.319, ptr @.str.3, ptr @.str.364, i8 0, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.364 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pass %s():%i check trigger arg for last src->dest\0A\00", [45 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.365, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_ni_get_reg_value\00", [42 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr = internal global ptr @test_ni_get_reg_value._entry, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.320, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.365, ptr @.str.3, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.367 = internal global ptr @test_ni_get_reg_value._entry.366, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.324, i8 0, i8 -119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.365, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.369 = internal global ptr @test_ni_get_reg_value._entry.368, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.328, i8 0, i8 -118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.365, ptr @.str.3, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.371 = internal global ptr @test_ni_get_reg_value._entry.370, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.332, i8 0, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.365, ptr @.str.3, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.373 = internal global ptr @test_ni_get_reg_value._entry.372, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.336, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.365, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.375 = internal global ptr @test_ni_get_reg_value._entry.374, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.340, i8 0, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.365, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.377 = internal global ptr @test_ni_get_reg_value._entry.376, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.344, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.365, ptr @.str.3, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.379 = internal global ptr @test_ni_get_reg_value._entry.378, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.348, i8 0, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.365, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.381 = internal global ptr @test_ni_get_reg_value._entry.380, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.352, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.365, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.383 = internal global ptr @test_ni_get_reg_value._entry.382, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.356, i8 0, i8 -114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.365, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.385 = internal global ptr @test_ni_get_reg_value._entry.384, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.360, i8 0, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@test_ni_get_reg_value._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.365, ptr @.str.3, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_ni_get_reg_value._entry_ptr.387 = internal global ptr @test_ni_get_reg_value._entry.386, section ".printk_index", align 4
@test_ni_get_reg_value.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.365, ptr @.str.3, ptr @.str.364, i8 0, i8 -113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@exec_unittests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.389, ptr @.str.390, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016begin comedi:\22%s\22 unittests\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exec_unittests\00", [17 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/tests/unittest.h\00", [56 x i8] zeroinitializer }, align 32
@exec_unittests._entry_ptr = internal global ptr @exec_unittests._entry, section ".printk_index", align 4
@exec_unittests._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.389, ptr @.str.390, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016end of comedi:\22%s\22 unittests - %i passed, %i failed\0A\00", [41 x i8] zeroinitializer }, align 32
@exec_unittests._entry_ptr.393 = internal global ptr @exec_unittests._entry.391, section ".printk_index", align 4
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 598, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant [19 x i8] c"unittest_results.0\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [19 x i8] c"unittest_results.1\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 224, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 226, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 228, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 230, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 232, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 234, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 236, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 238, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 240, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 242, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 245, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 258, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 260, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 262, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 36, i32 33 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 32, i32 32 }
@___asan_gen_.540 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 43, i32 26 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 37, i32 33 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 33, i32 31 }
@___asan_gen_.549 = private unnamed_addr constant [3 x i8] c"DR\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 84, i32 32 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 274, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 276, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 85, i32 12 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 282, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 284, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 286, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 288, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 291, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 298, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 300, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 302, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 304, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 313, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 315, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 317, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 319, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 323, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 325, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 327, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 329, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 332, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 335, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 338, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 341, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 344, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 347, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 350, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 353, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 123, i32 17 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 363, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 365, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 367, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 369, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 371, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 374, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 377, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 379, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 382, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 385, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 388, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 390, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 393, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 402, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 404, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 406, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 408, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 415, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 417, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 419, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 421, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 423, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 425, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 432, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 433, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 434, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 435, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 442, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 444, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 446, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 448, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 457, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 466, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 469, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 471, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 473, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 482, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 484, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 486, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 488, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 490, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 499, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 501, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 503, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 505, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 514, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 516, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 518, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 520, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 523, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 525, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 527, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 529, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 532, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 534, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 536, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 538, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 547, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 549, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 551, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 553, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 556, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 558, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 560, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 562, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 565, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 567, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 569, i32 2 }
@___asan_gen_.1303 = private constant [49 x i8] c"../drivers/comedi/drivers/tests/ni_routes_test.c\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1303, i32 571, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1321, i32 53, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant [43 x i8] c"../drivers/comedi/drivers/tests/unittest.h\00", align 1
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1321, i32 58, i32 2 }
@llvm.compiler.used = appending global [438 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_ni_routes_unittest_exit, ptr @__initcall__kmod_ni_routes_test__339_604_ni_routes_unittest6, ptr @exec_unittests._entry, ptr @exec_unittests._entry.391, ptr @exec_unittests._entry_ptr, ptr @exec_unittests._entry_ptr.393, ptr @ni_routes_unittest_exit, ptr @test_channel_is_pfi._entry, ptr @test_channel_is_pfi._entry.249, ptr @test_channel_is_pfi._entry.253, ptr @test_channel_is_pfi._entry.257, ptr @test_channel_is_pfi._entry_ptr, ptr @test_channel_is_pfi._entry_ptr.251, ptr @test_channel_is_pfi._entry_ptr.255, ptr @test_channel_is_pfi._entry_ptr.259, ptr @test_channel_is_rtsi._entry, ptr @test_channel_is_rtsi._entry.264, ptr @test_channel_is_rtsi._entry.268, ptr @test_channel_is_rtsi._entry.272, ptr @test_channel_is_rtsi._entry_ptr, ptr @test_channel_is_rtsi._entry_ptr.266, ptr @test_channel_is_rtsi._entry_ptr.270, ptr @test_channel_is_rtsi._entry_ptr.274, ptr @test_ni_assign_device_routes._entry, ptr @test_ni_assign_device_routes._entry.10, ptr @test_ni_assign_device_routes._entry.14, ptr @test_ni_assign_device_routes._entry.18, ptr @test_ni_assign_device_routes._entry.22, ptr @test_ni_assign_device_routes._entry.26, ptr @test_ni_assign_device_routes._entry.30, ptr @test_ni_assign_device_routes._entry.34, ptr @test_ni_assign_device_routes._entry.38, ptr @test_ni_assign_device_routes._entry.42, ptr @test_ni_assign_device_routes._entry.46, ptr @test_ni_assign_device_routes._entry.50, ptr @test_ni_assign_device_routes._entry.54, ptr @test_ni_assign_device_routes._entry.6, ptr @test_ni_assign_device_routes._entry_ptr, ptr @test_ni_assign_device_routes._entry_ptr.12, ptr @test_ni_assign_device_routes._entry_ptr.16, ptr @test_ni_assign_device_routes._entry_ptr.20, ptr @test_ni_assign_device_routes._entry_ptr.24, ptr @test_ni_assign_device_routes._entry_ptr.28, ptr @test_ni_assign_device_routes._entry_ptr.32, ptr @test_ni_assign_device_routes._entry_ptr.36, ptr @test_ni_assign_device_routes._entry_ptr.40, ptr @test_ni_assign_device_routes._entry_ptr.44, ptr @test_ni_assign_device_routes._entry_ptr.48, ptr @test_ni_assign_device_routes._entry_ptr.52, ptr @test_ni_assign_device_routes._entry_ptr.56, ptr @test_ni_assign_device_routes._entry_ptr.8, ptr @test_ni_check_trigger_arg._entry, ptr @test_ni_check_trigger_arg._entry.321, ptr @test_ni_check_trigger_arg._entry.325, ptr @test_ni_check_trigger_arg._entry.329, ptr @test_ni_check_trigger_arg._entry.333, ptr @test_ni_check_trigger_arg._entry.337, ptr @test_ni_check_trigger_arg._entry.341, ptr @test_ni_check_trigger_arg._entry.345, ptr @test_ni_check_trigger_arg._entry.349, ptr @test_ni_check_trigger_arg._entry.353, ptr @test_ni_check_trigger_arg._entry.357, ptr @test_ni_check_trigger_arg._entry.361, ptr @test_ni_check_trigger_arg._entry_ptr, ptr @test_ni_check_trigger_arg._entry_ptr.323, ptr @test_ni_check_trigger_arg._entry_ptr.327, ptr @test_ni_check_trigger_arg._entry_ptr.331, ptr @test_ni_check_trigger_arg._entry_ptr.335, ptr @test_ni_check_trigger_arg._entry_ptr.339, ptr @test_ni_check_trigger_arg._entry_ptr.343, ptr @test_ni_check_trigger_arg._entry_ptr.347, ptr @test_ni_check_trigger_arg._entry_ptr.351, ptr @test_ni_check_trigger_arg._entry_ptr.355, ptr @test_ni_check_trigger_arg._entry_ptr.359, ptr @test_ni_check_trigger_arg._entry_ptr.363, ptr @test_ni_count_valid_routes._entry, ptr @test_ni_count_valid_routes._entry_ptr, ptr @test_ni_find_route_set._entry, ptr @test_ni_find_route_set._entry.85, ptr @test_ni_find_route_set._entry.89, ptr @test_ni_find_route_set._entry.93, ptr @test_ni_find_route_set._entry.97, ptr @test_ni_find_route_set._entry_ptr, ptr @test_ni_find_route_set._entry_ptr.87, ptr @test_ni_find_route_set._entry_ptr.91, ptr @test_ni_find_route_set._entry_ptr.95, ptr @test_ni_find_route_set._entry_ptr.99, ptr @test_ni_find_route_source._entry, ptr @test_ni_find_route_source._entry.297, ptr @test_ni_find_route_source._entry.299, ptr @test_ni_find_route_source._entry.303, ptr @test_ni_find_route_source._entry.307, ptr @test_ni_find_route_source._entry_ptr, ptr @test_ni_find_route_source._entry_ptr.298, ptr @test_ni_find_route_source._entry_ptr.301, ptr @test_ni_find_route_source._entry_ptr.305, ptr @test_ni_find_route_source._entry_ptr.309, ptr @test_ni_get_reg_value._entry, ptr @test_ni_get_reg_value._entry.366, ptr @test_ni_get_reg_value._entry.368, ptr @test_ni_get_reg_value._entry.370, ptr @test_ni_get_reg_value._entry.372, ptr @test_ni_get_reg_value._entry.374, ptr @test_ni_get_reg_value._entry.376, ptr @test_ni_get_reg_value._entry.378, ptr @test_ni_get_reg_value._entry.380, ptr @test_ni_get_reg_value._entry.382, ptr @test_ni_get_reg_value._entry.384, ptr @test_ni_get_reg_value._entry.386, ptr @test_ni_get_reg_value._entry_ptr, ptr @test_ni_get_reg_value._entry_ptr.367, ptr @test_ni_get_reg_value._entry_ptr.369, ptr @test_ni_get_reg_value._entry_ptr.371, ptr @test_ni_get_reg_value._entry_ptr.373, ptr @test_ni_get_reg_value._entry_ptr.375, ptr @test_ni_get_reg_value._entry_ptr.377, ptr @test_ni_get_reg_value._entry_ptr.379, ptr @test_ni_get_reg_value._entry_ptr.381, ptr @test_ni_get_reg_value._entry_ptr.383, ptr @test_ni_get_reg_value._entry_ptr.385, ptr @test_ni_get_reg_value._entry_ptr.387, ptr @test_ni_get_valid_routes._entry, ptr @test_ni_get_valid_routes._entry.282, ptr @test_ni_get_valid_routes._entry.286, ptr @test_ni_get_valid_routes._entry.290, ptr @test_ni_get_valid_routes._entry_ptr, ptr @test_ni_get_valid_routes._entry_ptr.284, ptr @test_ni_get_valid_routes._entry_ptr.288, ptr @test_ni_get_valid_routes._entry_ptr.292, ptr @test_ni_is_cmd_dest._entry, ptr @test_ni_is_cmd_dest._entry.226, ptr @test_ni_is_cmd_dest._entry.230, ptr @test_ni_is_cmd_dest._entry.234, ptr @test_ni_is_cmd_dest._entry.238, ptr @test_ni_is_cmd_dest._entry.242, ptr @test_ni_is_cmd_dest._entry_ptr, ptr @test_ni_is_cmd_dest._entry_ptr.228, ptr @test_ni_is_cmd_dest._entry_ptr.232, ptr @test_ni_is_cmd_dest._entry_ptr.236, ptr @test_ni_is_cmd_dest._entry_ptr.240, ptr @test_ni_is_cmd_dest._entry_ptr.244, ptr @test_ni_lookup_route_register._entry, ptr @test_ni_lookup_route_register._entry.174, ptr @test_ni_lookup_route_register._entry.176, ptr @test_ni_lookup_route_register._entry.178, ptr @test_ni_lookup_route_register._entry.180, ptr @test_ni_lookup_route_register._entry.184, ptr @test_ni_lookup_route_register._entry.188, ptr @test_ni_lookup_route_register._entry.192, ptr @test_ni_lookup_route_register._entry.196, ptr @test_ni_lookup_route_register._entry.200, ptr @test_ni_lookup_route_register._entry.204, ptr @test_ni_lookup_route_register._entry.208, ptr @test_ni_lookup_route_register._entry.212, ptr @test_ni_lookup_route_register._entry_ptr, ptr @test_ni_lookup_route_register._entry_ptr.175, ptr @test_ni_lookup_route_register._entry_ptr.177, ptr @test_ni_lookup_route_register._entry_ptr.179, ptr @test_ni_lookup_route_register._entry_ptr.182, ptr @test_ni_lookup_route_register._entry_ptr.186, ptr @test_ni_lookup_route_register._entry_ptr.190, ptr @test_ni_lookup_route_register._entry_ptr.194, ptr @test_ni_lookup_route_register._entry_ptr.198, ptr @test_ni_lookup_route_register._entry_ptr.202, ptr @test_ni_lookup_route_register._entry_ptr.206, ptr @test_ni_lookup_route_register._entry_ptr.210, ptr @test_ni_lookup_route_register._entry_ptr.214, ptr @test_ni_route_set_has_source._entry, ptr @test_ni_route_set_has_source._entry.104, ptr @test_ni_route_set_has_source._entry.108, ptr @test_ni_route_set_has_source._entry.112, ptr @test_ni_route_set_has_source._entry_ptr, ptr @test_ni_route_set_has_source._entry_ptr.106, ptr @test_ni_route_set_has_source._entry_ptr.110, ptr @test_ni_route_set_has_source._entry_ptr.114, ptr @test_ni_route_to_register._entry, ptr @test_ni_route_to_register._entry.119, ptr @test_ni_route_to_register._entry.123, ptr @test_ni_route_to_register._entry.127, ptr @test_ni_route_to_register._entry.131, ptr @test_ni_route_to_register._entry.135, ptr @test_ni_route_to_register._entry.139, ptr @test_ni_route_to_register._entry.143, ptr @test_ni_route_to_register._entry.147, ptr @test_ni_route_to_register._entry.151, ptr @test_ni_route_to_register._entry.153, ptr @test_ni_route_to_register._entry.157, ptr @test_ni_route_to_register._entry.159, ptr @test_ni_route_to_register._entry.163, ptr @test_ni_route_to_register._entry.165, ptr @test_ni_route_to_register._entry.169, ptr @test_ni_route_to_register._entry_ptr, ptr @test_ni_route_to_register._entry_ptr.121, ptr @test_ni_route_to_register._entry_ptr.125, ptr @test_ni_route_to_register._entry_ptr.129, ptr @test_ni_route_to_register._entry_ptr.133, ptr @test_ni_route_to_register._entry_ptr.137, ptr @test_ni_route_to_register._entry_ptr.141, ptr @test_ni_route_to_register._entry_ptr.145, ptr @test_ni_route_to_register._entry_ptr.149, ptr @test_ni_route_to_register._entry_ptr.152, ptr @test_ni_route_to_register._entry_ptr.155, ptr @test_ni_route_to_register._entry_ptr.158, ptr @test_ni_route_to_register._entry_ptr.161, ptr @test_ni_route_to_register._entry_ptr.164, ptr @test_ni_route_to_register._entry_ptr.167, ptr @test_ni_route_to_register._entry_ptr.170, ptr @test_ni_sort_device_routes._entry, ptr @test_ni_sort_device_routes._entry.66, ptr @test_ni_sort_device_routes._entry_ptr, ptr @test_ni_sort_device_routes._entry_ptr.68, ptr @test_route_is_valid._entry, ptr @test_route_is_valid._entry.217, ptr @test_route_is_valid._entry.219, ptr @test_route_is_valid._entry.221, ptr @test_route_is_valid._entry_ptr, ptr @test_route_is_valid._entry_ptr.218, ptr @test_route_is_valid._entry_ptr.220, ptr @test_route_is_valid._entry_ptr.222, ptr @test_route_register_is_valid._entry, ptr @test_route_register_is_valid._entry.312, ptr @test_route_register_is_valid._entry.314, ptr @test_route_register_is_valid._entry.316, ptr @test_route_register_is_valid._entry_ptr, ptr @test_route_register_is_valid._entry_ptr.313, ptr @test_route_register_is_valid._entry_ptr.315, ptr @test_route_register_is_valid._entry_ptr.317, ptr @.str, ptr @unittest_results.0, ptr @unittest_results.1, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @private, ptr @.str.61, ptr @.str.62, ptr @DR, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.compoundliteral, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.154, ptr @.str.156, ptr @.str.160, ptr @.str.162, ptr @.str.166, ptr @.str.168, ptr @RV, ptr @.str.173, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.250, ptr @.str.252, ptr @.str.254, ptr @.str.256, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.265, ptr @.str.267, ptr @.str.269, ptr @.str.271, ptr @.str.273, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @.str.285, ptr @.str.287, ptr @.str.289, ptr @.str.291, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.300, ptr @.str.302, ptr @.str.304, ptr @.str.306, ptr @.str.308, ptr @.str.310, ptr @.str.311, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.322, ptr @.str.324, ptr @.str.326, ptr @.str.328, ptr @.str.330, ptr @.str.332, ptr @.str.334, ptr @.str.336, ptr @.str.338, ptr @.str.340, ptr @.str.342, ptr @.str.344, ptr @.str.346, ptr @.str.348, ptr @.str.350, ptr @.str.352, ptr @.str.354, ptr @.str.356, ptr @.str.358, ptr @.str.360, ptr @.str.362, ptr @.str.364, ptr @.str.365, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.392], section "llvm.metadata"
@0 = internal global [319 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unittest_results.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unittest_results.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_assign_device_routes._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @private to i32), i32 19960, i32 24928, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DR to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_sort_device_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_sort_device_routes._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_set._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_set._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_set._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_set._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_set_has_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_set_has_source._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_set_has_source._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_set_has_source._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_route_to_register._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RV to i32), i32 44100, i32 55136, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_lookup_route_register._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_is_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_is_valid._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_is_valid._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_is_valid._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_is_cmd_dest._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_pfi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_pfi._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_pfi._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_pfi._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_rtsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_rtsi._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_rtsi._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_channel_is_rtsi._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_count_valid_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_valid_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_valid_routes._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_valid_routes._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_valid_routes._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_source._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_source._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_source._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_find_route_source._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_register_is_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_register_is_valid._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_register_is_valid._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_route_register_is_valid._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_check_trigger_arg._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ni_get_reg_value._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_unittests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_unittests._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ni_routes_unittest_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_routes_unittest() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @exec_unittests()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_assign_device_routes() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  %call = tail call i32 @ni_assign_device_routes(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  %1 = load ptr, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %2 = load ptr, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %4, ptr noundef nonnull dereferenceable(10) @.str.59, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 225) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 225) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %n_route_sets = getelementptr inbounds %struct.ni_device_routes, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %n_route_sets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_route_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %8)
  %cmp22.not = icmp eq i32 %8, 37
  br i1 %cmp22.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %9, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 227) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %10, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 227) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %routes = getelementptr inbounds %struct.ni_device_routes, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %routes, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %14)
  %cmp60.not = icmp eq i32 %14, 32768
  br i1 %cmp60.not, label %if.else72, label %if.then65

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.1, align 4
  %inc66 = add i32 %15, 1
  store i32 %inc66, ptr @unittest_results.1, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 229) #11
  br label %if.end92

if.else72:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @unittest_results.0, align 4
  %inc73 = add i32 %16, 1
  store i32 %inc73, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end92)) #8
          to label %if.then88 [label %if.end92], !srcloc !686

if.then88:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 229) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.else72, %if.then65
  %17 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %routes, align 4
  %n_src = getelementptr inbounds %struct.ni_route_set, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %n_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp99.not = icmp eq i32 %20, 1
  br i1 %cmp99.not, label %if.else111, label %if.then104

if.then104:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @unittest_results.1, align 4
  %inc105 = add i32 %21, 1
  store i32 %inc105, ptr @unittest_results.1, align 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 231) #11
  br label %if.end131

if.else111:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @unittest_results.0, align 4
  %inc112 = add i32 %22, 1
  store i32 %inc112, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end131)) #8
          to label %if.then127 [label %if.end131], !srcloc !686

if.then127:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 231) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.else111, %if.then104
  %23 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %routes, align 4
  %src = getelementptr inbounds %struct.ni_route_set, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32929, i32 %28)
  %cmp138.not = icmp eq i32 %28, 32929
  br i1 %cmp138.not, label %if.else150, label %if.then143

if.then143:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load i32, ptr @unittest_results.1, align 4
  %inc144 = add i32 %29, 1
  store i32 %inc144, ptr @unittest_results.1, align 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 233) #11
  br label %if.end170

if.else150:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %30 = load i32, ptr @unittest_results.0, align 4
  %inc151 = add i32 %30, 1
  store i32 %inc151, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end170)) #8
          to label %if.then166 [label %if.end170], !srcloc !686

if.then166:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 233) #8
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.else150, %if.then143
  %31 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %routes, align 4
  %arrayidx177 = getelementptr %struct.ni_route_set, ptr %32, i32 10
  %33 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32832, i32 %34)
  %cmp179.not = icmp eq i32 %34, 32832
  br i1 %cmp179.not, label %if.else191, label %if.then184

if.then184:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %35 = load i32, ptr @unittest_results.1, align 4
  %inc185 = add i32 %35, 1
  store i32 %inc185, ptr @unittest_results.1, align 4
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 235) #11
  br label %if.end211

if.else191:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %36 = load i32, ptr @unittest_results.0, align 4
  %inc192 = add i32 %36, 1
  store i32 %inc192, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end211)) #8
          to label %if.then207 [label %if.end211], !srcloc !686

if.then207:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 235) #8
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %if.else191, %if.then184
  %37 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %routes, align 4
  %n_src219 = getelementptr %struct.ni_route_set, ptr %38, i32 10, i32 1
  %39 = ptrtoint ptr %n_src219 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_src219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp220.not = icmp eq i32 %40, 10
  br i1 %cmp220.not, label %if.else232, label %if.then225

if.then225:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %41 = load i32, ptr @unittest_results.1, align 4
  %inc226 = add i32 %41, 1
  store i32 %inc226, ptr @unittest_results.1, align 4
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 237) #11
  br label %if.end252

if.else232:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %42 = load i32, ptr @unittest_results.0, align 4
  %inc233 = add i32 %42, 1
  store i32 %inc233, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end252)) #8
          to label %if.then248 [label %if.end252], !srcloc !686

if.then248:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 237) #8
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %if.else232, %if.then225
  %43 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %routes, align 4
  %src260 = getelementptr %struct.ni_route_set, ptr %44, i32 10, i32 2
  %45 = ptrtoint ptr %src260 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %src260, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32844, i32 %48)
  %cmp262.not = icmp eq i32 %48, 32844
  br i1 %cmp262.not, label %if.else274, label %if.then267

if.then267:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %49 = load i32, ptr @unittest_results.1, align 4
  %inc268 = add i32 %49, 1
  store i32 %inc268, ptr @unittest_results.1, align 4
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 239) #11
  br label %if.end294

if.else274:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %50 = load i32, ptr @unittest_results.0, align 4
  %inc275 = add i32 %50, 1
  store i32 %inc275, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end294)) #8
          to label %if.then290 [label %if.end294], !srcloc !686

if.then290:                                       ; preds = %if.else274
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 239) #8
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %if.else274, %if.then267
  %51 = ptrtoint ptr %n_route_sets to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_route_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp11.i = icmp sgt i32 %52, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.end294.if.else312_crit_edge

if.end294.if.else312_crit_edge:                   ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else312

for.body.lr.ph.i:                                 ; preds = %if.end294
  %53 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %routes, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %56)
  %cmp1.not.i665 = icmp sgt i32 %56, 32767
  br i1 %cmp1.not.i665, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.if.then305_crit_edge

for.body.lr.ph.i.if.then305_crit_edge:            ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %57 = phi i32 [ %59, %for.body.i.for.cond.i_crit_edge ], [ %56, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %i.012.i666 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.012.i666, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %52)
  %exitcond.not.i = icmp eq i32 %inc.i, %52
  br i1 %exitcond.not.i, label %for.cond.i.route_set_dests_in_order.exit_crit_edge, label %for.body.i

for.cond.i.route_set_dests_in_order.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_dests_in_order.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.ni_route_set, ptr %54, i32 %inc.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %cmp1.not.i = icmp slt i32 %57, %59
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.route_set_dests_in_order.exit_crit_edge

for.body.i.route_set_dests_in_order.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_dests_in_order.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

route_set_dests_in_order.exit:                    ; preds = %for.body.i.route_set_dests_in_order.exit_crit_edge, %for.cond.i.route_set_dests_in_order.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %52)
  %cmp.i.le = icmp slt i32 %inc.i, %52
  br i1 %cmp.i.le, label %route_set_dests_in_order.exit.if.then305_crit_edge, label %route_set_dests_in_order.exit.if.else312_crit_edge

route_set_dests_in_order.exit.if.else312_crit_edge: ; preds = %route_set_dests_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else312

route_set_dests_in_order.exit.if.then305_crit_edge: ; preds = %route_set_dests_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

if.then305:                                       ; preds = %route_set_dests_in_order.exit.if.then305_crit_edge, %for.body.lr.ph.i.if.then305_crit_edge
  %60 = load i32, ptr @unittest_results.1, align 4
  %inc306 = add i32 %60, 1
  store i32 %inc306, ptr @unittest_results.1, align 4
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 241) #11
  br label %if.end332

if.else312:                                       ; preds = %route_set_dests_in_order.exit.if.else312_crit_edge, %if.end294.if.else312_crit_edge
  %61 = load i32, ptr @unittest_results.0, align 4
  %inc313 = add i32 %61, 1
  store i32 %inc313, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end332)) #8
          to label %if.then328 [label %if.end332], !srcloc !686

if.then328:                                       ; preds = %if.else312
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 241) #8
  br label %if.end332

if.end332:                                        ; preds = %if.then328, %if.else312, %if.then305
  %62 = ptrtoint ptr %n_route_sets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_route_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp33.i = icmp sgt i32 %63, 0
  br i1 %cmp33.i, label %for.cond1.preheader.lr.ph.i, label %if.end332.if.else350_crit_edge

if.end332.if.else350_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else350

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end332
  %64 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %routes, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %cmp36.i = phi i1 [ true, %for.cond1.preheader.lr.ph.i ], [ %cmp.i646, %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc14.i, %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge ]
  %n_src.i = getelementptr %struct.ni_route_set, ptr %65, i32 %i.034.i, i32 1
  %66 = ptrtoint ptr %n_src.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp230.i = icmp sgt i32 %67, 0
  br i1 %cmp230.i, label %for.body3.lr.ph.i, label %for.cond1.preheader.i.for.inc13.critedge.i_crit_edge

for.cond1.preheader.i.for.inc13.critedge.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.critedge.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %src.i = getelementptr %struct.ni_route_set, ptr %65, i32 %i.034.i, i32 2
  %68 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %src.i, align 4
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc.i644 = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i645 = icmp eq i32 %inc.i644, %67
  br i1 %exitcond.not.i645, label %for.cond1.i.for.inc13.critedge.i_crit_edge, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.cond1.i.for.inc13.critedge.i_crit_edge:       ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.critedge.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %last.032.i = phi i32 [ 32767, %for.body3.lr.ph.i ], [ %71, %for.cond1.i.for.body3.i_crit_edge ]
  %j.031.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i644, %for.cond1.i.for.body3.i_crit_edge ]
  %arrayidx6.i = getelementptr i32, ptr %69, i32 %j.031.i
  %70 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %last.032.i, i32 %71)
  %cmp7.not.i = icmp slt i32 %last.032.i, %71
  br i1 %cmp7.not.i, label %for.cond1.i, label %for.body3.i.route_set_sources_in_order.exit_crit_edge

for.body3.i.route_set_sources_in_order.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_sources_in_order.exit

for.inc13.critedge.i:                             ; preds = %for.cond1.i.for.inc13.critedge.i_crit_edge, %for.cond1.preheader.i.for.inc13.critedge.i_crit_edge
  %inc14.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14.i, i32 %63)
  %cmp.i646 = icmp slt i32 %inc14.i, %63
  %exitcond39.not.i = icmp eq i32 %inc14.i, %63
  br i1 %exitcond39.not.i, label %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge, label %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge

for.inc13.critedge.i.for.cond1.preheader.i_crit_edge: ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge: ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_sources_in_order.exit

route_set_sources_in_order.exit:                  ; preds = %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge, %for.body3.i.route_set_sources_in_order.exit_crit_edge
  %cmp29.i = phi i1 [ %cmp36.i, %for.body3.i.route_set_sources_in_order.exit_crit_edge ], [ %cmp.i646, %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge ]
  br i1 %cmp29.i, label %if.then343, label %route_set_sources_in_order.exit.if.else350_crit_edge

route_set_sources_in_order.exit.if.else350_crit_edge: ; preds = %route_set_sources_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else350

if.then343:                                       ; preds = %route_set_sources_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  %72 = load i32, ptr @unittest_results.1, align 4
  %inc344 = add i32 %72, 1
  store i32 %inc344, ptr @unittest_results.1, align 4
  %call349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 243) #11
  br label %if.end370

if.else350:                                       ; preds = %route_set_sources_in_order.exit.if.else350_crit_edge, %if.end332.if.else350_crit_edge
  %73 = load i32, ptr @unittest_results.0, align 4
  %inc351 = add i32 %73, 1
  store i32 %inc351, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end370)) #8
          to label %if.then366 [label %if.end370], !srcloc !686

if.then366:                                       ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 243) #8
  br label %if.end370

if.end370:                                        ; preds = %if.then366, %if.else350, %if.then343
  %arrayidx376 = getelementptr i8, ptr %2, i32 33546
  %74 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx376, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %75)
  %cmp377 = icmp eq i8 %75, -111
  br i1 %cmp377, label %land.lhs.true, label %if.end370.if.then396_crit_edge

if.end370.if.then396_crit_edge:                   ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then396

land.lhs.true:                                    ; preds = %if.end370
  %arrayidx379 = getelementptr i8, ptr %2, i32 13637
  %76 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx379, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp381 = icmp eq i8 %77, 0
  br i1 %cmp381, label %land.lhs.true383, label %land.lhs.true.if.then396_crit_edge

land.lhs.true.if.then396_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then396

land.lhs.true383:                                 ; preds = %land.lhs.true
  %arrayidx384 = getelementptr i8, ptr %2, i32 163
  %78 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx384, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp386 = icmp eq i8 %79, 0
  br i1 %cmp386, label %land.rhs, label %land.lhs.true383.if.then396_crit_edge

land.lhs.true383.if.then396_crit_edge:            ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then396

land.rhs:                                         ; preds = %land.lhs.true383
  %arrayidx388 = getelementptr i8, ptr %2, i32 583
  %80 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx388, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %81)
  %cmp390.not = icmp eq i8 %81, -125
  br i1 %cmp390.not, label %if.else403, label %land.rhs.if.then396_crit_edge

land.rhs.if.then396_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then396

if.then396:                                       ; preds = %land.rhs.if.then396_crit_edge, %land.lhs.true383.if.then396_crit_edge, %land.lhs.true.if.then396_crit_edge, %if.end370.if.then396_crit_edge
  %82 = load i32, ptr @unittest_results.1, align 4
  %inc397 = add i32 %82, 1
  store i32 %inc397, ptr @unittest_results.1, align 4
  %call402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 249) #11
  br label %if.end423

if.else403:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %83 = load i32, ptr @unittest_results.0, align 4
  %inc404 = add i32 %83, 1
  store i32 %inc404, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end423)) #8
          to label %if.then419 [label %if.end423], !srcloc !686

if.then419:                                       ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 249) #8
  br label %if.end423

if.end423:                                        ; preds = %if.then419, %if.else403, %if.then396
  %84 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store i16 -32768, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 50), align 4
  %call428 = tail call i32 @ni_assign_device_routes(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  %85 = load ptr, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %86 = load ptr, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %85, align 4
  %call431 = tail call i32 @strncmp(ptr noundef %88, ptr noundef nonnull dereferenceable(9) @.str.62, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431)
  %cmp432.not = icmp eq i32 %call431, 0
  br i1 %cmp432.not, label %if.else445, label %if.then438

if.then438:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #10
  %89 = load i32, ptr @unittest_results.1, align 4
  %inc439 = add i32 %89, 1
  store i32 %inc439, ptr @unittest_results.1, align 4
  %call444 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2, i32 noundef 259) #11
  br label %if.end465

if.else445:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #10
  %90 = load i32, ptr @unittest_results.0, align 4
  %inc446 = add i32 %90, 1
  store i32 %inc446, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end465)) #8
          to label %if.then461 [label %if.end465], !srcloc !686

if.then461:                                       ; preds = %if.else445
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.2, i32 noundef 259) #8
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %if.else445, %if.then438
  %cmp471.not = icmp eq ptr %2, %86
  br i1 %cmp471.not, label %if.then477, label %if.else484

if.then477:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #10
  %91 = load i32, ptr @unittest_results.1, align 4
  %inc478 = add i32 %91, 1
  store i32 %inc478, ptr @unittest_results.1, align 4
  %call483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 260) #11
  br label %if.end504

if.else484:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #10
  %92 = load i32, ptr @unittest_results.0, align 4
  %inc485 = add i32 %92, 1
  store i32 %inc485, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end504)) #8
          to label %if.then500 [label %if.end504], !srcloc !686

if.then500:                                       ; preds = %if.else484
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 260) #8
  br label %if.end504

if.end504:                                        ; preds = %if.then500, %if.else484, %if.then477
  %arrayidx510 = getelementptr i8, ptr %86, i32 33546
  %93 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx510, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %94)
  %cmp512 = icmp eq i8 %94, -108
  br i1 %cmp512, label %land.lhs.true514, label %if.end504.if.then534_crit_edge

if.end504.if.then534_crit_edge:                   ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then534

land.lhs.true514:                                 ; preds = %if.end504
  %arrayidx515 = getelementptr i8, ptr %86, i32 13637
  %95 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx515, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %96)
  %cmp517 = icmp eq i8 %96, -116
  br i1 %cmp517, label %land.lhs.true519, label %land.lhs.true514.if.then534_crit_edge

land.lhs.true514.if.then534_crit_edge:            ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then534

land.lhs.true519:                                 ; preds = %land.lhs.true514
  %arrayidx520 = getelementptr i8, ptr %86, i32 163
  %97 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx520, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %98)
  %cmp522 = icmp eq i8 %98, -125
  br i1 %cmp522, label %land.rhs524, label %land.lhs.true519.if.then534_crit_edge

land.lhs.true519.if.then534_crit_edge:            ; preds = %land.lhs.true519
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then534

land.rhs524:                                      ; preds = %land.lhs.true519
  %arrayidx525 = getelementptr i8, ptr %86, i32 583
  %99 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx525, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %100)
  %cmp527.not = icmp eq i8 %100, -125
  br i1 %cmp527.not, label %if.else541, label %land.rhs524.if.then534_crit_edge

land.rhs524.if.then534_crit_edge:                 ; preds = %land.rhs524
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then534

if.then534:                                       ; preds = %land.rhs524.if.then534_crit_edge, %land.lhs.true519.if.then534_crit_edge, %land.lhs.true514.if.then534_crit_edge, %if.end504.if.then534_crit_edge
  %101 = load i32, ptr @unittest_results.1, align 4
  %inc535 = add i32 %101, 1
  store i32 %inc535, ptr @unittest_results.1, align 4
  %call540 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2, i32 noundef 266) #11
  br label %if.end561

if.else541:                                       ; preds = %land.rhs524
  call void @__sanitizer_cov_trace_pc() #10
  %102 = load i32, ptr @unittest_results.0, align 4
  %inc542 = add i32 %102, 1
  store i32 %inc542, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_assign_device_routes, %if.end561)) #8
          to label %if.then557 [label %if.end561], !srcloc !686

if.then557:                                       ; preds = %if.else541
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_assign_device_routes.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.2, i32 noundef 266) #8
  br label %if.end561

if.end561:                                        ; preds = %if.then557, %if.else541, %if.then534
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_sort_device_routes() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ni_sort_device_routes(ptr noundef nonnull @DR) #8
  %0 = load i32, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp11.i = icmp sgt i32 %0, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %3)
  %cmp1.not.i72 = icmp sgt i32 %3, 32767
  br i1 %cmp1.not.i72, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.if.then_crit_edge

for.body.lr.ph.i.if.then_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %4 = phi i32 [ %6, %for.body.i.for.cond.i_crit_edge ], [ %3, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %i.012.i73 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.012.i73, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %0)
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.cond.i.route_set_dests_in_order.exit_crit_edge, label %for.body.i

for.cond.i.route_set_dests_in_order.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_dests_in_order.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.ni_route_set, ptr %1, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %cmp1.not.i = icmp slt i32 %4, %6
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.route_set_dests_in_order.exit_crit_edge

for.body.i.route_set_dests_in_order.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_dests_in_order.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

route_set_dests_in_order.exit:                    ; preds = %for.body.i.route_set_dests_in_order.exit_crit_edge, %for.cond.i.route_set_dests_in_order.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %0)
  %cmp.i.le = icmp slt i32 %inc.i, %0
  br i1 %cmp.i.le, label %route_set_dests_in_order.exit.if.then_crit_edge, label %route_set_dests_in_order.exit.if.else_crit_edge

route_set_dests_in_order.exit.if.else_crit_edge:  ; preds = %route_set_dests_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

route_set_dests_in_order.exit.if.then_crit_edge:  ; preds = %route_set_dests_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %route_set_dests_in_order.exit.if.then_crit_edge, %for.body.lr.ph.i.if.then_crit_edge
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 275) #11
  br label %if.end15

if.else:                                          ; preds = %route_set_dests_in_order.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %8, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_sort_device_routes.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_sort_device_routes, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_sort_device_routes.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef 275) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %9 = load i32, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33.i = icmp sgt i32 %9, 0
  br i1 %cmp33.i, label %for.cond1.preheader.lr.ph.i, label %if.end15.if.else33_crit_edge

if.end15.if.else33_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end15
  %10 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %cmp36.i = phi i1 [ true, %for.cond1.preheader.lr.ph.i ], [ %cmp.i65, %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc14.i, %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge ]
  %n_src.i = getelementptr %struct.ni_route_set, ptr %10, i32 %i.034.i, i32 1
  %11 = ptrtoint ptr %n_src.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp230.i = icmp sgt i32 %12, 0
  br i1 %cmp230.i, label %for.body3.lr.ph.i, label %for.cond1.preheader.i.for.inc13.critedge.i_crit_edge

for.cond1.preheader.i.for.inc13.critedge.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.critedge.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %src.i = getelementptr %struct.ni_route_set, ptr %10, i32 %i.034.i, i32 2
  %13 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src.i, align 4
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc.i63 = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i63, %12
  br i1 %exitcond.not.i64, label %for.cond1.i.for.inc13.critedge.i_crit_edge, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.cond1.i.for.inc13.critedge.i_crit_edge:       ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.critedge.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %last.032.i = phi i32 [ 32767, %for.body3.lr.ph.i ], [ %16, %for.cond1.i.for.body3.i_crit_edge ]
  %j.031.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i63, %for.cond1.i.for.body3.i_crit_edge ]
  %arrayidx6.i = getelementptr i32, ptr %14, i32 %j.031.i
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %last.032.i, i32 %16)
  %cmp7.not.i = icmp slt i32 %last.032.i, %16
  br i1 %cmp7.not.i, label %for.cond1.i, label %for.body3.i.route_set_sources_in_order.exit_crit_edge

for.body3.i.route_set_sources_in_order.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_sources_in_order.exit

for.inc13.critedge.i:                             ; preds = %for.cond1.i.for.inc13.critedge.i_crit_edge, %for.cond1.preheader.i.for.inc13.critedge.i_crit_edge
  %inc14.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14.i, i32 %9)
  %cmp.i65 = icmp slt i32 %inc14.i, %9
  %exitcond39.not.i = icmp eq i32 %inc14.i, %9
  br i1 %exitcond39.not.i, label %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge, label %for.inc13.critedge.i.for.cond1.preheader.i_crit_edge

for.inc13.critedge.i.for.cond1.preheader.i_crit_edge: ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge: ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %route_set_sources_in_order.exit

route_set_sources_in_order.exit:                  ; preds = %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge, %for.body3.i.route_set_sources_in_order.exit_crit_edge
  %cmp29.i = phi i1 [ %cmp36.i, %for.body3.i.route_set_sources_in_order.exit_crit_edge ], [ %cmp.i65, %for.inc13.critedge.i.route_set_sources_in_order.exit_crit_edge ]
  br i1 %cmp29.i, label %if.then26, label %route_set_sources_in_order.exit.if.else33_crit_edge

route_set_sources_in_order.exit.if.else33_crit_edge: ; preds = %route_set_sources_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

if.then26:                                        ; preds = %route_set_sources_in_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr @unittest_results.1, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.64, i32 noundef 277) #11
  br label %if.end53

if.else33:                                        ; preds = %route_set_sources_in_order.exit.if.else33_crit_edge, %if.end15.if.else33_crit_edge
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc34 = add i32 %18, 1
  store i32 %inc34, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_sort_device_routes.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_sort_device_routes, %if.end53)) #8
          to label %if.then49 [label %if.end53], !srcloc !686

if.then49:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_sort_device_routes.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef 277) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.else33, %if.then26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_find_route_set() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ni_find_route_set(i32 noundef 32776, ptr noundef nonnull @DR) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 283) #11
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.0, align 4
  %inc4 = add i32 %1, 1
  store i32 %inc4, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_set, %if.end17)) #8
          to label %if.then14 [label %if.end17], !srcloc !686

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_set.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 283) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else, %if.then
  %call23 = tail call ptr @ni_find_route_set(i32 noundef 32768, ptr noundef nonnull @DR) #8
  %2 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %cmp.not = icmp eq ptr %call23, %2
  br i1 %cmp.not, label %if.else35, label %if.then28

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc29 = add i32 %3, 1
  store i32 %inc29, ptr @unittest_results.1, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.83, i32 noundef 285) #11
  br label %if.end55

if.else35:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc36 = add i32 %4, 1
  store i32 %inc36, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_set, %if.end55)) #8
          to label %if.then51 [label %if.end55], !srcloc !686

if.then51:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_set.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83, i32 noundef 285) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.else35, %if.then28
  %call61 = tail call ptr @ni_find_route_set(i32 noundef 32773, ptr noundef nonnull @DR) #8
  %5 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %arrayidx62 = getelementptr %struct.ni_route_set, ptr %5, i32 2
  %cmp63.not = icmp eq ptr %call61, %arrayidx62
  br i1 %cmp63.not, label %if.else75, label %if.then68

if.then68:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.1, align 4
  %inc69 = add i32 %6, 1
  store i32 %inc69, ptr @unittest_results.1, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.83, i32 noundef 287) #11
  br label %if.end95

if.else75:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.0, align 4
  %inc76 = add i32 %7, 1
  store i32 %inc76, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_set, %if.end95)) #8
          to label %if.then91 [label %if.end95], !srcloc !686

if.then91:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_set.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.83, i32 noundef 287) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.else75, %if.then68
  %call101 = tail call ptr @ni_find_route_set(i32 noundef 32775, ptr noundef nonnull @DR) #8
  %8 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %arrayidx102 = getelementptr %struct.ni_route_set, ptr %8, i32 4
  %cmp103.not = icmp eq ptr %call101, %arrayidx102
  br i1 %cmp103.not, label %if.else115, label %if.then108

if.then108:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc109 = add i32 %9, 1
  store i32 %inc109, ptr @unittest_results.1, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.83, i32 noundef 290) #11
  br label %if.end135

if.else115:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc116 = add i32 %10, 1
  store i32 %inc116, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_set, %if.end135)) #8
          to label %if.then131 [label %if.end135], !srcloc !686

if.then131:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_set.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.83, i32 noundef 290) #8
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.else115, %if.then108
  %11 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 1), align 4
  %sub = add i32 %12, -1
  %arrayidx141 = getelementptr %struct.ni_route_set, ptr %11, i32 %sub
  %13 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx141, align 4
  %call142 = tail call ptr @ni_find_route_set(i32 noundef %14, ptr noundef nonnull @DR) #8
  %15 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 1), align 4
  %sub143 = add i32 %16, -1
  %arrayidx144 = getelementptr %struct.ni_route_set, ptr %15, i32 %sub143
  %cmp145.not = icmp eq ptr %call142, %arrayidx144
  br i1 %cmp145.not, label %if.else157, label %if.then150

if.then150:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc151 = add i32 %17, 1
  store i32 %inc151, ptr @unittest_results.1, align 4
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.83, i32 noundef 293) #11
  br label %if.end177

if.else157:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc158 = add i32 %18, 1
  store i32 %inc158, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_set, %if.end177)) #8
          to label %if.then173 [label %if.end177], !srcloc !686

if.then173:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_set.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.83, i32 noundef 293) #8
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %if.else157, %if.then150
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_route_set_has_source() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %call = tail call zeroext i1 @ni_route_set_has_source(ptr noundef %0, i32 noundef 32768) #8
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 299) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_set_has_source, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_set_has_source.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i32 noundef 299) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %3 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %call23 = tail call zeroext i1 @ni_route_set_has_source(ptr noundef %3, i32 noundef 32769) #8
  br i1 %call23, label %if.else35, label %if.then28

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.1, align 4
  %inc29 = add i32 %4, 1
  store i32 %inc29, ptr @unittest_results.1, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.102, i32 noundef 301) #11
  br label %if.end55

if.else35:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.0, align 4
  %inc36 = add i32 %5, 1
  store i32 %inc36, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_set_has_source, %if.end55)) #8
          to label %if.then51 [label %if.end55], !srcloc !686

if.then51:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_set_has_source.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, i32 noundef 301) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.else35, %if.then28
  %6 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %call62 = tail call zeroext i1 @ni_route_set_has_source(ptr noundef %6, i32 noundef 32773) #8
  br i1 %call62, label %if.else74, label %if.then67

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc68 = add i32 %7, 1
  store i32 %inc68, ptr @unittest_results.1, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.102, i32 noundef 303) #11
  br label %if.end94

if.else74:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc75 = add i32 %8, 1
  store i32 %inc75, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_set_has_source, %if.end94)) #8
          to label %if.then90 [label %if.end94], !srcloc !686

if.then90:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_set_has_source.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.102, i32 noundef 303) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.else74, %if.then67
  %9 = load ptr, ptr getelementptr inbounds (%struct.ni_device_routes, ptr @DR, i32 0, i32 2), align 4
  %call101 = tail call zeroext i1 @ni_route_set_has_source(ptr noundef %9, i32 noundef 32777) #8
  br i1 %call101, label %if.else113, label %if.then106

if.then106:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.1, align 4
  %inc107 = add i32 %10, 1
  store i32 %inc107, ptr @unittest_results.1, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.102, i32 noundef 305) #11
  br label %if.end133

if.else113:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.0, align 4
  %inc114 = add i32 %11, 1
  store i32 %inc114, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_set_has_source, %if.end133)) #8
          to label %if.then129 [label %if.end133], !srcloc !686

if.then129:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_set_has_source.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.102, i32 noundef 305) #8
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.else113, %if.then106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_route_to_register() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp = icmp sgt i8 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 314) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 314) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %call22 = tail call signext i8 @ni_route_to_register(i32 noundef 32769, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call22)
  %cmp24.not = icmp eq i8 %call22, 1
  br i1 %cmp24.not, label %if.else37, label %if.then30

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc31 = add i32 %3, 1
  store i32 %inc31, ptr @unittest_results.1, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.117, i32 noundef 316) #11
  br label %if.end57

if.else37:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc38 = add i32 %4, 1
  store i32 %inc38, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end57)) #8
          to label %if.then53 [label %if.end57], !srcloc !686

if.then53:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.117, i32 noundef 316) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.else37, %if.then30
  %call63 = tail call signext i8 @ni_route_to_register(i32 noundef 32774, i32 noundef 32773, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call63)
  %cmp65.not = icmp eq i8 %call63, 6
  br i1 %cmp65.not, label %if.else78, label %if.then71

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc72 = add i32 %5, 1
  store i32 %inc72, ptr @unittest_results.1, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.117, i32 noundef 318) #11
  br label %if.end98

if.else78:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc79 = add i32 %6, 1
  store i32 %inc79, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end98)) #8
          to label %if.then94 [label %if.end98], !srcloc !686

if.then94:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.117, i32 noundef 318) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.else78, %if.then71
  %call104 = tail call signext i8 @ni_route_to_register(i32 noundef 32776, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call104)
  %cmp106.not = icmp eq i8 %call104, 8
  br i1 %cmp106.not, label %if.else119, label %if.then112

if.then112:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc113 = add i32 %7, 1
  store i32 %inc113, ptr @unittest_results.1, align 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.117, i32 noundef 320) #11
  br label %if.end139

if.else119:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc120 = add i32 %8, 1
  store i32 %inc120, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end139)) #8
          to label %if.then135 [label %if.end139], !srcloc !686

if.then135:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.117, i32 noundef 320) #8
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.else119, %if.then112
  %call145 = tail call signext i8 @ni_route_to_register(i32 noundef 32868, i32 noundef 32832, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call145)
  %cmp147.not = icmp eq i8 %call145, 0
  br i1 %cmp147.not, label %if.else160, label %if.then153

if.then153:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc154 = add i32 %9, 1
  store i32 %inc154, ptr @unittest_results.1, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.117, i32 noundef 324) #11
  br label %if.end180

if.else160:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc161 = add i32 %10, 1
  store i32 %inc161, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end180)) #8
          to label %if.then176 [label %if.end180], !srcloc !686

if.then176:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.117, i32 noundef 324) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.else160, %if.then153
  %call186 = tail call signext i8 @ni_route_to_register(i32 noundef 32868, i32 noundef 32833, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call186)
  %cmp188.not = icmp eq i8 %call186, 0
  br i1 %cmp188.not, label %if.else201, label %if.then194

if.then194:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.1, align 4
  %inc195 = add i32 %11, 1
  store i32 %inc195, ptr @unittest_results.1, align 4
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.117, i32 noundef 326) #11
  br label %if.end221

if.else201:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @unittest_results.0, align 4
  %inc202 = add i32 %12, 1
  store i32 %inc202, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end221)) #8
          to label %if.then217 [label %if.end221], !srcloc !686

if.then217:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.117, i32 noundef 326) #8
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.else201, %if.then194
  %call227 = tail call signext i8 @ni_route_to_register(i32 noundef 32869, i32 noundef 32834, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call227)
  %cmp229.not = icmp eq i8 %call227, 1
  br i1 %cmp229.not, label %if.else242, label %if.then235

if.then235:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @unittest_results.1, align 4
  %inc236 = add i32 %13, 1
  store i32 %inc236, ptr @unittest_results.1, align 4
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.117, i32 noundef 328) #11
  br label %if.end262

if.else242:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @unittest_results.0, align 4
  %inc243 = add i32 %14, 1
  store i32 %inc243, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end262)) #8
          to label %if.then258 [label %if.end262], !srcloc !686

if.then258:                                       ; preds = %if.else242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.117, i32 noundef 328) #8
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.else242, %if.then235
  %call268 = tail call signext i8 @ni_route_to_register(i32 noundef 32869, i32 noundef 32835, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call268)
  %cmp270.not = icmp eq i8 %call268, 1
  br i1 %cmp270.not, label %if.else283, label %if.then276

if.then276:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.1, align 4
  %inc277 = add i32 %15, 1
  store i32 %inc277, ptr @unittest_results.1, align 4
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.117, i32 noundef 330) #11
  br label %if.end303

if.else283:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @unittest_results.0, align 4
  %inc284 = add i32 %16, 1
  store i32 %inc284, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end303)) #8
          to label %if.then299 [label %if.end303], !srcloc !686

if.then299:                                       ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.117, i32 noundef 330) #8
  br label %if.end303

if.end303:                                        ; preds = %if.then299, %if.else283, %if.then276
  %call309 = tail call signext i8 @ni_route_to_register(i32 noundef 32878, i32 noundef 32836, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call309)
  %cmp311.not = icmp eq i8 %call309, 64
  br i1 %cmp311.not, label %if.else324, label %if.then317

if.then317:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc318 = add i32 %17, 1
  store i32 %inc318, ptr @unittest_results.1, align 4
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.117, i32 noundef 334) #11
  br label %if.end344

if.else324:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc325 = add i32 %18, 1
  store i32 %inc325, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end344)) #8
          to label %if.then340 [label %if.end344], !srcloc !686

if.then340:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.117, i32 noundef 334) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then340, %if.else324, %if.then317
  %call350 = tail call signext i8 @ni_route_to_register(i32 noundef 32879, i32 noundef 32836, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call350)
  %cmp352.not = icmp eq i8 %call350, 64
  br i1 %cmp352.not, label %if.else365, label %if.then358

if.then358:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @unittest_results.1, align 4
  %inc359 = add i32 %19, 1
  store i32 %inc359, ptr @unittest_results.1, align 4
  %call364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.117, i32 noundef 337) #11
  br label %if.end385

if.else365:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i32, ptr @unittest_results.0, align 4
  %inc366 = add i32 %20, 1
  store i32 %inc366, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end385)) #8
          to label %if.then381 [label %if.end385], !srcloc !686

if.then381:                                       ; preds = %if.else365
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.117, i32 noundef 337) #8
  br label %if.end385

if.end385:                                        ; preds = %if.then381, %if.else365, %if.then358
  %call391 = tail call signext i8 @ni_route_to_register(i32 noundef 32888, i32 noundef 32835, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call391)
  %cmp393.not = icmp eq i8 %call391, 64
  br i1 %cmp393.not, label %if.else406, label %if.then399

if.then399:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @unittest_results.1, align 4
  %inc400 = add i32 %21, 1
  store i32 %inc400, ptr @unittest_results.1, align 4
  %call405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.117, i32 noundef 340) #11
  br label %if.end426

if.else406:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @unittest_results.0, align 4
  %inc407 = add i32 %22, 1
  store i32 %inc407, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end426)) #8
          to label %if.then422 [label %if.end426], !srcloc !686

if.then422:                                       ; preds = %if.else406
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.117, i32 noundef 340) #8
  br label %if.end426

if.end426:                                        ; preds = %if.then422, %if.else406, %if.then399
  %call432 = tail call signext i8 @ni_route_to_register(i32 noundef 32889, i32 noundef 32835, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call432)
  %cmp434.not = icmp eq i8 %call432, 64
  br i1 %cmp434.not, label %if.else447, label %if.then440

if.then440:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @unittest_results.1, align 4
  %inc441 = add i32 %23, 1
  store i32 %inc441, ptr @unittest_results.1, align 4
  %call446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.117, i32 noundef 343) #11
  br label %if.end467

if.else447:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @unittest_results.0, align 4
  %inc448 = add i32 %24, 1
  store i32 %inc448, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end467)) #8
          to label %if.then463 [label %if.end467], !srcloc !686

if.then463:                                       ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.117, i32 noundef 343) #8
  br label %if.end467

if.end467:                                        ; preds = %if.then463, %if.else447, %if.then440
  %call473 = tail call signext i8 @ni_route_to_register(i32 noundef 32898, i32 noundef 32834, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call473)
  %cmp475.not = icmp eq i8 %call473, 64
  br i1 %cmp475.not, label %if.else488, label %if.then481

if.then481:                                       ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load i32, ptr @unittest_results.1, align 4
  %inc482 = add i32 %25, 1
  store i32 %inc482, ptr @unittest_results.1, align 4
  %call487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.117, i32 noundef 346) #11
  br label %if.end508

if.else488:                                       ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  %26 = load i32, ptr @unittest_results.0, align 4
  %inc489 = add i32 %26, 1
  store i32 %inc489, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end508)) #8
          to label %if.then504 [label %if.end508], !srcloc !686

if.then504:                                       ; preds = %if.else488
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.117, i32 noundef 346) #8
  br label %if.end508

if.end508:                                        ; preds = %if.then504, %if.else488, %if.then481
  %call514 = tail call signext i8 @ni_route_to_register(i32 noundef 32899, i32 noundef 32834, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call514)
  %cmp516.not = icmp eq i8 %call514, 64
  br i1 %cmp516.not, label %if.else529, label %if.then522

if.then522:                                       ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #10
  %27 = load i32, ptr @unittest_results.1, align 4
  %inc523 = add i32 %27, 1
  store i32 %inc523, ptr @unittest_results.1, align 4
  %call528 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.117, i32 noundef 349) #11
  br label %if.end549

if.else529:                                       ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load i32, ptr @unittest_results.0, align 4
  %inc530 = add i32 %28, 1
  store i32 %inc530, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end549)) #8
          to label %if.then545 [label %if.end549], !srcloc !686

if.then545:                                       ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.117, i32 noundef 349) #8
  br label %if.end549

if.end549:                                        ; preds = %if.then545, %if.else529, %if.then522
  %call555 = tail call signext i8 @ni_route_to_register(i32 noundef 32908, i32 noundef 32833, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call555)
  %cmp557.not = icmp eq i8 %call555, 64
  br i1 %cmp557.not, label %if.else570, label %if.then563

if.then563:                                       ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load i32, ptr @unittest_results.1, align 4
  %inc564 = add i32 %29, 1
  store i32 %inc564, ptr @unittest_results.1, align 4
  %call569 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.117, i32 noundef 352) #11
  br label %if.end590

if.else570:                                       ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #10
  %30 = load i32, ptr @unittest_results.0, align 4
  %inc571 = add i32 %30, 1
  store i32 %inc571, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end590)) #8
          to label %if.then586 [label %if.end590], !srcloc !686

if.then586:                                       ; preds = %if.else570
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.117, i32 noundef 352) #8
  br label %if.end590

if.end590:                                        ; preds = %if.then586, %if.else570, %if.then563
  %call596 = tail call signext i8 @ni_route_to_register(i32 noundef 32909, i32 noundef 32833, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call596)
  %cmp598.not = icmp eq i8 %call596, 64
  br i1 %cmp598.not, label %if.else611, label %if.then604

if.then604:                                       ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #10
  %31 = load i32, ptr @unittest_results.1, align 4
  %inc605 = add i32 %31, 1
  store i32 %inc605, ptr @unittest_results.1, align 4
  %call610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.117, i32 noundef 355) #11
  br label %if.end631

if.else611:                                       ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #10
  %32 = load i32, ptr @unittest_results.0, align 4
  %inc612 = add i32 %32, 1
  store i32 %inc612, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_route_to_register, %if.end631)) #8
          to label %if.then627 [label %if.end631], !srcloc !686

if.then627:                                       ; preds = %if.else611
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_route_to_register.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.117, i32 noundef 355) #8
  br label %if.end631

if.end631:                                        ; preds = %if.then627, %if.else611, %if.then604
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_lookup_route_register() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call = tail call signext i8 @ni_lookup_route_register(i32 noundef 32768, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call)
  %cmp.not = icmp eq i8 %call, -22
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.173, i32 noundef 364) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.173, i32 noundef 364) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %call22 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32769, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call22)
  %cmp24.not = icmp eq i8 %call22, 1
  br i1 %cmp24.not, label %if.else37, label %if.then30

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc31 = add i32 %3, 1
  store i32 %inc31, ptr @unittest_results.1, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.173, i32 noundef 366) #11
  br label %if.end57

if.else37:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc38 = add i32 %4, 1
  store i32 %inc38, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end57)) #8
          to label %if.then53 [label %if.end57], !srcloc !686

if.then53:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.173, i32 noundef 366) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.else37, %if.then30
  %call63 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32774, i32 noundef 32773, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call63)
  %cmp65.not = icmp eq i8 %call63, 6
  br i1 %cmp65.not, label %if.else78, label %if.then71

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc72 = add i32 %5, 1
  store i32 %inc72, ptr @unittest_results.1, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.173, i32 noundef 368) #11
  br label %if.end98

if.else78:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc79 = add i32 %6, 1
  store i32 %inc79, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end98)) #8
          to label %if.then94 [label %if.end98], !srcloc !686

if.then94:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.173, i32 noundef 368) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.else78, %if.then71
  %call104 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32776, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call104)
  %cmp106.not = icmp eq i8 %call104, 8
  br i1 %cmp106.not, label %if.else119, label %if.then112

if.then112:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc113 = add i32 %7, 1
  store i32 %inc113, ptr @unittest_results.1, align 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.173, i32 noundef 370) #11
  br label %if.end139

if.else119:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc120 = add i32 %8, 1
  store i32 %inc120, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end139)) #8
          to label %if.then135 [label %if.end139], !srcloc !686

if.then135:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.173, i32 noundef 370) #8
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.else119, %if.then112
  %call145 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32778, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call145)
  %cmp147.not = icmp eq i8 %call145, -22
  br i1 %cmp147.not, label %if.else160, label %if.then153

if.then153:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc154 = add i32 %9, 1
  store i32 %inc154, ptr @unittest_results.1, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.173, i32 noundef 372) #11
  br label %if.end180

if.else160:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc161 = add i32 %10, 1
  store i32 %inc161, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end180)) #8
          to label %if.then176 [label %if.end180], !srcloc !686

if.then176:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.173, i32 noundef 372) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.else160, %if.then153
  %call186 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32868, i32 noundef 32832, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call186)
  %cmp188.not = icmp eq i8 %call186, -22
  br i1 %cmp188.not, label %if.else201, label %if.then194

if.then194:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.1, align 4
  %inc195 = add i32 %11, 1
  store i32 %inc195, ptr @unittest_results.1, align 4
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.173, i32 noundef 376) #11
  br label %if.end221

if.else201:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @unittest_results.0, align 4
  %inc202 = add i32 %12, 1
  store i32 %inc202, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end221)) #8
          to label %if.then217 [label %if.end221], !srcloc !686

if.then217:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.173, i32 noundef 376) #8
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.else201, %if.then194
  %call227 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32868, i32 noundef 32977, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call227)
  %cmp229.not = icmp eq i8 %call227, 0
  br i1 %cmp229.not, label %if.else242, label %if.then235

if.then235:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @unittest_results.1, align 4
  %inc236 = add i32 %13, 1
  store i32 %inc236, ptr @unittest_results.1, align 4
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.173, i32 noundef 378) #11
  br label %if.end262

if.else242:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @unittest_results.0, align 4
  %inc243 = add i32 %14, 1
  store i32 %inc243, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end262)) #8
          to label %if.then258 [label %if.end262], !srcloc !686

if.then258:                                       ; preds = %if.else242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.173, i32 noundef 378) #8
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.else242, %if.then235
  %call268 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32869, i32 noundef 32834, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call268)
  %cmp270.not = icmp eq i8 %call268, -22
  br i1 %cmp270.not, label %if.else283, label %if.then276

if.then276:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.1, align 4
  %inc277 = add i32 %15, 1
  store i32 %inc277, ptr @unittest_results.1, align 4
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.173, i32 noundef 381) #11
  br label %if.end303

if.else283:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @unittest_results.0, align 4
  %inc284 = add i32 %16, 1
  store i32 %inc284, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end303)) #8
          to label %if.then299 [label %if.end303], !srcloc !686

if.then299:                                       ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.173, i32 noundef 381) #8
  br label %if.end303

if.end303:                                        ; preds = %if.then299, %if.else283, %if.then276
  %call309 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32869, i32 noundef 32977, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call309)
  %cmp311.not = icmp eq i8 %call309, 1
  br i1 %cmp311.not, label %if.else324, label %if.then317

if.then317:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc318 = add i32 %17, 1
  store i32 %inc318, ptr @unittest_results.1, align 4
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.173, i32 noundef 383) #11
  br label %if.end344

if.else324:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc325 = add i32 %18, 1
  store i32 %inc325, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end344)) #8
          to label %if.then340 [label %if.end344], !srcloc !686

if.then340:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.173, i32 noundef 383) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then340, %if.else324, %if.then317
  %call350 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32878, i32 noundef 32836, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call350)
  %cmp352.not = icmp eq i8 %call350, -22
  br i1 %cmp352.not, label %if.else365, label %if.then358

if.then358:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @unittest_results.1, align 4
  %inc359 = add i32 %19, 1
  store i32 %inc359, ptr @unittest_results.1, align 4
  %call364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.173, i32 noundef 387) #11
  br label %if.end385

if.else365:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i32, ptr @unittest_results.0, align 4
  %inc366 = add i32 %20, 1
  store i32 %inc366, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end385)) #8
          to label %if.then381 [label %if.end385], !srcloc !686

if.then381:                                       ; preds = %if.else365
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.173, i32 noundef 387) #8
  br label %if.end385

if.end385:                                        ; preds = %if.then381, %if.else365, %if.then358
  %call391 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32878, i32 noundef 32840, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call391)
  %cmp393.not = icmp eq i8 %call391, 0
  br i1 %cmp393.not, label %if.else406, label %if.then399

if.then399:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @unittest_results.1, align 4
  %inc400 = add i32 %21, 1
  store i32 %inc400, ptr @unittest_results.1, align 4
  %call405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.173, i32 noundef 389) #11
  br label %if.end426

if.else406:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @unittest_results.0, align 4
  %inc407 = add i32 %22, 1
  store i32 %inc407, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end426)) #8
          to label %if.then422 [label %if.end426], !srcloc !686

if.then422:                                       ; preds = %if.else406
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.173, i32 noundef 389) #8
  br label %if.end426

if.end426:                                        ; preds = %if.then422, %if.else406, %if.then399
  %call432 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32879, i32 noundef 32836, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call432)
  %cmp434.not = icmp eq i8 %call432, -22
  br i1 %cmp434.not, label %if.else447, label %if.then440

if.then440:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @unittest_results.1, align 4
  %inc441 = add i32 %23, 1
  store i32 %inc441, ptr @unittest_results.1, align 4
  %call446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.173, i32 noundef 392) #11
  br label %if.end467

if.else447:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @unittest_results.0, align 4
  %inc448 = add i32 %24, 1
  store i32 %inc448, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end467)) #8
          to label %if.then463 [label %if.end467], !srcloc !686

if.then463:                                       ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.173, i32 noundef 392) #8
  br label %if.end467

if.end467:                                        ; preds = %if.then463, %if.else447, %if.then440
  %call473 = tail call signext i8 @ni_lookup_route_register(i32 noundef 32879, i32 noundef 32840, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call473)
  %cmp475.not = icmp eq i8 %call473, 1
  br i1 %cmp475.not, label %if.else488, label %if.then481

if.then481:                                       ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load i32, ptr @unittest_results.1, align 4
  %inc482 = add i32 %25, 1
  store i32 %inc482, ptr @unittest_results.1, align 4
  %call487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.173, i32 noundef 394) #11
  br label %if.end508

if.else488:                                       ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  %26 = load i32, ptr @unittest_results.0, align 4
  %inc489 = add i32 %26, 1
  store i32 %inc489, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_lookup_route_register, %if.end508)) #8
          to label %if.then504 [label %if.end508], !srcloc !686

if.then504:                                       ; preds = %if.else488
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_lookup_route_register.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.173, i32 noundef 394) #8
  br label %if.end508

if.end508:                                        ; preds = %if.then504, %if.else488, %if.then481
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_route_is_valid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call.i = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp.i = icmp sgt i8 %call.i, -1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.216, i32 noundef 403) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_is_valid.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_is_valid, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_is_valid.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.216, i32 noundef 403) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %call.i151 = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i151)
  %cmp.i152 = icmp sgt i8 %call.i151, -1
  br i1 %cmp.i152, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %3, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.216, i32 noundef 405) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %4, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_is_valid.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_is_valid, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_is_valid.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.216, i32 noundef 405) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %call.i153 = tail call signext i8 @ni_route_to_register(i32 noundef 32773, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i153)
  %cmp.i154 = icmp sgt i8 %call.i153, -1
  br i1 %cmp.i154, label %if.else72, label %if.then65

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc66 = add i32 %5, 1
  store i32 %inc66, ptr @unittest_results.1, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.216, i32 noundef 407) #11
  br label %if.end92

if.else72:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc73 = add i32 %6, 1
  store i32 %inc73, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_is_valid.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_is_valid, %if.end92)) #8
          to label %if.then88 [label %if.end92], !srcloc !686

if.then88:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_is_valid.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.216, i32 noundef 407) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.else72, %if.then65
  %call.i155 = tail call signext i8 @ni_route_to_register(i32 noundef 32776, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i155)
  %cmp.i156 = icmp sgt i8 %call.i155, -1
  br i1 %cmp.i156, label %if.else110, label %if.then103

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc104 = add i32 %7, 1
  store i32 %inc104, ptr @unittest_results.1, align 4
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.216, i32 noundef 409) #11
  br label %if.end130

if.else110:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc111 = add i32 %8, 1
  store i32 %inc111, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_is_valid.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_is_valid, %if.end130)) #8
          to label %if.then126 [label %if.end130], !srcloc !686

if.then126:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_is_valid.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.216, i32 noundef 409) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %if.else110, %if.then103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_is_cmd_dest() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32927) #8
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 416) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.224, i32 noundef 416) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %call21 = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32929) #8
  br i1 %call21, label %if.else33, label %if.then26

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc27 = add i32 %3, 1
  store i32 %inc27, ptr @unittest_results.1, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.224, i32 noundef 418) #11
  br label %if.end53

if.else33:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc34 = add i32 %4, 1
  store i32 %inc34, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end53)) #8
          to label %if.then49 [label %if.end53], !srcloc !686

if.then49:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.224, i32 noundef 418) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.else33, %if.then26
  %call59 = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32931) #8
  br i1 %call59, label %if.else71, label %if.then64

if.then64:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc65 = add i32 %5, 1
  store i32 %inc65, ptr @unittest_results.1, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.224, i32 noundef 420) #11
  br label %if.end91

if.else71:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc72 = add i32 %6, 1
  store i32 %inc72, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end91)) #8
          to label %if.then87 [label %if.end91], !srcloc !686

if.then87:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.224, i32 noundef 420) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.else71, %if.then64
  %call97 = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32938) #8
  br i1 %call97, label %if.else109, label %if.then102

if.then102:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc103 = add i32 %7, 1
  store i32 %inc103, ptr @unittest_results.1, align 4
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.224, i32 noundef 422) #11
  br label %if.end129

if.else109:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc110 = add i32 %8, 1
  store i32 %inc110, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end129)) #8
          to label %if.then125 [label %if.end129], !srcloc !686

if.then125:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.224, i32 noundef 422) #8
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %if.else109, %if.then102
  %call135 = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32951) #8
  br i1 %call135, label %if.else147, label %if.then140

if.then140:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc141 = add i32 %9, 1
  store i32 %inc141, ptr @unittest_results.1, align 4
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.224, i32 noundef 424) #11
  br label %if.end167

if.else147:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc148 = add i32 %10, 1
  store i32 %inc148, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end167)) #8
          to label %if.then163 [label %if.end167], !srcloc !686

if.then163:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.224, i32 noundef 424) #8
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.else147, %if.then140
  %call173 = tail call zeroext i1 @ni_is_cmd_dest(i32 noundef 32939) #8
  br i1 %call173, label %if.then180, label %if.else187

if.then180:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.1, align 4
  %inc181 = add i32 %11, 1
  store i32 %inc181, ptr @unittest_results.1, align 4
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.224, i32 noundef 426) #11
  br label %if.end207

if.else187:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @unittest_results.0, align 4
  %inc188 = add i32 %12, 1
  store i32 %inc188, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_is_cmd_dest, %if.end207)) #8
          to label %if.then203 [label %if.end207], !srcloc !686

if.then203:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.224, i32 noundef 426) #8
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.else187, %if.then180
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_channel_is_pfi() #2 align 64 {
if.else:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %1 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %1, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_pfi, %if.else33)) #8
          to label %if.then12 [label %if.else33], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_pfi.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.247, i32 noundef 432) #8
  br label %if.else33

if.else33:                                        ; preds = %if.then12, %if.else
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc34 = add i32 %2, 1
  store i32 %inc34, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_pfi, %if.else71)) #8
          to label %if.then49 [label %if.else71], !srcloc !686

if.then49:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_pfi.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.247, i32 noundef 433) #8
  br label %if.else71

if.else71:                                        ; preds = %if.then49, %if.else33
  %3 = load i32, ptr @unittest_results.0, align 4
  %inc72 = add i32 %3, 1
  store i32 %inc72, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_pfi, %if.else111)) #8
          to label %if.then87 [label %if.else111], !srcloc !686

if.then87:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_pfi.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.247, i32 noundef 434) #8
  br label %if.else111

if.else111:                                       ; preds = %if.then87, %if.else71
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc112 = add i32 %4, 1
  store i32 %inc112, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_pfi, %if.end131)) #8
          to label %if.then127 [label %if.end131], !srcloc !686

if.then127:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_pfi.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.247, i32 noundef 436) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.else111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_channel_is_rtsi() #2 align 64 {
if.else:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %1 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %1, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_rtsi, %if.else33)) #8
          to label %if.then12 [label %if.else33], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_rtsi.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.262, i32 noundef 443) #8
  br label %if.else33

if.else33:                                        ; preds = %if.then12, %if.else
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc34 = add i32 %2, 1
  store i32 %inc34, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_rtsi, %if.else71)) #8
          to label %if.then49 [label %if.else71], !srcloc !686

if.then49:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_rtsi.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.262, i32 noundef 445) #8
  br label %if.else71

if.else71:                                        ; preds = %if.then49, %if.else33
  %3 = load i32, ptr @unittest_results.0, align 4
  %inc72 = add i32 %3, 1
  store i32 %inc72, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_rtsi, %if.else111)) #8
          to label %if.then87 [label %if.else111], !srcloc !686

if.then87:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_rtsi.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.262, i32 noundef 447) #8
  br label %if.else111

if.else111:                                       ; preds = %if.then87, %if.else71
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc112 = add i32 %4, 1
  store i32 %inc112, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_channel_is_rtsi, %if.end131)) #8
          to label %if.then127 [label %if.end131], !srcloc !686

if.then127:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_channel_is_rtsi.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.262, i32 noundef 449) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.else111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_get_valid_routes() #2 align 64 {
entry:
  %pair_data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pair_data) #8
  %0 = ptrtoint ptr %pair_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pair_data, align 4, !annotation !687
  %1 = getelementptr inbounds [2 x i32], ptr %pair_data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !687
  %3 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call = tail call i32 @ni_get_valid_routes(ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %call)
  %cmp.not = icmp eq i32 %call, 57
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.280, i32 noundef 467) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %5, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_valid_routes, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_valid_routes.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.280, i32 noundef 467) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %call21 = call i32 @ni_get_valid_routes(ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), i32 noundef 1, ptr noundef nonnull %pair_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %6, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.280, i32 noundef 470) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %7, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_valid_routes, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_valid_routes.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.280, i32 noundef 470) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %8 = ptrtoint ptr %pair_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pair_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %9)
  %cmp60.not = icmp eq i32 %9, 32769
  br i1 %cmp60.not, label %if.else72, label %if.then65

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.1, align 4
  %inc66 = add i32 %10, 1
  store i32 %inc66, ptr @unittest_results.1, align 4
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.280, i32 noundef 472) #11
  br label %if.end92

if.else72:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.0, align 4
  %inc73 = add i32 %11, 1
  store i32 %inc73, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_valid_routes, %if.end92)) #8
          to label %if.then88 [label %if.end92], !srcloc !686

if.then88:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_valid_routes.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.280, i32 noundef 472) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.else72, %if.then65
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %cmp99.not = icmp eq i32 %13, 32768
  br i1 %cmp99.not, label %if.else111, label %if.then104

if.then104:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @unittest_results.1, align 4
  %inc105 = add i32 %14, 1
  store i32 %inc105, ptr @unittest_results.1, align 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef nonnull @.str.280, i32 noundef 474) #11
  br label %if.end131

if.else111:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.0, align 4
  %inc112 = add i32 %15, 1
  store i32 %inc112, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_valid_routes, %if.end131)) #8
          to label %if.then127 [label %if.end131], !srcloc !686

if.then127:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_valid_routes.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.280, i32 noundef 474) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.else111, %if.then104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pair_data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_find_route_source() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32772, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.not = icmp eq i32 %call, -22
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 483) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_source, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_source.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.295, i32 noundef 483) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %call21 = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 32768
  br i1 %cmp22.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %3, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.295, i32 noundef 485) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %4, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_source, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_source.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.295, i32 noundef 485) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %call60 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32772, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 32772
  br i1 %cmp61.not, label %if.else73, label %if.then66

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc67 = add i32 %5, 1
  store i32 %inc67, ptr @unittest_results.1, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.295, i32 noundef 487) #11
  br label %if.end93

if.else73:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc74 = add i32 %6, 1
  store i32 %inc74, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_source, %if.end93)) #8
          to label %if.then89 [label %if.end93], !srcloc !686

if.then89:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_source.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.295, i32 noundef 487) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.else73, %if.then66
  %call99 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32777, i32 %call99)
  %cmp100.not = icmp eq i32 %call99, 32777
  br i1 %cmp100.not, label %if.else112, label %if.then105

if.then105:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc106 = add i32 %7, 1
  store i32 %inc106, ptr @unittest_results.1, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.295, i32 noundef 489) #11
  br label %if.end132

if.else112:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc113 = add i32 %8, 1
  store i32 %inc113, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_source, %if.end132)) #8
          to label %if.then128 [label %if.end132], !srcloc !686

if.then128:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_source.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.295, i32 noundef 489) #8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.else112, %if.then105
  %call138 = tail call i32 @ni_find_route_source(i8 noundef zeroext 8, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 32776
  br i1 %cmp139.not, label %if.else151, label %if.then144

if.then144:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc145 = add i32 %9, 1
  store i32 %inc145, ptr @unittest_results.1, align 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.295, i32 noundef 491) #11
  br label %if.end171

if.else151:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc152 = add i32 %10, 1
  store i32 %inc152, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_find_route_source, %if.end171)) #8
          to label %if.then167 [label %if.end171], !srcloc !686

if.then167:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_find_route_source.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.295, i32 noundef 491) #8
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.else151, %if.then144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_route_register_is_valid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call.i = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32772, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.311, i32 noundef 500) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_register_is_valid, %if.end16)) #8
          to label %if.then13 [label %if.end16], !srcloc !686

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_register_is_valid.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.311, i32 noundef 500) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else, %if.then
  %call.i151 = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i151)
  %cmp.i152 = icmp sgt i32 %call.i151, -1
  br i1 %cmp.i152, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %3, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.311, i32 noundef 502) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %4, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_register_is_valid, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_register_is_valid.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.311, i32 noundef 502) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %call.i153 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i153)
  %cmp.i154 = icmp sgt i32 %call.i153, -1
  br i1 %cmp.i154, label %if.else72, label %if.then65

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc66 = add i32 %5, 1
  store i32 %inc66, ptr @unittest_results.1, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.311, i32 noundef 504) #11
  br label %if.end92

if.else72:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc73 = add i32 %6, 1
  store i32 %inc73, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_register_is_valid, %if.end92)) #8
          to label %if.then88 [label %if.end92], !srcloc !686

if.then88:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_register_is_valid.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.311, i32 noundef 504) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.else72, %if.then65
  %call.i155 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i155)
  %cmp.i156 = icmp sgt i32 %call.i155, -1
  br i1 %cmp.i156, label %if.else110, label %if.then103

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc104 = add i32 %7, 1
  store i32 %inc104, ptr @unittest_results.1, align 4
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.311, i32 noundef 506) #11
  br label %if.end130

if.else110:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc111 = add i32 %8, 1
  store i32 %inc111, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_route_register_is_valid, %if.end130)) #8
          to label %if.then126 [label %if.end130], !srcloc !686

if.then126:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_route_register_is_valid.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.311, i32 noundef 506) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %if.else110, %if.then103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_check_trigger_arg() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call.i.i.i.i = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp.i.i.not = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %cmp.i.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319, i32 noundef 515) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.319, i32 noundef 515) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %call.i.i.i.i505 = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i505)
  %cmp.i.i508.not.inv = icmp sgt i32 %call.i.i.i.i505, -1
  br i1 %cmp.i.i508.not.inv, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %3, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.319, i32 noundef 517) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %4, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.319, i32 noundef 517) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %call.i.i.i.i510 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i510)
  %cmp.i.i513.not.inv = icmp sgt i32 %call.i.i.i.i510, -1
  br i1 %cmp.i.i513.not.inv, label %if.else73, label %if.then66

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc67 = add i32 %5, 1
  store i32 %inc67, ptr @unittest_results.1, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.319, i32 noundef 519) #11
  br label %if.end93

if.else73:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc74 = add i32 %6, 1
  store i32 %inc74, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end93)) #8
          to label %if.then89 [label %if.end93], !srcloc !686

if.then89:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.319, i32 noundef 519) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.else73, %if.then66
  %call.i.i.i.i515 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i515)
  %cmp.i.i518.not.inv = icmp sgt i32 %call.i.i.i.i515, -1
  br i1 %cmp.i.i518.not.inv, label %if.else112, label %if.then105

if.then105:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc106 = add i32 %7, 1
  store i32 %inc106, ptr @unittest_results.1, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.319, i32 noundef 521) #11
  br label %if.end132

if.else112:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc113 = add i32 %8, 1
  store i32 %inc113, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end132)) #8
          to label %if.then128 [label %if.end132], !srcloc !686

if.then128:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.332, ptr noundef nonnull @.str.319, i32 noundef 521) #8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.else112, %if.then105
  %call4.i.i = tail call signext i8 @ni_route_to_register(i32 noundef -1, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i.i)
  %cmp.i = icmp slt i8 %call4.i.i, 0
  br i1 %cmp.i, label %if.else151, label %if.then144

if.then144:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc145 = add i32 %9, 1
  store i32 %inc145, ptr @unittest_results.1, align 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.319, i32 noundef 524) #11
  br label %if.end171

if.else151:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc152 = add i32 %10, 1
  store i32 %inc152, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end171)) #8
          to label %if.then167 [label %if.end171], !srcloc !686

if.then167:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.319, i32 noundef 524) #8
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.else151, %if.then144
  %call.i.i.i = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i520.not.inv = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i520.not.inv, label %if.else190, label %if.then183

if.then183:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.1, align 4
  %inc184 = add i32 %11, 1
  store i32 %inc184, ptr @unittest_results.1, align 4
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.319, i32 noundef 526) #11
  br label %if.end210

if.else190:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @unittest_results.0, align 4
  %inc191 = add i32 %12, 1
  store i32 %inc191, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end210)) #8
          to label %if.then206 [label %if.end210], !srcloc !686

if.then206:                                       ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.319, i32 noundef 526) #8
  br label %if.end210

if.end210:                                        ; preds = %if.then206, %if.else190, %if.then183
  %call.i.i.i522 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i522)
  %cmp.i525.not.inv = icmp sgt i32 %call.i.i.i522, -1
  br i1 %cmp.i525.not.inv, label %if.else229, label %if.then222

if.then222:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @unittest_results.1, align 4
  %inc223 = add i32 %13, 1
  store i32 %inc223, ptr @unittest_results.1, align 4
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.319, i32 noundef 528) #11
  br label %if.end249

if.else229:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @unittest_results.0, align 4
  %inc230 = add i32 %14, 1
  store i32 %inc230, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end249)) #8
          to label %if.then245 [label %if.end249], !srcloc !686

if.then245:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.319, i32 noundef 528) #8
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.else229, %if.then222
  %call.i.i.i527 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i527)
  %cmp.i530.not.inv = icmp sgt i32 %call.i.i.i527, -1
  br i1 %cmp.i530.not.inv, label %if.else268, label %if.then261

if.then261:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.1, align 4
  %inc262 = add i32 %15, 1
  store i32 %inc262, ptr @unittest_results.1, align 4
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.319, i32 noundef 530) #11
  br label %if.end288

if.else268:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @unittest_results.0, align 4
  %inc269 = add i32 %16, 1
  store i32 %inc269, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end288)) #8
          to label %if.then284 [label %if.end288], !srcloc !686

if.then284:                                       ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.319, i32 noundef 530) #8
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.else268, %if.then261
  %call4.i.i.i = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i.i.i)
  %cmp.i.i532 = icmp slt i8 %call4.i.i.i, 0
  br i1 %cmp.i.i532, label %if.else307, label %if.then300

if.then300:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc301 = add i32 %17, 1
  store i32 %inc301, ptr @unittest_results.1, align 4
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.319, i32 noundef 533) #11
  br label %if.end327

if.else307:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc308 = add i32 %18, 1
  store i32 %inc308, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end327)) #8
          to label %if.then323 [label %if.end327], !srcloc !686

if.then323:                                       ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.319, i32 noundef 533) #8
  br label %if.end327

if.end327:                                        ; preds = %if.then323, %if.else307, %if.then300
  %call4.i.i.i534 = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4.i.i.i534)
  %cmp.i.i535 = icmp sgt i8 %call4.i.i.i534, -1
  br i1 %cmp.i.i535, label %if.else346, label %if.then339

if.then339:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @unittest_results.1, align 4
  %inc340 = add i32 %19, 1
  store i32 %inc340, ptr @unittest_results.1, align 4
  %call345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef nonnull @.str.319, i32 noundef 535) #11
  br label %if.end366

if.else346:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i32, ptr @unittest_results.0, align 4
  %inc347 = add i32 %20, 1
  store i32 %inc347, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end366)) #8
          to label %if.then362 [label %if.end366], !srcloc !686

if.then362:                                       ; preds = %if.else346
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.319, i32 noundef 535) #8
  br label %if.end366

if.end366:                                        ; preds = %if.then362, %if.else346, %if.then339
  %call4.i.i.i537 = tail call signext i8 @ni_route_to_register(i32 noundef 32773, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4.i.i.i537)
  %cmp.i.i538 = icmp sgt i8 %call4.i.i.i537, -1
  br i1 %cmp.i.i538, label %if.else385, label %if.then378

if.then378:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @unittest_results.1, align 4
  %inc379 = add i32 %21, 1
  store i32 %inc379, ptr @unittest_results.1, align 4
  %call384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.319, i32 noundef 537) #11
  br label %if.end405

if.else385:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @unittest_results.0, align 4
  %inc386 = add i32 %22, 1
  store i32 %inc386, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end405)) #8
          to label %if.then401 [label %if.end405], !srcloc !686

if.then401:                                       ; preds = %if.else385
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.360, ptr noundef nonnull @.str.319, i32 noundef 537) #8
  br label %if.end405

if.end405:                                        ; preds = %if.then401, %if.else385, %if.then378
  %call4.i.i.i540 = tail call signext i8 @ni_route_to_register(i32 noundef 32776, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4.i.i.i540)
  %cmp.i.i541 = icmp sgt i8 %call4.i.i.i540, -1
  br i1 %cmp.i.i541, label %if.else424, label %if.then417

if.then417:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @unittest_results.1, align 4
  %inc418 = add i32 %23, 1
  store i32 %inc418, ptr @unittest_results.1, align 4
  %call423 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.319, i32 noundef 539) #11
  br label %if.end444

if.else424:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @unittest_results.0, align 4
  %inc425 = add i32 %24, 1
  store i32 %inc425, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_check_trigger_arg, %if.end444)) #8
          to label %if.then440 [label %if.end444], !srcloc !686

if.then440:                                       ; preds = %if.else424
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.319, i32 noundef 539) #8
  br label %if.end444

if.end444:                                        ; preds = %if.then440, %if.else424, %if.then417
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_ni_get_reg_value() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call.i.i.i = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @unittest_results.1, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.365, i32 noundef 548) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end15)) #8
          to label %if.then12 [label %if.end15], !srcloc !686

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.365, i32 noundef 548) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %if.then
  %call.i.i.i516 = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i516)
  %cmp.i.i.i517 = icmp sgt i32 %call.i.i.i516, -1
  br i1 %cmp.i.i.i517, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @unittest_results.1, align 4
  %inc28 = add i32 %3, 1
  store i32 %inc28, ptr @unittest_results.1, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.365, i32 noundef 550) #11
  br label %if.end54

if.else34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @unittest_results.0, align 4
  %inc35 = add i32 %4, 1
  store i32 %inc35, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end54)) #8
          to label %if.then50 [label %if.end54], !srcloc !686

if.then50:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.365, i32 noundef 550) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else34, %if.then27
  %call.i.i.i520 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i520)
  %cmp.i.i.i521 = icmp sgt i32 %call.i.i.i520, -1
  br i1 %cmp.i.i.i521, label %if.else73, label %if.then66

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @unittest_results.1, align 4
  %inc67 = add i32 %5, 1
  store i32 %inc67, ptr @unittest_results.1, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.365, i32 noundef 552) #11
  br label %if.end93

if.else73:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @unittest_results.0, align 4
  %inc74 = add i32 %6, 1
  store i32 %inc74, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end93)) #8
          to label %if.then89 [label %if.end93], !srcloc !686

if.then89:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.365, i32 noundef 552) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.else73, %if.then66
  %call.i.i.i524 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i524)
  %cmp.i.i.i525 = icmp sgt i32 %call.i.i.i524, -1
  br i1 %cmp.i.i.i525, label %if.else112, label %if.then105

if.then105:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @unittest_results.1, align 4
  %inc106 = add i32 %7, 1
  store i32 %inc106, ptr @unittest_results.1, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.365, i32 noundef 554) #11
  br label %if.end132

if.else112:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @unittest_results.0, align 4
  %inc113 = add i32 %8, 1
  store i32 %inc113, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end132)) #8
          to label %if.then128 [label %if.end132], !srcloc !686

if.then128:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.332, ptr noundef nonnull @.str.365, i32 noundef 554) #8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.else112, %if.then105
  %call4.i = tail call signext i8 @ni_route_to_register(i32 noundef -1, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4.i)
  %cmp139.not = icmp eq i8 %call4.i, -1
  br i1 %cmp139.not, label %if.else152, label %if.then145

if.then145:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @unittest_results.1, align 4
  %inc146 = add i32 %9, 1
  store i32 %inc146, ptr @unittest_results.1, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.365, i32 noundef 557) #11
  br label %if.end172

if.else152:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @unittest_results.0, align 4
  %inc153 = add i32 %10, 1
  store i32 %inc153, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end172)) #8
          to label %if.then168 [label %if.end172], !srcloc !686

if.then168:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.365, i32 noundef 557) #8
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %if.else152, %if.then145
  %call.i.i = tail call i32 @ni_find_route_source(i8 noundef zeroext 0, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.else193, label %if.then186

if.then186:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @unittest_results.1, align 4
  %inc187 = add i32 %11, 1
  store i32 %inc187, ptr @unittest_results.1, align 4
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.365, i32 noundef 559) #11
  br label %if.end213

if.else193:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @unittest_results.0, align 4
  %inc194 = add i32 %12, 1
  store i32 %inc194, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end213)) #8
          to label %if.then209 [label %if.end213], !srcloc !686

if.then209:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.365, i32 noundef 559) #8
  br label %if.end213

if.end213:                                        ; preds = %if.then209, %if.else193, %if.then186
  %call.i.i530 = tail call i32 @ni_find_route_source(i8 noundef zeroext 4, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i530)
  %cmp.i.i531 = icmp sgt i32 %call.i.i530, -1
  br i1 %cmp.i.i531, label %if.else234, label %if.then227

if.then227:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @unittest_results.1, align 4
  %inc228 = add i32 %13, 1
  store i32 %inc228, ptr @unittest_results.1, align 4
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.365, i32 noundef 561) #11
  br label %if.end254

if.else234:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @unittest_results.0, align 4
  %inc235 = add i32 %14, 1
  store i32 %inc235, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end254)) #8
          to label %if.then250 [label %if.end254], !srcloc !686

if.then250:                                       ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.365, i32 noundef 561) #8
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.else234, %if.then227
  %call.i.i534 = tail call i32 @ni_find_route_source(i8 noundef zeroext 9, i32 noundef 32776, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i534)
  %cmp.i.i535 = icmp sgt i32 %call.i.i534, -1
  br i1 %cmp.i.i535, label %if.else275, label %if.then268

if.then268:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @unittest_results.1, align 4
  %inc269 = add i32 %15, 1
  store i32 %inc269, ptr @unittest_results.1, align 4
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.365, i32 noundef 563) #11
  br label %if.end295

if.else275:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i32, ptr @unittest_results.0, align 4
  %inc276 = add i32 %16, 1
  store i32 %inc276, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end295)) #8
          to label %if.then291 [label %if.end295], !srcloc !686

if.then291:                                       ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.365, i32 noundef 563) #8
  br label %if.end295

if.end295:                                        ; preds = %if.then291, %if.else275, %if.then268
  %call4.i.i = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32768, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4.i.i)
  %cmp302.not = icmp eq i8 %call4.i.i, -1
  br i1 %cmp302.not, label %if.else315, label %if.then308

if.then308:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @unittest_results.1, align 4
  %inc309 = add i32 %17, 1
  store i32 %inc309, ptr @unittest_results.1, align 4
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.365, i32 noundef 566) #11
  br label %if.end335

if.else315:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @unittest_results.0, align 4
  %inc316 = add i32 %18, 1
  store i32 %inc316, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end335)) #8
          to label %if.then331 [label %if.end335], !srcloc !686

if.then331:                                       ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.365, i32 noundef 566) #8
  br label %if.end335

if.end335:                                        ; preds = %if.then331, %if.else315, %if.then308
  %call4.i.i539 = tail call signext i8 @ni_route_to_register(i32 noundef 32768, i32 noundef 32769, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i.i539)
  %cmp342.not = icmp eq i8 %call4.i.i539, 0
  br i1 %cmp342.not, label %if.else355, label %if.then348

if.then348:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @unittest_results.1, align 4
  %inc349 = add i32 %19, 1
  store i32 %inc349, ptr @unittest_results.1, align 4
  %call354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef nonnull @.str.365, i32 noundef 568) #11
  br label %if.end375

if.else355:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i32, ptr @unittest_results.0, align 4
  %inc356 = add i32 %20, 1
  store i32 %inc356, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end375)) #8
          to label %if.then371 [label %if.end375], !srcloc !686

if.then371:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.365, i32 noundef 568) #8
  br label %if.end375

if.end375:                                        ; preds = %if.then371, %if.else355, %if.then348
  %call4.i.i541 = tail call signext i8 @ni_route_to_register(i32 noundef 32773, i32 noundef 32774, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %call4.i.i541)
  %cmp382.not = icmp eq i8 %call4.i.i541, 5
  br i1 %cmp382.not, label %if.else395, label %if.then388

if.then388:                                       ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr @unittest_results.1, align 4
  %inc389 = add i32 %21, 1
  store i32 %inc389, ptr @unittest_results.1, align 4
  %call394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.365, i32 noundef 570) #11
  br label %if.end415

if.else395:                                       ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i32, ptr @unittest_results.0, align 4
  %inc396 = add i32 %22, 1
  store i32 %inc396, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end415)) #8
          to label %if.then411 [label %if.end415], !srcloc !686

if.then411:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.360, ptr noundef nonnull @.str.365, i32 noundef 570) #8
  br label %if.end415

if.end415:                                        ; preds = %if.then411, %if.else395, %if.then388
  %call4.i.i543 = tail call signext i8 @ni_route_to_register(i32 noundef 32776, i32 noundef 32777, ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call4.i.i543)
  %cmp422.not = icmp eq i8 %call4.i.i543, 8
  br i1 %cmp422.not, label %if.else435, label %if.then428

if.then428:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @unittest_results.1, align 4
  %inc429 = add i32 %23, 1
  store i32 %inc429, ptr @unittest_results.1, align 4
  %call434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.365, i32 noundef 572) #11
  br label %if.end455

if.else435:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @unittest_results.0, align 4
  %inc436 = add i32 %24, 1
  store i32 %inc436, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@test_ni_get_reg_value, %if.end455)) #8
          to label %if.then451 [label %if.end455], !srcloc !686

if.then451:                                       ; preds = %if.else435
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_get_reg_value.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.365, i32 noundef 572) #8
  br label %if.end455

if.end455:                                        ; preds = %if.then451, %if.else435, %if.then428
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exec_unittests() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef nonnull @.str) #11
  tail call fastcc void @test_ni_assign_device_routes() #8
  tail call fastcc void @test_ni_sort_device_routes() #8
  tail call fastcc void @test_ni_find_route_set() #8
  tail call fastcc void @test_ni_route_set_has_source() #8
  tail call fastcc void @test_ni_route_to_register() #8
  tail call fastcc void @test_ni_lookup_route_register() #8
  tail call fastcc void @test_route_is_valid() #8
  tail call fastcc void @test_ni_is_cmd_dest() #8
  tail call fastcc void @test_channel_is_pfi() #8
  tail call fastcc void @test_channel_is_rtsi() #8
  %0 = call ptr @memset(ptr @private, i32 0, i32 19960)
  store ptr @RV, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52, i32 1), align 4
  store ptr @DR, ptr getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52), align 4
  %call.i = tail call i32 @ni_count_valid_routes(ptr noundef getelementptr inbounds ({ i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [34 x i32], [34 x i16], i16, [8 x i16], i16, i16, i16, i16, i16, ptr, i16, [512 x i32], i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16], i16, i16, i16, i32, i32, i16, i16, [8192 x i16], [1024 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8, i8, %struct.ni_route_tables, [4 x i8], i16, i8 }, ptr @private, i32 0, i32 52)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 57
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @unittest_results.1, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, i32 noundef 457) #11
  br label %test_ni_count_valid_routes.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc2.i = add i32 %2, 1
  store i32 %inc2.i, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_ni_count_valid_routes.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exec_unittests, %test_ni_count_valid_routes.exit)) #8
          to label %if.then12.i [label %test_ni_count_valid_routes.exit], !srcloc !686

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test_ni_count_valid_routes.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.277, i32 noundef 457) #8
  br label %test_ni_count_valid_routes.exit

test_ni_count_valid_routes.exit:                  ; preds = %if.then12.i, %if.else.i, %if.then.i
  tail call fastcc void @test_ni_get_valid_routes() #8
  tail call fastcc void @test_ni_find_route_source() #8
  tail call fastcc void @test_route_register_is_valid() #8
  tail call fastcc void @test_ni_check_trigger_arg() #8
  tail call fastcc void @test_ni_get_reg_value() #8
  %3 = load i32, ptr @unittest_results.0, align 4
  %4 = load i32, ptr @unittest_results.1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_assign_device_routes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_sort_device_routes(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_route_set(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_route_set_has_source(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @ni_route_to_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @ni_lookup_route_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_is_cmd_dest(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_count_valid_routes(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_get_valid_routes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_find_route_source(i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 319)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 319)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !139, !141, !143, !144, !145, !146, !147, !148, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !212, !213, !214, !215, !216, !218, !219, !220, !221, !222, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !248, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !282, !284, !285, !286, !288, !290, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !315, !317, !318, !319, !320, !321, !323, !324, !325, !326, !327, !329, !330, !331, !332, !333, !335, !336, !337, !338, !339, !341, !342, !343, !344, !345, !347, !348, !349, !350, !351, !353, !354, !355, !356, !357, !359, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !385, !386, !387, !389, !390, !391, !392, !393, !395, !396, !397, !398, !399, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !413, !414, !415, !416, !417, !419, !420, !421, !422, !423, !424, !426, !427, !428, !429, !430, !432, !433, !434, !435, !436, !438, !439, !440, !441, !442, !444, !445, !446, !447, !448, !449, !451, !452, !453, !454, !455, !457, !458, !459, !460, !461, !463, !464, !465, !466, !467, !469, !470, !471, !472, !473, !474, !476, !477, !478, !479, !480, !481, !483, !484, !485, !486, !487, !489, !490, !491, !492, !493, !495, !496, !497, !498, !499, !501, !502, !503, !504, !505, !506, !508, !509, !510, !512, !513, !514, !515, !516, !518, !519, !520, !521, !522, !524, !525, !526, !527, !528, !530, !531, !532, !533, !535, !536, !537, !539, !540, !541, !543, !544, !545, !547, !548, !549, !550, !551, !552, !554, !555, !556, !557, !558, !560, !561, !562, !563, !564, !566, !567, !568, !569, !570, !572, !573, !574, !575, !576, !578, !579, !580, !581, !582, !584, !585, !586, !587, !588, !590, !591, !592, !593, !594, !596, !597, !598, !599, !600, !602, !603, !604, !605, !606, !608, !609, !610, !611, !612, !614, !615, !616, !617, !618, !620, !621, !622, !623, !625, !626, !627, !629, !630, !631, !633, !634, !635, !637, !638, !639, !641, !642, !643, !645, !646, !647, !649, !650, !651, !653, !654, !655, !657, !658, !659, !661, !662, !663, !665, !666, !667, !669, !670, !671, !672, !673, !675, !676}
!llvm.module.flags = !{!677, !678, !679, !680, !681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = !{ptr @__initcall__kmod_ni_routes_test__339_604_ni_routes_unittest6, !1, !"__initcall__kmod_ni_routes_test__339_604_ni_routes_unittest6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 604, i32 1}
!2 = !{ptr @__exitcall_ni_routes_unittest_exit, !3, !"__exitcall_ni_routes_unittest_exit", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 605, i32 1}
!4 = !{ptr @__UNIQUE_ID_author340, !5, !"__UNIQUE_ID_author340", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 607, i32 1}
!6 = !{ptr @__UNIQUE_ID_description341, !7, !"__UNIQUE_ID_description341", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 608, i32 1}
!8 = !{ptr @__UNIQUE_ID_file342, !9, !"__UNIQUE_ID_file342", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 609, i32 1}
!10 = !{ptr @__UNIQUE_ID_license343, !9, !"__UNIQUE_ID_license343", i1 false, i1 false}
!11 = distinct !{null, !12, !"unit_tests", i1 false, i1 false}
!12 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 578, i32 29}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 598, i32 17}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 224, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @test_ni_assign_device_routes._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_ni_assign_device_routes._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug229, !16, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 226, i32 2}
!26 = !{ptr @test_ni_assign_device_routes._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @test_ni_assign_device_routes._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 228, i32 2}
!32 = !{ptr @test_ni_assign_device_routes._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @test_ni_assign_device_routes._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug231, !31, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 230, i32 2}
!38 = !{ptr @test_ni_assign_device_routes._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_ni_assign_device_routes._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug232, !37, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 232, i32 2}
!44 = !{ptr @test_ni_assign_device_routes._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @test_ni_assign_device_routes._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug233, !43, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 234, i32 2}
!50 = !{ptr @test_ni_assign_device_routes._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @test_ni_assign_device_routes._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug234, !49, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 236, i32 2}
!56 = !{ptr @test_ni_assign_device_routes._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @test_ni_assign_device_routes._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug235, !55, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 238, i32 2}
!62 = !{ptr @test_ni_assign_device_routes._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @test_ni_assign_device_routes._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug236, !61, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 240, i32 2}
!68 = !{ptr @test_ni_assign_device_routes._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @test_ni_assign_device_routes._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 242, i32 2}
!74 = !{ptr @test_ni_assign_device_routes._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @test_ni_assign_device_routes._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug238, !73, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 245, i32 2}
!80 = !{ptr @test_ni_assign_device_routes._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @test_ni_assign_device_routes._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug239, !79, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 258, i32 2}
!86 = !{ptr @test_ni_assign_device_routes._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @test_ni_assign_device_routes._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug240, !85, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 260, i32 2}
!92 = !{ptr @test_ni_assign_device_routes._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @test_ni_assign_device_routes._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug241, !91, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 262, i32 2}
!98 = !{ptr @test_ni_assign_device_routes._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @test_ni_assign_device_routes._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @test_ni_assign_device_routes.__UNIQUE_ID_ddebug242, !97, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!102 = distinct !{null, !103, !"board", i1 false, i1 false}
!103 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 39, i32 31}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 36, i32 33}
!106 = distinct !{null, !107, !"ni_eseries", i1 false, i1 false}
!107 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 36, i32 20}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 32, i32 32}
!110 = distinct !{null, !111, !"pci_6070e", i1 false, i1 false}
!111 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 32, i32 20}
!112 = !{ptr @private, !113, !"private", i1 false, i1 false}
!113 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 43, i32 26}
!114 = distinct !{null, !115, !"unittest_results", i1 false, i1 false}
!115 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 27, i32 3}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 37, i32 33}
!118 = distinct !{null, !119, !"ni_mseries", i1 false, i1 false}
!119 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 37, i32 20}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 33, i32 31}
!122 = distinct !{null, !123, !"pci_6220", i1 false, i1 false}
!123 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 33, i32 20}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 274, i32 2}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @test_ni_sort_device_routes._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @test_ni_sort_device_routes._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @test_ni_sort_device_routes.__UNIQUE_ID_ddebug243, !125, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 276, i32 2}
!133 = !{ptr @test_ni_sort_device_routes._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @test_ni_sort_device_routes._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @test_ni_sort_device_routes.__UNIQUE_ID_ddebug244, !132, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 85, i32 12}
!139 = !{ptr @DR, !140, !"DR", i1 false, i1 false}
!140 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 84, i32 32}
!141 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 282, i32 2}
!143 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @test_ni_find_route_set._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @test_ni_find_route_set._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug245, !142, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 284, i32 2}
!150 = !{ptr @test_ni_find_route_set._entry.85, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @test_ni_find_route_set._entry_ptr.87, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug246, !149, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 286, i32 2}
!156 = !{ptr @test_ni_find_route_set._entry.89, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @test_ni_find_route_set._entry_ptr.91, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug247, !155, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!160 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 288, i32 2}
!162 = !{ptr @test_ni_find_route_set._entry.93, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @test_ni_find_route_set._entry_ptr.95, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.96, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug248, !161, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 291, i32 2}
!168 = !{ptr @test_ni_find_route_set._entry.97, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @test_ni_find_route_set._entry_ptr.99, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @test_ni_find_route_set.__UNIQUE_ID_ddebug249, !167, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 298, i32 2}
!174 = !{ptr @.str.102, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @test_ni_route_set_has_source._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @test_ni_route_set_has_source._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.103, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug250, !173, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!179 = !{ptr @.str.105, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 300, i32 2}
!181 = !{ptr @test_ni_route_set_has_source._entry.104, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @test_ni_route_set_has_source._entry_ptr.106, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.107, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug251, !180, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!185 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 302, i32 2}
!187 = !{ptr @test_ni_route_set_has_source._entry.108, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @test_ni_route_set_has_source._entry_ptr.110, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.111, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug252, !186, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!191 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 304, i32 2}
!193 = !{ptr @test_ni_route_set_has_source._entry.112, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @test_ni_route_set_has_source._entry_ptr.114, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.115, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @test_ni_route_set_has_source.__UNIQUE_ID_ddebug253, !192, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!197 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 313, i32 2}
!199 = !{ptr @.str.117, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @test_ni_route_to_register._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @test_ni_route_to_register._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.118, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug254, !198, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!204 = !{ptr @.str.120, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 315, i32 2}
!206 = !{ptr @test_ni_route_to_register._entry.119, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @test_ni_route_to_register._entry_ptr.121, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.122, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug255, !205, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!210 = !{ptr @.str.124, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 317, i32 2}
!212 = !{ptr @test_ni_route_to_register._entry.123, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @test_ni_route_to_register._entry_ptr.125, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.126, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug256, !211, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!216 = !{ptr @.str.128, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 319, i32 2}
!218 = !{ptr @test_ni_route_to_register._entry.127, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @test_ni_route_to_register._entry_ptr.129, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.130, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug257, !217, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!222 = !{ptr @.str.132, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 323, i32 2}
!224 = !{ptr @test_ni_route_to_register._entry.131, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @test_ni_route_to_register._entry_ptr.133, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.134, !223, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug258, !223, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!228 = !{ptr @.str.136, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 325, i32 2}
!230 = !{ptr @test_ni_route_to_register._entry.135, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @test_ni_route_to_register._entry_ptr.137, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.138, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug259, !229, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!234 = !{ptr @.str.140, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 327, i32 2}
!236 = !{ptr @test_ni_route_to_register._entry.139, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @test_ni_route_to_register._entry_ptr.141, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.142, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug260, !235, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!240 = !{ptr @.str.144, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 329, i32 2}
!242 = !{ptr @test_ni_route_to_register._entry.143, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @test_ni_route_to_register._entry_ptr.145, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.146, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug261, !241, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!246 = !{ptr @.str.148, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 332, i32 2}
!248 = !{ptr @test_ni_route_to_register._entry.147, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @test_ni_route_to_register._entry_ptr.149, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.150, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug262, !247, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!252 = !{ptr @test_ni_route_to_register._entry.151, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 335, i32 2}
!254 = !{ptr @test_ni_route_to_register._entry_ptr.152, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug263, !253, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!256 = !{ptr @.str.154, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 338, i32 2}
!258 = !{ptr @test_ni_route_to_register._entry.153, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @test_ni_route_to_register._entry_ptr.155, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.156, !257, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug264, !257, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!262 = !{ptr @test_ni_route_to_register._entry.157, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 341, i32 2}
!264 = !{ptr @test_ni_route_to_register._entry_ptr.158, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug265, !263, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!266 = !{ptr @.str.160, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 344, i32 2}
!268 = !{ptr @test_ni_route_to_register._entry.159, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @test_ni_route_to_register._entry_ptr.161, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.162, !267, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug266, !267, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!272 = !{ptr @test_ni_route_to_register._entry.163, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 347, i32 2}
!274 = !{ptr @test_ni_route_to_register._entry_ptr.164, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug267, !273, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!276 = !{ptr @.str.166, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 350, i32 2}
!278 = !{ptr @test_ni_route_to_register._entry.165, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @test_ni_route_to_register._entry_ptr.167, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.168, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug268, !277, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!282 = !{ptr @test_ni_route_to_register._entry.169, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 353, i32 2}
!284 = !{ptr @test_ni_route_to_register._entry_ptr.170, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @test_ni_route_to_register.__UNIQUE_ID_ddebug269, !283, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!286 = distinct !{null, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 34, i32 31}
!288 = distinct !{null, !289, !"pci_fake", i1 false, i1 false}
!289 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 34, i32 20}
!290 = !{ptr @RV, !291, !"RV", i1 false, i1 false}
!291 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 123, i32 17}
!292 = !{ptr @.str.173, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 363, i32 2}
!294 = !{ptr @test_ni_lookup_route_register._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @test_ni_lookup_route_register._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug270, !293, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!297 = !{ptr @test_ni_lookup_route_register._entry.174, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 365, i32 2}
!299 = !{ptr @test_ni_lookup_route_register._entry_ptr.175, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug271, !298, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!301 = !{ptr @test_ni_lookup_route_register._entry.176, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 367, i32 2}
!303 = !{ptr @test_ni_lookup_route_register._entry_ptr.177, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug272, !302, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!305 = !{ptr @test_ni_lookup_route_register._entry.178, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 369, i32 2}
!307 = !{ptr @test_ni_lookup_route_register._entry_ptr.179, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug273, !306, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!309 = !{ptr @.str.181, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 371, i32 2}
!311 = !{ptr @test_ni_lookup_route_register._entry.180, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @test_ni_lookup_route_register._entry_ptr.182, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.183, !310, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug274, !310, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!315 = !{ptr @.str.185, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 374, i32 2}
!317 = !{ptr @test_ni_lookup_route_register._entry.184, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @test_ni_lookup_route_register._entry_ptr.186, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.187, !316, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug275, !316, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!321 = !{ptr @.str.189, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 377, i32 2}
!323 = !{ptr @test_ni_lookup_route_register._entry.188, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @test_ni_lookup_route_register._entry_ptr.190, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.191, !322, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug276, !322, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!327 = !{ptr @.str.193, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 379, i32 2}
!329 = !{ptr @test_ni_lookup_route_register._entry.192, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @test_ni_lookup_route_register._entry_ptr.194, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.195, !328, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug277, !328, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!333 = !{ptr @.str.197, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 382, i32 2}
!335 = !{ptr @test_ni_lookup_route_register._entry.196, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @test_ni_lookup_route_register._entry_ptr.198, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.199, !334, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug278, !334, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!339 = !{ptr @.str.201, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 385, i32 2}
!341 = !{ptr @test_ni_lookup_route_register._entry.200, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @test_ni_lookup_route_register._entry_ptr.202, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.203, !340, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug279, !340, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!345 = !{ptr @.str.205, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 388, i32 2}
!347 = !{ptr @test_ni_lookup_route_register._entry.204, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @test_ni_lookup_route_register._entry_ptr.206, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.207, !346, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug280, !346, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!351 = !{ptr @.str.209, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 390, i32 2}
!353 = !{ptr @test_ni_lookup_route_register._entry.208, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @test_ni_lookup_route_register._entry_ptr.210, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.211, !352, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug281, !352, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!357 = !{ptr @.str.213, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 393, i32 2}
!359 = !{ptr @test_ni_lookup_route_register._entry.212, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @test_ni_lookup_route_register._entry_ptr.214, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.215, !358, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @test_ni_lookup_route_register.__UNIQUE_ID_ddebug282, !358, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!363 = !{ptr @.str.216, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 402, i32 2}
!365 = !{ptr @test_route_is_valid._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @test_route_is_valid._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @test_route_is_valid.__UNIQUE_ID_ddebug283, !364, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!368 = !{ptr @test_route_is_valid._entry.217, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 404, i32 2}
!370 = !{ptr @test_route_is_valid._entry_ptr.218, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @test_route_is_valid.__UNIQUE_ID_ddebug284, !369, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!372 = !{ptr @test_route_is_valid._entry.219, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 406, i32 2}
!374 = !{ptr @test_route_is_valid._entry_ptr.220, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @test_route_is_valid.__UNIQUE_ID_ddebug285, !373, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!376 = !{ptr @test_route_is_valid._entry.221, !377, !"_entry", i1 false, i1 false}
!377 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 408, i32 2}
!378 = !{ptr @test_route_is_valid._entry_ptr.222, !377, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @test_route_is_valid.__UNIQUE_ID_ddebug286, !377, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!380 = !{ptr @.str.223, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 415, i32 2}
!382 = !{ptr @.str.224, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @test_ni_is_cmd_dest._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @test_ni_is_cmd_dest._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.225, !381, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug287, !381, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!387 = !{ptr @.str.227, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 417, i32 2}
!389 = !{ptr @test_ni_is_cmd_dest._entry.226, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @test_ni_is_cmd_dest._entry_ptr.228, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.229, !388, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug288, !388, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!393 = !{ptr @.str.231, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 419, i32 2}
!395 = !{ptr @test_ni_is_cmd_dest._entry.230, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @test_ni_is_cmd_dest._entry_ptr.232, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.233, !394, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug289, !394, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!399 = !{ptr @.str.235, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 421, i32 2}
!401 = !{ptr @test_ni_is_cmd_dest._entry.234, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @test_ni_is_cmd_dest._entry_ptr.236, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.237, !400, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug290, !400, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!405 = !{ptr @.str.239, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 423, i32 2}
!407 = !{ptr @test_ni_is_cmd_dest._entry.238, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @test_ni_is_cmd_dest._entry_ptr.240, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.241, !406, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug291, !406, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!411 = !{ptr @.str.243, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 425, i32 2}
!413 = !{ptr @test_ni_is_cmd_dest._entry.242, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @test_ni_is_cmd_dest._entry_ptr.244, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.245, !412, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @test_ni_is_cmd_dest.__UNIQUE_ID_ddebug292, !412, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!417 = !{ptr @.str.246, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 432, i32 2}
!419 = !{ptr @.str.247, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @test_channel_is_pfi._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @test_channel_is_pfi._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.248, !418, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug293, !418, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!424 = !{ptr @.str.250, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 433, i32 2}
!426 = !{ptr @test_channel_is_pfi._entry.249, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @test_channel_is_pfi._entry_ptr.251, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.252, !425, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug294, !425, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!430 = !{ptr @.str.254, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 434, i32 2}
!432 = !{ptr @test_channel_is_pfi._entry.253, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @test_channel_is_pfi._entry_ptr.255, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.256, !431, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug295, !431, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!436 = !{ptr @.str.258, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 435, i32 2}
!438 = !{ptr @test_channel_is_pfi._entry.257, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @test_channel_is_pfi._entry_ptr.259, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.260, !437, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @test_channel_is_pfi.__UNIQUE_ID_ddebug296, !437, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!442 = !{ptr @.str.261, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 442, i32 2}
!444 = !{ptr @.str.262, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @test_channel_is_rtsi._entry, !443, !"_entry", i1 false, i1 false}
!446 = !{ptr @test_channel_is_rtsi._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.263, !443, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug297, !443, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!449 = !{ptr @.str.265, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 444, i32 2}
!451 = !{ptr @test_channel_is_rtsi._entry.264, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @test_channel_is_rtsi._entry_ptr.266, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.267, !450, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug298, !450, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!455 = !{ptr @.str.269, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 446, i32 2}
!457 = !{ptr @test_channel_is_rtsi._entry.268, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @test_channel_is_rtsi._entry_ptr.270, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.271, !456, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug299, !456, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!461 = !{ptr @.str.273, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 448, i32 2}
!463 = !{ptr @test_channel_is_rtsi._entry.272, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @test_channel_is_rtsi._entry_ptr.274, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.275, !462, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @test_channel_is_rtsi.__UNIQUE_ID_ddebug300, !462, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!467 = !{ptr @.str.276, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 457, i32 2}
!469 = !{ptr @.str.277, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @test_ni_count_valid_routes._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @test_ni_count_valid_routes._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.278, !468, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @test_ni_count_valid_routes.__UNIQUE_ID_ddebug301, !468, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!474 = !{ptr @.str.279, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 466, i32 2}
!476 = !{ptr @.str.280, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @test_ni_get_valid_routes._entry, !475, !"_entry", i1 false, i1 false}
!478 = !{ptr @test_ni_get_valid_routes._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.281, !475, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug302, !475, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!481 = !{ptr @.str.283, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 469, i32 2}
!483 = !{ptr @test_ni_get_valid_routes._entry.282, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @test_ni_get_valid_routes._entry_ptr.284, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.285, !482, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug303, !482, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!487 = !{ptr @.str.287, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 471, i32 2}
!489 = !{ptr @test_ni_get_valid_routes._entry.286, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @test_ni_get_valid_routes._entry_ptr.288, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.289, !488, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug304, !488, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!493 = !{ptr @.str.291, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 473, i32 2}
!495 = !{ptr @test_ni_get_valid_routes._entry.290, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @test_ni_get_valid_routes._entry_ptr.292, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.293, !494, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @test_ni_get_valid_routes.__UNIQUE_ID_ddebug305, !494, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!499 = !{ptr @.str.294, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 482, i32 2}
!501 = !{ptr @.str.295, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @test_ni_find_route_source._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @test_ni_find_route_source._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.296, !500, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug306, !500, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!506 = !{ptr @test_ni_find_route_source._entry.297, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 484, i32 2}
!508 = !{ptr @test_ni_find_route_source._entry_ptr.298, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug307, !507, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!510 = !{ptr @.str.300, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 486, i32 2}
!512 = !{ptr @test_ni_find_route_source._entry.299, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @test_ni_find_route_source._entry_ptr.301, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.302, !511, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug308, !511, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!516 = !{ptr @.str.304, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 488, i32 2}
!518 = !{ptr @test_ni_find_route_source._entry.303, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @test_ni_find_route_source._entry_ptr.305, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.306, !517, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug309, !517, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!522 = !{ptr @.str.308, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 490, i32 2}
!524 = !{ptr @test_ni_find_route_source._entry.307, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @test_ni_find_route_source._entry_ptr.309, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.310, !523, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @test_ni_find_route_source.__UNIQUE_ID_ddebug310, !523, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!528 = !{ptr @.str.311, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 499, i32 2}
!530 = !{ptr @test_route_register_is_valid._entry, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @test_route_register_is_valid._entry_ptr, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug311, !529, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!533 = !{ptr @test_route_register_is_valid._entry.312, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 501, i32 2}
!535 = !{ptr @test_route_register_is_valid._entry_ptr.313, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug312, !534, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!537 = !{ptr @test_route_register_is_valid._entry.314, !538, !"_entry", i1 false, i1 false}
!538 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 503, i32 2}
!539 = !{ptr @test_route_register_is_valid._entry_ptr.315, !538, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug313, !538, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!541 = !{ptr @test_route_register_is_valid._entry.316, !542, !"_entry", i1 false, i1 false}
!542 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 505, i32 2}
!543 = !{ptr @test_route_register_is_valid._entry_ptr.317, !542, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @test_route_register_is_valid.__UNIQUE_ID_ddebug314, !542, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!545 = !{ptr @.str.318, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 514, i32 2}
!547 = !{ptr @.str.319, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @test_ni_check_trigger_arg._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @test_ni_check_trigger_arg._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.320, !546, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug315, !546, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!552 = !{ptr @.str.322, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 516, i32 2}
!554 = !{ptr @test_ni_check_trigger_arg._entry.321, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @test_ni_check_trigger_arg._entry_ptr.323, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.324, !553, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug316, !553, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!558 = !{ptr @.str.326, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 518, i32 2}
!560 = !{ptr @test_ni_check_trigger_arg._entry.325, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @test_ni_check_trigger_arg._entry_ptr.327, !559, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.328, !559, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug317, !559, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!564 = !{ptr @.str.330, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 520, i32 2}
!566 = !{ptr @test_ni_check_trigger_arg._entry.329, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @test_ni_check_trigger_arg._entry_ptr.331, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.332, !565, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug318, !565, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!570 = !{ptr @.str.334, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 523, i32 2}
!572 = !{ptr @test_ni_check_trigger_arg._entry.333, !571, !"_entry", i1 false, i1 false}
!573 = !{ptr @test_ni_check_trigger_arg._entry_ptr.335, !571, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.336, !571, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug319, !571, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!576 = !{ptr @.str.338, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 525, i32 2}
!578 = !{ptr @test_ni_check_trigger_arg._entry.337, !577, !"_entry", i1 false, i1 false}
!579 = !{ptr @test_ni_check_trigger_arg._entry_ptr.339, !577, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.340, !577, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug320, !577, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!582 = !{ptr @.str.342, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 527, i32 2}
!584 = !{ptr @test_ni_check_trigger_arg._entry.341, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @test_ni_check_trigger_arg._entry_ptr.343, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.344, !583, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug321, !583, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!588 = !{ptr @.str.346, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 529, i32 2}
!590 = !{ptr @test_ni_check_trigger_arg._entry.345, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @test_ni_check_trigger_arg._entry_ptr.347, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.348, !589, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug322, !589, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!594 = !{ptr @.str.350, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 532, i32 2}
!596 = !{ptr @test_ni_check_trigger_arg._entry.349, !595, !"_entry", i1 false, i1 false}
!597 = !{ptr @test_ni_check_trigger_arg._entry_ptr.351, !595, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.352, !595, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug323, !595, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!600 = !{ptr @.str.354, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 534, i32 2}
!602 = !{ptr @test_ni_check_trigger_arg._entry.353, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @test_ni_check_trigger_arg._entry_ptr.355, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.356, !601, !"<string literal>", i1 false, i1 false}
!605 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug324, !601, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!606 = !{ptr @.str.358, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 536, i32 2}
!608 = !{ptr @test_ni_check_trigger_arg._entry.357, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @test_ni_check_trigger_arg._entry_ptr.359, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.360, !607, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug325, !607, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!612 = !{ptr @.str.362, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 538, i32 2}
!614 = !{ptr @test_ni_check_trigger_arg._entry.361, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @test_ni_check_trigger_arg._entry_ptr.363, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.364, !613, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @test_ni_check_trigger_arg.__UNIQUE_ID_ddebug326, !613, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!618 = !{ptr @.str.365, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 547, i32 2}
!620 = !{ptr @test_ni_get_reg_value._entry, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @test_ni_get_reg_value._entry_ptr, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug327, !619, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!623 = !{ptr @test_ni_get_reg_value._entry.366, !624, !"_entry", i1 false, i1 false}
!624 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 549, i32 2}
!625 = !{ptr @test_ni_get_reg_value._entry_ptr.367, !624, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug328, !624, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!627 = !{ptr @test_ni_get_reg_value._entry.368, !628, !"_entry", i1 false, i1 false}
!628 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 551, i32 2}
!629 = !{ptr @test_ni_get_reg_value._entry_ptr.369, !628, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug329, !628, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!631 = !{ptr @test_ni_get_reg_value._entry.370, !632, !"_entry", i1 false, i1 false}
!632 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 553, i32 2}
!633 = !{ptr @test_ni_get_reg_value._entry_ptr.371, !632, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug330, !632, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!635 = !{ptr @test_ni_get_reg_value._entry.372, !636, !"_entry", i1 false, i1 false}
!636 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 556, i32 2}
!637 = !{ptr @test_ni_get_reg_value._entry_ptr.373, !636, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug331, !636, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!639 = !{ptr @test_ni_get_reg_value._entry.374, !640, !"_entry", i1 false, i1 false}
!640 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 558, i32 2}
!641 = !{ptr @test_ni_get_reg_value._entry_ptr.375, !640, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug332, !640, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!643 = !{ptr @test_ni_get_reg_value._entry.376, !644, !"_entry", i1 false, i1 false}
!644 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 560, i32 2}
!645 = !{ptr @test_ni_get_reg_value._entry_ptr.377, !644, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug333, !644, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!647 = !{ptr @test_ni_get_reg_value._entry.378, !648, !"_entry", i1 false, i1 false}
!648 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 562, i32 2}
!649 = !{ptr @test_ni_get_reg_value._entry_ptr.379, !648, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug334, !648, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!651 = !{ptr @test_ni_get_reg_value._entry.380, !652, !"_entry", i1 false, i1 false}
!652 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 565, i32 2}
!653 = !{ptr @test_ni_get_reg_value._entry_ptr.381, !652, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug335, !652, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!655 = !{ptr @test_ni_get_reg_value._entry.382, !656, !"_entry", i1 false, i1 false}
!656 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 567, i32 2}
!657 = !{ptr @test_ni_get_reg_value._entry_ptr.383, !656, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug336, !656, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!659 = !{ptr @test_ni_get_reg_value._entry.384, !660, !"_entry", i1 false, i1 false}
!660 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 569, i32 2}
!661 = !{ptr @test_ni_get_reg_value._entry_ptr.385, !660, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug337, !660, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!663 = !{ptr @test_ni_get_reg_value._entry.386, !664, !"_entry", i1 false, i1 false}
!664 = !{!"../drivers/comedi/drivers/tests/ni_routes_test.c", i32 571, i32 2}
!665 = !{ptr @test_ni_get_reg_value._entry_ptr.387, !664, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @test_ni_get_reg_value.__UNIQUE_ID_ddebug338, !664, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!667 = !{ptr @.str.388, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 53, i32 2}
!669 = !{ptr @.str.389, !668, !"<string literal>", i1 false, i1 false}
!670 = !{ptr @.str.390, !668, !"<string literal>", i1 false, i1 false}
!671 = !{ptr @exec_unittests._entry, !668, !"_entry", i1 false, i1 false}
!672 = !{ptr @exec_unittests._entry_ptr, !668, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.392, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 58, i32 2}
!675 = !{ptr @exec_unittests._entry.391, !674, !"_entry", i1 false, i1 false}
!676 = !{ptr @exec_unittests._entry_ptr.393, !674, !"_entry_ptr", i1 false, i1 false}
!677 = !{i32 1, !"wchar_size", i32 2}
!678 = !{i32 1, !"min_enum_size", i32 4}
!679 = !{i32 8, !"branch-target-enforcement", i32 0}
!680 = !{i32 8, !"sign-return-address", i32 0}
!681 = !{i32 8, !"sign-return-address-all", i32 0}
!682 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!683 = !{i32 7, !"uwtable", i32 1}
!684 = !{i32 7, !"frame-pointer", i32 2}
!685 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!686 = !{i64 2148972526, i64 2148972531, i64 2148972544, i64 2148972588, i64 2148972622, i64 2148972643}
!687 = !{!"auto-init"}
